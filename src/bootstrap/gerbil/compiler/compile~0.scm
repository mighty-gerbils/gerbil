(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1756224516)
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
        (letrec ((_%hash-e155972%_
                  (lambda (_%id155974%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id155974%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e155972%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp157359 (list gxc#::void::t))
            (__tmp157358 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp157359
         '()
         __tmp157358
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args155968%_
        (apply make-instance gxc#::collect-bindings::t _%$args155968%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp157360
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
        (__make-promise __tmp157360)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx155960%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self155963%_
                (let ((__obj157334
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj157334))
               (__tmp157361
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self155963%_ _%stx155960%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157361
           gxc#current-compile-method
           _%self155963%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp157363 (list gxc#::void::t))
            (__tmp157362 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp157363
         '(modules)
         __tmp157362
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args155957%_
        (apply make-instance gxc#::lift-modules::t _%$args155957%_)))
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
      (let ((__tmp157364
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
        (__make-promise __tmp157364)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords155931%_ _%modules155928155932%_ _%stx155934%_)
        (let ((_%modules155937%_
               (if (eq? _%modules155928155932%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules155928155932%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self155939%_
                  (let ((__obj157336
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj157336
                       _%modules155937%_
                       '1
                       '#f
                       '#f))
                    __obj157336))
                 (__tmp157365
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self155939%_ _%stx155934%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp157365
             gxc#current-compile-method
             _%self155939%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords155946%_ . _%args155947%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords155946%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155946%_
                  'modules:
                  absent-value))
               _%args155947%_)))
    (define gxc#apply-lift-modules
      (lambda _%args155929155953%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args155929155953%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp157367 (list)) (__tmp157366 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp157367
         '()
         __tmp157366
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args155924%_
        (apply make-instance gxc#::find-runtime-code::t _%$args155924%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp157368
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
        (__make-promise __tmp157368)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx155916%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self155919%_
                (let ((__obj157338
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj157338))
               (__tmp157369
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self155919%_ _%stx155916%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157369
           gxc#current-compile-method
           _%self155919%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp157371 (list gxc#::false::t))
            (__tmp157370 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp157371
         '()
         __tmp157370
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args155913%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args155913%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp157372
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
        (__make-promise __tmp157372)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx155905%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self155908%_
                (let ((__obj157340
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj157340))
               (__tmp157373
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self155908%_ _%stx155905%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157373
           gxc#current-compile-method
           _%self155908%_))))
    (define gxc#::count-values::t
      (let ((__tmp157375 (list gxc#::false-expression::t))
            (__tmp157374 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp157375
         '()
         __tmp157374
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args155902%_
        (apply make-instance gxc#::count-values::t _%$args155902%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp157376
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
        (__make-promise __tmp157376)))
    (define gxc#apply-count-values
      (lambda (_%stx155894%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self155897%_
                (let ((__obj157342
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj157342))
               (__tmp157377
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self155897%_ _%stx155894%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157377
           gxc#current-compile-method
           _%self155897%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp157378 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp157378
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args155891%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args155891%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp157379
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
        (__make-promise __tmp157379)))
    (define gxc#::generate-loader::t
      (let ((__tmp157381 (list gxc#::generate-runtime-empty::t))
            (__tmp157380 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp157381
         '()
         __tmp157380
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args155887%_
        (apply make-instance gxc#::generate-loader::t _%$args155887%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp157382
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
        (__make-promise __tmp157382)))
    (define gxc#apply-generate-loader
      (lambda (_%stx155879%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self155882%_
                (let ((__obj157345
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj157345))
               (__tmp157383
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self155882%_ _%stx155879%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157383
           gxc#current-compile-method
           _%self155882%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp157384 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp157384
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args155876%_
        (apply make-instance gxc#::generate-runtime::t _%$args155876%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp157385
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
        (__make-promise __tmp157385)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx155868%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self155871%_
                (let ((__obj157347
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj157347))
               (__tmp157386
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self155871%_ _%stx155868%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157386
           gxc#current-compile-method
           _%self155871%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp157388 (list gxc#::generate-runtime::t))
            (__tmp157387 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp157388
         '()
         __tmp157387
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args155865%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args155865%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp157389
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
        (__make-promise __tmp157389)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx155857%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self155860%_
                (let ((__obj157349
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj157349))
               (__tmp157390
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self155860%_ _%stx155857%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157390
           gxc#current-compile-method
           _%self155860%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp157391 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp157391
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args155854%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args155854%_)))
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
      (let ((__tmp157392
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
        (__make-promise __tmp157392)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords155828%_ _%table155825155829%_ _%stx155831%_)
        (let ((_%table155834%_
               (if (eq? _%table155825155829%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table155825155829%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self155836%_
                  (let ((__obj157351
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj157351
                       _%table155834%_
                       '1
                       '#f
                       '#f))
                    __obj157351))
                 (__tmp157393
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self155836%_ _%stx155831%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp157393
             gxc#current-compile-method
             _%self155836%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords155843%_ . _%args155844%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords155843%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155843%_
                  'table:
                  absent-value))
               _%args155844%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args155826155850%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args155826155850%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp157395 (list gxc#::void-expression::t))
            (__tmp157394 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp157395
         '(state)
         __tmp157394
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args155821%_
        (apply make-instance gxc#::generate-meta::t _%$args155821%_)))
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
      (let ((__tmp157396
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
        (__make-promise __tmp157396)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords155795%_ _%state155792155796%_ _%stx155798%_)
        (let ((_%state155801%_
               (if (eq? _%state155792155796%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state155792155796%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self155803%_
                  (let ((__obj157353
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj157353
                       _%state155801%_
                       '1
                       '#f
                       '#f))
                    __obj157353))
                 (__tmp157397
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self155803%_ _%stx155798%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp157397
             gxc#current-compile-method
             _%self155803%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords155810%_ . _%args155811%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords155810%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155810%_
                  'state:
                  absent-value))
               _%args155811%_)))
    (define gxc#apply-generate-meta
      (lambda _%args155793155817%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args155793155817%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp157399 (list)) (__tmp157398 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp157399
         '(state)
         __tmp157398
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args155788%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args155788%_)))
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
      (let ((__tmp157400
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
        (__make-promise __tmp157400)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords155762%_ _%state155759155763%_ _%stx155765%_)
        (let ((_%state155768%_
               (if (eq? _%state155759155763%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state155759155763%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self155770%_
                  (let ((__obj157355
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj157355
                       _%state155768%_
                       '1
                       '#f
                       '#f))
                    __obj157355))
                 (__tmp157401
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self155770%_ _%stx155765%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp157401
             gxc#current-compile-method
             _%self155770%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords155777%_ . _%args155778%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords155777%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155777%_
                  'state:
                  absent-value))
               _%args155778%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args155760155784%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args155760155784%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self155688%_ _%stx155689%_)
        (let* ((_%g155691155708%_
                (lambda (_%g155692155705%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g155692155705%_))))
               (_%g155690155755%_
                (lambda (_%g155692155711%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g155692155711%_))
                      (let ((_%e155695155713%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g155692155711%_))))
                        (let ((_%hd155696155716%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155695155713%_)))
                              (_%tl155697155718%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155695155713%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl155697155718%_))
                              (let ((_%e155698155721%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl155697155718%_))))
                                (let ((_%hd155699155724%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e155698155721%_)))
                                      (_%tl155700155726%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e155698155721%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl155700155726%_))
                                      (let ((_%e155701155729%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl155700155726%_))))
                                        (let ((_%hd155702155732%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155701155729%_)))
                                              (_%tl155703155734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155701155729%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl155703155734%_))
                                              ((lambda (_%L155737%_
                                                        _%L155738%_)
                                                 (let ((__tmp157402
                                                        (lambda (_%bind155753%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind155753%_))
                      (gxc#add-module-binding! _%bind155753%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp157402
                                                    _%L155738%_)))
                                               _%hd155702155732%_
                                               _%hd155699155724%_)
                                              (_%g155691155708%_
                                               _%g155692155711%_))))
                                      (_%g155691155708%_ _%g155692155711%_))))
                              (_%g155691155708%_ _%g155692155711%_))))
                      (_%g155691155708%_ _%g155692155711%_)))))
          (_%g155690155755%_ _%stx155689%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self155620%_ _%stx155621%_)
        (let* ((_%g155623155640%_
                (lambda (_%g155624155637%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g155624155637%_))))
               (_%g155622155685%_
                (lambda (_%g155624155643%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g155624155643%_))
                      (let ((_%e155627155645%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g155624155643%_))))
                        (let ((_%hd155628155648%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155627155645%_)))
                              (_%tl155629155650%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155627155645%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl155629155650%_))
                              (let ((_%e155630155653%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl155629155650%_))))
                                (let ((_%hd155631155656%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e155630155653%_)))
                                      (_%tl155632155658%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e155630155653%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl155632155658%_))
                                      (let ((_%e155633155661%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl155632155658%_))))
                                        (let ((_%hd155634155664%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155633155661%_)))
                                              (_%tl155635155666%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155633155661%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl155635155666%_))
                                              ((lambda (_%L155669%_
                                                        _%L155670%_)
                                                 (gxc#add-module-binding!
                                                  _%L155670%_
                                                  '#t))
                                               _%hd155634155664%_
                                               _%hd155631155656%_)
                                              (_%g155623155640%_
                                               _%g155624155643%_))))
                                      (_%g155623155640%_ _%g155624155643%_))))
                              (_%g155623155640%_ _%g155624155643%_))))
                      (_%g155623155640%_ _%g155624155643%_)))))
          (_%g155622155685%_ _%stx155621%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self155562%_ _%stx155563%_)
        (let* ((_%g155565155579%_
                (lambda (_%g155566155576%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g155566155576%_))))
               (_%g155564155617%_
                (lambda (_%g155566155582%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g155566155582%_))
                      (let ((_%e155569155584%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g155566155582%_))))
                        (let ((_%hd155570155587%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155569155584%_)))
                              (_%tl155571155589%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155569155584%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl155571155589%_))
                              (let ((_%e155572155592%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl155571155589%_))))
                                (let ((_%hd155573155595%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e155572155592%_)))
                                      (_%tl155574155597%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e155572155592%_))))
                                  ((lambda (_%L155600%_ _%L155601%_)
                                     (let ((_%ctx155614%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L155601%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self155562%_
                                           'modules))
                                        (cons _%ctx155614%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self155562%_
                                                        'modules)))))
                                       (let ((__tmp157403
                                              (lambda ()
                                                (let ((__tmp157404
                                                       (##structure-ref
                                                        _%ctx155614%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self155562%_
                                                   __tmp157404)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp157403
                                          gx#current-expander-context
                                          _%ctx155614%_))))
                                   _%tl155574155597%_
                                   _%hd155573155595%_)))
                              (_%g155565155579%_ _%g155566155582%_))))
                      (_%g155565155579%_ _%g155566155582%_)))))
          (_%g155564155617%_ _%stx155563%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls155515155517%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls155515155517%_
              (let ((_%decls155520%_ _%decls155515155517%_))
                (let _%lp155522%_ ((_%rest155524%_ _%decls155520%_))
                  (let* ((_%rest155525155533%_ _%rest155524%_)
                         (_%else155527155541%_ (lambda () '#f))
                         (_%K155529155550%_
                          (lambda (_%decls155544%_ _%decl155545%_)
                            (if (equal? _%decl155545%_ '(not safe))
                                '#t
                                (if (equal? _%decl155545%_ '(safe))
                                    '#f
                                    (_%lp155522%_ _%decls155544%_))))))
                    (if (pair? _%rest155525155533%_)
                        (let ((_%hd155530155553%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest155525155533%_)))
                              (_%tl155531155555%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest155525155533%_))))
                          (let* ((_%decl155558%_ _%hd155530155553%_)
                                 (_%decls155560%_ _%tl155531155555%_))
                            (_%K155529155550%_
                             _%decls155560%_
                             _%decl155558%_)))
                        (_%else155527155541%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id155509%_ _%syntax?155510%_)
        (let ((_%eid155512%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id155509%_))
                '1
                gx#binding::t
                '#f))
              (_%ht155513%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid155512%_))
              '#!void
              (let ((__tmp157405
                     (let ((__tmp157406
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid155512%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp157406 _%syntax?155510%_))))
                (declare (not safe))
                (hash-put! _%ht155513%_ _%eid155512%_ __tmp157405))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id155507%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id155507%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key155462%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key155462%_))
            _%key155462%_
            (if (uninterned-symbol? _%key155462%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key155462%_))
                (let* ((_%key155466155473%_ _%key155462%_)
                       (_%E155468155477%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key155466155473%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K155469155495%_
                        (lambda (_%mark155480%_ _%eid155481%_)
                          (let ((_%$e155483%_
                                 (##structure-ref
                                  _%mark155480%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e155483%_
                                ((lambda (_%ht155486%_)
                                   (let ((_%$e155488%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht155486%_
                                             _%eid155481%_))))
                                     (if _%$e155488%_
                                         ((lambda (_%id155491%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id155491%_))
                                                _%id155491%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id155491%_))))
                                          _%$e155488%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid155481%_))))
                                 _%$e155483%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid155481%_))))))
                  (if (pair? _%key155466155473%_)
                      (let ((_%hd155470155498%_
                             (let ()
                               (declare (not safe))
                               (##car _%key155466155473%_)))
                            (_%tl155471155500%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key155466155473%_))))
                        (let* ((_%eid155503%_ _%hd155470155498%_)
                               (_%mark155505%_ _%tl155471155500%_))
                          (_%K155469155495%_ _%mark155505%_ _%eid155503%_)))
                      (_%E155468155477%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self155459%_ _%stx155460%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self155306%_ _%stx155307%_)
        (letrec ((_%simplify155309%_
                  (lambda (_%body155357%_)
                    (let _%lp155359%_ ((_%rest155361%_ _%body155357%_)
                                       (_%r155362%_ '()))
                      (let* ((_%rest155363155371%_ _%rest155361%_)
                             (_%else155365155379%_
                              (lambda () (reverse _%r155362%_)))
                             (_%K155367155447%_
                              (lambda (_%rest155382%_ _%hd155383%_)
                                (let* ((_%hd155384155400%_ _%hd155383%_)
                                       (_%else155388155408%_
                                        (lambda ()
                                          (_%lp155359%_
                                           _%rest155382%_
                                           (cons _%hd155383%_ _%r155362%_)))))
                                  (let ((_%K155396155437%_
                                         (lambda (_%exprs155435%_)
                                           (_%lp155359%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest155382%_
                                               _%exprs155435%_))
                                            _%r155362%_)))
                                        (_%K155391155421%_
                                         (lambda ()
                                           (if (null? _%rest155382%_)
                                               (_%lp155359%_
                                                _%rest155382%_
                                                (cons _%hd155383%_
                                                      _%r155362%_))
                                               (_%lp155359%_
                                                _%rest155382%_
                                                _%r155362%_))))
                                        (_%K155390155413%_
                                         (lambda ()
                                           (if (null? _%rest155382%_)
                                               (_%lp155359%_
                                                _%rest155382%_
                                                (cons _%hd155383%_
                                                      _%r155362%_))
                                               (_%lp155359%_
                                                _%rest155382%_
                                                _%r155362%_)))))
                                    (let ((_%try-match155387155416%_
                                           (lambda ()
                                             (if (symbol? _%hd155384155400%_)
                                                 (_%K155390155413%_)
                                                 (_%else155388155408%_)))))
                                      (if (pair? _%hd155384155400%_)
                                          (let ((_%tl155398155442%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd155384155400%_)))
                                                (_%hd155397155440%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd155384155400%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd155397155440%_
                                                         'begin))
                                                (let ((_%exprs155445%_
                                                       _%tl155398155442%_))
                                                  (_%K155396155437%_
                                                   _%exprs155445%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd155397155440%_
                                                             'quote))
                                                    (if (pair? _%tl155398155442%_)
                                                        (let ((_%tl155395155429%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl155398155442%_))))
                  (if (null? _%tl155395155429%_)
                      (_%K155391155421%_)
                      (_%try-match155387155416%_)))
                (_%try-match155387155416%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match155387155416%_))))
                                          (_%try-match155387155416%_))))))))
                        (if (pair? _%rest155363155371%_)
                            (let ((_%hd155368155450%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest155363155371%_)))
                                  (_%tl155369155452%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest155363155371%_))))
                              (let* ((_%hd155455%_ _%hd155368155450%_)
                                     (_%rest155457%_ _%tl155369155452%_))
                                (_%K155367155447%_
                                 _%rest155457%_
                                 _%hd155455%_)))
                            (_%else155365155379%_)))))))
          (let* ((_%g155311155321%_
                  (lambda (_%g155312155318%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g155312155318%_))))
                 (_%g155310155354%_
                  (lambda (_%g155312155324%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g155312155324%_))
                        (let ((_%e155314155326%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g155312155324%_))))
                          (let ((_%hd155315155329%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e155314155326%_)))
                                (_%tl155316155331%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e155314155326%_))))
                            ((lambda (_%L155334%_)
                               (let* ((_%body155349%_
                                       (map (lambda (_%g155344155346%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self155306%_
                                                 _%g155344155346%_)))
                                            _%L155334%_))
                                      (_%body155351%_
                                       (_%simplify155309%_ _%body155349%_)))
                                 (if (let ((__tmp157407
                                            (length _%body155351%_)))
                                       (declare (not safe))
                                       (##fx= __tmp157407 '1))
                                     (car _%body155351%_)
                                     (cons 'begin _%body155351%_))))
                             _%tl155316155331%_)))
                        (_%g155311155321%_ _%g155312155324%_)))))
            (_%g155310155354%_ _%stx155307%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self155267%_ _%stx155268%_)
        (let* ((_%g155270155280%_
                (lambda (_%g155271155277%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g155271155277%_))))
               (_%g155269155303%_
                (lambda (_%g155271155283%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g155271155283%_))
                      (let ((_%e155273155285%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g155271155283%_))))
                        (let ((_%hd155274155288%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155273155285%_)))
                              (_%tl155275155290%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155273155285%_))))
                          ((lambda (_%L155293%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L155293%_))))
                           _%tl155275155290%_)))
                      (_%g155270155280%_ _%g155271155283%_)))))
          (_%g155269155303%_ _%stx155268%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self155031%_ _%stx155032%_)
        (let* ((_%__stx155997155998%_ _%stx155032%_)
               (_%g155036155088%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx155997155998%_)))))
          (let ((_%__kont155999156000%_
                 (lambda (_%L155249%_ _%L155250%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self155031%_ _%L155249%_))))
                (_%__kont156001156002%_
                 (lambda (_%L155197%_ _%L155198%_ _%L155199%_)
                   (if (let ((__tmp157408
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L155199%_))))
                         (declare (not safe))
                         (##memq __tmp157408 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self155031%_ _%L155197%_)))))
                (_%__kont156005156006%_
                 (lambda (_%L155117%_ _%L155118%_)
                   (let ((_%decls155133%_ (map gx#syntax->datum _%L155118%_)))
                     (let ((__tmp157411
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls155133%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self155031%_
                                                   _%L155117%_))
                                                '())))))
                           (__tmp157409
                            (let ((__tmp157410
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp157410 _%decls155133%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp157411
                        gxc#current-compile-decls
                        __tmp157409))))))
            (let* ((_%__match156052156053%_
                    (lambda (_%e155052155141%_
                             _%hd155053155144%_
                             _%tl155054155146%_
                             _%e155055155149%_
                             _%hd155056155152%_
                             _%tl155057155154%_
                             _%e155058155157%_
                             _%hd155059155160%_
                             _%tl155060155162%_
                             _%__splice156003156004%_
                             _%target155061155165%_
                             _%tl155063155167%_)
                      (letrec ((_%loop155064155170%_
                                (lambda (_%hd155062155173%_
                                         _%param155068155175%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd155062155173%_))
                                      (let ((_%e155065155178%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd155062155173%_))))
                                        (let ((_%lp-tl155067155183%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155065155178%_)))
                                              (_%lp-hd155066155181%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155065155178%_))))
                                          (_%loop155064155170%_
                                           _%lp-tl155067155183%_
                                           (cons _%lp-hd155066155181%_
                                                 _%param155068155175%_))))
                                      (let ((_%param155069155186%_
                                             (reverse _%param155068155175%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl155057155154%_))
                                            (let ((_%e155070155189%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl155057155154%_))))
                                              (let ((_%tl155072155194%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e155070155189%_)))
                                                    (_%hd155071155192%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e155070155189%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl155072155194%_))
                                                    (let ((_%L155197%_
                                                           _%hd155071155192%_)
                                                          (_%L155198%_
                                                           _%param155069155186%_)
                                                          (_%L155199%_
                                                           _%hd155059155160%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L155199%_))
                       (not (let ((__tmp157412
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L155199%_))))
                              (declare (not safe))
                              (##memq __tmp157412 gxc#gambit-annotations))))
                  (_%__kont156001156002%_ _%L155197%_ _%L155198%_ _%L155199%_)
                  (_%__kont156005156006%_
                   _%hd155071155192%_
                   _%hd155056155152%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g155036155088%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g155036155088%_))))))))
                        (_%loop155064155170%_ _%target155061155165%_ '()))))
                   (_%__match156026156027%_
                    (lambda (_%e155040155225%_
                             _%hd155041155228%_
                             _%tl155042155230%_
                             _%e155043155233%_
                             _%hd155044155236%_
                             _%tl155045155238%_
                             _%e155046155241%_
                             _%hd155047155244%_
                             _%tl155048155246%_)
                      (let ((_%L155249%_ _%hd155047155244%_)
                            (_%L155250%_ _%hd155044155236%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L155250%_))
                            (_%__kont155999156000%_ _%L155249%_ _%L155250%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd155044155236%_))
                                (let ((_%e155058155157%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd155044155236%_))))
                                  (let ((_%tl155060155162%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e155058155157%_)))
                                        (_%hd155059155160%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e155058155157%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl155060155162%_))
                                        (let ((_%__splice156003156004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl155060155162%_
                                                  '0))))
                                          (let ((_%tl155063155167%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice156003156004%_
                                                    '1)))
                                                (_%target155061155165%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice156003156004%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl155063155167%_))
                                                (_%__match156052156053%_
                                                 _%e155040155225%_
                                                 _%hd155041155228%_
                                                 _%tl155042155230%_
                                                 _%e155043155233%_
                                                 _%hd155044155236%_
                                                 _%tl155045155238%_
                                                 _%e155058155157%_
                                                 _%hd155059155160%_
                                                 _%tl155060155162%_
                                                 _%__splice156003156004%_
                                                 _%target155061155165%_
                                                 _%tl155063155167%_)
                                                (_%__kont156005156006%_
                                                 _%hd155047155244%_
                                                 _%hd155044155236%_))))
                                        (_%__kont156005156006%_
                                         _%hd155047155244%_
                                         _%hd155044155236%_))))
                                (_%__kont156005156006%_
                                 _%hd155047155244%_
                                 _%hd155044155236%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx155997155998%_))
                  (let ((_%e155040155225%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx155997155998%_))))
                    (let ((_%tl155042155230%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e155040155225%_)))
                          (_%hd155041155228%_
                           (let ()
                             (declare (not safe))
                             (##car _%e155040155225%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl155042155230%_))
                          (let ((_%e155043155233%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl155042155230%_))))
                            (let ((_%tl155045155238%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e155043155233%_)))
                                  (_%hd155044155236%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e155043155233%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl155045155238%_))
                                  (let ((_%e155046155241%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl155045155238%_))))
                                    (let ((_%tl155048155246%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e155046155241%_)))
                                          (_%hd155047155244%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e155046155241%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl155048155246%_))
                                          (_%__match156026156027%_
                                           _%e155040155225%_
                                           _%hd155041155228%_
                                           _%tl155042155230%_
                                           _%e155043155233%_
                                           _%hd155044155236%_
                                           _%tl155045155238%_
                                           _%e155046155241%_
                                           _%hd155047155244%_
                                           _%tl155048155246%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd155044155236%_))
                                              (let ((_%e155058155157%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd155044155236%_))))
                                                (let ((_%tl155060155162%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e155058155157%_)))
                                                      (_%hd155059155160%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e155058155157%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl155060155162%_))
                                                      (let ((_%__splice156003156004%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl155060155162%_
                        '0))))
                (let ((_%tl155063155167%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice156003156004%_ '1)))
                      (_%target155061155165%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice156003156004%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl155063155167%_))
                      (_%__match156052156053%_
                       _%e155040155225%_
                       _%hd155041155228%_
                       _%tl155042155230%_
                       _%e155043155233%_
                       _%hd155044155236%_
                       _%tl155045155238%_
                       _%e155058155157%_
                       _%hd155059155160%_
                       _%tl155060155162%_
                       _%__splice156003156004%_
                       _%target155061155165%_
                       _%tl155063155167%_)
                      (let () (declare (not safe)) (_%g155036155088%_)))))
              (let () (declare (not safe)) (_%g155036155088%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g155036155088%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd155044155236%_))
                                      (let ((_%e155058155157%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd155044155236%_))))
                                        (let ((_%tl155060155162%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155058155157%_)))
                                              (_%hd155059155160%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155058155157%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl155060155162%_))
                                              (let ((_%__splice156003156004%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl155060155162%_
                                                        '0))))
                                                (let ((_%tl155063155167%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice156003156004%_
                                                          '1)))
                                                      (_%target155061155165%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice156003156004%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl155063155167%_))
                                                      (_%__match156052156053%_
                                                       _%e155040155225%_
                                                       _%hd155041155228%_
                                                       _%tl155042155230%_
                                                       _%e155043155233%_
                                                       _%hd155044155236%_
                                                       _%tl155045155238%_
                                                       _%e155058155157%_
                                                       _%hd155059155160%_
                                                       _%tl155060155162%_
                                                       _%__splice156003156004%_
                                                       _%target155061155165%_
                                                       _%tl155063155167%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g155036155088%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g155036155088%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g155036155088%_))))))
                          (let () (declare (not safe)) (_%g155036155088%_)))))
                  (let () (declare (not safe)) (_%g155036155088%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self154990%_ _%stx154991%_)
        (let* ((_%g154993155003%_
                (lambda (_%g154994155000%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154994155000%_))))
               (_%g154992155028%_
                (lambda (_%g154994155006%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154994155006%_))
                      (let ((_%e154996155008%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154994155006%_))))
                        (let ((_%hd154997155011%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154996155008%_)))
                              (_%tl154998155013%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154996155008%_))))
                          ((lambda (_%L155016%_)
                             (let ((_%decls155026%_
                                    (map gx#syntax->datum _%L155016%_)))
                               (let ((__tmp157413
                                      (let ((__tmp157414
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp157414
                                         _%decls155026%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp157413))
                               (cons 'declare _%decls155026%_)))
                           _%tl154998155013%_)))
                      (_%g154993155003%_ _%g154994155006%_)))))
          (_%g154992155028%_ _%stx154991%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self154736%_ _%stx154737%_)
        (let* ((_%g154739154756%_
                (lambda (_%g154740154753%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154740154753%_))))
               (_%g154738154987%_
                (lambda (_%g154740154759%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154740154759%_))
                      (let ((_%e154743154761%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154740154759%_))))
                        (let ((_%hd154744154764%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154743154761%_)))
                              (_%tl154745154766%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154743154761%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154745154766%_))
                              (let ((_%e154746154769%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154745154766%_))))
                                (let ((_%hd154747154772%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154746154769%_)))
                                      (_%tl154748154774%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154746154769%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154748154774%_))
                                      (let ((_%e154749154777%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154748154774%_))))
                                        (let ((_%hd154750154780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154749154777%_)))
                                              (_%tl154751154782%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154749154777%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154751154782%_))
                                              ((lambda (_%L154785%_
                                                        _%L154786%_)
                                                 (let* ((_%__stx156105156106%_
                                                         _%L154786%_)
                                                        (_%g154803154817%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx156105156106%_)))))
                                                   (let ((_%__kont156107156108%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self154736%_
                                                               _%L154785%_))))
                                                         (_%__kont156109156110%_
                                                          (lambda (_%L154949%_)
                                                            (let ((_%eid154958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L154949%_))))
                      (let ((_%lambda-expr154959154961%_
                             (gxc#apply-find-lambda-expression _%L154785%_)))
                        (if _%lambda-expr154959154961%_
                            (let* ((_%lambda-expr154964%_
                                    _%lambda-expr154959154961%_)
                                   (__tmp157415
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp157415
                               _%lambda-expr154964%_
                               _%eid154958%_))
                            '#f))
                      (cons 'define
                            (cons _%eid154958%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self154736%_
                                           _%L154785%_))
                                        '()))))))
                 (_%__kont156111156112%_
                  (lambda ()
                    (let* ((_%tmp154824%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body154933%_
                            (let _%lp154826%_ ((_%rest154828%_ _%L154786%_)
                                               (_%k154829%_ '0)
                                               (_%r154830%_ '()))
                              (let* ((_%__stx156075156076%_ _%rest154828%_)
                                     (_%g154835154852%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx156075156076%_)))))
                                (let ((_%__kont156077156078%_
                                       (lambda (_%L154920%_)
                                         (_%lp154826%_
                                          _%L154920%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k154829%_ '1))
                                          _%r154830%_)))
                                      (_%__kont156079156080%_
                                       (lambda (_%L154893%_ _%L154894%_)
                                         (_%lp154826%_
                                          _%L154893%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k154829%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L154894%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp154824%_
                           _%k154829%_
                           _%L154893%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r154830%_))))
                                      (_%__kont156081156082%_
                                       (lambda (_%L154864%_)
                                         (let ((__tmp157416
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L154864%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp154824%_
                                 _%k154829%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp157416
                                            _%r154830%_))))
                                      (_%__kont156083156084%_
                                       (lambda () (reverse _%r154830%_))))
                                  (let ((_%g154833154880%_
                                         (lambda ()
                                           (let ((_%L154864%_
                                                  _%__stx156075156076%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L154864%_))
                                                 (_%__kont156081156082%_
                                                  _%L154864%_)
                                                 (_%__kont156083156084%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx156075156076%_))
                                        (let ((_%e154838154909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx156075156076%_))))
                                          (let ((_%tl154840154914%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e154838154909%_)))
                                                (_%hd154839154912%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e154838154909%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd154839154912%_))
                                                (let ((_%e154841154917%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd154839154912%_))))
                                                  (if (equal? _%e154841154917%_
                                                              '#f)
                                                      (_%__kont156077156078%_
                                                       _%tl154840154914%_)
                                                      (_%__kont156079156080%_
                                                       _%tl154840154914%_
                                                       _%hd154839154912%_)))
                                                (_%__kont156079156080%_
                                                 _%tl154840154914%_
                                                 _%hd154839154912%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g154833154880%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp154824%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self154736%_
                                                       _%L154785%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp154824%_
                                         _%L154786%_
                                         _%L154785%_)
                                        _%body154933%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx156105156106%_))
                                                         (let ((_%e154805154971%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx156105156106%_))))
                   (let ((_%tl154807154976%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e154805154971%_)))
                         (_%hd154806154974%_
                          (let ()
                            (declare (not safe))
                            (##car _%e154805154971%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd154806154974%_))
                         (let ((_%e154808154979%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd154806154974%_))))
                           (if (equal? _%e154808154979%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl154807154976%_))
                                   (_%__kont156107156108%_)
                                   (_%__kont156111156112%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl154807154976%_))
                                   (_%__kont156109156110%_ _%hd154806154974%_)
                                   (_%__kont156111156112%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl154807154976%_))
                             (_%__kont156109156110%_ _%hd154806154974%_)
                             (_%__kont156111156112%_)))))
                 (_%__kont156111156112%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd154750154780%_
                                               _%hd154747154772%_)
                                              (_%g154739154756%_
                                               _%g154740154759%_))))
                                      (_%g154739154756%_ _%g154740154759%_))))
                              (_%g154739154756%_ _%g154740154759%_))))
                      (_%g154739154756%_ _%g154740154759%_)))))
          (_%g154738154987%_ _%stx154737%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals154711%_ _%hd154712%_ _%expr154713%_)
        (let ((_%$e154715%_ (gxc#apply-count-values _%expr154713%_)))
          (if _%$e154715%_
              ((lambda (_%count154718%_)
                 (let ((_%len154720%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd154712%_)))
                       (_%cmp154721%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd154712%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len154720%_ '0))
                           (_%cmp154721%_ _%count154718%_ _%len154720%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr154713%_
                          _%hd154712%_)))))
               _%$e154715%_)
              (let* ((_%len154727%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd154712%_)))
                     (_%cmp154729%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd154712%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg154731%_
                      (let ((__tmp157418
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd154712%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp157417 (number->string _%len154727%_)))
                        (declare (not safe))
                        (##string-append __tmp157418 __tmp157417 '" values")))
                     (_%count154733%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd154712%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len154727%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count154733%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals154711%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp154729%_
                                (cons _%count154733%_
                                      (cons _%len154727%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp154729%_
                                                        (cons _%count154733%_
                                                              (cons _%len154727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg154731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count154733%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var154706%_)
        (letrec ((_%generate-inline154708%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var154706%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var154706%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline154708%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline154708%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var154699%_ _%i154700%_ _%rest154701%_)
        (letrec ((_%generate-inline154703%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i154700%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest154701%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var154699%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var154699%_
                                                      (cons '0 '())))
                                          (cons _%var154699%_ '()))))
                        (cons '##values-ref
                              (cons _%var154699%_ (cons _%i154700%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline154703%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline154703%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var154693%_ _%i154694%_)
        (if (let () (declare (not safe)) (##fx= _%i154694%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var154693%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var154693%_ '()))
                                  (cons (cons 'list (cons _%var154693%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var154693%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var154693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var154693%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i154694%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var154693%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var154693%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var154693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var154693%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var154693%_ '()))
                                (cons _%i154694%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var154693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i154694%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self154625%_ _%stx154626%_)
        (let* ((_%g154628154645%_
                (lambda (_%g154629154642%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154629154642%_))))
               (_%g154627154690%_
                (lambda (_%g154629154648%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154629154648%_))
                      (let ((_%e154632154650%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154629154648%_))))
                        (let ((_%hd154633154653%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154632154650%_)))
                              (_%tl154634154655%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154632154650%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154634154655%_))
                              (let ((_%e154635154658%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154634154655%_))))
                                (let ((_%hd154636154661%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154635154658%_)))
                                      (_%tl154637154663%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154635154658%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154637154663%_))
                                      (let ((_%e154638154666%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154637154663%_))))
                                        (let ((_%hd154639154669%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154638154666%_)))
                                              (_%tl154640154671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154638154666%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154640154671%_))
                                              ((lambda (_%L154674%_
                                                        _%L154675%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self154625%_
                                                  _%L154675%_
                                                  _%L154674%_))
                                               _%hd154639154669%_
                                               _%hd154636154661%_)
                                              (_%g154628154645%_
                                               _%g154629154648%_))))
                                      (_%g154628154645%_ _%g154629154648%_))))
                              (_%g154628154645%_ _%g154629154648%_))))
                      (_%g154628154645%_ _%g154629154648%_)))))
          (_%g154627154690%_ _%stx154626%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self154584%_ _%hd154585%_ _%body154586%_)
        (let* ((_%hd154588%_ (gxc#generate-runtime-lambda-head _%hd154585%_))
               (_%body154590%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self154584%_ _%body154586%_)))
               (_%body154622%_
                (let* ((_%body154591154599%_ _%body154590%_)
                       (_%else154593154607%_
                        (lambda () (cons _%body154590%_ '())))
                       (_%K154595154612%_
                        (lambda (_%exprs154610%_) _%exprs154610%_)))
                  (if (pair? _%body154591154599%_)
                      (let ((_%hd154596154615%_
                             (let ()
                               (declare (not safe))
                               (##car _%body154591154599%_)))
                            (_%tl154597154617%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body154591154599%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd154596154615%_ 'begin))
                            (let ((_%exprs154620%_ _%tl154597154617%_))
                              (_%K154595154612%_ _%exprs154620%_))
                            (_%else154593154607%_)))
                      (_%else154593154607%_)))))
          (cons 'lambda (cons _%hd154588%_ _%body154622%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd154582%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd154582%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self153121%_ _%stx153122%_)
        (letrec ((_%dispatch-case?153124%_
                  (lambda (_%hd153812%_ _%body153813%_)
                    (let* ((_%form153815%_
                            (cons _%hd153812%_ (cons _%body153813%_ '())))
                           (_%__stx156137156138%_ _%form153815%_)
                           (_%g153820153977%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx156137156138%_)))))
                      (let ((_%__kont156139156140%_
                             (lambda (_%L154502%_ _%L154503%_ _%L154504%_)
                               '#t))
                            (_%__kont156145156146%_
                             (lambda (_%L154290%_
                                      _%L154291%_
                                      _%L154292%_
                                      _%L154293%_
                                      _%L154294%_
                                      _%L154295%_)
                               '#t))
                            (_%__kont156151156152%_
                             (lambda (_%L154085%_
                                      _%L154086%_
                                      _%L154087%_
                                      _%L154088%_)
                               '#t))
                            (_%__kont156153156154%_ (lambda () '#f)))
                        (let* ((_%__match156278156279%_
                                (lambda (_%e153937153989%_
                                         _%hd153938153992%_
                                         _%tl153939153994%_
                                         _%e153940153997%_
                                         _%hd153941154000%_
                                         _%tl153942154002%_
                                         _%e153943154005%_
                                         _%hd153944154008%_
                                         _%tl153945154010%_
                                         _%e153946154013%_
                                         _%hd153947154016%_
                                         _%tl153948154018%_
                                         _%e153949154021%_
                                         _%hd153950154024%_
                                         _%tl153951154026%_
                                         _%e153952154029%_
                                         _%hd153953154032%_
                                         _%tl153954154034%_
                                         _%e153955154037%_
                                         _%hd153956154040%_
                                         _%tl153957154042%_
                                         _%e153958154045%_
                                         _%hd153959154048%_
                                         _%tl153960154050%_
                                         _%e153961154053%_
                                         _%hd153962154056%_
                                         _%tl153963154058%_
                                         _%e153964154061%_
                                         _%hd153965154064%_
                                         _%tl153966154066%_
                                         _%e153967154069%_
                                         _%hd153968154072%_
                                         _%tl153969154074%_
                                         _%e153970154077%_
                                         _%hd153971154080%_
                                         _%tl153972154082%_)
                                  (let ((_%L154085%_ _%hd153971154080%_)
                                        (_%L154086%_ _%hd153962154056%_)
                                        (_%L154087%_ _%hd153953154032%_)
                                        (_%L154088%_ _%hd153938153992%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L154088%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L154087%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L154088%_
                                                _%L154085%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L154086%_
                                                     _%L154088%_))))
                                        (_%__kont156151156152%_
                                         _%L154085%_
                                         _%L154086%_
                                         _%L154087%_
                                         _%L154088%_)
                                        (_%__kont156153156154%_)))))
                               (_%__match156250156251%_
                                (lambda (_%e153937153989%_
                                         _%hd153938153992%_
                                         _%tl153939153994%_
                                         _%e153940153997%_
                                         _%hd153941154000%_
                                         _%tl153942154002%_
                                         _%e153943154005%_
                                         _%hd153944154008%_
                                         _%tl153945154010%_
                                         _%e153946154013%_
                                         _%hd153947154016%_
                                         _%tl153948154018%_
                                         _%e153949154021%_
                                         _%hd153950154024%_
                                         _%tl153951154026%_
                                         _%e153952154029%_
                                         _%hd153953154032%_
                                         _%tl153954154034%_
                                         _%e153955154037%_
                                         _%hd153956154040%_
                                         _%tl153957154042%_
                                         _%e153958154045%_
                                         _%hd153959154048%_
                                         _%tl153960154050%_
                                         _%e153961154053%_
                                         _%hd153962154056%_
                                         _%tl153963154058%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153957154042%_))
                                      (let ((_%e153964154061%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153957154042%_))))
                                        (let ((_%tl153966154066%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153964154061%_)))
                                              (_%hd153965154064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153964154061%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd153965154064%_))
                                              (let ((_%e153967154069%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd153965154064%_))))
                                                (let ((_%tl153969154074%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153967154069%_)))
                                                      (_%hd153968154072%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153967154069%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd153968154072%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd153968154072%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl153969154074%_))
                      (let ((_%e153970154077%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl153969154074%_))))
                        (let ((_%tl153972154082%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153970154077%_)))
                              (_%hd153971154080%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153970154077%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl153972154082%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl153966154066%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153942154002%_))
                                      (_%__match156278156279%_
                                       _%e153937153989%_
                                       _%hd153938153992%_
                                       _%tl153939153994%_
                                       _%e153940153997%_
                                       _%hd153941154000%_
                                       _%tl153942154002%_
                                       _%e153943154005%_
                                       _%hd153944154008%_
                                       _%tl153945154010%_
                                       _%e153946154013%_
                                       _%hd153947154016%_
                                       _%tl153948154018%_
                                       _%e153949154021%_
                                       _%hd153950154024%_
                                       _%tl153951154026%_
                                       _%e153952154029%_
                                       _%hd153953154032%_
                                       _%tl153954154034%_
                                       _%e153955154037%_
                                       _%hd153956154040%_
                                       _%tl153957154042%_
                                       _%e153958154045%_
                                       _%hd153959154048%_
                                       _%tl153960154050%_
                                       _%e153961154053%_
                                       _%hd153962154056%_
                                       _%tl153963154058%_
                                       _%e153964154061%_
                                       _%hd153965154064%_
                                       _%tl153966154066%_
                                       _%e153967154069%_
                                       _%hd153968154072%_
                                       _%tl153969154074%_
                                       _%e153970154077%_
                                       _%hd153971154080%_
                                       _%tl153972154082%_)
                                      (_%__kont156153156154%_))
                                  (_%__kont156153156154%_))
                              (_%__kont156153156154%_))))
                      (_%__kont156153156154%_))
                  (_%__kont156153156154%_))
              (_%__kont156153156154%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont156153156154%_))))
                                      (_%__kont156153156154%_))))
                               (_%__match156180156181%_
                                (lambda (_%e153873154130%_
                                         _%hd153874154133%_
                                         _%tl153875154135%_
                                         _%__splice156147156148%_
                                         _%target153876154138%_
                                         _%tl153878154140%_)
                                  (letrec ((_%loop153879154143%_
                                            (lambda (_%hd153877154146%_
                                                     _%arg153883154148%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd153877154146%_))
                                                  (let ((_%e153880154151%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd153877154146%_))))
                                                    (let ((_%lp-tl153882154156%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e153880154151%_)))
                                                          (_%lp-hd153881154154%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e153880154151%_))))
                                                      (_%loop153879154143%_
                                                       _%lp-tl153882154156%_
                                                       (cons _%lp-hd153881154154%_
                                                             _%arg153883154148%_))))
                                                  (let ((_%arg153884154159%_
                                                         (reverse _%arg153883154148%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl153875154135%_))
                                                        (let ((_%e153885154162%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl153875154135%_))))
                  (let ((_%tl153887154167%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e153885154162%_)))
                        (_%hd153886154165%_
                         (let ()
                           (declare (not safe))
                           (##car _%e153885154162%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd153886154165%_))
                        (let ((_%e153888154170%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd153886154165%_))))
                          (let ((_%tl153890154175%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153888154170%_)))
                                (_%hd153889154173%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153888154170%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd153889154173%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd153889154173%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl153890154175%_))
                                        (let ((_%e153891154178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl153890154175%_))))
                                          (let ((_%tl153893154183%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e153891154178%_)))
                                                (_%hd153892154181%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e153891154178%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd153892154181%_))
                                                (let ((_%e153894154186%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd153892154181%_))))
                                                  (let ((_%tl153896154191%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e153894154186%_)))
                                                        (_%hd153895154189%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e153894154186%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd153895154189%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd153895154189%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl153896154191%_))
                        (let ((_%e153897154194%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl153896154191%_))))
                          (let ((_%tl153899154199%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153897154194%_)))
                                (_%hd153898154197%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153897154194%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl153899154199%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl153893154183%_))
                                    (let ((_%e153900154202%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl153893154183%_))))
                                      (let ((_%tl153902154207%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e153900154202%_)))
                                            (_%hd153901154205%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e153900154202%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd153901154205%_))
                                            (let ((_%e153903154210%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd153901154205%_))))
                                              (let ((_%tl153905154215%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e153903154210%_)))
                                                    (_%hd153904154213%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e153903154210%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd153904154213%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd153904154213%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl153905154215%_))
                                                            (let ((_%e153906154218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl153905154215%_))))
                      (let ((_%tl153908154223%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e153906154218%_)))
                            (_%hd153907154221%_
                             (let ()
                               (declare (not safe))
                               (##car _%e153906154218%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl153908154223%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl153902154207%_))
                                (if (let ((__tmp157419
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl153902154207%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp157419 '1))
                                    (let ((_%__splice156149156150%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl153902154207%_
                                              '1))))
                                      (let ((_%tl153911154228%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice156149156150%_
                                                '1)))
                                            (_%target153909154226%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice156149156150%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl153911154228%_))
                                            (let ((_%e153918154231%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl153911154228%_))))
                                              (let ((_%tl153920154236%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e153918154231%_)))
                                                    (_%hd153919154234%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e153918154231%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd153919154234%_))
                                                    (let ((_%e153921154239%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd153919154234%_))))
                                                      (let ((_%tl153923154244%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e153921154239%_)))
                    (_%hd153922154242%_
                     (let () (declare (not safe)) (##car _%e153921154239%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd153922154242%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd153922154242%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl153923154244%_))
                            (let ((_%e153924154247%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl153923154244%_))))
                              (let ((_%tl153926154252%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e153924154247%_)))
                                    (_%hd153925154250%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e153924154247%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl153926154252%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl153920154236%_))
                                        (letrec ((_%loop153912154255%_
                                                  (lambda (_%hd153910154258%_
                                                           _%xarg153916154260%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd153910154258%_))
                                                        (let ((_%e153913154263%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd153910154258%_))))
                  (let ((_%lp-tl153915154268%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e153913154263%_)))
                        (_%lp-hd153914154266%_
                         (let ()
                           (declare (not safe))
                           (##car _%e153913154263%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd153914154266%_))
                        (let ((_%e153927154271%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd153914154266%_))))
                          (let ((_%tl153929154276%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153927154271%_)))
                                (_%hd153928154274%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153927154271%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd153928154274%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd153928154274%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl153929154276%_))
                                        (let ((_%e153930154279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl153929154276%_))))
                                          (let ((_%tl153932154284%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e153930154279%_)))
                                                (_%hd153931154282%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e153930154279%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl153932154284%_))
                                                (_%loop153912154255%_
                                                 _%lp-tl153915154268%_
                                                 (cons _%hd153931154282%_
                                                       _%xarg153916154260%_))
                                                (_%__match156250156251%_
                                                 _%e153873154130%_
                                                 _%hd153874154133%_
                                                 _%tl153875154135%_
                                                 _%e153885154162%_
                                                 _%hd153886154165%_
                                                 _%tl153887154167%_
                                                 _%e153888154170%_
                                                 _%hd153889154173%_
                                                 _%tl153890154175%_
                                                 _%e153891154178%_
                                                 _%hd153892154181%_
                                                 _%tl153893154183%_
                                                 _%e153894154186%_
                                                 _%hd153895154189%_
                                                 _%tl153896154191%_
                                                 _%e153897154194%_
                                                 _%hd153898154197%_
                                                 _%tl153899154199%_
                                                 _%e153900154202%_
                                                 _%hd153901154205%_
                                                 _%tl153902154207%_
                                                 _%e153903154210%_
                                                 _%hd153904154213%_
                                                 _%tl153905154215%_
                                                 _%e153906154218%_
                                                 _%hd153907154221%_
                                                 _%tl153908154223%_))))
                                        (_%__match156250156251%_
                                         _%e153873154130%_
                                         _%hd153874154133%_
                                         _%tl153875154135%_
                                         _%e153885154162%_
                                         _%hd153886154165%_
                                         _%tl153887154167%_
                                         _%e153888154170%_
                                         _%hd153889154173%_
                                         _%tl153890154175%_
                                         _%e153891154178%_
                                         _%hd153892154181%_
                                         _%tl153893154183%_
                                         _%e153894154186%_
                                         _%hd153895154189%_
                                         _%tl153896154191%_
                                         _%e153897154194%_
                                         _%hd153898154197%_
                                         _%tl153899154199%_
                                         _%e153900154202%_
                                         _%hd153901154205%_
                                         _%tl153902154207%_
                                         _%e153903154210%_
                                         _%hd153904154213%_
                                         _%tl153905154215%_
                                         _%e153906154218%_
                                         _%hd153907154221%_
                                         _%tl153908154223%_))
                                    (_%__match156250156251%_
                                     _%e153873154130%_
                                     _%hd153874154133%_
                                     _%tl153875154135%_
                                     _%e153885154162%_
                                     _%hd153886154165%_
                                     _%tl153887154167%_
                                     _%e153888154170%_
                                     _%hd153889154173%_
                                     _%tl153890154175%_
                                     _%e153891154178%_
                                     _%hd153892154181%_
                                     _%tl153893154183%_
                                     _%e153894154186%_
                                     _%hd153895154189%_
                                     _%tl153896154191%_
                                     _%e153897154194%_
                                     _%hd153898154197%_
                                     _%tl153899154199%_
                                     _%e153900154202%_
                                     _%hd153901154205%_
                                     _%tl153902154207%_
                                     _%e153903154210%_
                                     _%hd153904154213%_
                                     _%tl153905154215%_
                                     _%e153906154218%_
                                     _%hd153907154221%_
                                     _%tl153908154223%_))
                                (_%__match156250156251%_
                                 _%e153873154130%_
                                 _%hd153874154133%_
                                 _%tl153875154135%_
                                 _%e153885154162%_
                                 _%hd153886154165%_
                                 _%tl153887154167%_
                                 _%e153888154170%_
                                 _%hd153889154173%_
                                 _%tl153890154175%_
                                 _%e153891154178%_
                                 _%hd153892154181%_
                                 _%tl153893154183%_
                                 _%e153894154186%_
                                 _%hd153895154189%_
                                 _%tl153896154191%_
                                 _%e153897154194%_
                                 _%hd153898154197%_
                                 _%tl153899154199%_
                                 _%e153900154202%_
                                 _%hd153901154205%_
                                 _%tl153902154207%_
                                 _%e153903154210%_
                                 _%hd153904154213%_
                                 _%tl153905154215%_
                                 _%e153906154218%_
                                 _%hd153907154221%_
                                 _%tl153908154223%_))))
                        (_%__match156250156251%_
                         _%e153873154130%_
                         _%hd153874154133%_
                         _%tl153875154135%_
                         _%e153885154162%_
                         _%hd153886154165%_
                         _%tl153887154167%_
                         _%e153888154170%_
                         _%hd153889154173%_
                         _%tl153890154175%_
                         _%e153891154178%_
                         _%hd153892154181%_
                         _%tl153893154183%_
                         _%e153894154186%_
                         _%hd153895154189%_
                         _%tl153896154191%_
                         _%e153897154194%_
                         _%hd153898154197%_
                         _%tl153899154199%_
                         _%e153900154202%_
                         _%hd153901154205%_
                         _%tl153902154207%_
                         _%e153903154210%_
                         _%hd153904154213%_
                         _%tl153905154215%_
                         _%e153906154218%_
                         _%hd153907154221%_
                         _%tl153908154223%_))))
                (let ((_%xarg153917154287%_ (reverse _%xarg153916154260%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl153887154167%_))
                      (let ((_%L154290%_ _%hd153925154250%_)
                            (_%L154291%_ _%xarg153917154287%_)
                            (_%L154292%_ _%hd153907154221%_)
                            (_%L154293%_ _%hd153898154197%_)
                            (_%L154294%_ _%tl153878154140%_)
                            (_%L154295%_ _%arg153884154159%_))
                        (if (and (let ((__tmp157420
                                        (let ((__tmp157421
                                               (lambda (_%g154338154341%_
                                                        _%g154339154343%_)
                                                 (cons _%g154338154341%_
                                                       _%g154339154343%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp157421
                                           '()
                                           _%L154295%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp157420))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L154294%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L154293%_
                                    'apply))
                                 (let ((__tmp157424
                                        (length (let ((__tmp157425
                                                       (lambda (_%g154345154348%_
                                                                _%g154346154350%_)
                                                         (cons _%g154345154348%_
                                                               _%g154346154350%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp157425
                                                   '()
                                                   _%L154295%_))))
                                       (__tmp157422
                                        (length (let ((__tmp157423
                                                       (lambda (_%g154352154355%_
                                                                _%g154353154357%_)
                                                         (cons _%g154352154355%_
                                                               _%g154353154357%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp157423
                                                   '()
                                                   _%L154291%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp157424 __tmp157422))
                                 (let ((__tmp157428
                                        (let ((__tmp157429
                                               (lambda (_%g154359154362%_
                                                        _%g154360154364%_)
                                                 (cons _%g154359154362%_
                                                       _%g154360154364%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp157429
                                           '()
                                           _%L154295%_)))
                                       (__tmp157426
                                        (let ((__tmp157427
                                               (lambda (_%g154366154369%_
                                                        _%g154367154371%_)
                                                 (cons _%g154366154369%_
                                                       _%g154367154371%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp157427
                                           '()
                                           _%L154291%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp157428
                                    __tmp157426))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L154294%_
                                    _%L154290%_))
                                 (not (let ((__tmp157433
                                             (lambda (_%g154373154375%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g154373154375%_
                                                  _%L154292%_))))
                                            (__tmp157430
                                             (let ((__tmp157432
                                                    (lambda (_%g154377154380%_
                                                             _%g154378154382%_)
                                                      (cons _%g154377154380%_
                                                            _%g154378154382%_)))
                                                   (__tmp157431
                                                    (cons _%L154294%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp157432
                                                __tmp157431
                                                _%L154295%_))))
                                        (declare (not safe))
                                        (__find __tmp157433 __tmp157430))))
                            (_%__kont156145156146%_
                             _%L154290%_
                             _%L154291%_
                             _%L154292%_
                             _%L154293%_
                             _%L154294%_
                             _%L154295%_)
                            (_%__match156250156251%_
                             _%e153873154130%_
                             _%hd153874154133%_
                             _%tl153875154135%_
                             _%e153885154162%_
                             _%hd153886154165%_
                             _%tl153887154167%_
                             _%e153888154170%_
                             _%hd153889154173%_
                             _%tl153890154175%_
                             _%e153891154178%_
                             _%hd153892154181%_
                             _%tl153893154183%_
                             _%e153894154186%_
                             _%hd153895154189%_
                             _%tl153896154191%_
                             _%e153897154194%_
                             _%hd153898154197%_
                             _%tl153899154199%_
                             _%e153900154202%_
                             _%hd153901154205%_
                             _%tl153902154207%_
                             _%e153903154210%_
                             _%hd153904154213%_
                             _%tl153905154215%_
                             _%e153906154218%_
                             _%hd153907154221%_
                             _%tl153908154223%_)))
                      (_%__match156250156251%_
                       _%e153873154130%_
                       _%hd153874154133%_
                       _%tl153875154135%_
                       _%e153885154162%_
                       _%hd153886154165%_
                       _%tl153887154167%_
                       _%e153888154170%_
                       _%hd153889154173%_
                       _%tl153890154175%_
                       _%e153891154178%_
                       _%hd153892154181%_
                       _%tl153893154183%_
                       _%e153894154186%_
                       _%hd153895154189%_
                       _%tl153896154191%_
                       _%e153897154194%_
                       _%hd153898154197%_
                       _%tl153899154199%_
                       _%e153900154202%_
                       _%hd153901154205%_
                       _%tl153902154207%_
                       _%e153903154210%_
                       _%hd153904154213%_
                       _%tl153905154215%_
                       _%e153906154218%_
                       _%hd153907154221%_
                       _%tl153908154223%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop153912154255%_
                                           _%target153909154226%_
                                           '()))
                                        (_%__match156250156251%_
                                         _%e153873154130%_
                                         _%hd153874154133%_
                                         _%tl153875154135%_
                                         _%e153885154162%_
                                         _%hd153886154165%_
                                         _%tl153887154167%_
                                         _%e153888154170%_
                                         _%hd153889154173%_
                                         _%tl153890154175%_
                                         _%e153891154178%_
                                         _%hd153892154181%_
                                         _%tl153893154183%_
                                         _%e153894154186%_
                                         _%hd153895154189%_
                                         _%tl153896154191%_
                                         _%e153897154194%_
                                         _%hd153898154197%_
                                         _%tl153899154199%_
                                         _%e153900154202%_
                                         _%hd153901154205%_
                                         _%tl153902154207%_
                                         _%e153903154210%_
                                         _%hd153904154213%_
                                         _%tl153905154215%_
                                         _%e153906154218%_
                                         _%hd153907154221%_
                                         _%tl153908154223%_))
                                    (_%__match156250156251%_
                                     _%e153873154130%_
                                     _%hd153874154133%_
                                     _%tl153875154135%_
                                     _%e153885154162%_
                                     _%hd153886154165%_
                                     _%tl153887154167%_
                                     _%e153888154170%_
                                     _%hd153889154173%_
                                     _%tl153890154175%_
                                     _%e153891154178%_
                                     _%hd153892154181%_
                                     _%tl153893154183%_
                                     _%e153894154186%_
                                     _%hd153895154189%_
                                     _%tl153896154191%_
                                     _%e153897154194%_
                                     _%hd153898154197%_
                                     _%tl153899154199%_
                                     _%e153900154202%_
                                     _%hd153901154205%_
                                     _%tl153902154207%_
                                     _%e153903154210%_
                                     _%hd153904154213%_
                                     _%tl153905154215%_
                                     _%e153906154218%_
                                     _%hd153907154221%_
                                     _%tl153908154223%_))))
                            (_%__match156250156251%_
                             _%e153873154130%_
                             _%hd153874154133%_
                             _%tl153875154135%_
                             _%e153885154162%_
                             _%hd153886154165%_
                             _%tl153887154167%_
                             _%e153888154170%_
                             _%hd153889154173%_
                             _%tl153890154175%_
                             _%e153891154178%_
                             _%hd153892154181%_
                             _%tl153893154183%_
                             _%e153894154186%_
                             _%hd153895154189%_
                             _%tl153896154191%_
                             _%e153897154194%_
                             _%hd153898154197%_
                             _%tl153899154199%_
                             _%e153900154202%_
                             _%hd153901154205%_
                             _%tl153902154207%_
                             _%e153903154210%_
                             _%hd153904154213%_
                             _%tl153905154215%_
                             _%e153906154218%_
                             _%hd153907154221%_
                             _%tl153908154223%_))
                        (_%__match156250156251%_
                         _%e153873154130%_
                         _%hd153874154133%_
                         _%tl153875154135%_
                         _%e153885154162%_
                         _%hd153886154165%_
                         _%tl153887154167%_
                         _%e153888154170%_
                         _%hd153889154173%_
                         _%tl153890154175%_
                         _%e153891154178%_
                         _%hd153892154181%_
                         _%tl153893154183%_
                         _%e153894154186%_
                         _%hd153895154189%_
                         _%tl153896154191%_
                         _%e153897154194%_
                         _%hd153898154197%_
                         _%tl153899154199%_
                         _%e153900154202%_
                         _%hd153901154205%_
                         _%tl153902154207%_
                         _%e153903154210%_
                         _%hd153904154213%_
                         _%tl153905154215%_
                         _%e153906154218%_
                         _%hd153907154221%_
                         _%tl153908154223%_))
                    (_%__match156250156251%_
                     _%e153873154130%_
                     _%hd153874154133%_
                     _%tl153875154135%_
                     _%e153885154162%_
                     _%hd153886154165%_
                     _%tl153887154167%_
                     _%e153888154170%_
                     _%hd153889154173%_
                     _%tl153890154175%_
                     _%e153891154178%_
                     _%hd153892154181%_
                     _%tl153893154183%_
                     _%e153894154186%_
                     _%hd153895154189%_
                     _%tl153896154191%_
                     _%e153897154194%_
                     _%hd153898154197%_
                     _%tl153899154199%_
                     _%e153900154202%_
                     _%hd153901154205%_
                     _%tl153902154207%_
                     _%e153903154210%_
                     _%hd153904154213%_
                     _%tl153905154215%_
                     _%e153906154218%_
                     _%hd153907154221%_
                     _%tl153908154223%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match156250156251%_
                                                     _%e153873154130%_
                                                     _%hd153874154133%_
                                                     _%tl153875154135%_
                                                     _%e153885154162%_
                                                     _%hd153886154165%_
                                                     _%tl153887154167%_
                                                     _%e153888154170%_
                                                     _%hd153889154173%_
                                                     _%tl153890154175%_
                                                     _%e153891154178%_
                                                     _%hd153892154181%_
                                                     _%tl153893154183%_
                                                     _%e153894154186%_
                                                     _%hd153895154189%_
                                                     _%tl153896154191%_
                                                     _%e153897154194%_
                                                     _%hd153898154197%_
                                                     _%tl153899154199%_
                                                     _%e153900154202%_
                                                     _%hd153901154205%_
                                                     _%tl153902154207%_
                                                     _%e153903154210%_
                                                     _%hd153904154213%_
                                                     _%tl153905154215%_
                                                     _%e153906154218%_
                                                     _%hd153907154221%_
                                                     _%tl153908154223%_))))
                                            (_%__match156250156251%_
                                             _%e153873154130%_
                                             _%hd153874154133%_
                                             _%tl153875154135%_
                                             _%e153885154162%_
                                             _%hd153886154165%_
                                             _%tl153887154167%_
                                             _%e153888154170%_
                                             _%hd153889154173%_
                                             _%tl153890154175%_
                                             _%e153891154178%_
                                             _%hd153892154181%_
                                             _%tl153893154183%_
                                             _%e153894154186%_
                                             _%hd153895154189%_
                                             _%tl153896154191%_
                                             _%e153897154194%_
                                             _%hd153898154197%_
                                             _%tl153899154199%_
                                             _%e153900154202%_
                                             _%hd153901154205%_
                                             _%tl153902154207%_
                                             _%e153903154210%_
                                             _%hd153904154213%_
                                             _%tl153905154215%_
                                             _%e153906154218%_
                                             _%hd153907154221%_
                                             _%tl153908154223%_))))
                                    (_%__match156250156251%_
                                     _%e153873154130%_
                                     _%hd153874154133%_
                                     _%tl153875154135%_
                                     _%e153885154162%_
                                     _%hd153886154165%_
                                     _%tl153887154167%_
                                     _%e153888154170%_
                                     _%hd153889154173%_
                                     _%tl153890154175%_
                                     _%e153891154178%_
                                     _%hd153892154181%_
                                     _%tl153893154183%_
                                     _%e153894154186%_
                                     _%hd153895154189%_
                                     _%tl153896154191%_
                                     _%e153897154194%_
                                     _%hd153898154197%_
                                     _%tl153899154199%_
                                     _%e153900154202%_
                                     _%hd153901154205%_
                                     _%tl153902154207%_
                                     _%e153903154210%_
                                     _%hd153904154213%_
                                     _%tl153905154215%_
                                     _%e153906154218%_
                                     _%hd153907154221%_
                                     _%tl153908154223%_))
                                (_%__match156250156251%_
                                 _%e153873154130%_
                                 _%hd153874154133%_
                                 _%tl153875154135%_
                                 _%e153885154162%_
                                 _%hd153886154165%_
                                 _%tl153887154167%_
                                 _%e153888154170%_
                                 _%hd153889154173%_
                                 _%tl153890154175%_
                                 _%e153891154178%_
                                 _%hd153892154181%_
                                 _%tl153893154183%_
                                 _%e153894154186%_
                                 _%hd153895154189%_
                                 _%tl153896154191%_
                                 _%e153897154194%_
                                 _%hd153898154197%_
                                 _%tl153899154199%_
                                 _%e153900154202%_
                                 _%hd153901154205%_
                                 _%tl153902154207%_
                                 _%e153903154210%_
                                 _%hd153904154213%_
                                 _%tl153905154215%_
                                 _%e153906154218%_
                                 _%hd153907154221%_
                                 _%tl153908154223%_))
                            (_%__kont156153156154%_))))
                    (_%__kont156153156154%_))
                (_%__kont156153156154%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont156153156154%_))))
                                            (_%__kont156153156154%_))))
                                    (_%__kont156153156154%_))
                                (_%__kont156153156154%_))))
                        (_%__kont156153156154%_))
                    (_%__kont156153156154%_))
                (_%__kont156153156154%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont156153156154%_))))
                                        (_%__kont156153156154%_))
                                    (_%__kont156153156154%_))
                                (_%__kont156153156154%_))))
                        (_%__kont156153156154%_))))
                (_%__kont156153156154%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop153879154143%_
                                     _%target153876154138%_
                                     '()))))
                               (_%__match156168156169%_
                                (lambda (_%e153825154390%_
                                         _%hd153826154393%_
                                         _%tl153827154395%_
                                         _%__splice156141156142%_
                                         _%target153828154398%_
                                         _%tl153830154400%_)
                                  (letrec ((_%loop153831154403%_
                                            (lambda (_%hd153829154406%_
                                                     _%arg153835154408%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd153829154406%_))
                                                  (let ((_%e153832154411%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd153829154406%_))))
                                                    (let ((_%lp-tl153834154416%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e153832154411%_)))
                                                          (_%lp-hd153833154414%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e153832154411%_))))
                                                      (_%loop153831154403%_
                                                       _%lp-tl153834154416%_
                                                       (cons _%lp-hd153833154414%_
                                                             _%arg153835154408%_))))
                                                  (let ((_%arg153836154419%_
                                                         (reverse _%arg153835154408%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl153827154395%_))
                                                        (let ((_%e153837154422%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl153827154395%_))))
                  (let ((_%tl153839154427%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e153837154422%_)))
                        (_%hd153838154425%_
                         (let ()
                           (declare (not safe))
                           (##car _%e153837154422%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd153838154425%_))
                        (let ((_%e153840154430%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd153838154425%_))))
                          (let ((_%tl153842154435%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153840154430%_)))
                                (_%hd153841154433%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153840154430%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd153841154433%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd153841154433%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl153842154435%_))
                                        (let ((_%e153843154438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl153842154435%_))))
                                          (let ((_%tl153845154443%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e153843154438%_)))
                                                (_%hd153844154441%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e153843154438%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd153844154441%_))
                                                (let ((_%e153846154446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd153844154441%_))))
                                                  (let ((_%tl153848154451%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e153846154446%_)))
                                                        (_%hd153847154449%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e153846154446%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd153847154449%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd153847154449%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl153848154451%_))
                        (let ((_%e153849154454%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl153848154451%_))))
                          (let ((_%tl153851154459%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153849154454%_)))
                                (_%hd153850154457%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153849154454%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl153851154459%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl153845154443%_))
                                    (let ((_%__splice156143156144%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl153845154443%_
                                              '0))))
                                      (let ((_%tl153854154464%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice156143156144%_
                                                '1)))
                                            (_%target153852154462%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice156143156144%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl153854154464%_))
                                            (letrec ((_%loop153855154467%_
                                                      (lambda (_%hd153853154470%_
                                                               _%xarg153859154472%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd153853154470%_))
                                                            (let ((_%e153856154475%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd153853154470%_))))
                      (let ((_%lp-tl153858154480%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e153856154475%_)))
                            (_%lp-hd153857154478%_
                             (let ()
                               (declare (not safe))
                               (##car _%e153856154475%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd153857154478%_))
                            (let ((_%e153861154483%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd153857154478%_))))
                              (let ((_%tl153863154488%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e153861154483%_)))
                                    (_%hd153862154486%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e153861154483%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd153862154486%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd153862154486%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl153863154488%_))
                                            (let ((_%e153864154491%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl153863154488%_))))
                                              (let ((_%tl153866154496%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e153864154491%_)))
                                                    (_%hd153865154494%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e153864154491%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl153866154496%_))
                                                    (_%loop153855154467%_
                                                     _%lp-tl153858154480%_
                                                     (cons _%hd153865154494%_
                                                           _%xarg153859154472%_))
                                                    (_%__match156180156181%_
                                                     _%e153825154390%_
                                                     _%hd153826154393%_
                                                     _%tl153827154395%_
                                                     _%__splice156141156142%_
                                                     _%target153828154398%_
                                                     _%tl153830154400%_))))
                                            (_%__match156180156181%_
                                             _%e153825154390%_
                                             _%hd153826154393%_
                                             _%tl153827154395%_
                                             _%__splice156141156142%_
                                             _%target153828154398%_
                                             _%tl153830154400%_))
                                        (_%__match156180156181%_
                                         _%e153825154390%_
                                         _%hd153826154393%_
                                         _%tl153827154395%_
                                         _%__splice156141156142%_
                                         _%target153828154398%_
                                         _%tl153830154400%_))
                                    (_%__match156180156181%_
                                     _%e153825154390%_
                                     _%hd153826154393%_
                                     _%tl153827154395%_
                                     _%__splice156141156142%_
                                     _%target153828154398%_
                                     _%tl153830154400%_))))
                            (_%__match156180156181%_
                             _%e153825154390%_
                             _%hd153826154393%_
                             _%tl153827154395%_
                             _%__splice156141156142%_
                             _%target153828154398%_
                             _%tl153830154400%_))))
                    (let ((_%xarg153860154499%_
                           (reverse _%xarg153859154472%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl153839154427%_))
                          (let ((_%L154502%_ _%xarg153860154499%_)
                                (_%L154503%_ _%hd153850154457%_)
                                (_%L154504%_ _%arg153836154419%_))
                            (if (and (let ((__tmp157434
                                            (let ((__tmp157435
                                                   (lambda (_%g154532154535%_
                                                            _%g154533154537%_)
                                                     (cons _%g154532154535%_
                                                           _%g154533154537%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp157435
                                               '()
                                               _%L154504%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp157434))
                                     (let ((__tmp157438
                                            (length (let ((__tmp157439
                                                           (lambda (_%g154539154542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g154540154544%_)
                     (cons _%g154539154542%_ _%g154540154544%_))))
              (declare (not safe))
              (__foldr1 __tmp157439 '() _%L154504%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp157436
                                            (length (let ((__tmp157437
                                                           (lambda (_%g154546154549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g154547154551%_)
                     (cons _%g154546154549%_ _%g154547154551%_))))
              (declare (not safe))
              (__foldr1 __tmp157437 '() _%L154502%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp157438 __tmp157436))
                                     (let ((__tmp157442
                                            (let ((__tmp157443
                                                   (lambda (_%g154553154556%_
                                                            _%g154554154558%_)
                                                     (cons _%g154553154556%_
                                                           _%g154554154558%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp157443
                                               '()
                                               _%L154504%_)))
                                           (__tmp157440
                                            (let ((__tmp157441
                                                   (lambda (_%g154560154563%_
                                                            _%g154561154565%_)
                                                     (cons _%g154560154563%_
                                                           _%g154561154565%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp157441
                                               '()
                                               _%L154502%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp157442
                                        __tmp157440))
                                     (not (let ((__tmp157446
                                                 (lambda (_%g154567154569%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g154567154569%_
                                                      _%L154503%_))))
                                                (__tmp157444
                                                 (let ((__tmp157445
                                                        (lambda (_%g154571154574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g154572154576%_)
                  (cons _%g154571154574%_ _%g154572154576%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp157445
                                                    '()
                                                    _%L154504%_))))
                                            (declare (not safe))
                                            (__find __tmp157446 __tmp157444))))
                                (_%__kont156139156140%_
                                 _%L154502%_
                                 _%L154503%_
                                 _%L154504%_)
                                (_%__match156180156181%_
                                 _%e153825154390%_
                                 _%hd153826154393%_
                                 _%tl153827154395%_
                                 _%__splice156141156142%_
                                 _%target153828154398%_
                                 _%tl153830154400%_)))
                          (_%__match156180156181%_
                           _%e153825154390%_
                           _%hd153826154393%_
                           _%tl153827154395%_
                           _%__splice156141156142%_
                           _%target153828154398%_
                           _%tl153830154400%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop153855154467%_
                                               _%target153852154462%_
                                               '()))
                                            (_%__match156180156181%_
                                             _%e153825154390%_
                                             _%hd153826154393%_
                                             _%tl153827154395%_
                                             _%__splice156141156142%_
                                             _%target153828154398%_
                                             _%tl153830154400%_))))
                                    (_%__match156180156181%_
                                     _%e153825154390%_
                                     _%hd153826154393%_
                                     _%tl153827154395%_
                                     _%__splice156141156142%_
                                     _%target153828154398%_
                                     _%tl153830154400%_))
                                (_%__match156180156181%_
                                 _%e153825154390%_
                                 _%hd153826154393%_
                                 _%tl153827154395%_
                                 _%__splice156141156142%_
                                 _%target153828154398%_
                                 _%tl153830154400%_))))
                        (_%__match156180156181%_
                         _%e153825154390%_
                         _%hd153826154393%_
                         _%tl153827154395%_
                         _%__splice156141156142%_
                         _%target153828154398%_
                         _%tl153830154400%_))
                    (_%__match156180156181%_
                     _%e153825154390%_
                     _%hd153826154393%_
                     _%tl153827154395%_
                     _%__splice156141156142%_
                     _%target153828154398%_
                     _%tl153830154400%_))
                (_%__match156180156181%_
                 _%e153825154390%_
                 _%hd153826154393%_
                 _%tl153827154395%_
                 _%__splice156141156142%_
                 _%target153828154398%_
                 _%tl153830154400%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match156180156181%_
                                                 _%e153825154390%_
                                                 _%hd153826154393%_
                                                 _%tl153827154395%_
                                                 _%__splice156141156142%_
                                                 _%target153828154398%_
                                                 _%tl153830154400%_))))
                                        (_%__match156180156181%_
                                         _%e153825154390%_
                                         _%hd153826154393%_
                                         _%tl153827154395%_
                                         _%__splice156141156142%_
                                         _%target153828154398%_
                                         _%tl153830154400%_))
                                    (_%__match156180156181%_
                                     _%e153825154390%_
                                     _%hd153826154393%_
                                     _%tl153827154395%_
                                     _%__splice156141156142%_
                                     _%target153828154398%_
                                     _%tl153830154400%_))
                                (_%__match156180156181%_
                                 _%e153825154390%_
                                 _%hd153826154393%_
                                 _%tl153827154395%_
                                 _%__splice156141156142%_
                                 _%target153828154398%_
                                 _%tl153830154400%_))))
                        (_%__match156180156181%_
                         _%e153825154390%_
                         _%hd153826154393%_
                         _%tl153827154395%_
                         _%__splice156141156142%_
                         _%target153828154398%_
                         _%tl153830154400%_))))
                (_%__match156180156181%_
                 _%e153825154390%_
                 _%hd153826154393%_
                 _%tl153827154395%_
                 _%__splice156141156142%_
                 _%target153828154398%_
                 _%tl153830154400%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop153831154403%_
                                     _%target153828154398%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx156137156138%_))
                              (let ((_%e153825154390%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx156137156138%_))))
                                (let ((_%tl153827154395%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153825154390%_)))
                                      (_%hd153826154393%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153825154390%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd153826154393%_))
                                      (let ((_%__splice156141156142%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd153826154393%_
                                                '0))))
                                        (let ((_%tl153830154400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice156141156142%_
                                                  '1)))
                                              (_%target153828154398%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice156141156142%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153830154400%_))
                                              (_%__match156168156169%_
                                               _%e153825154390%_
                                               _%hd153826154393%_
                                               _%tl153827154395%_
                                               _%__splice156141156142%_
                                               _%target153828154398%_
                                               _%tl153830154400%_)
                                              (_%__match156180156181%_
                                               _%e153825154390%_
                                               _%hd153826154393%_
                                               _%tl153827154395%_
                                               _%__splice156141156142%_
                                               _%target153828154398%_
                                               _%tl153830154400%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl153827154395%_))
                                          (let ((_%e153940153997%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl153827154395%_))))
                                            (let ((_%tl153942154002%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e153940153997%_)))
                                                  (_%hd153941154000%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e153940153997%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd153941154000%_))
                                                  (let ((_%e153943154005%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd153941154000%_))))
                                                    (let ((_%tl153945154010%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e153943154005%_)))
                                                          (_%hd153944154008%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e153943154005%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd153944154008%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd153944154008%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl153945154010%_))
                          (let ((_%e153946154013%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl153945154010%_))))
                            (let ((_%tl153948154018%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e153946154013%_)))
                                  (_%hd153947154016%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e153946154013%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd153947154016%_))
                                  (let ((_%e153949154021%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd153947154016%_))))
                                    (let ((_%tl153951154026%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e153949154021%_)))
                                          (_%hd153950154024%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e153949154021%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd153950154024%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd153950154024%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl153951154026%_))
                                                  (let ((_%e153952154029%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl153951154026%_))))
                                                    (let ((_%tl153954154034%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e153952154029%_)))
                                                          (_%hd153953154032%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e153952154029%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl153954154034%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl153948154018%_))
                      (let ((_%e153955154037%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl153948154018%_))))
                        (let ((_%tl153957154042%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153955154037%_)))
                              (_%hd153956154040%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153955154037%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd153956154040%_))
                              (let ((_%e153958154045%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd153956154040%_))))
                                (let ((_%tl153960154050%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153958154045%_)))
                                      (_%hd153959154048%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153958154045%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd153959154048%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd153959154048%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153960154050%_))
                                              (let ((_%e153961154053%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153960154050%_))))
                                                (let ((_%tl153963154058%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153961154053%_)))
                                                      (_%hd153962154056%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153961154053%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl153963154058%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl153957154042%_))
                                                          (let ((_%e153964154061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl153957154042%_))))
                    (let ((_%tl153966154066%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e153964154061%_)))
                          (_%hd153965154064%_
                           (let ()
                             (declare (not safe))
                             (##car _%e153964154061%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd153965154064%_))
                          (let ((_%e153967154069%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd153965154064%_))))
                            (let ((_%tl153969154074%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e153967154069%_)))
                                  (_%hd153968154072%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e153967154069%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd153968154072%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd153968154072%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl153969154074%_))
                                          (let ((_%e153970154077%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl153969154074%_))))
                                            (let ((_%tl153972154082%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e153970154077%_)))
                                                  (_%hd153971154080%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e153970154077%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl153972154082%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl153966154066%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl153942154002%_))
                                                          (_%__match156278156279%_
                                                           _%e153825154390%_
                                                           _%hd153826154393%_
                                                           _%tl153827154395%_
                                                           _%e153940153997%_
                                                           _%hd153941154000%_
                                                           _%tl153942154002%_
                                                           _%e153943154005%_
                                                           _%hd153944154008%_
                                                           _%tl153945154010%_
                                                           _%e153946154013%_
                                                           _%hd153947154016%_
                                                           _%tl153948154018%_
                                                           _%e153949154021%_
                                                           _%hd153950154024%_
                                                           _%tl153951154026%_
                                                           _%e153952154029%_
                                                           _%hd153953154032%_
                                                           _%tl153954154034%_
                                                           _%e153955154037%_
                                                           _%hd153956154040%_
                                                           _%tl153957154042%_
                                                           _%e153958154045%_
                                                           _%hd153959154048%_
                                                           _%tl153960154050%_
                                                           _%e153961154053%_
                                                           _%hd153962154056%_
                                                           _%tl153963154058%_
                                                           _%e153964154061%_
                                                           _%hd153965154064%_
                                                           _%tl153966154066%_
                                                           _%e153967154069%_
                                                           _%hd153968154072%_
                                                           _%tl153969154074%_
                                                           _%e153970154077%_
                                                           _%hd153971154080%_
                                                           _%tl153972154082%_)
                                                          (_%__kont156153156154%_))
                                                      (_%__kont156153156154%_))
                                                  (_%__kont156153156154%_))))
                                          (_%__kont156153156154%_))
                                      (_%__kont156153156154%_))
                                  (_%__kont156153156154%_))))
                          (_%__kont156153156154%_))))
                  (_%__kont156153156154%_))
              (_%__kont156153156154%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont156153156154%_))
                                          (_%__kont156153156154%_))
                                      (_%__kont156153156154%_))))
                              (_%__kont156153156154%_))))
                      (_%__kont156153156154%_))
                  (_%__kont156153156154%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont156153156154%_))
                                              (_%__kont156153156154%_))
                                          (_%__kont156153156154%_))))
                                  (_%__kont156153156154%_))))
                          (_%__kont156153156154%_))
                      (_%__kont156153156154%_))
                  (_%__kont156153156154%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont156153156154%_))))
                                          (_%__kont156153156154%_)))))
                              (_%__kont156153156154%_)))))))
                 (_%dispatch-case-e153125%_
                  (lambda (_%hd153276%_ _%body153277%_)
                    (let* ((_%form153279%_
                            (cons _%hd153276%_ (cons _%body153277%_ '())))
                           (_%__stx156281156282%_ _%form153279%_)
                           (_%g153283153407%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx156281156282%_)))))
                      (let ((_%__kont156283156284%_
                             (lambda (_%L153778%_ _%L153779%_ _%L153780%_)
                               (let ((__tmp157447
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L153779%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self153121%_
                                  __tmp157447))))
                            (_%__kont156289156290%_
                             (lambda (_%L153626%_
                                      _%L153627%_
                                      _%L153628%_
                                      _%L153629%_)
                               (let ((__tmp157448
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L153626%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self153121%_
                                  __tmp157448))))
                            (_%__kont156293156294%_
                             (lambda (_%L153492%_ _%L153493%_ _%L153494%_)
                               (let ((__tmp157449
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L153492%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self153121%_
                                  __tmp157449)))))
                        (let* ((_%__match156390156391%_
                                (lambda (_%e153373153412%_
                                         _%hd153374153415%_
                                         _%tl153375153417%_
                                         _%e153376153420%_
                                         _%hd153377153423%_
                                         _%tl153378153425%_
                                         _%e153379153428%_
                                         _%hd153380153431%_
                                         _%tl153381153433%_
                                         _%e153382153436%_
                                         _%hd153383153439%_
                                         _%tl153384153441%_
                                         _%e153385153444%_
                                         _%hd153386153447%_
                                         _%tl153387153449%_
                                         _%e153388153452%_
                                         _%hd153389153455%_
                                         _%tl153390153457%_
                                         _%e153391153460%_
                                         _%hd153392153463%_
                                         _%tl153393153465%_
                                         _%e153394153468%_
                                         _%hd153395153471%_
                                         _%tl153396153473%_
                                         _%e153397153476%_
                                         _%hd153398153479%_
                                         _%tl153399153481%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153393153465%_))
                                      (let ((_%e153400153484%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153393153465%_))))
                                        (let ((_%tl153402153489%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153400153484%_)))
                                              (_%hd153401153487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153400153484%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153402153489%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl153378153425%_))
                                                  (_%__kont156293156294%_
                                                   _%hd153398153479%_
                                                   _%hd153389153455%_
                                                   _%hd153374153415%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g153283153407%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g153283153407%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g153283153407%_)))))
                               (_%__match156320156321%_
                                (lambda (_%e153334153530%_
                                         _%hd153335153533%_
                                         _%tl153336153535%_
                                         _%__splice156291156292%_
                                         _%target153337153538%_
                                         _%tl153339153540%_)
                                  (letrec ((_%loop153340153543%_
                                            (lambda (_%hd153338153546%_
                                                     _%arg153344153548%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd153338153546%_))
                                                  (let ((_%e153341153551%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd153338153546%_))))
                                                    (let ((_%lp-tl153343153556%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e153341153551%_)))
                                                          (_%lp-hd153342153554%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e153341153551%_))))
                                                      (_%loop153340153543%_
                                                       _%lp-tl153343153556%_
                                                       (cons _%lp-hd153342153554%_
                                                             _%arg153344153548%_))))
                                                  (let ((_%arg153345153559%_
                                                         (reverse _%arg153344153548%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl153336153535%_))
                                                        (let ((_%e153346153562%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl153336153535%_))))
                  (let ((_%tl153348153567%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e153346153562%_)))
                        (_%hd153347153565%_
                         (let ()
                           (declare (not safe))
                           (##car _%e153346153562%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd153347153565%_))
                        (let ((_%e153349153570%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd153347153565%_))))
                          (let ((_%tl153351153575%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153349153570%_)))
                                (_%hd153350153573%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153349153570%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd153350153573%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd153350153573%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl153351153575%_))
                                        (let ((_%e153352153578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl153351153575%_))))
                                          (let ((_%tl153354153583%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e153352153578%_)))
                                                (_%hd153353153581%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e153352153578%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd153353153581%_))
                                                (let ((_%e153355153586%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd153353153581%_))))
                                                  (let ((_%tl153357153591%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e153355153586%_)))
                                                        (_%hd153356153589%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e153355153586%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd153356153589%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd153356153589%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl153357153591%_))
                        (let ((_%e153358153594%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl153357153591%_))))
                          (let ((_%tl153360153599%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153358153594%_)))
                                (_%hd153359153597%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153358153594%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl153360153599%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl153354153583%_))
                                    (let ((_%e153361153602%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl153354153583%_))))
                                      (let ((_%tl153363153607%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e153361153602%_)))
                                            (_%hd153362153605%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e153361153602%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd153362153605%_))
                                            (let ((_%e153364153610%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd153362153605%_))))
                                              (let ((_%tl153366153615%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e153364153610%_)))
                                                    (_%hd153365153613%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e153364153610%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd153365153613%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd153365153613%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl153366153615%_))
                                                            (let ((_%e153367153618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl153366153615%_))))
                      (let ((_%tl153369153623%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e153367153618%_)))
                            (_%hd153368153621%_
                             (let ()
                               (declare (not safe))
                               (##car _%e153367153618%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl153369153623%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl153348153567%_))
                                (_%__kont156289156290%_
                                 _%hd153368153621%_
                                 _%hd153359153597%_
                                 _%tl153339153540%_
                                 _%arg153345153559%_)
                                (_%__match156390156391%_
                                 _%e153334153530%_
                                 _%hd153335153533%_
                                 _%tl153336153535%_
                                 _%e153346153562%_
                                 _%hd153347153565%_
                                 _%tl153348153567%_
                                 _%e153349153570%_
                                 _%hd153350153573%_
                                 _%tl153351153575%_
                                 _%e153352153578%_
                                 _%hd153353153581%_
                                 _%tl153354153583%_
                                 _%e153355153586%_
                                 _%hd153356153589%_
                                 _%tl153357153591%_
                                 _%e153358153594%_
                                 _%hd153359153597%_
                                 _%tl153360153599%_
                                 _%e153361153602%_
                                 _%hd153362153605%_
                                 _%tl153363153607%_
                                 _%e153364153610%_
                                 _%hd153365153613%_
                                 _%tl153366153615%_
                                 _%e153367153618%_
                                 _%hd153368153621%_
                                 _%tl153369153623%_))
                            (let ()
                              (declare (not safe))
                              (_%g153283153407%_)))))
                    (let () (declare (not safe)) (_%g153283153407%_)))
                (let () (declare (not safe)) (_%g153283153407%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g153283153407%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g153283153407%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g153283153407%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g153283153407%_)))))
                        (let () (declare (not safe)) (_%g153283153407%_)))
                    (let () (declare (not safe)) (_%g153283153407%_)))
                (let () (declare (not safe)) (_%g153283153407%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g153283153407%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g153283153407%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g153283153407%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g153283153407%_)))))
                        (let () (declare (not safe)) (_%g153283153407%_)))))
                (let () (declare (not safe)) (_%g153283153407%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop153340153543%_
                                     _%target153337153538%_
                                     '()))))
                               (_%__match156308156309%_
                                (lambda (_%e153288153666%_
                                         _%hd153289153669%_
                                         _%tl153290153671%_
                                         _%__splice156285156286%_
                                         _%target153291153674%_
                                         _%tl153293153676%_)
                                  (letrec ((_%loop153294153679%_
                                            (lambda (_%hd153292153682%_
                                                     _%arg153298153684%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd153292153682%_))
                                                  (let ((_%e153295153687%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd153292153682%_))))
                                                    (let ((_%lp-tl153297153692%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e153295153687%_)))
                                                          (_%lp-hd153296153690%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e153295153687%_))))
                                                      (_%loop153294153679%_
                                                       _%lp-tl153297153692%_
                                                       (cons _%lp-hd153296153690%_
                                                             _%arg153298153684%_))))
                                                  (let ((_%arg153299153695%_
                                                         (reverse _%arg153298153684%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl153290153671%_))
                                                        (let ((_%e153300153698%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl153290153671%_))))
                  (let ((_%tl153302153703%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e153300153698%_)))
                        (_%hd153301153701%_
                         (let ()
                           (declare (not safe))
                           (##car _%e153300153698%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd153301153701%_))
                        (let ((_%e153303153706%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd153301153701%_))))
                          (let ((_%tl153305153711%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153303153706%_)))
                                (_%hd153304153709%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153303153706%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd153304153709%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd153304153709%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl153305153711%_))
                                        (let ((_%e153306153714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl153305153711%_))))
                                          (let ((_%tl153308153719%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e153306153714%_)))
                                                (_%hd153307153717%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e153306153714%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd153307153717%_))
                                                (let ((_%e153309153722%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd153307153717%_))))
                                                  (let ((_%tl153311153727%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e153309153722%_)))
                                                        (_%hd153310153725%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e153309153722%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd153310153725%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd153310153725%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl153311153727%_))
                        (let ((_%e153312153730%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl153311153727%_))))
                          (let ((_%tl153314153735%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153312153730%_)))
                                (_%hd153313153733%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153312153730%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl153314153735%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl153308153719%_))
                                    (let ((_%__splice156287156288%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl153308153719%_
                                              '0))))
                                      (let ((_%tl153317153740%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice156287156288%_
                                                '1)))
                                            (_%target153315153738%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice156287156288%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl153317153740%_))
                                            (letrec ((_%loop153318153743%_
                                                      (lambda (_%hd153316153746%_
                                                               _%xarg153322153748%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd153316153746%_))
                                                            (let ((_%e153319153751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd153316153746%_))))
                      (let ((_%lp-tl153321153756%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e153319153751%_)))
                            (_%lp-hd153320153754%_
                             (let ()
                               (declare (not safe))
                               (##car _%e153319153751%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd153320153754%_))
                            (let ((_%e153324153759%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd153320153754%_))))
                              (let ((_%tl153326153764%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e153324153759%_)))
                                    (_%hd153325153762%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e153324153759%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd153325153762%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd153325153762%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl153326153764%_))
                                            (let ((_%e153327153767%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl153326153764%_))))
                                              (let ((_%tl153329153772%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e153327153767%_)))
                                                    (_%hd153328153770%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e153327153767%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl153329153772%_))
                                                    (_%loop153318153743%_
                                                     _%lp-tl153321153756%_
                                                     (cons _%hd153328153770%_
                                                           _%xarg153322153748%_))
                                                    (_%__match156320156321%_
                                                     _%e153288153666%_
                                                     _%hd153289153669%_
                                                     _%tl153290153671%_
                                                     _%__splice156285156286%_
                                                     _%target153291153674%_
                                                     _%tl153293153676%_))))
                                            (_%__match156320156321%_
                                             _%e153288153666%_
                                             _%hd153289153669%_
                                             _%tl153290153671%_
                                             _%__splice156285156286%_
                                             _%target153291153674%_
                                             _%tl153293153676%_))
                                        (_%__match156320156321%_
                                         _%e153288153666%_
                                         _%hd153289153669%_
                                         _%tl153290153671%_
                                         _%__splice156285156286%_
                                         _%target153291153674%_
                                         _%tl153293153676%_))
                                    (_%__match156320156321%_
                                     _%e153288153666%_
                                     _%hd153289153669%_
                                     _%tl153290153671%_
                                     _%__splice156285156286%_
                                     _%target153291153674%_
                                     _%tl153293153676%_))))
                            (_%__match156320156321%_
                             _%e153288153666%_
                             _%hd153289153669%_
                             _%tl153290153671%_
                             _%__splice156285156286%_
                             _%target153291153674%_
                             _%tl153293153676%_))))
                    (let ((_%xarg153323153775%_
                           (reverse _%xarg153322153748%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl153302153703%_))
                          (_%__kont156283156284%_
                           _%xarg153323153775%_
                           _%hd153313153733%_
                           _%arg153299153695%_)
                          (_%__match156320156321%_
                           _%e153288153666%_
                           _%hd153289153669%_
                           _%tl153290153671%_
                           _%__splice156285156286%_
                           _%target153291153674%_
                           _%tl153293153676%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop153318153743%_
                                               _%target153315153738%_
                                               '()))
                                            (_%__match156320156321%_
                                             _%e153288153666%_
                                             _%hd153289153669%_
                                             _%tl153290153671%_
                                             _%__splice156285156286%_
                                             _%target153291153674%_
                                             _%tl153293153676%_))))
                                    (_%__match156320156321%_
                                     _%e153288153666%_
                                     _%hd153289153669%_
                                     _%tl153290153671%_
                                     _%__splice156285156286%_
                                     _%target153291153674%_
                                     _%tl153293153676%_))
                                (_%__match156320156321%_
                                 _%e153288153666%_
                                 _%hd153289153669%_
                                 _%tl153290153671%_
                                 _%__splice156285156286%_
                                 _%target153291153674%_
                                 _%tl153293153676%_))))
                        (_%__match156320156321%_
                         _%e153288153666%_
                         _%hd153289153669%_
                         _%tl153290153671%_
                         _%__splice156285156286%_
                         _%target153291153674%_
                         _%tl153293153676%_))
                    (_%__match156320156321%_
                     _%e153288153666%_
                     _%hd153289153669%_
                     _%tl153290153671%_
                     _%__splice156285156286%_
                     _%target153291153674%_
                     _%tl153293153676%_))
                (_%__match156320156321%_
                 _%e153288153666%_
                 _%hd153289153669%_
                 _%tl153290153671%_
                 _%__splice156285156286%_
                 _%target153291153674%_
                 _%tl153293153676%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match156320156321%_
                                                 _%e153288153666%_
                                                 _%hd153289153669%_
                                                 _%tl153290153671%_
                                                 _%__splice156285156286%_
                                                 _%target153291153674%_
                                                 _%tl153293153676%_))))
                                        (_%__match156320156321%_
                                         _%e153288153666%_
                                         _%hd153289153669%_
                                         _%tl153290153671%_
                                         _%__splice156285156286%_
                                         _%target153291153674%_
                                         _%tl153293153676%_))
                                    (_%__match156320156321%_
                                     _%e153288153666%_
                                     _%hd153289153669%_
                                     _%tl153290153671%_
                                     _%__splice156285156286%_
                                     _%target153291153674%_
                                     _%tl153293153676%_))
                                (_%__match156320156321%_
                                 _%e153288153666%_
                                 _%hd153289153669%_
                                 _%tl153290153671%_
                                 _%__splice156285156286%_
                                 _%target153291153674%_
                                 _%tl153293153676%_))))
                        (_%__match156320156321%_
                         _%e153288153666%_
                         _%hd153289153669%_
                         _%tl153290153671%_
                         _%__splice156285156286%_
                         _%target153291153674%_
                         _%tl153293153676%_))))
                (_%__match156320156321%_
                 _%e153288153666%_
                 _%hd153289153669%_
                 _%tl153290153671%_
                 _%__splice156285156286%_
                 _%target153291153674%_
                 _%tl153293153676%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop153294153679%_
                                     _%target153291153674%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx156281156282%_))
                              (let ((_%e153288153666%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx156281156282%_))))
                                (let ((_%tl153290153671%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153288153666%_)))
                                      (_%hd153289153669%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153288153666%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd153289153669%_))
                                      (let ((_%__splice156285156286%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd153289153669%_
                                                '0))))
                                        (let ((_%tl153293153676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice156285156286%_
                                                  '1)))
                                              (_%target153291153674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice156285156286%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153293153676%_))
                                              (_%__match156308156309%_
                                               _%e153288153666%_
                                               _%hd153289153669%_
                                               _%tl153290153671%_
                                               _%__splice156285156286%_
                                               _%target153291153674%_
                                               _%tl153293153676%_)
                                              (_%__match156320156321%_
                                               _%e153288153666%_
                                               _%hd153289153669%_
                                               _%tl153290153671%_
                                               _%__splice156285156286%_
                                               _%target153291153674%_
                                               _%tl153293153676%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl153290153671%_))
                                          (let ((_%e153376153420%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl153290153671%_))))
                                            (let ((_%tl153378153425%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e153376153420%_)))
                                                  (_%hd153377153423%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e153376153420%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd153377153423%_))
                                                  (let ((_%e153379153428%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd153377153423%_))))
                                                    (let ((_%tl153381153433%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e153379153428%_)))
                                                          (_%hd153380153431%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e153379153428%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd153380153431%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd153380153431%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl153381153433%_))
                          (let ((_%e153382153436%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl153381153433%_))))
                            (let ((_%tl153384153441%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e153382153436%_)))
                                  (_%hd153383153439%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e153382153436%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd153383153439%_))
                                  (let ((_%e153385153444%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd153383153439%_))))
                                    (let ((_%tl153387153449%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e153385153444%_)))
                                          (_%hd153386153447%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e153385153444%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd153386153447%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd153386153447%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl153387153449%_))
                                                  (let ((_%e153388153452%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl153387153449%_))))
                                                    (let ((_%tl153390153457%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e153388153452%_)))
                                                          (_%hd153389153455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e153388153452%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl153390153457%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl153384153441%_))
                      (let ((_%e153391153460%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl153384153441%_))))
                        (let ((_%tl153393153465%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153391153460%_)))
                              (_%hd153392153463%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153391153460%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd153392153463%_))
                              (let ((_%e153394153468%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd153392153463%_))))
                                (let ((_%tl153396153473%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153394153468%_)))
                                      (_%hd153395153471%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153394153468%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd153395153471%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd153395153471%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153396153473%_))
                                              (let ((_%e153397153476%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153396153473%_))))
                                                (let ((_%tl153399153481%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153397153476%_)))
                                                      (_%hd153398153479%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153397153476%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl153399153481%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl153393153465%_))
                                                          (let ((_%e153400153484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl153393153465%_))))
                    (let ((_%tl153402153489%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e153400153484%_)))
                          (_%hd153401153487%_
                           (let ()
                             (declare (not safe))
                             (##car _%e153400153484%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl153402153489%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl153378153425%_))
                              (_%__kont156293156294%_
                               _%hd153398153479%_
                               _%hd153389153455%_
                               _%hd153289153669%_)
                              (let ()
                                (declare (not safe))
                                (_%g153283153407%_)))
                          (let () (declare (not safe)) (_%g153283153407%_)))))
                  (let () (declare (not safe)) (_%g153283153407%_)))
              (let () (declare (not safe)) (_%g153283153407%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g153283153407%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g153283153407%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g153283153407%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g153283153407%_)))))
                      (let () (declare (not safe)) (_%g153283153407%_)))
                  (let () (declare (not safe)) (_%g153283153407%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g153283153407%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g153283153407%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g153283153407%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g153283153407%_)))))
                          (let () (declare (not safe)) (_%g153283153407%_)))
                      (let () (declare (not safe)) (_%g153283153407%_)))
                  (let () (declare (not safe)) (_%g153283153407%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g153283153407%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g153283153407%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g153283153407%_))))))))
                 (_%generate1153126%_
                  (lambda (_%args153261%_
                           _%arglen153262%_
                           _%hd153263%_
                           _%body153264%_)
                    (let* ((_%len153266%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd153263%_)))
                           (_%condition153271%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd153263%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen153262%_
                                                (cons _%len153266%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen153262%_ (cons _%len153266%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len153266%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen153262%_
                                                    (cons _%len153266%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen153262%_ (cons _%len153266%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch153273%_
                            (if (_%dispatch-case?153124%_
                                 _%hd153263%_
                                 _%body153264%_)
                                (_%dispatch-case-e153125%_
                                 _%hd153263%_
                                 _%body153264%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self153121%_
                                 _%hd153263%_
                                 _%body153264%_))))
                      (cons _%condition153271%_
                            (cons (cons 'apply
                                        (cons _%dispatch153273%_
                                              (cons _%args153261%_ '())))
                                  '()))))))
          (let* ((_%g153128153156%_
                  (lambda (_%g153129153153%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g153129153153%_))))
                 (_%g153127153258%_
                  (lambda (_%g153129153159%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g153129153159%_))
                        (let ((_%e153132153161%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g153129153159%_))))
                          (let ((_%hd153133153164%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153132153161%_)))
                                (_%tl153134153166%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153132153161%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl153134153166%_))
                                (let ((_g157450_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl153134153166%_
                                          '0))))
                                  (begin
                                    (let ((_g157451_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g157450_)
                                                 (##values-length _g157450_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g157451_ 2)))
                                          (error "Context expects 2 values"
                                                 _g157451_)))
                                    (let ((_%target153135153169%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g157450_ 0)))
                                          (_%tl153137153171%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g157450_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl153137153171%_))
                                          (letrec ((_%loop153138153174%_
                                                    (lambda (_%hd153136153177%_
                                                             _%body153142153179%_
                                                             _%hd153143153181%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd153136153177%_))
                                                          (let ((_%e153139153184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd153136153177%_))))
                    (let ((_%lp-hd153140153187%_
                           (let ()
                             (declare (not safe))
                             (##car _%e153139153184%_)))
                          (_%lp-tl153141153189%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e153139153184%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd153140153187%_))
                          (let ((_%e153146153192%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd153140153187%_))))
                            (let ((_%hd153147153195%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e153146153192%_)))
                                  (_%tl153148153197%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e153146153192%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl153148153197%_))
                                  (let ((_%e153149153200%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl153148153197%_))))
                                    (let ((_%hd153150153203%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e153149153200%_)))
                                          (_%tl153151153205%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e153149153200%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl153151153205%_))
                                          (_%loop153138153174%_
                                           _%lp-tl153141153189%_
                                           (cons _%hd153150153203%_
                                                 _%body153142153179%_)
                                           (cons _%hd153147153195%_
                                                 _%hd153143153181%_))
                                          (_%g153128153156%_
                                           _%g153129153159%_))))
                                  (_%g153128153156%_ _%g153129153159%_))))
                          (_%g153128153156%_ _%g153129153159%_))))
                  (let ((_%body153144153208%_ (reverse _%body153142153179%_))
                        (_%hd153145153210%_ (reverse _%hd153143153181%_)))
                    ((lambda (_%L153213%_ _%L153214%_)
                       (let ((_%args153233%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen153234%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name153235%_
                              (let ((_%$e153230%_
                                     (let ((__tmp157452
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp157452 _%stx153122%_))))
                                (if _%$e153230%_
                                    _%$e153230%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args153233%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen153234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args153233%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args153233%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp157456
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name153235%_
                                                                (cons _%args153233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp157453
                                  (map (lambda (_%g153236153239%_
                                                _%g153237153241%_)
                                         (_%generate1153126%_
                                          _%args153233%_
                                          _%arglen153234%_
                                          _%g153236153239%_
                                          _%g153237153241%_))
                                       (let ((__tmp157454
                                              (lambda (_%g153243153246%_
                                                       _%g153244153248%_)
                                                (cons _%g153243153246%_
                                                      _%g153244153248%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp157454
                                          '()
                                          _%L153214%_))
                                       (let ((__tmp157455
                                              (lambda (_%g153250153253%_
                                                       _%g153251153255%_)
                                                (cons _%g153250153253%_
                                                      _%g153251153255%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp157455
                                          '()
                                          _%L153213%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp157456 __tmp157453)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body153144153208%_
                     _%hd153145153210%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop153138153174%_
                                             _%target153135153169%_
                                             '()
                                             '()))
                                          (_%g153128153156%_
                                           _%g153129153159%_)))))
                                (_%g153128153156%_ _%g153129153159%_))))
                        (_%g153128153156%_ _%g153129153159%_)))))
            (_%g153127153258%_ _%stx153122%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self152358%_ _%stx152359%_ _%compiled-body?152360%_)
        (letrec ((_%generate-simple152362%_
                  (lambda (_%hd153106%_ _%body153107%_)
                    (_%coalesce-boolean152363%_
                     (_%simplify-let152364%_
                      (gxc#generate-runtime-simple-let
                       _%self152358%_
                       'let
                       _%hd153106%_
                       _%body153107%_
                       _%compiled-body?152360%_)))))
                 (_%coalesce-boolean152363%_
                  (lambda (_%code152967%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code152968152994%_ _%code152967%_)
                               (_%else152970153002%_
                                (lambda () _%code152967%_))
                               (_%K152972153039%_
                                (lambda (_%expr2153005%_
                                         _%expr1153006%_
                                         _%id153007%_)
                                  (let* ((_%expr2153008153016%_
                                          _%expr2153005%_)
                                         (_%else153010153024%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1153006%_
                                                        (cons _%expr2153005%_
                                                              '())))))
                                         (_%K153012153029%_
                                          (lambda (_%exprs153027%_)
                                            (cons 'or
                                                  (cons _%expr1153006%_
                                                        _%exprs153027%_)))))
                                    (if (pair? _%expr2153008153016%_)
                                        (let ((_%hd153013153032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2153008153016%_)))
                                              (_%tl153014153034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2153008153016%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd153013153032%_ 'or))
                                              (let ((_%exprs153037%_
                                                     _%tl153014153034%_))
                                                (_%K153012153029%_
                                                 _%exprs153037%_))
                                              (_%else153010153024%_)))
                                        (_%else153010153024%_))))))
                          (if (pair? _%code152968152994%_)
                              (let ((_%hd152973153042%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code152968152994%_)))
                                    (_%tl152974153044%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code152968152994%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd152973153042%_ 'let))
                                    (if (pair? _%tl152974153044%_)
                                        (let ((_%hd152975153047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl152974153044%_)))
                                              (_%tl152976153049%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl152974153044%_))))
                                          (if (pair? _%hd152975153047%_)
                                              (let ((_%hd152987153052%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd152975153047%_)))
                                                    (_%tl152988153054%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd152975153047%_))))
                                                (if (pair? _%hd152987153052%_)
                                                    (let ((_%hd152989153057%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd152987153052%_)))
                                                          (_%tl152990153059%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd152987153052%_))))
                                                      (let ((_%id153062%_
                                                             _%hd152989153057%_))
                                                        (if (pair? _%tl152990153059%_)
                                                            (let ((_%hd152991153064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl152990153059%_)))
                          (_%tl152992153066%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl152990153059%_))))
                      (let ((_%expr1153069%_ _%hd152991153064%_))
                        (if (null? _%tl152992153066%_)
                            (if (null? _%tl152988153054%_)
                                (if (pair? _%tl152976153049%_)
                                    (let ((_%hd152977153071%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl152976153049%_)))
                                          (_%tl152978153073%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl152976153049%_))))
                                      (if (pair? _%hd152977153071%_)
                                          (let ((_%hd152979153076%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd152977153071%_)))
                                                (_%tl152980153078%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd152977153071%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd152979153076%_
                                                         'if))
                                                (if (pair? _%tl152980153078%_)
                                                    (let ((_%hd152981153081%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl152980153078%_)))
                                                          (_%tl152982153083%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl152980153078%_))))
                                                      (if ((lambda (_%g153085153087%_)
                                                             (eq? _%g153085153087%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id153062%_))
                   _%hd152981153081%_)
                  (if (pair? _%tl152982153083%_)
                      (let ((_%hd152983153090%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl152982153083%_)))
                            (_%tl152984153092%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl152982153083%_))))
                        (if ((lambda (_%g153094153096%_)
                               (eq? _%g153094153096%_ _%id153062%_))
                             _%hd152983153090%_)
                            (if (pair? _%tl152984153092%_)
                                (let ((_%hd152985153099%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl152984153092%_)))
                                      (_%tl152986153101%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl152984153092%_))))
                                  (let ((_%expr2153104%_ _%hd152985153099%_))
                                    (if (null? _%tl152986153101%_)
                                        (if (null? _%tl152978153073%_)
                                            (_%K152972153039%_
                                             _%expr2153104%_
                                             _%expr1153069%_
                                             _%id153062%_)
                                            (_%else152970153002%_))
                                        (_%else152970153002%_))))
                                (_%else152970153002%_))
                            (_%else152970153002%_)))
                      (_%else152970153002%_))
                  (_%else152970153002%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else152970153002%_))
                                                (_%else152970153002%_)))
                                          (_%else152970153002%_)))
                                    (_%else152970153002%_))
                                (_%else152970153002%_))
                            (_%else152970153002%_))))
                    (_%else152970153002%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else152970153002%_)))
                                              (_%else152970153002%_)))
                                        (_%else152970153002%_))
                                    (_%else152970153002%_)))
                              (_%else152970153002%_)))
                        _%code152967%_)))
                 (_%simplify-let152364%_
                  (lambda (_%code152666%_)
                    (let* ((_%code152667152739%_ _%code152666%_)
                           (_%else152672152747%_ (lambda () _%code152666%_)))
                      (let ((_%K152731152947%_
                             (lambda (_%expr152945%_) _%expr152945%_))
                            (_%K152714152893%_
                             (lambda (_%body152889%_
                                      _%expr152890%_
                                      _%id152891%_)
                               (cons 'let
                                     (cons (cons (cons _%id152891%_
                                                       (cons _%expr152890%_
                                                             '()))
                                                 '())
                                           _%body152889%_))))
                            (_%K152691152817%_
                             (lambda (_%body152811%_
                                      _%expr2152812%_
                                      _%id2152813%_
                                      _%expr1152814%_
                                      _%id1152815%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1152815%_
                                                       (cons _%expr1152814%_
                                                             '()))
                                                 (cons (cons _%id2152813%_
                                                             (cons _%expr2152812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body152811%_))))
                            (_%K152674152756%_
                             (lambda (_%body152751%_
                                      _%bind152752%_
                                      _%expr1152753%_
                                      _%id1152754%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1152754%_
                                                       (cons _%expr1152753%_
                                                             '()))
                                                 _%bind152752%_)
                                           _%body152751%_)))))
                        (if (pair? _%code152667152739%_)
                            (let ((_%tl152733152952%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code152667152739%_)))
                                  (_%hd152732152950%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code152667152739%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd152732152950%_ 'let))
                                  (if (pair? _%tl152733152952%_)
                                      (let ((_%tl152735152957%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl152733152952%_)))
                                            (_%hd152734152955%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl152733152952%_))))
                                        (if (null? _%hd152734152955%_)
                                            (if (pair? _%tl152735152957%_)
                                                (let ((_%tl152737152962%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl152735152957%_)))
                                                      (_%hd152736152960%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl152735152957%_))))
                                                  (if (null? _%tl152737152962%_)
                                                      (let ((_%expr152965%_
                                                             _%hd152736152960%_))
                                                        (_%K152731152947%_
                                                         _%expr152965%_))
                                                      (_%else152672152747%_)))
                                                (_%else152672152747%_))
                                            (if (pair? _%hd152734152955%_)
                                                (let ((_%tl152726152908%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd152734152955%_)))
                                                      (_%hd152725152906%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd152734152955%_))))
                                                  (if (pair? _%hd152725152906%_)
                                                      (let ((_%tl152728152913%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd152725152906%_)))
                    (_%hd152727152911%_
                     (let () (declare (not safe)) (##car _%hd152725152906%_))))
                (if (pair? _%tl152728152913%_)
                    (let ((_%tl152730152920%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl152728152913%_)))
                          (_%hd152729152918%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl152728152913%_))))
                      (if (null? _%tl152730152920%_)
                          (if (null? _%tl152726152908%_)
                              (if (pair? _%tl152735152957%_)
                                  (let ((_%tl152720152927%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl152735152957%_)))
                                        (_%hd152719152925%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl152735152957%_))))
                                    (if (pair? _%hd152719152925%_)
                                        (let ((_%tl152722152932%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd152719152925%_)))
                                              (_%hd152721152930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd152719152925%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd152721152930%_
                                                       'let))
                                              (if (pair? _%tl152722152932%_)
                                                  (let ((_%tl152724152937%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl152722152932%_)))
                                                        (_%hd152723152935%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl152722152932%_))))
                                                    (if (null? _%hd152723152935%_)
                                                        (if (null? _%tl152720152927%_)
                                                            (let ((_%id152916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd152727152911%_)
                          (_%expr152923%_ _%hd152729152918%_)
                          (_%body152940%_ _%tl152724152937%_))
                      (_%K152714152893%_
                       _%body152940%_
                       _%expr152923%_
                       _%id152916%_))
                    (_%else152672152747%_))
                (if (pair? _%hd152723152935%_)
                    (let ((_%tl152703152866%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd152723152935%_)))
                          (_%hd152702152864%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd152723152935%_))))
                      (if (pair? _%hd152702152864%_)
                          (let ((_%tl152705152871%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd152702152864%_)))
                                (_%hd152704152869%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd152702152864%_))))
                            (if (pair? _%tl152705152871%_)
                                (let ((_%tl152707152878%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl152705152871%_)))
                                      (_%hd152706152876%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl152705152871%_))))
                                  (if (null? _%tl152707152878%_)
                                      (if (null? _%tl152703152866%_)
                                          (if (null? _%tl152720152927%_)
                                              (let ((_%id1152840%_
                                                     _%hd152727152911%_)
                                                    (_%expr1152847%_
                                                     _%hd152729152918%_)
                                                    (_%id2152874%_
                                                     _%hd152704152869%_)
                                                    (_%expr2152881%_
                                                     _%hd152706152876%_)
                                                    (_%body152883%_
                                                     _%tl152724152937%_))
                                                (_%K152691152817%_
                                                 _%body152883%_
                                                 _%expr2152881%_
                                                 _%id2152874%_
                                                 _%expr1152847%_
                                                 _%id1152840%_))
                                              (_%else152672152747%_))
                                          (_%else152672152747%_))
                                      (_%else152672152747%_)))
                                (_%else152672152747%_)))
                          (_%else152672152747%_)))
                    (_%else152672152747%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else152672152747%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd152721152930%_
                                                           'let*))
                                                  (if (pair? _%tl152722152932%_)
                                                      (let ((_%tl152684152800%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl152722152932%_)))
                    (_%hd152683152798%_
                     (let () (declare (not safe)) (##car _%tl152722152932%_))))
                (if (null? _%tl152720152927%_)
                    (let ((_%id1152779%_ _%hd152727152911%_)
                          (_%expr1152786%_ _%hd152729152918%_)
                          (_%bind152803%_ _%hd152683152798%_)
                          (_%body152805%_ _%tl152684152800%_))
                      (_%K152674152756%_
                       _%body152805%_
                       _%bind152803%_
                       _%expr1152786%_
                       _%id1152779%_))
                    (_%else152672152747%_)))
              (_%else152672152747%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else152672152747%_))))
                                        (_%else152672152747%_)))
                                  (_%else152672152747%_))
                              (_%else152672152747%_))
                          (_%else152672152747%_)))
                    (_%else152672152747%_)))
              (_%else152672152747%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else152672152747%_))))
                                      (_%else152672152747%_))
                                  (_%else152672152747%_)))
                            (_%else152672152747%_))))))
                 (_%generate-values152365%_
                  (lambda (_%hd152479%_ _%body152480%_)
                    (let _%lp152482%_ ((_%rest152484%_ _%hd152479%_)
                                       (_%bind152485%_ '())
                                       (_%check152486%_ '())
                                       (_%post152487%_ '()))
                      (let* ((_%__stx156610156611%_ _%rest152484%_)
                             (_%g152490152501%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx156610156611%_)))))
                        (let ((_%__kont156612156613%_
                               (lambda (_%L152528%_ _%L152529%_)
                                 (let* ((_%__stx156566156567%_ _%L152529%_)
                                        (_%g152544152569%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx156566156567%_)))))
                                   (let ((_%__kont156568156569%_
                                          (lambda (_%L152642%_ _%L152643%_)
                                            (let ((_%eid152657%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L152643%_)))
                                                  (_%expr152658%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self152358%_
                                                      _%L152642%_))))
                                              (_%lp152482%_
                                               _%L152528%_
                                               (cons (cons _%eid152657%_
                                                           (cons _%expr152658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind152485%_)
                                               _%check152486%_
                                               _%post152487%_))))
                                         (_%__kont156570156571%_
                                          (lambda (_%L152590%_ _%L152591%_)
                                            (let* ((_%vals152604%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values152606%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals152604%_
                                                     _%L152591%_
                                                     _%L152590%_))
                                                   (_%refs152608%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals152604%_
                                                     _%L152591%_))
                                                   (_%expr152610%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self152358%_
                                                       _%L152590%_))))
                                              (_%lp152482%_
                                               _%L152528%_
                                               (cons (cons _%vals152604%_
                                                           (cons _%expr152610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind152485%_)
                                               (cons _%check-values152606%_
                                                     _%check152486%_)
                                               (cons _%refs152608%_
                                                     _%post152487%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx156566156567%_))
                                         (let ((_%e152548152618%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx156566156567%_))))
                                           (let ((_%tl152550152623%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e152548152618%_)))
                                                 (_%hd152549152621%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e152548152618%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd152549152621%_))
                                                 (let ((_%e152551152626%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd152549152621%_))))
                                                   (let ((_%tl152553152631%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e152551152626%_)))
                                                         (_%hd152552152629%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e152551152626%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl152553152631%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl152550152623%_))
                     (let ((_%e152554152634%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl152550152623%_))))
                       (let ((_%tl152556152639%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e152554152634%_)))
                             (_%hd152555152637%_
                              (let ()
                                (declare (not safe))
                                (##car _%e152554152634%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl152556152639%_))
                             (_%__kont156568156569%_
                              _%hd152555152637%_
                              _%hd152552152629%_)
                             (let ()
                               (declare (not safe))
                               (_%g152544152569%_)))))
                     (let () (declare (not safe)) (_%g152544152569%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl152550152623%_))
                     (let ((_%e152562152582%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl152550152623%_))))
                       (let ((_%tl152564152587%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e152562152582%_)))
                             (_%hd152563152585%_
                              (let ()
                                (declare (not safe))
                                (##car _%e152562152582%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl152564152587%_))
                             (_%__kont156570156571%_
                              _%hd152563152585%_
                              _%hd152549152621%_)
                             (let ()
                               (declare (not safe))
                               (_%g152544152569%_)))))
                     (let () (declare (not safe)) (_%g152544152569%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl152550152623%_))
                                                     (let ((_%e152562152582%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl152550152623%_))))
                                                       (let ((_%tl152564152587%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e152562152582%_)))
                     (_%hd152563152585%_
                      (let () (declare (not safe)) (##car _%e152562152582%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl152564152587%_))
                     (_%__kont156570156571%_
                      _%hd152563152585%_
                      _%hd152549152621%_)
                     (let () (declare (not safe)) (_%g152544152569%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g152544152569%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g152544152569%_)))))))
                              (_%__kont156614156615%_
                               (lambda ()
                                 (let* ((_%body152508%_
                                         (if _%compiled-body?152360%_
                                             _%body152480%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self152358%_
                                                _%body152480%_))))
                                        (_%body152510%_
                                         (_%generate-values-post152366%_
                                          _%post152487%_
                                          _%body152508%_))
                                        (_%body152512%_
                                         (_%generate-values-check152367%_
                                          _%check152486%_
                                          _%body152510%_)))
                                   (cons 'let
                                         (cons (reverse _%bind152485%_)
                                               (cons _%body152512%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx156610156611%_))
                              (let ((_%e152494152520%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx156610156611%_))))
                                (let ((_%tl152496152525%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152494152520%_)))
                                      (_%hd152495152523%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152494152520%_))))
                                  (_%__kont156612156613%_
                                   _%tl152496152525%_
                                   _%hd152495152523%_)))
                              (_%__kont156614156615%_)))))))
                 (_%generate-values-post152366%_
                  (lambda (_%post152438%_ _%body152439%_)
                    (let _%lp152441%_ ((_%rest152443%_ _%post152438%_)
                                       (_%body152444%_ _%body152439%_))
                      (let* ((_%rest152445152453%_ _%rest152443%_)
                             (_%else152447152461%_ (lambda () _%body152444%_))
                             (_%K152449152467%_
                              (lambda (_%rest152464%_ _%bind152465%_)
                                (_%lp152441%_
                                 _%rest152464%_
                                 (cons 'let
                                       (cons _%bind152465%_
                                             (cons _%body152444%_ '())))))))
                        (if (pair? _%rest152445152453%_)
                            (let ((_%hd152450152470%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest152445152453%_)))
                                  (_%tl152451152472%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest152445152453%_))))
                              (let* ((_%bind152475%_ _%hd152450152470%_)
                                     (_%rest152477%_ _%tl152451152472%_))
                                (_%K152449152467%_
                                 _%rest152477%_
                                 _%bind152475%_)))
                            (_%else152447152461%_))))))
                 (_%generate-values-check152367%_
                  (lambda (_%check152435%_ _%body152436%_)
                    (cons 'begin
                          (let ((__tmp157458 (cons _%body152436%_ '()))
                                (__tmp157457 (reverse _%check152435%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp157458 __tmp157457))))))
          (let* ((_%g152369152386%_
                  (lambda (_%g152370152383%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g152370152383%_))))
                 (_%g152368152432%_
                  (lambda (_%g152370152389%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g152370152389%_))
                        (let ((_%e152373152391%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g152370152389%_))))
                          (let ((_%hd152374152394%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152373152391%_)))
                                (_%tl152375152396%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152373152391%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl152375152396%_))
                                (let ((_%e152376152399%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl152375152396%_))))
                                  (let ((_%hd152377152402%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e152376152399%_)))
                                        (_%tl152378152404%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e152376152399%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl152378152404%_))
                                        (let ((_%e152379152407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl152378152404%_))))
                                          (let ((_%hd152380152410%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e152379152407%_)))
                                                (_%tl152381152412%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e152379152407%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl152381152412%_))
                                                ((lambda (_%L152415%_
                                                          _%L152416%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L152416%_)
                                                       (_%generate-simple152362%_
                                                        _%L152416%_
                                                        _%L152415%_)
                                                       (_%generate-values152365%_
                                                        _%L152416%_
                                                        _%L152415%_)))
                                                 _%hd152380152410%_
                                                 _%hd152377152402%_)
                                                (_%g152369152386%_
                                                 _%g152370152389%_))))
                                        (_%g152369152386%_
                                         _%g152370152389%_))))
                                (_%g152369152386%_ _%g152370152389%_))))
                        (_%g152369152386%_ _%g152370152389%_)))))
            (_%g152368152432%_ _%stx152359%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self153112%_ _%stx153113%_)
        (let ((_%compiled-body?153115%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self153112%_
           _%stx153113%_
           _%compiled-body?153115%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g157459_
        (let ((_g157460_ (let () (declare (not safe)) (##length _g157459_))))
          (cond ((let () (declare (not safe)) (##fx= _g157460_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g157459_))
                ((let () (declare (not safe)) (##fx= _g157460_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g157459_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g157459_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals152252%_ _%hd152253%_)
        (let _%lp152255%_ ((_%rest152257%_ _%hd152253%_)
                           (_%k152258%_ '0)
                           (_%r152259%_ '()))
          (let* ((_%__stx156624156625%_ _%rest152257%_)
                 (_%g152264152281%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx156624156625%_)))))
            (let ((_%__kont156626156627%_
                   (lambda (_%L152344%_)
                     (_%lp152255%_
                      _%L152344%_
                      (let () (declare (not safe)) (##fx+ _%k152258%_ '1))
                      _%r152259%_)))
                  (_%__kont156628156629%_
                   (lambda (_%L152317%_ _%L152318%_)
                     (_%lp152255%_
                      _%L152317%_
                      (let () (declare (not safe)) (##fx+ _%k152258%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L152318%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals152252%_
                                         _%k152258%_
                                         _%L152317%_)
                                        '()))
                            _%r152259%_))))
                  (_%__kont156630156631%_
                   (lambda (_%L152293%_)
                     (let ((__tmp157461
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L152293%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals152252%_
                                               _%k152258%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp157461 _%r152259%_))))
                  (_%__kont156632156633%_ (lambda () (reverse _%r152259%_))))
              (let ((_%g152262152304%_
                     (lambda ()
                       (let ((_%L152293%_ _%__stx156624156625%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L152293%_))
                             (_%__kont156630156631%_ _%L152293%_)
                             (_%__kont156632156633%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx156624156625%_))
                    (let ((_%e152267152333%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx156624156625%_))))
                      (let ((_%tl152269152338%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e152267152333%_)))
                            (_%hd152268152336%_
                             (let ()
                               (declare (not safe))
                               (##car _%e152267152333%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd152268152336%_))
                            (let ((_%e152270152341%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd152268152336%_))))
                              (if (equal? _%e152270152341%_ '#f)
                                  (_%__kont156626156627%_ _%tl152269152338%_)
                                  (_%__kont156628156629%_
                                   _%tl152269152338%_
                                   _%hd152268152336%_)))
                            (_%__kont156628156629%_
                             _%tl152269152338%_
                             _%hd152268152336%_))))
                    (let () (declare (not safe)) (_%g152262152304%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self151931%_ _%stx151932%_ _%compiled-body?151933%_)
        (letrec ((_%generate-simple151935%_
                  (lambda (_%hd152237%_ _%body152238%_)
                    (gxc#generate-runtime-simple-let
                     _%self151931%_
                     'letrec
                     _%hd152237%_
                     _%body152238%_
                     _%compiled-body?151933%_)))
                 (_%generate-values151936%_
                  (lambda (_%hd152016%_ _%body152017%_)
                    (let _%lp152019%_ ((_%rest152021%_ _%hd152016%_)
                                       (_%bind152022%_ '())
                                       (_%check152023%_ '())
                                       (_%post152024%_ '()))
                      (let* ((_%__stx156698156699%_ _%rest152021%_)
                             (_%g152027152038%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx156698156699%_)))))
                        (let ((_%__kont156700156701%_
                               (lambda (_%L152065%_ _%L152066%_)
                                 (let* ((_%__stx156654156655%_ _%L152066%_)
                                        (_%g152081152106%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx156654156655%_)))))
                                   (let ((_%__kont156656156657%_
                                          (lambda (_%L152213%_ _%L152214%_)
                                            (let ((_%eid152228%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L152214%_)))
                                                  (_%expr152229%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self151931%_
                                                      _%L152213%_))))
                                              (_%lp152019%_
                                               _%L152065%_
                                               (cons (cons _%eid152228%_
                                                           (cons _%expr152229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind152022%_)
                                               _%check152023%_
                                               _%post152024%_))))
                                         (_%__kont156658156659%_
                                          (lambda (_%L152127%_ _%L152128%_)
                                            (let* ((_%vals152141%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values152143%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals152141%_
                                                     _%L152128%_
                                                     _%L152127%_))
                                                   (_%refs152145%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals152141%_
                                                     _%L152128%_))
                                                   (_%expr152147%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self151931%_
                                                       _%L152127%_))))
                                              (_%lp152019%_
                                               _%L152065%_
                                               (let ((__tmp157463
                                                      (cons (cons _%vals152141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr152147%_ '()))
                    _%bind152022%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp157462
                                                      (map (lambda (_%e152149152151%_)
                                                             (let* ((_%g152153152162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e152149152151%_)
                            (_%E152155152166%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g152153152162%_
                                        '([eid _])))
                               '#!void))
                            (_%K152156152171%_
                             (lambda (_%eid152169%_)
                               (cons _%eid152169%_ (cons '#!void '())))))
                       (if (pair? _%g152153152162%_)
                           (let ((_%hd152157152174%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g152153152162%_)))
                                 (_%tl152158152176%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g152153152162%_))))
                             (let ((_%eid152179%_ _%hd152157152174%_))
                               (if (pair? _%tl152158152176%_)
                                   (let ((_%tl152160152181%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl152158152176%_))))
                                     (if (null? _%tl152160152181%_)
                                         (_%K152156152171%_ _%eid152179%_)
                                         (_%E152155152166%_)))
                                   (_%E152155152166%_))))
                           (_%E152155152166%_))))
                   _%refs152145%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp157463
                                                  __tmp157462))
                                               (cons _%check-values152143%_
                                                     _%check152023%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs152145%_
                                                  _%post152024%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx156654156655%_))
                                         (let ((_%e152085152189%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx156654156655%_))))
                                           (let ((_%tl152087152194%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e152085152189%_)))
                                                 (_%hd152086152192%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e152085152189%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd152086152192%_))
                                                 (let ((_%e152088152197%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd152086152192%_))))
                                                   (let ((_%tl152090152202%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e152088152197%_)))
                                                         (_%hd152089152200%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e152088152197%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl152090152202%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl152087152194%_))
                     (let ((_%e152091152205%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl152087152194%_))))
                       (let ((_%tl152093152210%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e152091152205%_)))
                             (_%hd152092152208%_
                              (let ()
                                (declare (not safe))
                                (##car _%e152091152205%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl152093152210%_))
                             (_%__kont156656156657%_
                              _%hd152092152208%_
                              _%hd152089152200%_)
                             (let ()
                               (declare (not safe))
                               (_%g152081152106%_)))))
                     (let () (declare (not safe)) (_%g152081152106%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl152087152194%_))
                     (let ((_%e152099152119%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl152087152194%_))))
                       (let ((_%tl152101152124%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e152099152119%_)))
                             (_%hd152100152122%_
                              (let ()
                                (declare (not safe))
                                (##car _%e152099152119%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl152101152124%_))
                             (_%__kont156658156659%_
                              _%hd152100152122%_
                              _%hd152086152192%_)
                             (let ()
                               (declare (not safe))
                               (_%g152081152106%_)))))
                     (let () (declare (not safe)) (_%g152081152106%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl152087152194%_))
                                                     (let ((_%e152099152119%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl152087152194%_))))
                                                       (let ((_%tl152101152124%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e152099152119%_)))
                     (_%hd152100152122%_
                      (let () (declare (not safe)) (##car _%e152099152119%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl152101152124%_))
                     (_%__kont156658156659%_
                      _%hd152100152122%_
                      _%hd152086152192%_)
                     (let () (declare (not safe)) (_%g152081152106%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g152081152106%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g152081152106%_)))))))
                              (_%__kont156702156703%_
                               (lambda ()
                                 (let* ((_%body152045%_
                                         (if _%compiled-body?151933%_
                                             _%body152017%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self151931%_
                                                _%body152017%_))))
                                        (_%body152047%_
                                         (_%generate-values-post151938%_
                                          _%post152024%_
                                          _%body152045%_))
                                        (_%body152049%_
                                         (_%generate-values-check151937%_
                                          _%check152023%_
                                          _%body152047%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind152022%_)
                                               (cons _%body152049%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx156698156699%_))
                              (let ((_%e152031152057%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx156698156699%_))))
                                (let ((_%tl152033152062%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152031152057%_)))
                                      (_%hd152032152060%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152031152057%_))))
                                  (_%__kont156700156701%_
                                   _%tl152033152062%_
                                   _%hd152032152060%_)))
                              (_%__kont156702156703%_)))))))
                 (_%generate-values-check151937%_
                  (lambda (_%check152013%_ _%body152014%_)
                    (cons 'begin
                          (let ((__tmp157465 (cons _%body152014%_ '()))
                                (__tmp157464 (reverse _%check152013%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp157465 __tmp157464)))))
                 (_%generate-values-post151938%_
                  (lambda (_%post152006%_ _%body152007%_)
                    (cons 'begin
                          (let ((__tmp157469 (cons _%body152007%_ '()))
                                (__tmp157466
                                 (let ((__tmp157468
                                        (lambda (_%g152008152010%_)
                                          (cons 'set! _%g152008152010%_)))
                                       (__tmp157467 (reverse _%post152006%_)))
                                   (declare (not safe))
                                   (##map __tmp157468 __tmp157467))))
                            (declare (not safe))
                            (__foldr1 cons __tmp157469 __tmp157466))))))
          (let* ((_%g151940151957%_
                  (lambda (_%g151941151954%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151941151954%_))))
                 (_%g151939152003%_
                  (lambda (_%g151941151960%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151941151960%_))
                        (let ((_%e151944151962%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151941151960%_))))
                          (let ((_%hd151945151965%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151944151962%_)))
                                (_%tl151946151967%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151944151962%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl151946151967%_))
                                (let ((_%e151947151970%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl151946151967%_))))
                                  (let ((_%hd151948151973%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151947151970%_)))
                                        (_%tl151949151975%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151947151970%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl151949151975%_))
                                        (let ((_%e151950151978%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl151949151975%_))))
                                          (let ((_%hd151951151981%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151950151978%_)))
                                                (_%tl151952151983%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151950151978%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl151952151983%_))
                                                ((lambda (_%L151986%_
                                                          _%L151987%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L151987%_)
                                                       (_%generate-simple151935%_
                                                        _%L151987%_
                                                        _%L151986%_)
                                                       (_%generate-values151936%_
                                                        _%L151987%_
                                                        _%L151986%_)))
                                                 _%hd151951151981%_
                                                 _%hd151948151973%_)
                                                (_%g151940151957%_
                                                 _%g151941151960%_))))
                                        (_%g151940151957%_
                                         _%g151941151960%_))))
                                (_%g151940151957%_ _%g151941151960%_))))
                        (_%g151940151957%_ _%g151941151960%_)))))
            (_%g151939152003%_ _%stx151932%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self152243%_ _%stx152244%_)
        (let ((_%compiled-body?152246%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self152243%_
           _%stx152244%_
           _%compiled-body?152246%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g157470_
        (let ((_g157471_ (let () (declare (not safe)) (##length _g157470_))))
          (cond ((let () (declare (not safe)) (##fx= _g157471_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g157470_))
                ((let () (declare (not safe)) (##fx= _g157471_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g157470_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g157470_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self151512%_ _%stx151513%_)
        (letrec ((_%generate-values151515%_
                  (lambda (_%hd151758%_ _%body151759%_)
                    (let _%lp151761%_ ((_%rest151763%_ _%hd151758%_)
                                       (_%bind151764%_ '()))
                      (let* ((_%rest151765151773%_ _%rest151763%_)
                             (_%else151767151784%_
                              (lambda ()
                                (let ((_%bind151781%_ (reverse _%bind151764%_))
                                      (_%body151782%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self151512%_
                                          _%body151759%_))))
                                  (cons 'letrec*
                                        (cons _%bind151781%_
                                              (cons _%body151782%_ '()))))))
                             (_%K151769151918%_
                              (lambda (_%rest151787%_ _%hd-bind151788%_)
                                (let* ((_%__stx156712156713%_
                                        _%hd-bind151788%_)
                                       (_%g151791151816%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx156712156713%_)))))
                                  (let ((_%__kont156714156715%_
                                         (lambda (_%L151897%_ _%L151898%_)
                                           (let ((_%eid151912%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L151898%_)))
                                                 (_%expr151913%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self151512%_
                                                     _%L151897%_))))
                                             (_%lp151761%_
                                              _%rest151787%_
                                              (cons (cons _%eid151912%_
                                                          (cons _%expr151913%_
                                                                '()))
                                                    _%bind151764%_)))))
                                        (_%__kont156716156717%_
                                         (lambda (_%L151837%_ _%L151838%_)
                                           (let* ((_%vals151857%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp151859%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values151861%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp151859%_
                                                    _%L151838%_
                                                    _%L151837%_))
                                                  (_%refs151863%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals151857%_
                                                    _%L151838%_))
                                                  (_%expr151865%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self151512%_
                                                      _%L151837%_))))
                                             (_%lp151761%_
                                              _%rest151787%_
                                              (let ((__tmp157472
                                                     (cons (cons _%vals151857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp151859%_
                                                       (cons _%expr151865%_
                                                             '()))
                                                 '())
                                           (cons _%check-values151861%_
                                                 (cons _%tmp151859%_ '()))))
                               '()))
                   _%bind151764%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp157472
                                                 _%refs151863%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx156712156713%_))
                                        (let ((_%e151795151873%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx156712156713%_))))
                                          (let ((_%tl151797151878%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151795151873%_)))
                                                (_%hd151796151876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151795151873%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd151796151876%_))
                                                (let ((_%e151798151881%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd151796151876%_))))
                                                  (let ((_%tl151800151886%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e151798151881%_)))
                                                        (_%hd151799151884%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e151798151881%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl151800151886%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl151797151878%_))
                                                            (let ((_%e151801151889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl151797151878%_))))
                      (let ((_%tl151803151894%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e151801151889%_)))
                            (_%hd151802151892%_
                             (let ()
                               (declare (not safe))
                               (##car _%e151801151889%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl151803151894%_))
                            (_%__kont156714156715%_
                             _%hd151802151892%_
                             _%hd151799151884%_)
                            (let ()
                              (declare (not safe))
                              (_%g151791151816%_)))))
                    (let () (declare (not safe)) (_%g151791151816%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl151797151878%_))
                    (let ((_%e151809151829%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl151797151878%_))))
                      (let ((_%tl151811151834%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e151809151829%_)))
                            (_%hd151810151832%_
                             (let ()
                               (declare (not safe))
                               (##car _%e151809151829%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl151811151834%_))
                            (_%__kont156716156717%_
                             _%hd151810151832%_
                             _%hd151796151876%_)
                            (let ()
                              (declare (not safe))
                              (_%g151791151816%_)))))
                    (let () (declare (not safe)) (_%g151791151816%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl151797151878%_))
                                                    (let ((_%e151809151829%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl151797151878%_))))
                                                      (let ((_%tl151811151834%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e151809151829%_)))
                    (_%hd151810151832%_
                     (let () (declare (not safe)) (##car _%e151809151829%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl151811151834%_))
                    (_%__kont156716156717%_
                     _%hd151810151832%_
                     _%hd151796151876%_)
                    (let () (declare (not safe)) (_%g151791151816%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g151791151816%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g151791151816%_))))))))
                        (if (pair? _%rest151765151773%_)
                            (let ((_%hd151770151921%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest151765151773%_)))
                                  (_%tl151771151923%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest151765151773%_))))
                              (let* ((_%hd-bind151926%_ _%hd151770151921%_)
                                     (_%rest151928%_ _%tl151771151923%_))
                                (_%K151769151918%_
                                 _%rest151928%_
                                 _%hd-bind151926%_)))
                            (_%else151767151784%_))))))
                 (_%generate-letrec?151516%_
                  (lambda (_%hd151648%_)
                    (let _%lp151650%_ ((_%rest151652%_ _%hd151648%_))
                      (let* ((_%rest151653151661%_ _%rest151652%_)
                             (_%else151655151669%_ (lambda () '#t))
                             (_%K151657151746%_
                              (lambda (_%rest151672%_ _%hd-bind151673%_)
                                (let* ((_%g151675151692%_
                                        (lambda (_%g151676151689%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g151676151689%_))))
                                       (_%g151674151743%_
                                        (lambda (_%g151676151695%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g151676151695%_))
                                              (let ((_%e151679151697%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g151676151695%_))))
                                                (let ((_%hd151680151700%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e151679151697%_)))
                                                      (_%tl151681151702%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e151679151697%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd151680151700%_))
                                                      (let ((_%e151682151705%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd151680151700%_))))
                (let ((_%hd151683151708%_
                       (let () (declare (not safe)) (##car _%e151682151705%_)))
                      (_%tl151684151710%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e151682151705%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl151684151710%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl151681151702%_))
                          (let ((_%e151685151713%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl151681151702%_))))
                            (let ((_%hd151686151716%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e151685151713%_)))
                                  (_%tl151687151718%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e151685151713%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl151687151718%_))
                                  ((lambda (_%L151721%_ _%L151722%_)
                                     (if (_%is-lambda-expr?151517%_
                                          _%L151721%_)
                                         (_%lp151650%_ _%rest151672%_)
                                         '#f))
                                   _%hd151686151716%_
                                   _%hd151683151708%_)
                                  (_%g151675151692%_ _%g151676151695%_))))
                          (_%g151675151692%_ _%g151676151695%_))
                      (_%g151675151692%_ _%g151676151695%_))))
              (_%g151675151692%_ _%g151676151695%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g151675151692%_
                                               _%g151676151695%_)))))
                                  (_%g151674151743%_ _%hd-bind151673%_)))))
                        (if (pair? _%rest151653151661%_)
                            (let ((_%hd151658151749%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest151653151661%_)))
                                  (_%tl151659151751%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest151653151661%_))))
                              (let* ((_%hd-bind151754%_ _%hd151658151749%_)
                                     (_%rest151756%_ _%tl151659151751%_))
                                (_%K151657151746%_
                                 _%rest151756%_
                                 _%hd-bind151754%_)))
                            (_%else151655151669%_))))))
                 (_%is-lambda-expr?151517%_
                  (lambda (_%expr151585%_)
                    (let* ((_%__stx156756156757%_ _%expr151585%_)
                           (_%g151588151602%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx156756156757%_)))))
                      (let ((_%__kont156758156759%_
                             (lambda (_%L151630%_ _%L151631%_) '#t))
                            (_%__kont156760156761%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx156756156757%_))
                            (let ((_%e151592151614%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx156756156757%_))))
                              (let ((_%tl151594151619%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e151592151614%_)))
                                    (_%hd151593151617%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e151592151614%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd151593151617%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd151593151617%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl151594151619%_))
                                            (let ((_%e151595151622%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl151594151619%_))))
                                              (let ((_%tl151597151627%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e151595151622%_)))
                                                    (_%hd151596151625%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e151595151622%_))))
                                                (_%__kont156758156759%_
                                                 _%tl151597151627%_
                                                 _%hd151596151625%_)))
                                            (_%__kont156760156761%_))
                                        (_%__kont156760156761%_))
                                    (_%__kont156760156761%_))))
                            (_%__kont156760156761%_)))))))
          (let* ((_%g151519151536%_
                  (lambda (_%g151520151533%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151520151533%_))))
                 (_%g151518151582%_
                  (lambda (_%g151520151539%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151520151539%_))
                        (let ((_%e151523151541%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151520151539%_))))
                          (let ((_%hd151524151544%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151523151541%_)))
                                (_%tl151525151546%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151523151541%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl151525151546%_))
                                (let ((_%e151526151549%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl151525151546%_))))
                                  (let ((_%hd151527151552%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151526151549%_)))
                                        (_%tl151528151554%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151526151549%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl151528151554%_))
                                        (let ((_%e151529151557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl151528151554%_))))
                                          (let ((_%hd151530151560%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151529151557%_)))
                                                (_%tl151531151562%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151529151557%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl151531151562%_))
                                                ((lambda (_%L151565%_
                                                          _%L151566%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L151566%_)
                                                       (if (_%generate-letrec?151516%_
                                                            _%L151566%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self151512%_
                                                            'letrec
                                                            _%L151566%_
                                                            _%L151565%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self151512%_
                                                            'letrec*
                                                            _%L151566%_
                                                            _%L151565%_
                                                            '#f))
                                                       (_%generate-values151515%_
                                                        _%L151566%_
                                                        _%L151565%_)))
                                                 _%hd151530151560%_
                                                 _%hd151527151552%_)
                                                (_%g151519151536%_
                                                 _%g151520151539%_))))
                                        (_%g151519151536%_
                                         _%g151520151539%_))))
                                (_%g151519151536%_ _%g151520151539%_))))
                        (_%g151519151536%_ _%g151520151539%_)))))
            (_%g151518151582%_ _%stx151513%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd151449%_)
        (let _%lp151451%_ ((_%rest151453%_ _%hd151449%_))
          (let* ((_%rest151454151470%_ _%rest151453%_)
                 (_%else151457151478%_ (lambda () '#f)))
            (let ((_%K151460151491%_
                   (lambda (_%rest151489%_) (_%lp151451%_ _%rest151489%_)))
                  (_%K151459151483%_ (lambda () '#t)))
              (let ((_%try-match151456151486%_
                     (lambda ()
                       (if (null? _%rest151454151470%_)
                           (_%K151459151483%_)
                           (_%else151457151478%_)))))
                (if (pair? _%rest151454151470%_)
                    (let ((_%tl151462151496%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest151454151470%_)))
                          (_%hd151461151494%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest151454151470%_))))
                      (if (pair? _%hd151461151494%_)
                          (let ((_%tl151464151501%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd151461151494%_)))
                                (_%hd151463151499%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd151461151494%_))))
                            (if (pair? _%hd151463151499%_)
                                (let ((_%tl151468151504%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd151463151499%_))))
                                  (if (null? _%tl151468151504%_)
                                      (if (pair? _%tl151464151501%_)
                                          (let ((_%tl151466151507%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl151464151501%_))))
                                            (if (null? _%tl151466151507%_)
                                                (let ((_%rest151510%_
                                                       _%tl151462151496%_))
                                                  (_%lp151451%_
                                                   _%rest151510%_))
                                                (_%else151457151478%_)))
                                          (_%else151457151478%_))
                                      (_%else151457151478%_)))
                                (_%else151457151478%_)))
                          (_%else151457151478%_)))
                    (_%try-match151456151486%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self151360%_
               _%form151361%_
               _%hd151362%_
               _%body151363%_
               _%compiled-body?151364%_)
        (letrec ((_%generate1151366%_
                  (lambda (_%bind151405%_)
                    (let* ((_%bind151406151417%_ _%bind151405%_)
                           (_%E151408151421%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind151406151417%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K151409151427%_
                            (lambda (_%expr151424%_ _%id151425%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id151425%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self151360%_
                                             _%expr151424%_))
                                          '())))))
                      (if (pair? _%bind151406151417%_)
                          (let ((_%hd151410151430%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind151406151417%_)))
                                (_%tl151411151432%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind151406151417%_))))
                            (if (pair? _%hd151410151430%_)
                                (let ((_%hd151414151435%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd151410151430%_)))
                                      (_%tl151415151437%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd151410151430%_))))
                                  (let ((_%id151440%_ _%hd151414151435%_))
                                    (if (null? _%tl151415151437%_)
                                        (if (pair? _%tl151411151432%_)
                                            (let ((_%hd151412151442%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl151411151432%_)))
                                                  (_%tl151413151444%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl151411151432%_))))
                                              (let ((_%expr151447%_
                                                     _%hd151412151442%_))
                                                (if (null? _%tl151413151444%_)
                                                    (_%K151409151427%_
                                                     _%expr151447%_
                                                     _%id151440%_)
                                                    (_%E151408151421%_))))
                                            (_%E151408151421%_))
                                        (_%E151408151421%_))))
                                (_%E151408151421%_)))
                          (_%E151408151421%_))))))
          (let* ((_%bind151368%_ (map _%generate1151366%_ _%hd151362%_))
                 (_%body151370%_
                  (if _%compiled-body?151364%_
                      _%body151363%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self151360%_ _%body151363%_))))
                 (_%body151402%_
                  (let* ((_%body151371151379%_ _%body151370%_)
                         (_%else151373151387%_
                          (lambda () (cons _%body151370%_ '())))
                         (_%K151375151392%_
                          (lambda (_%exprs151390%_) _%exprs151390%_)))
                    (if (pair? _%body151371151379%_)
                        (let ((_%hd151376151395%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body151371151379%_)))
                              (_%tl151377151397%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body151371151379%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd151376151395%_ 'begin))
                              (let ((_%exprs151400%_ _%tl151377151397%_))
                                (_%K151375151392%_ _%exprs151400%_))
                              (_%else151373151387%_)))
                        (_%else151373151387%_)))))
            (cons _%form151361%_ (cons _%bind151368%_ _%body151402%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self151260%_ _%stx151261%_)
        (letrec ((_%generate1151263%_
                  (lambda (_%datum151315%_)
                    (if (or (null? _%datum151315%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum151315%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum151315%_))
                            (eof-object? _%datum151315%_))
                        _%datum151315%_
                        (if (uninterned-symbol? _%datum151315%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum151315%_
                               '#t))
                            (if (pair? _%datum151315%_)
                                (cons (_%generate1151263%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum151315%_)))
                                      (_%generate1151263%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum151315%_))))
                                (if (box? _%datum151315%_)
                                    (box (_%generate1151263%_
                                          (unbox _%datum151315%_)))
                                    (if (vector? _%datum151315%_)
                                        (vector-map
                                         _%generate1151263%_
                                         _%datum151315%_)
                                        (if (or (s8vector? _%datum151315%_)
                                                (u8vector? _%datum151315%_)
                                                (s16vector? _%datum151315%_)
                                                (u16vector? _%datum151315%_)
                                                (s32vector? _%datum151315%_)
                                                (u32vector? _%datum151315%_)
                                                (s64vector? _%datum151315%_)
                                                (u64vector? _%datum151315%_)
                                                (f32vector? _%datum151315%_)
                                                (f64vector? _%datum151315%_))
                                            _%datum151315%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx151261%_)))))))))))
          (let* ((_%g151265151278%_
                  (lambda (_%g151266151275%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151266151275%_))))
                 (_%g151264151312%_
                  (lambda (_%g151266151281%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151266151281%_))
                        (let ((_%e151268151283%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151266151281%_))))
                          (let ((_%hd151269151286%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151268151283%_)))
                                (_%tl151270151288%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151268151283%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl151270151288%_))
                                (let ((_%e151271151291%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl151270151288%_))))
                                  (let ((_%hd151272151294%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151271151291%_)))
                                        (_%tl151273151296%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151271151291%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl151273151296%_))
                                        ((lambda (_%L151299%_)
                                           (cons 'quote
                                                 (cons (_%generate1151263%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L151299%_)))
                                                       '())))
                                         _%hd151272151294%_)
                                        (_%g151265151278%_
                                         _%g151266151281%_))))
                                (_%g151265151278%_ _%g151266151281%_))))
                        (_%g151265151278%_ _%g151266151281%_)))))
            (_%g151264151312%_ _%stx151261%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self150701%_ _%stx150702%_)
        (letrec ((_%compile-call150704%_
                  (lambda (_%rator150993%_ _%rands150994%_)
                    (let ((_%rator151000%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self150701%_
                              _%rator150993%_)))
                          (_%rands151001%_
                           (map (lambda (_%g150995150997%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self150701%_
                                     _%g150995150997%_)))
                                _%rands150994%_)))
                      (let* ((_%__stx156803156804%_ _%rator151000%_)
                             (_%g151004151056%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx156803156804%_)))))
                        (let ((_%__kont156805156806%_
                               (lambda (_%L151180%_
                                        _%L151181%_
                                        _%L151182%_
                                        _%L151183%_)
                                 (if (let ((__tmp157475
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands151001%_)))
                                           (__tmp157473
                                            (length (let ((__tmp157474
                                                           (lambda (_%g151219151222%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g151220151224%_)
                     (cons _%g151219151222%_ _%g151220151224%_))))
              (declare (not safe))
              (__foldr1 __tmp157474 '() _%L151182%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp157475 __tmp157473))
                                     (let* ((_%id151227%_ _%L151183%_)
                                            (_%args151236%_
                                             (let ((__tmp157476
                                                    (lambda (_%g151228151231%_
                                                             _%g151229151233%_)
                                                      (cons _%g151228151231%_
                                                            _%g151229151233%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp157476
                                                '()
                                                _%L151182%_)))
                                            (_%body151245%_
                                             (let ((__tmp157477
                                                    (lambda (_%g151237151240%_
                                                             _%g151238151242%_)
                                                      (cons _%g151237151240%_
                                                            _%g151238151242%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp157477
                                                '()
                                                _%L151181%_)))
                                            (_%init151247%_
                                             (map list
                                                  _%args151236%_
                                                  _%rands151001%_)))
                                       (cons 'let
                                             (cons _%id151227%_
                                                   (cons _%init151247%_
                                                         _%body151245%_))))
                                     (let ((__tmp157478
                                            (let ((__tmp157479
                                                   (lambda (_%g151249151252%_
                                                            _%g151250151254%_)
                                                     (cons _%g151249151252%_
                                                           _%g151250151254%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp157479
                                               '()
                                               _%L151182%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx150702%_
                                        __tmp157478
                                        _%rands151001%_)))))
                              (_%__kont156811156812%_
                               (lambda ()
                                 (cons _%rator151000%_ _%rands151001%_))))
                          (let ((_%__match156870156871%_
                                 (lambda (_%e151010151068%_
                                          _%hd151011151071%_
                                          _%tl151012151073%_
                                          _%e151013151076%_
                                          _%hd151014151079%_
                                          _%tl151015151081%_
                                          _%e151016151084%_
                                          _%hd151017151087%_
                                          _%tl151018151089%_
                                          _%e151019151092%_
                                          _%hd151020151095%_
                                          _%tl151021151097%_
                                          _%e151022151100%_
                                          _%hd151023151103%_
                                          _%tl151024151105%_
                                          _%e151025151108%_
                                          _%hd151026151111%_
                                          _%tl151027151113%_
                                          _%e151028151116%_
                                          _%hd151029151119%_
                                          _%tl151030151121%_
                                          _%__splice156807156808%_
                                          _%target151031151124%_
                                          _%tl151033151126%_)
                                   (letrec ((_%loop151034151129%_
                                             (lambda (_%hd151032151132%_
                                                      _%arg151038151134%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd151032151132%_))
                                                   (let ((_%e151035151137%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd151032151132%_))))
                                                     (let ((_%lp-tl151037151142%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e151035151137%_)))
                                                           (_%lp-hd151036151140%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e151035151137%_))))
                                                       (_%loop151034151129%_
                                                        _%lp-tl151037151142%_
                                                        (cons _%lp-hd151036151140%_
                                                              _%arg151038151134%_))))
                                                   (let ((_%arg151039151145%_
                                                          (reverse _%arg151038151134%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl151030151121%_))
                                                         (let ((_%__splice156809156810%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl151030151121%_
                           '0))))
                   (let ((_%tl151042151150%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice156809156810%_ '1)))
                         (_%target151040151148%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice156809156810%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl151042151150%_))
                         (letrec ((_%loop151043151153%_
                                   (lambda (_%hd151041151156%_
                                            _%body151047151158%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd151041151156%_))
                                         (let ((_%e151044151161%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd151041151156%_))))
                                           (let ((_%lp-tl151046151166%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e151044151161%_)))
                                                 (_%lp-hd151045151164%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e151044151161%_))))
                                             (_%loop151043151153%_
                                              _%lp-tl151046151166%_
                                              (cons _%lp-hd151045151164%_
                                                    _%body151047151158%_))))
                                         (let ((_%body151048151169%_
                                                (reverse _%body151047151158%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl151024151105%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl151018151089%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl151015151081%_))
                                                       (let ((_%e151049151172%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl151015151081%_))))
                 (let ((_%tl151051151177%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e151049151172%_)))
                       (_%hd151050151175%_
                        (let ()
                          (declare (not safe))
                          (##car _%e151049151172%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl151051151177%_))
                       (let ((_%L151180%_ _%hd151050151175%_)
                             (_%L151181%_ _%body151048151169%_)
                             (_%L151182%_ _%arg151039151145%_)
                             (_%L151183%_ _%hd151020151095%_))
                         (if (eq? _%L151183%_ _%L151180%_)
                             (_%__kont156805156806%_
                              _%L151180%_
                              _%L151181%_
                              _%L151182%_
                              _%L151183%_)
                             (_%__kont156811156812%_)))
                       (_%__kont156811156812%_))))
               (_%__kont156811156812%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont156811156812%_))
                                               (_%__kont156811156812%_)))))))
                           (_%loop151043151153%_ _%target151040151148%_ '()))
                         (_%__kont156811156812%_))))
                 (_%__kont156811156812%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop151034151129%_
                                      _%target151031151124%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx156803156804%_))
                                (let ((_%e151010151068%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx156803156804%_))))
                                  (let ((_%tl151012151073%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151010151068%_)))
                                        (_%hd151011151071%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151010151068%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd151011151071%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd151011151071%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl151012151073%_))
                                                (let ((_%e151013151076%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl151012151073%_))))
                                                  (let ((_%tl151015151081%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e151013151076%_)))
                                                        (_%hd151014151079%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e151013151076%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd151014151079%_))
                                                        (let ((_%e151016151084%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd151014151079%_))))
                  (let ((_%tl151018151089%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e151016151084%_)))
                        (_%hd151017151087%_
                         (let ()
                           (declare (not safe))
                           (##car _%e151016151084%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd151017151087%_))
                        (let ((_%e151019151092%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd151017151087%_))))
                          (let ((_%tl151021151097%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151019151092%_)))
                                (_%hd151020151095%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151019151092%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl151021151097%_))
                                (let ((_%e151022151100%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl151021151097%_))))
                                  (let ((_%tl151024151105%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151022151100%_)))
                                        (_%hd151023151103%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151022151100%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd151023151103%_))
                                        (let ((_%e151025151108%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd151023151103%_))))
                                          (let ((_%tl151027151113%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151025151108%_)))
                                                (_%hd151026151111%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151025151108%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd151026151111%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd151026151111%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl151027151113%_))
                                                        (let ((_%e151028151116%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl151027151113%_))))
                  (let ((_%tl151030151121%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e151028151116%_)))
                        (_%hd151029151119%_
                         (let ()
                           (declare (not safe))
                           (##car _%e151028151116%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd151029151119%_))
                        (let ((_%__splice156807156808%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd151029151119%_
                                  '0))))
                          (let ((_%tl151033151126%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice156807156808%_ '1)))
                                (_%target151031151124%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice156807156808%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl151033151126%_))
                                (_%__match156870156871%_
                                 _%e151010151068%_
                                 _%hd151011151071%_
                                 _%tl151012151073%_
                                 _%e151013151076%_
                                 _%hd151014151079%_
                                 _%tl151015151081%_
                                 _%e151016151084%_
                                 _%hd151017151087%_
                                 _%tl151018151089%_
                                 _%e151019151092%_
                                 _%hd151020151095%_
                                 _%tl151021151097%_
                                 _%e151022151100%_
                                 _%hd151023151103%_
                                 _%tl151024151105%_
                                 _%e151025151108%_
                                 _%hd151026151111%_
                                 _%tl151027151113%_
                                 _%e151028151116%_
                                 _%hd151029151119%_
                                 _%tl151030151121%_
                                 _%__splice156807156808%_
                                 _%target151031151124%_
                                 _%tl151033151126%_)
                                (_%__kont156811156812%_))))
                        (_%__kont156811156812%_))))
                (_%__kont156811156812%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont156811156812%_))
                                                (_%__kont156811156812%_))))
                                        (_%__kont156811156812%_))))
                                (_%__kont156811156812%_))))
                        (_%__kont156811156812%_))))
                (_%__kont156811156812%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont156811156812%_))
                                            (_%__kont156811156812%_))
                                        (_%__kont156811156812%_))))
                                (_%__kont156811156812%_)))))))))
          (let* ((_%g150706150729%_
                  (lambda (_%g150707150726%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g150707150726%_))))
                 (_%g150705150990%_
                  (lambda (_%g150707150732%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g150707150732%_))
                        (let ((_%e150710150734%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g150707150732%_))))
                          (let ((_%hd150711150737%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e150710150734%_)))
                                (_%tl150712150739%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e150710150734%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl150712150739%_))
                                (let ((_%e150713150742%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl150712150739%_))))
                                  (let ((_%hd150714150745%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e150713150742%_)))
                                        (_%tl150715150747%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e150713150742%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl150715150747%_))
                                        (let ((_g157480_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl150715150747%_
                                                  '0))))
                                          (begin
                                            (let ((_g157481_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g157480_)
                                                         (##values-length
                                                          _g157480_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g157481_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g157481_)))
                                            (let ((_%target150716150750%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g157480_
                                                      0)))
                                                  (_%tl150718150752%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g157480_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl150718150752%_))
                                                  (letrec ((_%loop150719150755%_
                                                            (lambda (_%hd150717150758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand150723150760%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd150717150758%_))
                          (let ((_%e150720150763%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd150717150758%_))))
                            (let ((_%lp-hd150721150766%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150720150763%_)))
                                  (_%lp-tl150722150768%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150720150763%_))))
                              (_%loop150719150755%_
                               _%lp-tl150722150768%_
                               (cons _%lp-hd150721150766%_
                                     _%rand150723150760%_))))
                          (let ((_%rand150724150771%_
                                 (reverse _%rand150723150760%_)))
                            ((lambda (_%L150774%_ _%L150775%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call150704%_
                                    _%L150775%_
                                    (let ((__tmp157482
                                           (lambda (_%g150792150795%_
                                                    _%g150793150797%_)
                                             (cons _%g150792150795%_
                                                   _%g150793150797%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp157482 '() _%L150774%_)))
                                   (let* ((_%__stx156919156920%_ _%L150775%_)
                                          (_%g150801150813%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx156919156920%_)))))
                                     (let ((_%__kont156921156922%_
                                            (lambda ()
                                              (let ((_%f150850%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self150701%_
                                                        _%L150775%_))))
                                                (if (and (let ((__tmp157483
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f150850%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp157483))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f150850%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp150852%_ ((_%rest150855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp157485
                                                (lambda (_%g150972150975%_
                                                         _%g150973150977%_)
                                                  (cons _%g150972150975%_
                                                        _%g150973150977%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp157485
                                            '()
                                            _%L150774%_))))
                               (_%bind150857%_ '())
                               (_%args150858%_ '()))
              (let* ((_%rest150859150867%_ _%rest150855%_)
                     (_%else150861150875%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind150857%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f150850%_
                                                      _%args150858%_)
                                                '()))))))
                     (_%K150863150961%_
                      (lambda (_%rest150878%_ _%e150879%_)
                        (let* ((_%__stx156873156874%_ _%e150879%_)
                               (_%g150884150902%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx156873156874%_)))))
                          (let ((_%__kont156875156876%_
                                 (lambda ()
                                   (_%lp150852%_
                                    _%rest150878%_
                                    _%bind150857%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e150879%_))
                                          _%args150858%_))))
                                (_%__kont156877156878%_
                                 (lambda ()
                                   (_%lp150852%_
                                    _%rest150878%_
                                    _%bind150857%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e150879%_))
                                          _%args150858%_))))
                                (_%__kont156879156880%_
                                 (lambda ()
                                   (let ((_%tmp150909%_
                                          (let ((__tmp157484
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp157484))))
                                     (_%lp150852%_
                                      _%rest150878%_
                                      (cons (cons _%tmp150909%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e150879%_))
                                                        '()))
                                            _%bind150857%_)
                                      (cons _%tmp150909%_ _%args150858%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx156873156874%_))
                                (let ((_%e150886150940%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx156873156874%_))))
                                  (let ((_%tl150888150945%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e150886150940%_)))
                                        (_%hd150887150943%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e150886150940%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd150887150943%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd150887150943%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl150888150945%_))
                                                (let ((_%e150889150948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl150888150945%_))))
                                                  (let ((_%tl150891150953%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e150889150948%_)))
                                                        (_%hd150890150951%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e150889150948%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl150891150953%_))
                                                        (_%__kont156875156876%_)
                                                        (_%__kont156879156880%_))))
                                                (_%__kont156879156880%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd150887150943%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl150888150945%_))
                                                    (let ((_%e150895150925%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl150888150945%_))))
                                                      (let ((_%tl150897150930%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e150895150925%_)))
                    (_%hd150896150928%_
                     (let () (declare (not safe)) (##car _%e150895150925%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl150897150930%_))
                    (_%__kont156877156878%_)
                    (_%__kont156879156880%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont156879156880%_))
                                                (_%__kont156879156880%_)))
                                        (_%__kont156879156880%_))))
                                (_%__kont156879156880%_)))))))
                (if (pair? _%rest150859150867%_)
                    (let ((_%hd150864150964%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest150859150867%_)))
                          (_%tl150865150966%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest150859150867%_))))
                      (let* ((_%e150969%_ _%hd150864150964%_)
                             (_%rest150971%_ _%tl150865150966%_))
                        (_%K150863150961%_ _%rest150971%_ _%e150969%_)))
                    (_%else150861150875%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call150704%_
                                                     _%L150775%_
                                                     (let ((__tmp157486
                                                            (lambda (_%g150979150982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g150980150984%_)
                      (cons _%g150979150982%_ _%g150980150984%_))))
               (declare (not safe))
               (__foldr1 __tmp157486 '() _%L150774%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont156923156924%_
                                            (lambda ()
                                              (_%compile-call150704%_
                                               _%L150775%_
                                               (let ((__tmp157487
                                                      (lambda (_%g150819150822%_
                                                               _%g150820150824%_)
                                                        (cons _%g150819150822%_
                                                              _%g150820150824%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp157487
                                                  '()
                                                  _%L150774%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx156919156920%_))
                                           (let ((_%e150803150832%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx156919156920%_))))
                                             (let ((_%tl150805150837%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e150803150832%_)))
                                                   (_%hd150804150835%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e150803150832%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd150804150835%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd150804150835%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl150805150837%_))
                                                           (let ((_%e150806150840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl150805150837%_))))
                     (let ((_%tl150808150845%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e150806150840%_)))
                           (_%hd150807150843%_
                            (let ()
                              (declare (not safe))
                              (##car _%e150806150840%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl150808150845%_))
                           (_%__kont156921156922%_)
                           (_%__kont156923156924%_))))
                   (_%__kont156923156924%_))
               (_%__kont156923156924%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont156923156924%_))))
                                           (_%__kont156923156924%_))))))
                             _%rand150724150771%_
                             _%hd150714150745%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop150719150755%_
                                                     _%target150716150750%_
                                                     '()))
                                                  (_%g150706150729%_
                                                   _%g150707150732%_)))))
                                        (_%g150706150729%_
                                         _%g150707150732%_))))
                                (_%g150706150729%_ _%g150707150732%_))))
                        (_%g150706150729%_ _%g150707150732%_)))))
            (_%g150705150990%_ _%stx150702%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self150444%_ _%stx150445%_)
        (let* ((_%__stx156991156992%_ _%stx150445%_)
               (_%g150448150477%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx156991156992%_)))))
          (let ((_%__kont156993156994%_
                 (lambda (_%L150545%_ _%L150546%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self150444%_
                        _%stx150445%_)
                       (let ((_%f150568%_
                              (let ((__tmp157488
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L150546%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self150444%_
                                 __tmp157488))))
                         (let _%lp150570%_ ((_%rest150573%_
                                             (reverse (let ((__tmp157490
                                                             (lambda (_%g150690150693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g150691150695%_)
                       (cons _%g150690150693%_ _%g150691150695%_))))
                (declare (not safe))
                (__foldr1 __tmp157490 '() _%L150545%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind150575%_ '())
                                            (_%args150576%_ '()))
                           (let* ((_%rest150577150585%_ _%rest150573%_)
                                  (_%else150579150593%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind150575%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f150568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args150576%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K150581150679%_
                                   (lambda (_%rest150596%_ _%e150597%_)
                                     (let* ((_%__stx156945156946%_ _%e150597%_)
                                            (_%g150602150620%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx156945156946%_)))))
                                       (let ((_%__kont156947156948%_
                                              (lambda ()
                                                (_%lp150570%_
                                                 _%rest150596%_
                                                 _%bind150575%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e150597%_))
                                                       _%args150576%_))))
                                             (_%__kont156949156950%_
                                              (lambda ()
                                                (_%lp150570%_
                                                 _%rest150596%_
                                                 _%bind150575%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e150597%_))
                                                       _%args150576%_))))
                                             (_%__kont156951156952%_
                                              (lambda ()
                                                (let ((_%tmp150627%_
                                                       (let ((__tmp157489
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp157489))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp150570%_
                                                   _%rest150596%_
                                                   (cons (cons _%tmp150627%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e150597%_))
                             '()))
                 _%bind150575%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp150627%_
                                                         _%args150576%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx156945156946%_))
                                             (let ((_%e150604150658%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx156945156946%_))))
                                               (let ((_%tl150606150663%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e150604150658%_)))
                                                     (_%hd150605150661%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e150604150658%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd150605150661%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd150605150661%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl150606150663%_))
                     (let ((_%e150607150666%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl150606150663%_))))
                       (let ((_%tl150609150671%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e150607150666%_)))
                             (_%hd150608150669%_
                              (let ()
                                (declare (not safe))
                                (##car _%e150607150666%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl150609150671%_))
                             (_%__kont156947156948%_)
                             (_%__kont156951156952%_))))
                     (_%__kont156951156952%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd150605150661%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl150606150663%_))
                         (let ((_%e150613150643%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl150606150663%_))))
                           (let ((_%tl150615150648%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e150613150643%_)))
                                 (_%hd150614150646%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e150613150643%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl150615150648%_))
                                 (_%__kont156949156950%_)
                                 (_%__kont156951156952%_))))
                         (_%__kont156951156952%_))
                     (_%__kont156951156952%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont156951156952%_))))
                                             (_%__kont156951156952%_)))))))
                             (if (pair? _%rest150577150585%_)
                                 (let ((_%hd150582150682%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest150577150585%_)))
                                       (_%tl150583150684%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest150577150585%_))))
                                   (let* ((_%e150687%_ _%hd150582150682%_)
                                          (_%rest150689%_ _%tl150583150684%_))
                                     (_%K150581150679%_
                                      _%rest150689%_
                                      _%e150687%_)))
                                 (_%else150579150593%_))))))))
                (_%__kont156997156998%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self150444%_ _%stx150445%_))))
            (let ((_%__match157036157037%_
                   (lambda (_%e150452150489%_
                            _%hd150453150492%_
                            _%tl150454150494%_
                            _%e150455150497%_
                            _%hd150456150500%_
                            _%tl150457150502%_
                            _%e150458150505%_
                            _%hd150459150508%_
                            _%tl150460150510%_
                            _%e150461150513%_
                            _%hd150462150516%_
                            _%tl150463150518%_
                            _%__splice156995156996%_
                            _%target150464150521%_
                            _%tl150466150523%_)
                     (letrec ((_%loop150467150526%_
                               (lambda (_%hd150465150529%_
                                        _%rand150471150531%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd150465150529%_))
                                     (let ((_%e150468150534%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd150465150529%_))))
                                       (let ((_%lp-tl150470150539%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e150468150534%_)))
                                             (_%lp-hd150469150537%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e150468150534%_))))
                                         (_%loop150467150526%_
                                          _%lp-tl150470150539%_
                                          (cons _%lp-hd150469150537%_
                                                _%rand150471150531%_))))
                                     (let ((_%rand150472150542%_
                                            (reverse _%rand150471150531%_)))
                                       (_%__kont156993156994%_
                                        _%rand150472150542%_
                                        _%hd150462150516%_))))))
                       (_%loop150467150526%_ _%target150464150521%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx156991156992%_))
                  (let ((_%e150452150489%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx156991156992%_))))
                    (let ((_%tl150454150494%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150452150489%_)))
                          (_%hd150453150492%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150452150489%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl150454150494%_))
                          (let ((_%e150455150497%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl150454150494%_))))
                            (let ((_%tl150457150502%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150455150497%_)))
                                  (_%hd150456150500%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150455150497%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd150456150500%_))
                                  (let ((_%e150458150505%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd150456150500%_))))
                                    (let ((_%tl150460150510%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e150458150505%_)))
                                          (_%hd150459150508%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e150458150505%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd150459150508%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd150459150508%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl150460150510%_))
                                                  (let ((_%e150461150513%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl150460150510%_))))
                                                    (let ((_%tl150463150518%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e150461150513%_)))
                                                          (_%hd150462150516%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e150461150513%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl150463150518%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl150457150502%_))
                      (let ((_%__splice156995156996%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl150457150502%_
                                '0))))
                        (let ((_%tl150466150523%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice156995156996%_ '1)))
                              (_%target150464150521%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice156995156996%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl150466150523%_))
                              (_%__match157036157037%_
                               _%e150452150489%_
                               _%hd150453150492%_
                               _%tl150454150494%_
                               _%e150455150497%_
                               _%hd150456150500%_
                               _%tl150457150502%_
                               _%e150458150505%_
                               _%hd150459150508%_
                               _%tl150460150510%_
                               _%e150461150513%_
                               _%hd150462150516%_
                               _%tl150463150518%_
                               _%__splice156995156996%_
                               _%target150464150521%_
                               _%tl150466150523%_)
                              (_%__kont156997156998%_))))
                      (_%__kont156997156998%_))
                  (_%__kont156997156998%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont156997156998%_))
                                              (_%__kont156997156998%_))
                                          (_%__kont156997156998%_))))
                                  (_%__kont156997156998%_))))
                          (_%__kont156997156998%_))))
                  (_%__kont156997156998%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self150256%_ _%stx150257%_)
        (letrec ((_%simplify150259%_
                  (lambda (_%code150344%_)
                    (let* ((_%code150345150363%_ _%code150344%_)
                           (_%else150347150371%_ (lambda () _%code150344%_))
                           (_%K150349150407%_
                            (lambda (_%expr150374%_ _%test150375%_)
                              (let* ((_%expr150376150384%_ _%expr150374%_)
                                     (_%else150378150392%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test150375%_
                                                    (cons _%expr150374%_
                                                          '())))))
                                     (_%K150380150397%_
                                      (lambda (_%exprs150395%_)
                                        (cons 'and
                                              (cons _%test150375%_
                                                    _%exprs150395%_)))))
                                (if (pair? _%expr150376150384%_)
                                    (let ((_%hd150381150400%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr150376150384%_)))
                                          (_%tl150382150402%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr150376150384%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd150381150400%_ 'and))
                                          (let ((_%exprs150405%_
                                                 _%tl150382150402%_))
                                            (_%K150380150397%_
                                             _%exprs150405%_))
                                          (_%else150378150392%_)))
                                    (_%else150378150392%_))))))
                      (if (pair? _%code150345150363%_)
                          (let ((_%hd150350150410%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code150345150363%_)))
                                (_%tl150351150412%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code150345150363%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd150350150410%_ 'if))
                                (if (pair? _%tl150351150412%_)
                                    (let ((_%hd150352150415%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl150351150412%_)))
                                          (_%tl150353150417%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl150351150412%_))))
                                      (let ((_%test150420%_
                                             _%hd150352150415%_))
                                        (if (pair? _%tl150353150417%_)
                                            (let ((_%hd150354150422%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl150353150417%_)))
                                                  (_%tl150355150424%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl150353150417%_))))
                                              (let ((_%expr150427%_
                                                     _%hd150354150422%_))
                                                (if (pair? _%tl150355150424%_)
                                                    (let ((_%hd150356150429%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl150355150424%_)))
                                                          (_%tl150357150431%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl150355150424%_))))
                                                      (if (pair? _%hd150356150429%_)
                                                          (let ((_%hd150358150434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd150356150429%_)))
                        (_%tl150359150436%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd150356150429%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd150358150434%_ 'quote))
                        (if (pair? _%tl150359150436%_)
                            (let ((_%hd150360150439%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl150359150436%_)))
                                  (_%tl150361150441%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl150359150436%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd150360150439%_ '#f))
                                  (if (null? _%tl150361150441%_)
                                      (if (null? _%tl150357150431%_)
                                          (_%K150349150407%_
                                           _%expr150427%_
                                           _%test150420%_)
                                          (_%else150347150371%_))
                                      (_%else150347150371%_))
                                  (_%else150347150371%_)))
                            (_%else150347150371%_))
                        (_%else150347150371%_)))
                  (_%else150347150371%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else150347150371%_))))
                                            (_%else150347150371%_))))
                                    (_%else150347150371%_))
                                (_%else150347150371%_)))
                          (_%else150347150371%_))))))
          (let* ((_%g150261150282%_
                  (lambda (_%g150262150279%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g150262150279%_))))
                 (_%g150260150341%_
                  (lambda (_%g150262150285%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g150262150285%_))
                        (let ((_%e150266150287%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g150262150285%_))))
                          (let ((_%hd150267150290%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e150266150287%_)))
                                (_%tl150268150292%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e150266150287%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl150268150292%_))
                                (let ((_%e150269150295%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl150268150292%_))))
                                  (let ((_%hd150270150298%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e150269150295%_)))
                                        (_%tl150271150300%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e150269150295%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl150271150300%_))
                                        (let ((_%e150272150303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl150271150300%_))))
                                          (let ((_%hd150273150306%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e150272150303%_)))
                                                (_%tl150274150308%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e150272150303%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl150274150308%_))
                                                (let ((_%e150275150311%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl150274150308%_))))
                                                  (let ((_%hd150276150314%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e150275150311%_)))
                                                        (_%tl150277150316%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e150275150311%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl150277150316%_))
                                                        ((lambda (_%L150319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L150320%_
                          _%L150321%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify150259%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self150256%_
                                       _%L150321%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self150256%_
                                             _%L150320%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self150256%_
                                                   _%L150319%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp157491
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self150256%_
                                               _%L150321%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp157491
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self150256%_
                                            _%L150320%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self150256%_
                                                  _%L150319%_))
                                               '()))))))
                 _%hd150276150314%_
                 _%hd150273150306%_
                 _%hd150270150298%_)
                (_%g150261150282%_ _%g150262150285%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g150261150282%_
                                                 _%g150262150285%_))))
                                        (_%g150261150282%_
                                         _%g150262150285%_))))
                                (_%g150261150282%_ _%g150262150285%_))))
                        (_%g150261150282%_ _%g150262150285%_)))))
            (_%g150260150341%_ _%stx150257%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self150204%_ _%stx150205%_)
        (let* ((_%g150207150220%_
                (lambda (_%g150208150217%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150208150217%_))))
               (_%g150206150253%_
                (lambda (_%g150208150223%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150208150223%_))
                      (let ((_%e150210150225%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150208150223%_))))
                        (let ((_%hd150211150228%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150210150225%_)))
                              (_%tl150212150230%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150210150225%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150212150230%_))
                              (let ((_%e150213150233%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150212150230%_))))
                                (let ((_%hd150214150236%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150213150233%_)))
                                      (_%tl150215150238%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150213150233%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150215150238%_))
                                      ((lambda (_%L150241%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L150241%_)))
                                       _%hd150214150236%_)
                                      (_%g150207150220%_ _%g150208150223%_))))
                              (_%g150207150220%_ _%g150208150223%_))))
                      (_%g150207150220%_ _%g150208150223%_)))))
          (_%g150206150253%_ _%stx150205%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self150136%_ _%stx150137%_)
        (let* ((_%g150139150156%_
                (lambda (_%g150140150153%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150140150153%_))))
               (_%g150138150201%_
                (lambda (_%g150140150159%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150140150159%_))
                      (let ((_%e150143150161%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150140150159%_))))
                        (let ((_%hd150144150164%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150143150161%_)))
                              (_%tl150145150166%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150143150161%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150145150166%_))
                              (let ((_%e150146150169%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150145150166%_))))
                                (let ((_%hd150147150172%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150146150169%_)))
                                      (_%tl150148150174%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150146150169%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150148150174%_))
                                      (let ((_%e150149150177%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150148150174%_))))
                                        (let ((_%hd150150150180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150149150177%_)))
                                              (_%tl150151150182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150149150177%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150151150182%_))
                                              ((lambda (_%L150185%_
                                                        _%L150186%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L150186%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self150136%_ _%L150185%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd150150150180%_
                                               _%hd150147150172%_)
                                              (_%g150139150156%_
                                               _%g150140150159%_))))
                                      (_%g150139150156%_ _%g150140150159%_))))
                              (_%g150139150156%_ _%g150140150159%_))))
                      (_%g150139150156%_ _%g150140150159%_)))))
          (_%g150138150201%_ _%stx150137%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self149947%_ _%stx149948%_)
        (let* ((_%g149950149967%_
                (lambda (_%g149951149964%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149951149964%_))))
               (_%g149949150133%_
                (lambda (_%g149951149970%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149951149970%_))
                      (let ((_%e149954149972%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149951149970%_))))
                        (let ((_%hd149955149975%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149954149972%_)))
                              (_%tl149956149977%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149954149972%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149956149977%_))
                              (let ((_%e149957149980%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149956149977%_))))
                                (let ((_%hd149958149983%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149957149980%_)))
                                      (_%tl149959149985%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149957149980%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149959149985%_))
                                      (let ((_%e149960149988%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149959149985%_))))
                                        (let ((_%hd149961149991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149960149988%_)))
                                              (_%tl149962149993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149960149988%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149962149993%_))
                                              ((lambda (_%L149996%_
                                                        _%L149997%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self149947%_ _%L149996%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self149947%_ _%L149997%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp150012%_ ((_%rest150015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L149997%_ (cons _%L149996%_ '())))
                                (_%bind150017%_ '())
                                (_%args150018%_ '()))
               (let* ((_%rest150019150027%_ _%rest150015%_)
                      (_%else150021150035%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind150017%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args150018%_)
                                                 '()))))))
                      (_%K150023150121%_
                       (lambda (_%rest150038%_ _%e150039%_)
                         (let* ((_%__stx157039157040%_ _%e150039%_)
                                (_%g150044150062%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx157039157040%_)))))
                           (let ((_%__kont157041157042%_
                                  (lambda ()
                                    (_%lp150012%_
                                     _%rest150038%_
                                     _%bind150017%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e150039%_))
                                           _%args150018%_))))
                                 (_%__kont157043157044%_
                                  (lambda ()
                                    (_%lp150012%_
                                     _%rest150038%_
                                     _%bind150017%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e150039%_))
                                           _%args150018%_))))
                                 (_%__kont157045157046%_
                                  (lambda ()
                                    (let ((_%tmp150069%_
                                           (let ((__tmp157492
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp157492))))
                                      (_%lp150012%_
                                       _%rest150038%_
                                       (cons (cons _%tmp150069%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e150039%_))
                                                         '()))
                                             _%bind150017%_)
                                       (cons _%tmp150069%_ _%args150018%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx157039157040%_))
                                 (let ((_%e150046150100%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx157039157040%_))))
                                   (let ((_%tl150048150105%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e150046150100%_)))
                                         (_%hd150047150103%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e150046150100%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd150047150103%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd150047150103%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl150048150105%_))
                                                 (let ((_%e150049150108%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl150048150105%_))))
                                                   (let ((_%tl150051150113%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e150049150108%_)))
                                                         (_%hd150050150111%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e150049150108%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl150051150113%_))
                                                         (_%__kont157041157042%_)
                                                         (_%__kont157045157046%_))))
                                                 (_%__kont157045157046%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd150047150103%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl150048150105%_))
                                                     (let ((_%e150055150085%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl150048150105%_))))
                                                       (let ((_%tl150057150090%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e150055150085%_)))
                     (_%hd150056150088%_
                      (let () (declare (not safe)) (##car _%e150055150085%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl150057150090%_))
                     (_%__kont157043157044%_)
                     (_%__kont157045157046%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont157045157046%_))
                                                 (_%__kont157045157046%_)))
                                         (_%__kont157045157046%_))))
                                 (_%__kont157045157046%_)))))))
                 (if (pair? _%rest150019150027%_)
                     (let ((_%hd150024150124%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest150019150027%_)))
                           (_%tl150025150126%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest150019150027%_))))
                       (let* ((_%e150129%_ _%hd150024150124%_)
                              (_%rest150131%_ _%tl150025150126%_))
                         (_%K150023150121%_ _%rest150131%_ _%e150129%_)))
                     (_%else150021150035%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd149961149991%_
                                               _%hd149958149983%_)
                                              (_%g149950149967%_
                                               _%g149951149970%_))))
                                      (_%g149950149967%_ _%g149951149970%_))))
                              (_%g149950149967%_ _%g149951149970%_))))
                      (_%g149950149967%_ _%g149951149970%_)))))
          (_%g149949150133%_ _%stx149948%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self149758%_ _%stx149759%_)
        (let* ((_%g149761149778%_
                (lambda (_%g149762149775%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149762149775%_))))
               (_%g149760149944%_
                (lambda (_%g149762149781%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149762149781%_))
                      (let ((_%e149765149783%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149762149781%_))))
                        (let ((_%hd149766149786%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149765149783%_)))
                              (_%tl149767149788%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149765149783%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149767149788%_))
                              (let ((_%e149768149791%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149767149788%_))))
                                (let ((_%hd149769149794%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149768149791%_)))
                                      (_%tl149770149796%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149768149791%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149770149796%_))
                                      (let ((_%e149771149799%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149770149796%_))))
                                        (let ((_%hd149772149802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149771149799%_)))
                                              (_%tl149773149804%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149771149799%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149773149804%_))
                                              ((lambda (_%L149807%_
                                                        _%L149808%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self149758%_ _%L149807%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self149758%_ _%L149808%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp149823%_ ((_%rest149826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L149808%_ (cons _%L149807%_ '())))
                                (_%bind149828%_ '())
                                (_%args149829%_ '()))
               (let* ((_%rest149830149838%_ _%rest149826%_)
                      (_%else149832149846%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind149828%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args149829%_)
                                                 '()))))))
                      (_%K149834149932%_
                       (lambda (_%rest149849%_ _%e149850%_)
                         (let* ((_%__stx157085157086%_ _%e149850%_)
                                (_%g149855149873%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx157085157086%_)))))
                           (let ((_%__kont157087157088%_
                                  (lambda ()
                                    (_%lp149823%_
                                     _%rest149849%_
                                     _%bind149828%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e149850%_))
                                           _%args149829%_))))
                                 (_%__kont157089157090%_
                                  (lambda ()
                                    (_%lp149823%_
                                     _%rest149849%_
                                     _%bind149828%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e149850%_))
                                           _%args149829%_))))
                                 (_%__kont157091157092%_
                                  (lambda ()
                                    (let ((_%tmp149880%_
                                           (let ((__tmp157493
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp157493))))
                                      (_%lp149823%_
                                       _%rest149849%_
                                       (cons (cons _%tmp149880%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e149850%_))
                                                         '()))
                                             _%bind149828%_)
                                       (cons _%tmp149880%_ _%args149829%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx157085157086%_))
                                 (let ((_%e149857149911%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx157085157086%_))))
                                   (let ((_%tl149859149916%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e149857149911%_)))
                                         (_%hd149858149914%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e149857149911%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd149858149914%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd149858149914%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl149859149916%_))
                                                 (let ((_%e149860149919%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl149859149916%_))))
                                                   (let ((_%tl149862149924%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e149860149919%_)))
                                                         (_%hd149861149922%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e149860149919%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl149862149924%_))
                                                         (_%__kont157087157088%_)
                                                         (_%__kont157091157092%_))))
                                                 (_%__kont157091157092%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd149858149914%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl149859149916%_))
                                                     (let ((_%e149866149896%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl149859149916%_))))
                                                       (let ((_%tl149868149901%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e149866149896%_)))
                     (_%hd149867149899%_
                      (let () (declare (not safe)) (##car _%e149866149896%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl149868149901%_))
                     (_%__kont157089157090%_)
                     (_%__kont157091157092%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont157091157092%_))
                                                 (_%__kont157091157092%_)))
                                         (_%__kont157091157092%_))))
                                 (_%__kont157091157092%_)))))))
                 (if (pair? _%rest149830149838%_)
                     (let ((_%hd149835149935%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest149830149838%_)))
                           (_%tl149836149937%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest149830149838%_))))
                       (let* ((_%e149940%_ _%hd149835149935%_)
                              (_%rest149942%_ _%tl149836149937%_))
                         (_%K149834149932%_ _%rest149942%_ _%e149940%_)))
                     (_%else149832149846%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd149772149802%_
                                               _%hd149769149794%_)
                                              (_%g149761149778%_
                                               _%g149762149781%_))))
                                      (_%g149761149778%_ _%g149762149781%_))))
                              (_%g149761149778%_ _%g149762149781%_))))
                      (_%g149761149778%_ _%g149762149781%_)))))
          (_%g149760149944%_ _%stx149759%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self149674%_ _%stx149675%_)
        (let* ((_%g149677149698%_
                (lambda (_%g149678149695%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149678149695%_))))
               (_%g149676149755%_
                (lambda (_%g149678149701%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149678149701%_))
                      (let ((_%e149682149703%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149678149701%_))))
                        (let ((_%hd149683149706%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149682149703%_)))
                              (_%tl149684149708%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149682149703%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149684149708%_))
                              (let ((_%e149685149711%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149684149708%_))))
                                (let ((_%hd149686149714%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149685149711%_)))
                                      (_%tl149687149716%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149685149711%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149687149716%_))
                                      (let ((_%e149688149719%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149687149716%_))))
                                        (let ((_%hd149689149722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149688149719%_)))
                                              (_%tl149690149724%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149688149719%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149690149724%_))
                                              (let ((_%e149691149727%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149690149724%_))))
                                                (let ((_%hd149692149730%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149691149727%_)))
                                                      (_%tl149693149732%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149691149727%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149693149732%_))
                                                      ((lambda (_%L149735%_
                                                                _%L149736%_
                                                                _%L149737%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self149674%_ _%L149735%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self149674%_
                                      _%L149736%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self149674%_
                                            _%L149737%_))
                                         (cons ''#f '()))))))
               _%hd149692149730%_
               _%hd149689149722%_
               _%hd149686149714%_)
              (_%g149677149698%_ _%g149678149701%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g149677149698%_
                                               _%g149678149701%_))))
                                      (_%g149677149698%_ _%g149678149701%_))))
                              (_%g149677149698%_ _%g149678149701%_))))
                      (_%g149677149698%_ _%g149678149701%_)))))
          (_%g149676149755%_ _%stx149675%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self149574%_ _%stx149575%_)
        (let* ((_%g149577149602%_
                (lambda (_%g149578149599%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149578149599%_))))
               (_%g149576149671%_
                (lambda (_%g149578149605%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149578149605%_))
                      (let ((_%e149583149607%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149578149605%_))))
                        (let ((_%hd149584149610%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149583149607%_)))
                              (_%tl149585149612%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149583149607%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149585149612%_))
                              (let ((_%e149586149615%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149585149612%_))))
                                (let ((_%hd149587149618%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149586149615%_)))
                                      (_%tl149588149620%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149586149615%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149588149620%_))
                                      (let ((_%e149589149623%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149588149620%_))))
                                        (let ((_%hd149590149626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149589149623%_)))
                                              (_%tl149591149628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149589149623%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149591149628%_))
                                              (let ((_%e149592149631%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149591149628%_))))
                                                (let ((_%hd149593149634%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149592149631%_)))
                                                      (_%tl149594149636%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149592149631%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl149594149636%_))
                                                      (let ((_%e149595149639%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl149594149636%_))))
                (let ((_%hd149596149642%_
                       (let () (declare (not safe)) (##car _%e149595149639%_)))
                      (_%tl149597149644%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e149595149639%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl149597149644%_))
                      ((lambda (_%L149647%_
                                _%L149648%_
                                _%L149649%_
                                _%L149650%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self149574%_
                                        _%L149648%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self149574%_
                                              _%L149647%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self149574%_
                                                    _%L149649%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self149574%_
                                                          _%L149650%_))
                                                       (cons ''#f '())))))))
                       _%hd149596149642%_
                       _%hd149593149634%_
                       _%hd149590149626%_
                       _%hd149587149618%_)
                      (_%g149577149602%_ _%g149578149605%_))))
              (_%g149577149602%_ _%g149578149605%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g149577149602%_
                                               _%g149578149605%_))))
                                      (_%g149577149602%_ _%g149578149605%_))))
                              (_%g149577149602%_ _%g149578149605%_))))
                      (_%g149577149602%_ _%g149578149605%_)))))
          (_%g149576149671%_ _%stx149575%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self149490%_ _%stx149491%_)
        (let* ((_%g149493149514%_
                (lambda (_%g149494149511%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149494149511%_))))
               (_%g149492149571%_
                (lambda (_%g149494149517%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149494149517%_))
                      (let ((_%e149498149519%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149494149517%_))))
                        (let ((_%hd149499149522%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149498149519%_)))
                              (_%tl149500149524%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149498149519%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149500149524%_))
                              (let ((_%e149501149527%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149500149524%_))))
                                (let ((_%hd149502149530%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149501149527%_)))
                                      (_%tl149503149532%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149501149527%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149503149532%_))
                                      (let ((_%e149504149535%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149503149532%_))))
                                        (let ((_%hd149505149538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149504149535%_)))
                                              (_%tl149506149540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149504149535%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149506149540%_))
                                              (let ((_%e149507149543%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149506149540%_))))
                                                (let ((_%hd149508149546%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149507149543%_)))
                                                      (_%tl149509149548%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149507149543%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149509149548%_))
                                                      ((lambda (_%L149551%_
                                                                _%L149552%_
                                                                _%L149553%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self149490%_ _%L149551%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self149490%_
                                      _%L149552%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self149490%_
                                            _%L149553%_))
                                         (cons ''#f '()))))))
               _%hd149508149546%_
               _%hd149505149538%_
               _%hd149502149530%_)
              (_%g149493149514%_ _%g149494149517%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g149493149514%_
                                               _%g149494149517%_))))
                                      (_%g149493149514%_ _%g149494149517%_))))
                              (_%g149493149514%_ _%g149494149517%_))))
                      (_%g149493149514%_ _%g149494149517%_)))))
          (_%g149492149571%_ _%stx149491%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self149390%_ _%stx149391%_)
        (let* ((_%g149393149418%_
                (lambda (_%g149394149415%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149394149415%_))))
               (_%g149392149487%_
                (lambda (_%g149394149421%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149394149421%_))
                      (let ((_%e149399149423%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149394149421%_))))
                        (let ((_%hd149400149426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149399149423%_)))
                              (_%tl149401149428%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149399149423%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149401149428%_))
                              (let ((_%e149402149431%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149401149428%_))))
                                (let ((_%hd149403149434%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149402149431%_)))
                                      (_%tl149404149436%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149402149431%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149404149436%_))
                                      (let ((_%e149405149439%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149404149436%_))))
                                        (let ((_%hd149406149442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149405149439%_)))
                                              (_%tl149407149444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149405149439%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149407149444%_))
                                              (let ((_%e149408149447%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149407149444%_))))
                                                (let ((_%hd149409149450%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149408149447%_)))
                                                      (_%tl149410149452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149408149447%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl149410149452%_))
                                                      (let ((_%e149411149455%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl149410149452%_))))
                (let ((_%hd149412149458%_
                       (let () (declare (not safe)) (##car _%e149411149455%_)))
                      (_%tl149413149460%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e149411149455%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl149413149460%_))
                      ((lambda (_%L149463%_
                                _%L149464%_
                                _%L149465%_
                                _%L149466%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self149390%_
                                        _%L149464%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self149390%_
                                              _%L149463%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self149390%_
                                                    _%L149465%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self149390%_
                                                          _%L149466%_))
                                                       (cons ''#f '())))))))
                       _%hd149412149458%_
                       _%hd149409149450%_
                       _%hd149406149442%_
                       _%hd149403149434%_)
                      (_%g149393149418%_ _%g149394149421%_))))
              (_%g149393149418%_ _%g149394149421%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g149393149418%_
                                               _%g149394149421%_))))
                                      (_%g149393149418%_ _%g149394149421%_))))
                              (_%g149393149418%_ _%g149394149421%_))))
                      (_%g149393149418%_ _%g149394149421%_)))))
          (_%g149392149487%_ _%stx149391%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self149185%_ _%stx149186%_)
        (let* ((_%g149188149209%_
                (lambda (_%g149189149206%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149189149206%_))))
               (_%g149187149387%_
                (lambda (_%g149189149212%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149189149212%_))
                      (let ((_%e149193149214%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149189149212%_))))
                        (let ((_%hd149194149217%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149193149214%_)))
                              (_%tl149195149219%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149193149214%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149195149219%_))
                              (let ((_%e149196149222%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149195149219%_))))
                                (let ((_%hd149197149225%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149196149222%_)))
                                      (_%tl149198149227%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149196149222%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149198149227%_))
                                      (let ((_%e149199149230%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149198149227%_))))
                                        (let ((_%hd149200149233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149199149230%_)))
                                              (_%tl149201149235%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149199149230%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149201149235%_))
                                              (let ((_%e149202149238%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149201149235%_))))
                                                (let ((_%hd149203149241%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149202149238%_)))
                                                      (_%tl149204149243%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149202149238%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149204149243%_))
                                                      ((lambda (_%L149246%_
                                                                _%L149247%_
                                                                _%L149248%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self149185%_
                                    _%L149246%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self149185%_
                                          _%L149247%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp149266%_ ((_%rest149269%_
                                         (cons _%L149247%_
                                               (cons _%L149246%_ '())))
                                        (_%bind149271%_ '())
                                        (_%args149272%_ '()))
                       (let* ((_%rest149273149281%_ _%rest149269%_)
                              (_%else149275149289%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind149271%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp157494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp157494 _%args149272%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K149277149375%_
                               (lambda (_%rest149292%_ _%e149293%_)
                                 (let* ((_%__stx157131157132%_ _%e149293%_)
                                        (_%g149298149316%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx157131157132%_)))))
                                   (let ((_%__kont157133157134%_
                                          (lambda ()
                                            (_%lp149266%_
                                             _%rest149292%_
                                             _%bind149271%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e149293%_))
                                                   _%args149272%_))))
                                         (_%__kont157135157136%_
                                          (lambda ()
                                            (_%lp149266%_
                                             _%rest149292%_
                                             _%bind149271%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e149293%_))
                                                   _%args149272%_))))
                                         (_%__kont157137157138%_
                                          (lambda ()
                                            (let ((_%tmp149323%_
                                                   (let ((__tmp157495
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp157495))))
                                              (_%lp149266%_
                                               _%rest149292%_
                                               (cons (cons _%tmp149323%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e149293%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind149271%_)
                                               (cons _%tmp149323%_
                                                     _%args149272%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx157131157132%_))
                                         (let ((_%e149300149354%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx157131157132%_))))
                                           (let ((_%tl149302149359%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e149300149354%_)))
                                                 (_%hd149301149357%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e149300149354%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd149301149357%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd149301149357%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl149302149359%_))
                                                         (let ((_%e149303149362%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl149302149359%_))))
                   (let ((_%tl149305149367%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e149303149362%_)))
                         (_%hd149304149365%_
                          (let ()
                            (declare (not safe))
                            (##car _%e149303149362%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl149305149367%_))
                         (_%__kont157133157134%_)
                         (_%__kont157137157138%_))))
                 (_%__kont157137157138%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd149301149357%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl149302149359%_))
                     (let ((_%e149309149339%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl149302149359%_))))
                       (let ((_%tl149311149344%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e149309149339%_)))
                             (_%hd149310149342%_
                              (let ()
                                (declare (not safe))
                                (##car _%e149309149339%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl149311149344%_))
                             (_%__kont157135157136%_)
                             (_%__kont157137157138%_))))
                     (_%__kont157137157138%_))
                 (_%__kont157137157138%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont157137157138%_))))
                                         (_%__kont157137157138%_)))))))
                         (if (pair? _%rest149273149281%_)
                             (let ((_%hd149278149378%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest149273149281%_)))
                                   (_%tl149279149380%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest149273149281%_))))
                               (let* ((_%e149383%_ _%hd149278149378%_)
                                      (_%rest149385%_ _%tl149279149380%_))
                                 (_%K149277149375%_
                                  _%rest149385%_
                                  _%e149383%_)))
                             (_%else149275149289%_))))))
               _%hd149203149241%_
               _%hd149200149233%_
               _%hd149197149225%_)
              (_%g149188149209%_ _%g149189149212%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g149188149209%_
                                               _%g149189149212%_))))
                                      (_%g149188149209%_ _%g149189149212%_))))
                              (_%g149188149209%_ _%g149189149212%_))))
                      (_%g149188149209%_ _%g149189149212%_)))))
          (_%g149187149387%_ _%stx149186%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self148964%_ _%stx148965%_)
        (let* ((_%g148967148992%_
                (lambda (_%g148968148989%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148968148989%_))))
               (_%g148966149182%_
                (lambda (_%g148968148995%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148968148995%_))
                      (let ((_%e148973148997%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148968148995%_))))
                        (let ((_%hd148974149000%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148973148997%_)))
                              (_%tl148975149002%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148973148997%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148975149002%_))
                              (let ((_%e148976149005%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148975149002%_))))
                                (let ((_%hd148977149008%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148976149005%_)))
                                      (_%tl148978149010%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148976149005%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148978149010%_))
                                      (let ((_%e148979149013%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148978149010%_))))
                                        (let ((_%hd148980149016%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148979149013%_)))
                                              (_%tl148981149018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148979149013%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl148981149018%_))
                                              (let ((_%e148982149021%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl148981149018%_))))
                                                (let ((_%hd148983149024%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e148982149021%_)))
                                                      (_%tl148984149026%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e148982149021%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl148984149026%_))
                                                      (let ((_%e148985149029%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl148984149026%_))))
                (let ((_%hd148986149032%_
                       (let () (declare (not safe)) (##car _%e148985149029%_)))
                      (_%tl148987149034%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e148985149029%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl148987149034%_))
                      ((lambda (_%L149037%_
                                _%L149038%_
                                _%L149039%_
                                _%L149040%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self148964%_
                                            _%L149038%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self148964%_
                                                  _%L149037%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self148964%_
                                                        _%L149039%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp149061%_ ((_%rest149064%_
                                                 (cons _%L149039%_
                                                       (cons _%L149037%_
                                                             (cons _%L149038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind149066%_ '())
                                                (_%args149067%_ '()))
                               (let* ((_%rest149068149076%_ _%rest149064%_)
                                      (_%else149070149084%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind149066%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp157496 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp157496 _%args149067%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K149072149170%_
                                       (lambda (_%rest149087%_ _%e149088%_)
                                         (let* ((_%__stx157177157178%_
                                                 _%e149088%_)
                                                (_%g149093149111%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx157177157178%_)))))
                                           (let ((_%__kont157179157180%_
                                                  (lambda ()
                                                    (_%lp149061%_
                                                     _%rest149087%_
                                                     _%bind149066%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e149088%_))
                                                           _%args149067%_))))
                                                 (_%__kont157181157182%_
                                                  (lambda ()
                                                    (_%lp149061%_
                                                     _%rest149087%_
                                                     _%bind149066%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e149088%_))
                                                           _%args149067%_))))
                                                 (_%__kont157183157184%_
                                                  (lambda ()
                                                    (let ((_%tmp149118%_
                                                           (let ((__tmp157497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp157497))))
              (_%lp149061%_
               _%rest149087%_
               (cons (cons _%tmp149118%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e149088%_))
                                 '()))
                     _%bind149066%_)
               (cons _%tmp149118%_ _%args149067%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx157177157178%_))
                                                 (let ((_%e149095149149%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx157177157178%_))))
                                                   (let ((_%tl149097149154%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e149095149149%_)))
                                                         (_%hd149096149152%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e149095149149%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd149096149152%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd149096149152%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl149097149154%_))
                         (let ((_%e149098149157%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl149097149154%_))))
                           (let ((_%tl149100149162%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e149098149157%_)))
                                 (_%hd149099149160%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e149098149157%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl149100149162%_))
                                 (_%__kont157179157180%_)
                                 (_%__kont157183157184%_))))
                         (_%__kont157183157184%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd149096149152%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl149097149154%_))
                             (let ((_%e149104149134%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl149097149154%_))))
                               (let ((_%tl149106149139%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e149104149134%_)))
                                     (_%hd149105149137%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e149104149134%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl149106149139%_))
                                     (_%__kont157181157182%_)
                                     (_%__kont157183157184%_))))
                             (_%__kont157183157184%_))
                         (_%__kont157183157184%_)))
                 (_%__kont157183157184%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont157183157184%_)))))))
                                 (if (pair? _%rest149068149076%_)
                                     (let ((_%hd149073149173%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest149068149076%_)))
                                           (_%tl149074149175%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest149068149076%_))))
                                       (let* ((_%e149178%_ _%hd149073149173%_)
                                              (_%rest149180%_
                                               _%tl149074149175%_))
                                         (_%K149072149170%_
                                          _%rest149180%_
                                          _%e149178%_)))
                                     (_%else149070149084%_))))))
                       _%hd148986149032%_
                       _%hd148983149024%_
                       _%hd148980149016%_
                       _%hd148977149008%_)
                      (_%g148967148992%_ _%g148968148995%_))))
              (_%g148967148992%_ _%g148968148995%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g148967148992%_
                                               _%g148968148995%_))))
                                      (_%g148967148992%_ _%g148968148995%_))))
                              (_%g148967148992%_ _%g148968148995%_))))
                      (_%g148967148992%_ _%g148968148995%_)))))
          (_%g148966149182%_ _%stx148965%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self148803%_ _%stx148804%_)
        (letrec ((_%import-set-template148806%_
                  (lambda (_%in148909%_ _%phi148910%_)
                    (let ((_%iphi148912%_
                           (fx+ _%phi148910%_
                                (##direct-structure-ref
                                 _%in148909%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports148913%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in148909%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp148915%_ ((_%rest148917%_ _%imports148913%_)
                                         (_%r148918%_ '()))
                        (let* ((_%rest148919148927%_ _%rest148917%_)
                               (_%else148921148935%_ (lambda () _%r148918%_))
                               (_%K148923148952%_
                                (lambda (_%rest148938%_ _%in148939%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in148939%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi148912%_))
                                          (_%lp148915%_
                                           _%rest148938%_
                                           (cons _%in148939%_ _%r148918%_))
                                          (_%lp148915%_
                                           _%rest148938%_
                                           _%r148918%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in148939%_
                                             'gx#module-import::t))
                                          (let ((_%iphi148943%_
                                                 (fx+ _%phi148910%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in148939%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi148943%_))
                                                (_%lp148915%_
                                                 _%rest148938%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in148939%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r148918%_))
                                                (_%lp148915%_
                                                 _%rest148938%_
                                                 _%r148918%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in148939%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi148946%_
                                                     (fx+ _%iphi148912%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in148939%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi148946%_))
                                                    (_%lp148915%_
                                                     _%rest148938%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in148939%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r148918%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi148946%_))
                                                        (_%lp148915%_
                                                         _%rest148938%_
                                                         (let ((__tmp157498
                                                                (_%import-set-template148806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in148939%_
                         _%iphi148912%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r148918%_ __tmp157498)))
                (_%lp148915%_ _%rest148938%_ _%r148918%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp148915%_
                                               _%rest148938%_
                                               _%r148918%_)))))))
                          (if (pair? _%rest148919148927%_)
                              (let ((_%hd148924148955%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest148919148927%_)))
                                    (_%tl148925148957%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest148919148927%_))))
                                (let* ((_%in148960%_ _%hd148924148955%_)
                                       (_%rest148962%_ _%tl148925148957%_))
                                  (_%K148923148952%_
                                   _%rest148962%_
                                   _%in148960%_)))
                              (_%else148921148935%_))))))))
          (let* ((_%g148808148818%_
                  (lambda (_%g148809148815%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g148809148815%_))))
                 (_%g148807148906%_
                  (lambda (_%g148809148821%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g148809148821%_))
                        (let ((_%e148811148823%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g148809148821%_))))
                          (let ((_%hd148812148826%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148811148823%_)))
                                (_%tl148813148828%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148811148823%_))))
                            ((lambda (_%L148831%_)
                               (let ((_%ht148842%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp148844%_ ((_%rest148846%_
                                                     _%L148831%_)
                                                    (_%loads148847%_ '()))
                                   (letrec ((_%K148849%_
                                             (lambda (_%ctx148899%_
                                                      _%rest148900%_)
                                               (let ((_%id148902%_
                                                      (##structure-ref
                                                       _%ctx148899%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht148842%_
                                                        _%id148902%_))
                                                     (_%lp148844%_
                                                      _%rest148900%_
                                                      _%loads148847%_)
                                                     (let ((_%rt148904%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id148902%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht148842%_
                                                          _%id148902%_
                                                          _%rt148904%_))
                                                       (_%lp148844%_
                                                        _%rest148900%_
                                                        (cons _%rt148904%_
                                                              _%loads148847%_))))))))
                                     (let* ((_%rest148850148858%_
                                             _%rest148846%_)
                                            (_%else148852148870%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp157500
                                                            (lambda (_%g148865148867%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g148865148867%_)))
                   (__tmp157499 (reverse _%loads148847%_)))
               (declare (not safe))
               (##map __tmp157500 __tmp157499)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K148854148887%_
                                             (lambda (_%rest148873%_
                                                      _%in148874%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in148874%_
                                                      'gx#module-context::t))
                                                   (_%K148849%_
                                                    _%in148874%_
                                                    _%rest148873%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in148874%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in148874%_
                               '3
                               '#f
                               '#f)))
                   (_%K148849%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in148874%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest148873%_)
                   (_%lp148844%_ _%rest148873%_ _%loads148847%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in148874%_
                      'gx#import-set::t))
                   (let ((_%phi148879%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in148874%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi148879%_)
                         (_%K148849%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in148874%_
                             '1
                             '#f
                             '#f))
                          _%rest148873%_)
                         (if (fxpositive? _%phi148879%_)
                             (let ((_%deps148883%_
                                    (_%import-set-template148806%_
                                     _%in148874%_
                                     '0)))
                               (_%lp148844%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest148873%_
                                   _%deps148883%_))
                                _%loads148847%_))
                             (_%lp148844%_ _%rest148873%_ _%loads148847%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx148804%_
                      _%in148874%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest148850148858%_)
                                           (let ((_%hd148855148890%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest148850148858%_)))
                                                 (_%tl148856148892%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest148850148858%_))))
                                             (let* ((_%in148895%_
                                                     _%hd148855148890%_)
                                                    (_%rest148897%_
                                                     _%tl148856148892%_))
                                               (_%K148854148887%_
                                                _%rest148897%_
                                                _%in148895%_)))
                                           (_%else148852148870%_)))))))
                             _%tl148813148828%_)))
                        (_%g148808148818%_ _%g148809148821%_)))))
            (_%g148807148906%_ _%stx148804%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self148616%_ _%stx148617%_)
        (letrec ((_%add-lift!148619%_
                  (lambda (_%expr148801%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr148801%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote148620%_
                  (lambda (_%id148798%_ _%marks148799%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id148798%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks148799%_
                                                        '()))))))))
                 (_%generate-simple148621%_
                  (lambda (_%stxq148793%_)
                    (let ((_%gid148795%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid148796%_
                           (gxc#generate-runtime-identifier _%stxq148793%_)))
                      (_%add-lift!148619%_
                       (cons 'define
                             (cons _%gid148795%_
                                   (cons (_%generate-syntax-quote148620%_
                                          _%qid148796%_
                                          ''())
                                         '()))))
                      (let ((__tmp157501
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp157501 _%stxq148793%_ _%gid148795%_))
                      _%gid148795%_)))
                 (_%generate-serialized148622%_
                  (lambda (_%stxq148783%_ _%marks148784%_)
                    (let* ((_%mark-refs148786%_
                            (map _%generate-mark148623%_ _%marks148784%_))
                           (_%gid148788%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid148790%_
                            (gxc#generate-runtime-identifier _%stxq148783%_)))
                      (_%add-lift!148619%_
                       (cons 'define
                             (cons _%gid148788%_
                                   (cons (_%generate-syntax-quote148620%_
                                          _%qid148790%_
                                          (cons 'list _%mark-refs148786%_))
                                         '()))))
                      (let ((__tmp157502
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp157502 _%stxq148783%_ _%gid148788%_))
                      _%gid148788%_)))
                 (_%generate-mark148623%_
                  (lambda (_%mark148768%_)
                    (let ((_%$e148770%_
                           (let ((__tmp157503
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp157503 _%mark148768%_))))
                      (if _%$e148770%_
                          _%$e148770%_
                          (let* ((_%gid148774%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr148776%_
                                  (_%serialize-mark148624%_ _%mark148768%_))
                                 (_%ctx148778%_
                                  (let ((__tmp157504
                                         (##structure-ref
                                          _%mark148768%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp157504)))
                                 (_%ctx-ref148780%_
                                  (if (eq? _%ctx148778%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref148625%_
                                                               _%ctx148778%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp157505
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp157505
                               _%mark148768%_
                               _%gid148774%_))
                            (_%add-lift!148619%_
                             (cons 'define
                                   (cons _%gid148774%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr148776%_ '()))
                   (cons _%ctx-ref148780%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid148774%_)))))
                 (_%serialize-mark148624%_
                  (lambda (_%mark148715%_)
                    (letrec ((_%quote-e148717%_
                              (lambda (_%sym148766%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym148766%_))
                                    _%sym148766%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym148766%_))))))
                      (let* ((_%mark148718148727%_ _%mark148715%_)
                             (_%E148720148731%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark148718148727%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K148721148743%_
                              (lambda (_%trace148734%_
                                       _%phi148735%_
                                       _%ctx148736%_
                                       _%subst148737%_)
                                (let ((_%subs148739%_
                                       (if _%subst148737%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst148737%_))
                                           '())))
                                  (cons _%phi148735%_
                                        (let ((__tmp157506
                                               (lambda (_%pair148741%_)
                                                 (cons (_%quote-e148717%_
                                                        (car _%pair148741%_))
                                                       (_%quote-e148717%_
                                                        (cdr _%pair148741%_))))))
                                          (declare (not safe))
                                          (##map __tmp157506
                                                 _%subs148739%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark148718148727%_
                               'gx#expander-mark::t))
                            (let* ((_%e148722148746%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark148718148727%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst148749%_ _%e148722148746%_)
                                   (_%e148723148751%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark148718148727%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx148754%_ _%e148723148751%_)
                                   (_%e148724148756%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark148718148727%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi148759%_ _%e148724148756%_)
                                   (_%e148725148761%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark148718148727%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace148764%_ _%e148725148761%_))
                              (_%K148721148743%_
                               _%trace148764%_
                               _%phi148759%_
                               _%ctx148754%_
                               _%subst148749%_))
                            (_%E148720148731%_))))))
                 (_%context-ref148625%_
                  (lambda (_%ctx148702%_)
                    (if (let ((__tmp157507
                               (##structure-ref
                                _%ctx148702%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp157507
                           'gx#module-context::t))
                        (let ((_%ctx-ref148704%_
                               (_%context-ref-nested148627%_ _%ctx148702%_))
                              (_%ctx-origin148705%_
                               (_%context-ref-origin148626%_ _%ctx148702%_))
                              (_%origin148706%_
                               (_%context-ref-origin148626%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin148706%_ _%ctx-origin148705%_)
                              (let ((_%ref148708%_
                                     (_%context-ref-nested148627%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp148710%_ ((_%ref148712%_
                                                    (cdr _%ref148708%_))
                                                   (_%ctx-ref148713%_
                                                    (cdr _%ctx-ref148704%_)))
                                  (if (and (pair? _%ref148712%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref148712%_))
                                                (car _%ctx-ref148713%_)))
                                      (_%lp148710%_
                                       (cdr _%ref148712%_)
                                       (cdr _%ctx-ref148713%_))
                                      (cons '#f _%ctx-ref148713%_))))
                              _%ctx-ref148704%_))
                        (let ((__tmp157508
                               (##structure-ref
                                _%ctx148702%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp157508)))))
                 (_%context-ref-origin148626%_
                  (lambda (_%ctx148694%_)
                    (let _%lp148696%_ ((_%ctx148698%_ _%ctx148694%_))
                      (let ((_%super148700%_
                             (##structure-ref
                              _%ctx148698%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super148700%_
                               'gx#module-context::t))
                            (_%lp148696%_ _%super148700%_)
                            _%ctx148698%_)))))
                 (_%context-ref-nested148627%_
                  (lambda (_%ctx148685%_)
                    (let _%lp148687%_ ((_%ctx148689%_ _%ctx148685%_)
                                       (_%r148690%_ '()))
                      (let ((_%super148692%_
                             (##structure-ref
                              _%ctx148689%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super148692%_
                               'gx#module-context::t))
                            (_%lp148687%_
                             _%super148692%_
                             (cons (car (##structure-ref
                                         _%ctx148689%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r148690%_))
                            (cons (let ((__tmp157509
                                         (##structure-ref
                                          _%ctx148689%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp157509))
                                  _%r148690%_)))))))
          (let* ((_%g148629148642%_
                  (lambda (_%g148630148639%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g148630148639%_))))
                 (_%g148628148682%_
                  (lambda (_%g148630148645%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g148630148645%_))
                        (let ((_%e148632148647%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g148630148645%_))))
                          (let ((_%hd148633148650%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148632148647%_)))
                                (_%tl148634148652%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148632148647%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl148634148652%_))
                                (let ((_%e148635148655%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl148634148652%_))))
                                  (let ((_%hd148636148658%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e148635148655%_)))
                                        (_%tl148637148660%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e148635148655%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl148637148660%_))
                                        ((lambda (_%L148663%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L148663%_))
                                               (let ((_%$e148676%_
                                                      (let ((__tmp157510
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp157510 _%L148663%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e148676%_
                                                     _%$e148676%_
                                                     (let ((_%marks148680%_
                                                            (##direct-structure-ref
                                                             _%L148663%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks148680%_)
                                                           (_%generate-simple148621%_
                                                            _%L148663%_)
                                                           (_%generate-serialized148622%_
                                                            _%L148663%_
                                                            _%marks148680%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L148663%_))))
                                         _%hd148636148658%_)
                                        (_%g148629148642%_
                                         _%g148630148645%_))))
                                (_%g148629148642%_ _%g148630148645%_))))
                        (_%g148629148642%_ _%g148630148645%_)))))
            (_%g148628148682%_ _%stx148617%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self148548%_ _%stx148549%_)
        (let* ((_%g148551148568%_
                (lambda (_%g148552148565%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148552148565%_))))
               (_%g148550148613%_
                (lambda (_%g148552148571%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148552148571%_))
                      (let ((_%e148555148573%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148552148571%_))))
                        (let ((_%hd148556148576%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148555148573%_)))
                              (_%tl148557148578%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148555148573%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148557148578%_))
                              (let ((_%e148558148581%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148557148578%_))))
                                (let ((_%hd148559148584%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148558148581%_)))
                                      (_%tl148560148586%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148558148581%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148560148586%_))
                                      (let ((_%e148561148589%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148560148586%_))))
                                        (let ((_%hd148562148592%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148561148589%_)))
                                              (_%tl148563148594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148561148589%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148563148594%_))
                                              ((lambda (_%L148597%_
                                                        _%L148598%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L148598%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self148548%_ _%L148597%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd148562148592%_
                                               _%hd148559148584%_)
                                              (_%g148551148568%_
                                               _%g148552148571%_))))
                                      (_%g148551148568%_ _%g148552148571%_))))
                              (_%g148551148568%_ _%g148552148571%_))))
                      (_%g148551148568%_ _%g148552148571%_)))))
          (_%g148550148613%_ _%stx148549%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self148497%_ _%stx148498%_)
        (let* ((_%g148500148510%_
                (lambda (_%g148501148507%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148501148507%_))))
               (_%g148499148545%_
                (lambda (_%g148501148513%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148501148513%_))
                      (let ((_%e148503148515%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148501148513%_))))
                        (let ((_%hd148504148518%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148503148515%_)))
                              (_%tl148505148520%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148503148515%_))))
                          ((lambda (_%L148523%_)
                             (let* ((_%c-body148537%_
                                     (map (lambda (_%g148532148534%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self148497%_
                                               _%g148532148534%_)))
                                          _%L148523%_))
                                    (_%c-body148542%_
                                     (let ((__tmp157511
                                            (lambda (_%$obj148539%_)
                                              (not (eq? _%$obj148539%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp157511
                                        _%c-body148537%_))))
                               (cons '%#begin _%c-body148542%_)))
                           _%tl148505148520%_)))
                      (_%g148500148510%_ _%g148501148513%_)))))
          (_%g148499148545%_ _%stx148498%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self148402%_ _%stx148403%_)
        (let* ((_%g148405148415%_
                (lambda (_%g148406148412%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148406148412%_))))
               (_%g148404148494%_
                (lambda (_%g148406148418%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148406148418%_))
                      (let ((_%e148408148420%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148406148418%_))))
                        (let ((_%hd148409148423%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148408148420%_)))
                              (_%tl148410148425%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148408148420%_))))
                          ((lambda (_%L148428%_)
                             (let* ((_%phi148438%_
                                     (let ((__tmp157512
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp157512 '1)))
                                    (_%block148440%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self148402%_ 'state))
                                      _%phi148438%_))
                                    (_%compiled148443%_
                                     (let ((__tmp157513
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self148402%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L148428%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp157513
                                        gx#current-expander-phi
                                        _%phi148438%_)))
                                    (_%g148446148456%_
                                     (lambda (_%g148447148453%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g148447148453%_))))
                                    (_%g148445148491%_
                                     (lambda (_%g148447148459%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g148447148459%_))
                                           (let ((_%e148449148461%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g148447148459%_))))
                                             (let ((_%hd148450148464%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e148449148461%_)))
                                                   (_%tl148451148466%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e148449148461%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd148450148464%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd148450148464%_))
                                                       ((lambda (_%L148469%_)
                                                          (let ((_%c-body148486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj148483%_)
                                   (not (eq? _%$obj148483%_ '#!void)))
                                 _%L148469%_)))
                    (if _%block148440%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block148440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body148486%_))
                        (if (null? _%c-body148486%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body148486%_)))))
                _%tl148451148466%_)
               (_%g148446148456%_ _%g148447148459%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g148446148456%_
                                                    _%g148447148459%_))))
                                           (_%g148446148456%_
                                            _%g148447148459%_)))))
                               (_%g148445148491%_ _%compiled148443%_)))
                           _%tl148410148425%_)))
                      (_%g148405148415%_ _%g148406148418%_)))))
          (_%g148404148494%_ _%stx148403%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self148333%_ _%stx148334%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self148333%_ 'state)))
        (let* ((_%g148336148350%_
                (lambda (_%g148337148347%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148337148347%_))))
               (_%g148335148399%_
                (lambda (_%g148337148353%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148337148353%_))
                      (let ((_%e148340148355%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148337148353%_))))
                        (let ((_%hd148341148358%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148340148355%_)))
                              (_%tl148342148360%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148340148355%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148342148360%_))
                              (let ((_%e148343148363%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148342148360%_))))
                                (let ((_%hd148344148366%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148343148363%_)))
                                      (_%tl148345148368%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148343148363%_))))
                                  ((lambda (_%L148371%_ _%L148372%_)
                                     (let ((_%key148385%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L148372%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key148385%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx148334%_
                                              _%L148372%_
                                              _%key148385%_)))
                                       (let* ((_%ctx148387%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L148372%_)))
                                              (_%code148390%_
                                               (let ((__tmp157514
                                                      (lambda ()
                                                        (let ((__tmp157515
                                                               (##structure-ref
                                                                _%ctx148387%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self148333%_
                                                           __tmp157515)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp157514
                                                  gx#current-expander-context
                                                  _%ctx148387%_)))
                                              (_%rt148392%_
                                               (let ((__tmp157516
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp157516
                                                  _%ctx148387%_)))
                                              (_%loader148394%_
                                               (if _%rt148392%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt148392%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid148396%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L148372%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self148333%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid148396%_
                                                     (cons _%code148390%_
                                                           _%loader148394%_))))))
                                   _%tl148345148368%_
                                   _%hd148344148366%_)))
                              (_%g148336148350%_ _%g148337148353%_))))
                      (_%g148336148350%_ _%g148337148353%_)))))
          (_%g148335148399%_ _%stx148334%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx148320%_ _%context-chain148321%_)
        (let _%lp148323%_ ((_%ctx148325%_ _%ctx148320%_) (_%path148326%_ '()))
          (let ((_%super148328%_
                 (##structure-ref _%ctx148325%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super148328%_ _%context-chain148321%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx148325%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path148326%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super148328%_
                       'gx#module-context::t))
                    (_%lp148323%_
                     _%super148328%_
                     (cons (car (##structure-ref
                                 _%ctx148325%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path148326%_))
                    (cons (let ((__tmp157517
                                 (##structure-ref
                                  _%ctx148325%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp157517))
                          _%path148326%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp148313%_ ((_%ctx148315%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r148316%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx148315%_ 'gx#module-context::t))
              (_%lp148313%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx148315%_ '3 '#f '#f))
               (cons _%ctx148315%_ _%r148316%_))
              _%r148316%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self148076%_ _%stx148077%_)
        (letrec* ((_%context-chain148079%_ (gxc#current-context-chain))
                  (_%make-import-spec148080%_
                   (lambda (_%in148249%_)
                     (let* ((_%in148250148262%_ _%in148249%_)
                            (_%E148252148266%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in148250148262%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K148253148276%_
                             (lambda (_%phi148269%_
                                      _%name148270%_
                                      _%src-name148271%_
                                      _%src-phi148272%_
                                      _%src-key148273%_
                                      _%src-ctx148274%_)
                               (cons _%phi148269%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name148270%_)
                                           (cons _%src-phi148272%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name148271%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in148250148262%_
                              'gx#module-import::t))
                           (let ((_%e148254148279%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in148250148262%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e148254148279%_
                                    'gx#module-export::t))
                                 (let* ((_%e148257148282%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e148254148279%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx148285%_ _%e148257148282%_)
                                        (_%e148258148287%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e148254148279%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key148290%_ _%e148258148287%_)
                                        (_%e148259148292%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e148254148279%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi148295%_ _%e148259148292%_)
                                        (_%e148260148297%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e148254148279%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name148300%_ _%e148260148297%_)
                                        (_%e148255148302%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in148250148262%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name148305%_ _%e148255148302%_)
                                        (_%e148256148307%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in148250148262%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi148310%_ _%e148256148307%_))
                                   (_%K148253148276%_
                                    _%phi148310%_
                                    _%name148305%_
                                    _%src-name148300%_
                                    _%src-phi148295%_
                                    _%src-key148290%_
                                    _%src-ctx148285%_))
                                 (_%E148252148266%_)))
                           (_%E148252148266%_)))))
                  (_%make-import-path148081%_
                   (lambda (_%ctx148247%_)
                     (gxc#generate-meta-import-path
                      _%ctx148247%_
                      _%context-chain148079%_)))
                  (_%make-import-spec-in148082%_
                   (lambda (_%ctx148244%_ _%in148245%_)
                     (cons 'spec:
                           (cons (_%make-import-path148081%_ _%ctx148244%_)
                                 (reverse _%in148245%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self148076%_ 'state)))
          (let* ((_%g148084148094%_
                  (lambda (_%g148085148091%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g148085148091%_))))
                 (_%g148083148241%_
                  (lambda (_%g148085148097%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g148085148097%_))
                        (let ((_%e148087148099%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g148085148097%_))))
                          (let ((_%hd148088148102%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148087148099%_)))
                                (_%tl148089148104%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148087148099%_))))
                            ((lambda (_%L148107%_)
                               (let _%lp148118%_ ((_%rest148120%_ _%L148107%_)
                                                  (_%current-src148121%_ '#f)
                                                  (_%current-in148122%_ '())
                                                  (_%r148123%_ '()))
                                 (let* ((_%rest148124148132%_ _%rest148120%_)
                                        (_%else148126148142%_
                                         (lambda ()
                                           (let ((_%r148140%_
                                                  (if _%current-src148121%_
                                                      (cons (_%make-import-spec-in148082%_
                                                             _%current-src148121%_
                                                             _%current-in148122%_)
                                                            _%r148123%_)
                                                      _%r148123%_)))
                                             (cons '%#import
                                                   (reverse _%r148140%_)))))
                                        (_%K148128148229%_
                                         (lambda (_%rest148145%_ _%in148146%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in148146%_
                                                  'gx#module-import::t))
                                               (let* ((_%in148148148155%_
                                                       _%in148146%_)
                                                      (_%E148150148159%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in148148148155%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K148151148167%_
               (lambda (_%src-ctx148162%_)
                 (if (eq? _%current-src148121%_ _%src-ctx148162%_)
                     (_%lp148118%_
                      _%rest148145%_
                      _%current-src148121%_
                      (cons (_%make-import-spec148080%_ _%in148146%_)
                            _%current-in148122%_)
                      _%r148123%_)
                     (if _%current-src148121%_
                         (_%lp148118%_
                          _%rest148145%_
                          _%src-ctx148162%_
                          (cons (_%make-import-spec148080%_ _%in148146%_) '())
                          (cons (_%make-import-spec-in148082%_
                                 _%current-src148121%_
                                 _%current-in148122%_)
                                _%r148123%_))
                         (_%lp148118%_
                          _%rest148145%_
                          _%src-ctx148162%_
                          (cons (_%make-import-spec148080%_ _%in148146%_) '())
                          _%r148123%_)))))
              (_%e148152148170%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in148148148155%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e148152148170%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e148153148173%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e148152148170%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx148176%_ _%e148153148173%_))
               (_%K148151148167%_ _%src-ctx148176%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E148150148159%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in148146%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi148179%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in148146%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src148181%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in148146%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in148221%_
                                                           (let* ((_%g148182148191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path148081%_ _%src148181%_))
                          (_%E148185148195%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g148182148191%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K148187148211%_
                            (lambda (_%path148209%_) _%path148209%_))
                           (_%K148186148201%_
                            (lambda (_%path148199%_)
                              (cons 'in: _%path148199%_))))
                       (if (pair? _%g148182148191%_)
                           (let ((_%tl148189148216%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g148182148191%_)))
                                 (_%hd148188148214%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g148182148191%_))))
                             (if (null? _%tl148189148216%_)
                                 (let ((_%path148219%_ _%hd148188148214%_))
                                   (_%K148187148211%_ _%path148219%_))
                                 (let ((_%path148204%_ _%g148182148191%_))
                                   (_%K148186148201%_ _%path148204%_))))
                           (let ((_%path148204%_ _%g148182148191%_))
                             (_%K148186148201%_ _%path148204%_))))))
                  (_%r148223%_
                   (if _%current-src148121%_
                       (cons (_%make-import-spec-in148082%_
                              _%current-src148121%_
                              _%current-in148122%_)
                             _%r148123%_)
                       _%r148123%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp148118%_
                                                      _%rest148145%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi148179%_)
                                                                _%src-in148221%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi148179%_
                                    (cons _%src-in148221%_ '()))))
                    _%r148223%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in148146%_
                                                          'gx#module-context::t))
                                                       (let ((_%r148227%_
                                                              (if _%current-src148121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in148082%_
                                 _%current-src148121%_
                                 _%current-in148122%_)
                                _%r148123%_)
                          _%r148123%_)))
                 (_%lp148118%_
                  _%rest148145%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path148081%_ _%in148146%_))
                        _%r148227%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest148124148132%_)
                                       (let ((_%hd148129148232%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest148124148132%_)))
                                             (_%tl148130148234%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest148124148132%_))))
                                         (let* ((_%in148237%_
                                                 _%hd148129148232%_)
                                                (_%rest148239%_
                                                 _%tl148130148234%_))
                                           (_%K148128148229%_
                                            _%rest148239%_
                                            _%in148237%_)))
                                       (_%else148126148142%_)))))
                             _%tl148089148104%_)))
                        (_%g148084148094%_ _%g148085148097%_)))))
            (_%g148083148241%_ _%stx148077%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self147886%_ _%stx147887%_)
        (letrec* ((_%context-chain147889%_ (gxc#current-context-chain))
                  (_%make-import-path147890%_
                   (lambda (_%ctx148074%_)
                     (gxc#generate-meta-import-path
                      _%ctx148074%_
                      _%context-chain147889%_))))
          (let* ((_%g147892147902%_
                  (lambda (_%g147893147899%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g147893147899%_))))
                 (_%g147891148071%_
                  (lambda (_%g147893147905%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g147893147905%_))
                        (let ((_%e147895147907%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g147893147905%_))))
                          (let ((_%hd147896147910%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e147895147907%_)))
                                (_%tl147897147912%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e147895147907%_))))
                            ((lambda (_%L147915%_)
                               (let _%lp147926%_ ((_%rest147928%_ _%L147915%_)
                                                  (_%r147929%_ '()))
                                 (let* ((_%rest147930147938%_ _%rest147928%_)
                                        (_%else147932147946%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r147929%_))))
                                        (_%K147934148059%_
                                         (lambda (_%rest147949%_ _%out147950%_)
                                           (let* ((_%out147951147964%_
                                                   _%out147950%_)
                                                  (_%E147954147968%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out147951147964%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K147958148038%_
                                                    (lambda (_%name148034%_
                                                             _%phi148035%_
                                                             _%key148036%_)
                                                      (_%lp147926%_
                                                       _%rest147949%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi148035%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key148036%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name148034%_)
                                             '()))))
                     _%r147929%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K147955148018%_
                                                    (lambda (_%phi147972%_
                                                             _%src147973%_)
                                                      (let* ((_%out148013%_
                                                              (if _%src147973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g147974147983%_
                                              (_%make-import-path147890%_
                                               _%src147973%_))
                                             (_%E147977147987%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g147974147983%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K147979148003%_
                                               (lambda (_%path148001%_)
                                                 _%path148001%_))
                                              (_%K147978147993%_
                                               (lambda (_%path147991%_)
                                                 (cons 'in: _%path147991%_))))
                                          (if (pair? _%g147974147983%_)
                                              (let ((_%tl147981148008%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g147974147983%_)))
                                                    (_%hd147980148006%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g147974147983%_))))
                                                (if (null? _%tl147981148008%_)
                                                    (let ((_%path148011%_
                                                           _%hd147980148006%_))
                                                      (_%K147979148003%_
                                                       _%path148011%_))
                                                    (let ((_%path147996%_
                                                           _%g147974147983%_))
                                                      (_%K147978147993%_
                                                       _%path147996%_))))
                                              (let ((_%path147996%_
                                                     _%g147974147983%_))
                                                (_%K147978147993%_
                                                 _%path147996%_)))))
                                      '()))
                          '#t))
                     (_%out148015%_
                      (if (fxzero? _%phi147972%_)
                          _%out148013%_
                          (cons 'phi:
                                (cons _%phi147972%_
                                      (cons _%out148013%_ '()))))))
                (_%lp147926%_
                 _%rest147949%_
                 (cons _%out148015%_ _%r147929%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match147953148031%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out147951147964%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e147956148021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out147951147964%_
                               '1
                               '#f
                               '#f)))
                           (_%e147957148026%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out147951147964%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src148024%_ _%e147956148021%_)
                            (_%phi148029%_ _%e147957148026%_))
                        (_%K147955148018%_ _%phi148029%_ _%src148024%_)))
                    (_%E147954147968%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out147951147964%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e147959148041%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out147951147964%_
                        '1
                        '#f
                        '#f)))
                    (_%e147960148044%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out147951147964%_
                        '2
                        '#f
                        '#f)))
                    (_%e147961148049%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out147951147964%_
                        '3
                        '#f
                        '#f)))
                    (_%e147962148054%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out147951147964%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key148047%_ _%e147960148044%_)
                     (_%phi148052%_ _%e147961148049%_)
                     (_%name148057%_ _%e147962148054%_))
                 (_%K147958148038%_
                  _%name148057%_
                  _%phi148052%_
                  _%key148047%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match147953148031%_))))))))
                                   (if (pair? _%rest147930147938%_)
                                       (let ((_%hd147935148062%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest147930147938%_)))
                                             (_%tl147936148064%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest147930147938%_))))
                                         (let* ((_%out148067%_
                                                 _%hd147935148062%_)
                                                (_%rest148069%_
                                                 _%tl147936148064%_))
                                           (_%K147934148059%_
                                            _%rest148069%_
                                            _%out148067%_)))
                                       (_%else147932147946%_)))))
                             _%tl147897147912%_)))
                        (_%g147892147902%_ _%g147893147905%_)))))
            (_%g147891148071%_ _%stx147887%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self147847%_ _%stx147848%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self147847%_ 'state)))
        (let* ((_%g147850147860%_
                (lambda (_%g147851147857%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147851147857%_))))
               (_%g147849147883%_
                (lambda (_%g147851147863%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147851147863%_))
                      (let ((_%e147853147865%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147851147863%_))))
                        (let ((_%hd147854147868%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147853147865%_)))
                              (_%tl147855147870%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147853147865%_))))
                          ((lambda (_%L147873%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L147873%_)))
                           _%tl147855147870%_)))
                      (_%g147850147860%_ _%g147851147863%_)))))
          (_%g147849147883%_ _%stx147848%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self147718%_ _%stx147719%_)
        (letrec ((_%generate1147721%_
                  (lambda (_%id147842%_ _%eid147843%_)
                    (let ((_%eid147845%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid147843%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid147845%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx147719%_
                             _%eid147845%_)))
                      (cons (gxc#generate-runtime-identifier _%id147842%_)
                            (cons _%eid147845%_ '()))))))
          (let* ((_%g147723147751%_
                  (lambda (_%g147724147748%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g147724147748%_))))
                 (_%g147722147839%_
                  (lambda (_%g147724147754%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g147724147754%_))
                        (let ((_%e147727147756%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g147724147754%_))))
                          (let ((_%hd147728147759%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e147727147756%_)))
                                (_%tl147729147761%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e147727147756%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl147729147761%_))
                                (let ((_g157518_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl147729147761%_
                                          '0))))
                                  (begin
                                    (let ((_g157519_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g157518_)
                                                 (##values-length _g157518_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g157519_ 2)))
                                          (error "Context expects 2 values"
                                                 _g157519_)))
                                    (let ((_%target147730147764%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g157518_ 0)))
                                          (_%tl147732147766%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g157518_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl147732147766%_))
                                          (letrec ((_%loop147733147769%_
                                                    (lambda (_%hd147731147772%_
                                                             _%eid147737147774%_
                                                             _%id147738147776%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd147731147772%_))
                                                          (let ((_%e147734147779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd147731147772%_))))
                    (let ((_%lp-hd147735147782%_
                           (let ()
                             (declare (not safe))
                             (##car _%e147734147779%_)))
                          (_%lp-tl147736147784%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e147734147779%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd147735147782%_))
                          (let ((_%e147741147787%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd147735147782%_))))
                            (let ((_%hd147742147790%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e147741147787%_)))
                                  (_%tl147743147792%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e147741147787%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl147743147792%_))
                                  (let ((_%e147744147795%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl147743147792%_))))
                                    (let ((_%hd147745147798%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e147744147795%_)))
                                          (_%tl147746147800%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e147744147795%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl147746147800%_))
                                          (_%loop147733147769%_
                                           _%lp-tl147736147784%_
                                           (cons _%hd147745147798%_
                                                 _%eid147737147774%_)
                                           (cons _%hd147742147790%_
                                                 _%id147738147776%_))
                                          (_%g147723147751%_
                                           _%g147724147754%_))))
                                  (_%g147723147751%_ _%g147724147754%_))))
                          (_%g147723147751%_ _%g147724147754%_))))
                  (let ((_%eid147739147803%_ (reverse _%eid147737147774%_))
                        (_%id147740147805%_ (reverse _%id147738147776%_)))
                    ((lambda (_%L147808%_ _%L147809%_)
                       (cons '%#extern
                             (map _%generate1147721%_
                                  (let ((__tmp157520
                                         (lambda (_%g147824147827%_
                                                  _%g147825147829%_)
                                           (cons _%g147824147827%_
                                                 _%g147825147829%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp157520 '() _%L147809%_))
                                  (let ((__tmp157521
                                         (lambda (_%g147831147834%_
                                                  _%g147832147836%_)
                                           (cons _%g147831147834%_
                                                 _%g147832147836%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp157521 '() _%L147808%_)))))
                     _%eid147739147803%_
                     _%id147740147805%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop147733147769%_
                                             _%target147730147764%_
                                             '()
                                             '()))
                                          (_%g147723147751%_
                                           _%g147724147754%_)))))
                                (_%g147723147751%_ _%g147724147754%_))))
                        (_%g147723147751%_ _%g147724147754%_)))))
            (_%g147722147839%_ _%stx147719%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self147508%_ _%stx147509%_)
        (letrec ((_%generate1147511%_
                  (lambda (_%id147713%_)
                    (let ((_%eid147715%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id147713%_)))
                          (_%ident147716%_
                           (gxc#generate-runtime-identifier _%id147713%_)))
                      (cons '%#define-runtime
                            (cons _%ident147716%_ (cons _%eid147715%_ '()))))))
                 (_%generate*147512%_
                  (lambda (_%all147681%_)
                    (let* ((_%all147682147690%_ _%all147681%_)
                           (_%else147684147698%_
                            (lambda () (cons '%#begin _%all147681%_)))
                           (_%K147686147703%_
                            (lambda (_%one147701%_) _%one147701%_)))
                      (if (pair? _%all147682147690%_)
                          (let ((_%hd147687147706%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all147682147690%_)))
                                (_%tl147688147708%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all147682147690%_))))
                            (let ((_%one147711%_ _%hd147687147706%_))
                              (if (null? _%tl147688147708%_)
                                  (_%K147686147703%_ _%one147711%_)
                                  (_%else147684147698%_))))
                          (_%else147684147698%_))))))
          (let* ((_%g147514147531%_
                  (lambda (_%g147515147528%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g147515147528%_))))
                 (_%g147513147678%_
                  (lambda (_%g147515147534%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g147515147534%_))
                        (let ((_%e147518147536%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g147515147534%_))))
                          (let ((_%hd147519147539%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e147518147536%_)))
                                (_%tl147520147541%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e147518147536%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl147520147541%_))
                                (let ((_%e147521147544%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl147520147541%_))))
                                  (let ((_%hd147522147547%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e147521147544%_)))
                                        (_%tl147523147549%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e147521147544%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl147523147549%_))
                                        (let ((_%e147524147552%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl147523147549%_))))
                                          (let ((_%hd147525147555%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e147524147552%_)))
                                                (_%tl147526147557%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e147524147552%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl147526147557%_))
                                                ((lambda (_%L147560%_
                                                          _%L147561%_)
                                                   (let _%lp147577%_ ((_%rest147579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L147561%_)
                              (_%r147580%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx157256157257%_
                                                             _%rest147579%_)
                                                            (_%g147585147602%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx157256157257%_)))))
               (let ((_%__kont157258157259%_
                      (lambda (_%L147665%_)
                        (_%lp147577%_ _%L147665%_ _%r147580%_)))
                     (_%__kont157260157261%_
                      (lambda (_%L147638%_ _%L147639%_)
                        (_%lp147577%_
                         _%L147638%_
                         (cons (_%generate1147511%_ _%L147639%_)
                               _%r147580%_))))
                     (_%__kont157262157263%_
                      (lambda (_%L147614%_)
                        (_%generate*147512%_
                         (let ((__tmp157522
                                (cons (_%generate1147511%_ _%L147614%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp157522 _%r147580%_)))))
                     (_%__kont157264157265%_
                      (lambda () (_%generate*147512%_ (reverse _%r147580%_)))))
                 (let ((_%g147583147625%_
                        (lambda ()
                          (let ((_%L147614%_ _%__stx157256157257%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L147614%_))
                                (_%__kont157262157263%_ _%L147614%_)
                                (_%__kont157264157265%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx157256157257%_))
                       (let ((_%e147588147654%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx157256157257%_))))
                         (let ((_%tl147590147659%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e147588147654%_)))
                               (_%hd147589147657%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e147588147654%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd147589147657%_))
                               (let ((_%e147591147662%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd147589147657%_))))
                                 (if (equal? _%e147591147662%_ '#f)
                                     (_%__kont157258157259%_
                                      _%tl147590147659%_)
                                     (_%__kont157260157261%_
                                      _%tl147590147659%_
                                      _%hd147589147657%_)))
                               (_%__kont157260157261%_
                                _%tl147590147659%_
                                _%hd147589147657%_))))
                       (let () (declare (not safe)) (_%g147583147625%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd147525147555%_
                                                 _%hd147522147547%_)
                                                (_%g147514147531%_
                                                 _%g147515147534%_))))
                                        (_%g147514147531%_
                                         _%g147515147534%_))))
                                (_%g147514147531%_ _%g147515147534%_))))
                        (_%g147514147531%_ _%g147515147534%_)))))
            (_%g147513147678%_ _%stx147509%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self147405%_ _%stx147406%_)
        (let* ((_%g147408147425%_
                (lambda (_%g147409147422%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147409147422%_))))
               (_%g147407147505%_
                (lambda (_%g147409147428%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147409147428%_))
                      (let ((_%e147412147430%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147409147428%_))))
                        (let ((_%hd147413147433%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147412147430%_)))
                              (_%tl147414147435%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147412147430%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147414147435%_))
                              (let ((_%e147415147438%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147414147435%_))))
                                (let ((_%hd147416147441%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147415147438%_)))
                                      (_%tl147417147443%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147415147438%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147417147443%_))
                                      (let ((_%e147418147446%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147417147443%_))))
                                        (let ((_%hd147419147449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147418147446%_)))
                                              (_%tl147420147451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147418147446%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147420147451%_))
                                              ((lambda (_%L147454%_
                                                        _%L147455%_)
                                                 (let* ((_%eid147470%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L147455%_)))
                                                        (_%phi147472%_
                                                         (let ((__tmp157523
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp157523 '1)))
                (_%block147474%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self147405%_ 'state))
                  _%phi147472%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g147477147484%_
                                                           (lambda (_%g147478147481%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g147478147481%_))))
                  (_%g147476147502%_
                   (lambda (_%g147478147487%_)
                     ((lambda (_%L147489%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self147405%_ 'state))
                         _%phi147472%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L147489%_ (cons _%L147454%_ '())))))
                      _%g147478147487%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g147476147502%_
                                                      _%eid147470%_))
                                                   (if _%block147474%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block147474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L147455%_)
                                             (cons _%eid147470%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L147455%_)
                           (cons _%eid147470%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd147419147449%_
                                               _%hd147416147441%_)
                                              (_%g147408147425%_
                                               _%g147409147428%_))))
                                      (_%g147408147425%_ _%g147409147428%_))))
                              (_%g147408147425%_ _%g147409147428%_))))
                      (_%g147408147425%_ _%g147409147428%_)))))
          (_%g147407147505%_ _%stx147406%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self147337%_ _%stx147338%_)
        (let* ((_%g147340147357%_
                (lambda (_%g147341147354%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147341147354%_))))
               (_%g147339147402%_
                (lambda (_%g147341147360%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147341147360%_))
                      (let ((_%e147344147362%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147341147360%_))))
                        (let ((_%hd147345147365%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147344147362%_)))
                              (_%tl147346147367%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147344147362%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147346147367%_))
                              (let ((_%e147347147370%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147346147367%_))))
                                (let ((_%hd147348147373%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147347147370%_)))
                                      (_%tl147349147375%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147347147370%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147349147375%_))
                                      (let ((_%e147350147378%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147349147375%_))))
                                        (let ((_%hd147351147381%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147350147378%_)))
                                              (_%tl147352147383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147350147378%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147352147383%_))
                                              ((lambda (_%L147386%_
                                                        _%L147387%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L147387%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L147386%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd147351147381%_
                                               _%hd147348147373%_)
                                              (_%g147340147357%_
                                               _%g147341147360%_))))
                                      (_%g147340147357%_ _%g147341147360%_))))
                              (_%g147340147357%_ _%g147341147360%_))))
                      (_%g147340147357%_ _%g147341147360%_)))))
          (_%g147339147402%_ _%stx147338%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self147334%_ _%stx147335%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self147334%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx147335%_)
        (gxc#generate-meta-define-values% _%self147334%_ _%stx147335%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self147331%_ _%stx147332%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self147331%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx147332%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp157525 (list)) (__tmp157524 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp157525
         '(src n open blocks)
         __tmp157524
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args147328%_
        (apply make-instance gxc#meta-state::t _%$args147328%_)))
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
      (lambda (_%self147314%_ _%ctx147315%_)
        (let ((_%self147318%_ _%self147314%_))
          (if (let ((__tmp157526
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self147318%_))))
                (declare (not safe))
                (##fx< '4 __tmp157526))
              (begin
                (let ((__tmp157527
                       (let ((__tmp157528
                              (##structure-ref
                               _%ctx147315%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp157528))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147318%_
                   __tmp157527
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self147318%_ '1 '2 '#f '#f))
                (let ((__tmp157529
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147318%_
                   __tmp157529
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self147318%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp157530
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self147318%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self147318%_
                       '4
                       __tmp157530))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp157532 (list)) (__tmp157531 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp157532
         '(ctx phi n code)
         __tmp157531
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args147189%_
        (apply make-instance gxc#meta-state-block::t _%$args147189%_)))
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
      (lambda (_%state147148%_ _%phi147149%_)
        (let* ((_%state147150147158%_ _%state147148%_)
               (_%E147152147162%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state147150147158%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K147153147171%_
                (lambda (_%open147165%_ _%n147166%_ _%src147167%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open147165%_ _%phi147149%_))
                      '#f
                      (let ((_%block-ref147169%_
                             (let ((__tmp157533 (number->string _%n147166%_)))
                               (declare (not safe))
                               (##string-append
                                _%src147167%_
                                '"~"
                                __tmp157533))))
                        (##structure-set!
                         _%state147148%_
                         (let () (declare (not safe)) (##fx+ _%n147166%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp157534
                               (let ((__tmp157535
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp157535
                                  _%phi147149%_
                                  _%n147166%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open147165%_ _%phi147149%_ __tmp157534))
                        _%block-ref147169%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state147150147158%_
                 'gxc#meta-state::t))
              (let* ((_%e147154147174%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state147150147158%_
                         '1
                         '#f
                         '#f)))
                     (_%src147177%_ _%e147154147174%_)
                     (_%e147155147179%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state147150147158%_
                         '2
                         '#f
                         '#f)))
                     (_%n147182%_ _%e147155147179%_)
                     (_%e147156147184%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state147150147158%_
                         '3
                         '#f
                         '#f)))
                     (_%open147187%_ _%e147156147184%_))
                (_%K147153147171%_ _%open147187%_ _%n147182%_ _%src147177%_))
              (_%E147152147162%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state147142%_ _%phi147143%_ _%stx147144%_)
        (let ((_%block147146%_
               (let ((__tmp157536
                      (##structure-ref
                       _%state147142%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp157536 _%phi147143%_))))
          (##structure-set!
           _%block147146%_
           (cons _%stx147144%_
                 (##structure-ref
                  _%block147146%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state147136%_)
        (##structure-set!
         _%state147136%_
         (let ((__tmp157539
                (lambda (_%_147138%_ _%block147139%_ _%r147140%_)
                  (cons _%block147139%_ _%r147140%_)))
               (__tmp157538
                (##structure-ref _%state147136%_ '4 gxc#meta-state::t '#f))
               (__tmp157537
                (##structure-ref _%state147136%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp157539 __tmp157538 __tmp157537))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state147136%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state147088%_)
        (gxc#meta-state-end-phi! _%state147088%_)
        (let ((__tmp157541
               (lambda (_%block147090%_ _%r147091%_)
                 (let* ((_%block147092147101%_ _%block147090%_)
                        (_%E147094147105%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block147092147101%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K147095147113%_
                         (lambda (_%code147108%_
                                  _%n147109%_
                                  _%phi147110%_
                                  _%ctx147111%_)
                           (if (null? _%code147108%_)
                               _%r147091%_
                               (cons (cons _%ctx147111%_
                                           (cons _%phi147110%_
                                                 (cons _%n147109%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code147108%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r147091%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block147092147101%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e147096147116%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block147092147101%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx147119%_ _%e147096147116%_)
                              (_%e147097147121%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block147092147101%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi147124%_ _%e147097147121%_)
                              (_%e147098147126%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block147092147101%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n147129%_ _%e147098147126%_)
                              (_%e147099147131%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block147092147101%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code147134%_ _%e147099147131%_))
                         (_%K147095147113%_
                          _%code147134%_
                          _%n147129%_
                          _%phi147124%_
                          _%ctx147119%_))
                       (_%E147094147105%_)))))
              (__tmp157540
               (##structure-ref _%state147088%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp157541 '() __tmp157540))))
    (define gxc#collect-expression-refs
      (lambda (_%stx147084%_)
        (let ((_%ht147086%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht147086%_ _%stx147084%_)
          _%ht147086%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self147027%_ _%stx147028%_)
        (let* ((_%g147030147043%_
                (lambda (_%g147031147040%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147031147040%_))))
               (_%g147029147081%_
                (lambda (_%g147031147046%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147031147046%_))
                      (let ((_%e147033147048%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147031147046%_))))
                        (let ((_%hd147034147051%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147033147048%_)))
                              (_%tl147035147053%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147033147048%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147035147053%_))
                              (let ((_%e147036147056%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147035147053%_))))
                                (let ((_%hd147037147059%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147036147056%_)))
                                      (_%tl147038147061%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147036147056%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl147038147061%_))
                                      ((lambda (_%L147064%_)
                                         (let* ((_%bind147076%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L147064%_)))
                                                (_%eid147078%_
                                                 (if _%bind147076%_
                                                     (##structure-ref
                                                      _%bind147076%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L147064%_))))
                                                (__tmp157542
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self147027%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp157542
                                            _%eid147078%_
                                            _%eid147078%_)))
                                       _%hd147037147059%_)
                                      (_%g147030147043%_ _%g147031147046%_))))
                              (_%g147030147043%_ _%g147031147046%_))))
                      (_%g147030147043%_ _%g147031147046%_)))))
          (_%g147029147081%_ _%stx147028%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self146954%_ _%stx146955%_)
        (let* ((_%g146957146974%_
                (lambda (_%g146958146971%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146958146971%_))))
               (_%g146956147024%_
                (lambda (_%g146958146977%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146958146977%_))
                      (let ((_%e146961146979%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146958146977%_))))
                        (let ((_%hd146962146982%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146961146979%_)))
                              (_%tl146963146984%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146961146979%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146963146984%_))
                              (let ((_%e146964146987%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146963146984%_))))
                                (let ((_%hd146965146990%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146964146987%_)))
                                      (_%tl146966146992%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146964146987%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146966146992%_))
                                      (let ((_%e146967146995%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146966146992%_))))
                                        (let ((_%hd146968146998%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146967146995%_)))
                                              (_%tl146969147000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146967146995%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146969147000%_))
                                              ((lambda (_%L147003%_
                                                        _%L147004%_)
                                                 (let* ((_%bind147019%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L147004%_)))
                                                        (_%eid147021%_
                                                         (if _%bind147019%_
                                                             (##structure-ref
                                                              _%bind147019%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L147004%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp157543
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self146954%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp157543
                                                      _%eid147021%_
                                                      _%eid147021%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self146954%_
                                                      _%L147003%_))))
                                               _%hd146968146998%_
                                               _%hd146965146990%_)
                                              (_%g146957146974%_
                                               _%g146958146977%_))))
                                      (_%g146957146974%_ _%g146958146977%_))))
                              (_%g146957146974%_ _%g146958146977%_))))
                      (_%g146957146974%_ _%g146958146977%_)))))
          (_%g146956147024%_ _%stx146955%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self146911%_ _%stx146912%_)
        (let* ((_%g146914146924%_
                (lambda (_%g146915146921%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146915146921%_))))
               (_%g146913146951%_
                (lambda (_%g146915146927%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146915146927%_))
                      (let ((_%e146917146929%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146915146927%_))))
                        (let ((_%hd146918146932%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146917146929%_)))
                              (_%tl146919146934%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146917146929%_))))
                          ((lambda (_%L146937%_)
                             (let ((__tmp157544
                                    (lambda (_%g146946146948%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self146911%_
                                         _%g146946146948%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp157544 _%L146937%_)))
                           _%tl146919146934%_)))
                      (_%g146914146924%_ _%g146915146927%_)))))
          (_%g146913146951%_ _%stx146912%_))))
    (define gxc#count-values-single%
      (lambda (_%self146908%_ _%stx146909%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self146774%_ _%stx146775%_)
        (let* ((_%__stx157286157287%_ _%stx146775%_)
               (_%g146778146807%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx157286157287%_)))))
          (let ((_%__kont157288157289%_
                 (lambda (_%L146875%_ _%L146876%_)
                   (length (let ((__tmp157545
                                  (lambda (_%g146897146900%_ _%g146898146902%_)
                                    (cons _%g146897146900%_
                                          _%g146898146902%_))))
                             (declare (not safe))
                             (__foldr1 __tmp157545 '() _%L146875%_)))))
                (_%__kont157292157293%_ (lambda () '#f)))
            (let ((_%__match157331157332%_
                   (lambda (_%e146782146819%_
                            _%hd146783146822%_
                            _%tl146784146824%_
                            _%e146785146827%_
                            _%hd146786146830%_
                            _%tl146787146832%_
                            _%e146788146835%_
                            _%hd146789146838%_
                            _%tl146790146840%_
                            _%e146791146843%_
                            _%hd146792146846%_
                            _%tl146793146848%_
                            _%__splice157290157291%_
                            _%target146794146851%_
                            _%tl146796146853%_)
                     (letrec ((_%loop146797146856%_
                               (lambda (_%hd146795146859%_
                                        _%rand146801146861%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd146795146859%_))
                                     (let ((_%e146798146864%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd146795146859%_))))
                                       (let ((_%lp-tl146800146869%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e146798146864%_)))
                                             (_%lp-hd146799146867%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e146798146864%_))))
                                         (_%loop146797146856%_
                                          _%lp-tl146800146869%_
                                          (cons _%lp-hd146799146867%_
                                                _%rand146801146861%_))))
                                     (let ((_%rand146802146872%_
                                            (reverse _%rand146801146861%_)))
                                       (let ((_%L146875%_ _%rand146802146872%_)
                                             (_%L146876%_ _%hd146792146846%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L146876%_
                                                'values))
                                             (_%__kont157288157289%_
                                              _%L146875%_
                                              _%L146876%_)
                                             (_%__kont157292157293%_))))))))
                       (_%loop146797146856%_ _%target146794146851%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx157286157287%_))
                  (let ((_%e146782146819%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx157286157287%_))))
                    (let ((_%tl146784146824%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e146782146819%_)))
                          (_%hd146783146822%_
                           (let ()
                             (declare (not safe))
                             (##car _%e146782146819%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl146784146824%_))
                          (let ((_%e146785146827%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl146784146824%_))))
                            (let ((_%tl146787146832%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146785146827%_)))
                                  (_%hd146786146830%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146785146827%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd146786146830%_))
                                  (let ((_%e146788146835%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd146786146830%_))))
                                    (let ((_%tl146790146840%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e146788146835%_)))
                                          (_%hd146789146838%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e146788146835%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd146789146838%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd146789146838%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl146790146840%_))
                                                  (let ((_%e146791146843%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl146790146840%_))))
                                                    (let ((_%tl146793146848%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146791146843%_)))
                                                          (_%hd146792146846%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146791146843%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl146793146848%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl146787146832%_))
                      (let ((_%__splice157290157291%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl146787146832%_
                                '0))))
                        (let ((_%tl146796146853%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice157290157291%_ '1)))
                              (_%target146794146851%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice157290157291%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl146796146853%_))
                              (_%__match157331157332%_
                               _%e146782146819%_
                               _%hd146783146822%_
                               _%tl146784146824%_
                               _%e146785146827%_
                               _%hd146786146830%_
                               _%tl146787146832%_
                               _%e146788146835%_
                               _%hd146789146838%_
                               _%tl146790146840%_
                               _%e146791146843%_
                               _%hd146792146846%_
                               _%tl146793146848%_
                               _%__splice157290157291%_
                               _%target146794146851%_
                               _%tl146796146853%_)
                              (_%__kont157292157293%_))))
                      (_%__kont157292157293%_))
                  (_%__kont157292157293%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont157292157293%_))
                                              (_%__kont157292157293%_))
                                          (_%__kont157292157293%_))))
                                  (_%__kont157292157293%_))))
                          (_%__kont157292157293%_))))
                  (_%__kont157292157293%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self146677%_ _%stx146678%_)
        (let* ((_%g146680146701%_
                (lambda (_%g146681146698%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146681146698%_))))
               (_%g146679146771%_
                (lambda (_%g146681146704%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146681146704%_))
                      (let ((_%e146685146706%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146681146704%_))))
                        (let ((_%hd146686146709%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146685146706%_)))
                              (_%tl146687146711%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146685146706%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146687146711%_))
                              (let ((_%e146688146714%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146687146711%_))))
                                (let ((_%hd146689146717%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146688146714%_)))
                                      (_%tl146690146719%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146688146714%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146690146719%_))
                                      (let ((_%e146691146722%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146690146719%_))))
                                        (let ((_%hd146692146725%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146691146722%_)))
                                              (_%tl146693146727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146691146722%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl146693146727%_))
                                              (let ((_%e146694146730%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl146693146727%_))))
                                                (let ((_%hd146695146733%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146694146730%_)))
                                                      (_%tl146696146735%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146694146730%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146696146735%_))
                                                      ((lambda (_%L146738%_
                                                                _%L146739%_
                                                                _%L146740%_)
                                                         (let ((_%c1146757146759%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self146677%_ _%L146739%_))))
                   (if _%c1146757146759%_
                       (let* ((_%c1146762%_ _%c1146757146759%_)
                              (_%c2146763146765%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self146677%_
                                  _%L146738%_))))
                         (if _%c2146763146765%_
                             (let ((_%c2146768%_ _%c2146763146765%_))
                               (if (fx= _%c1146762%_ _%c2146768%_)
                                   _%c1146762%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd146695146733%_
               _%hd146692146725%_
               _%hd146689146717%_)
              (_%g146680146701%_ _%g146681146704%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g146680146701%_
                                               _%g146681146704%_))))
                                      (_%g146680146701%_ _%g146681146704%_))))
                              (_%g146680146701%_ _%g146681146704%_))))
                      (_%g146680146701%_ _%g146681146704%_)))))
          (_%g146679146771%_ _%stx146678%_))))))
