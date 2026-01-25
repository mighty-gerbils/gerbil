(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1769382896)
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
        (letrec ((_%hash-e159978%_
                  (lambda (_%id159980%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id159980%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e159978%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp161365 (list gxc#::void::t))
            (__tmp161364 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp161365
         '()
         __tmp161364
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args159974%_
        (apply make-instance gxc#::collect-bindings::t _%$args159974%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp161366
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
        (__make-atomic-promise __tmp161366)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx159966%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self159969%_
                (let ((__obj161340
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj161340))
               (__tmp161367
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159969%_ _%stx159966%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161367
           gxc#current-compile-method
           _%self159969%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp161369 (list gxc#::void::t))
            (__tmp161368 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp161369
         '(modules)
         __tmp161368
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args159963%_
        (apply make-instance gxc#::lift-modules::t _%$args159963%_)))
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
      (let ((__tmp161370
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
        (__make-atomic-promise __tmp161370)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords159938%_ _%modules159935159939%_ _%stx159940%_)
        (let ((_%modules159943%_
               (if (eq? _%modules159935159939%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules159935159939%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self159945%_
                  (let ((__obj161342
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj161342
                       _%modules159943%_
                       '1
                       '#f
                       '#f))
                    __obj161342))
                 (__tmp161371
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self159945%_ _%stx159940%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp161371
             gxc#current-compile-method
             _%self159945%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords159952%_ . _%args159953%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords159952%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159952%_
                  'modules:
                  absent-value))
               _%args159953%_)))
    (define gxc#apply-lift-modules
      (lambda _%args159936159959%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args159936159959%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp161373 (list)) (__tmp161372 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp161373
         '()
         __tmp161372
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args159931%_
        (apply make-instance gxc#::find-runtime-code::t _%$args159931%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp161374
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
        (__make-atomic-promise __tmp161374)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx159923%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self159926%_
                (let ((__obj161344
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj161344))
               (__tmp161375
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159926%_ _%stx159923%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161375
           gxc#current-compile-method
           _%self159926%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp161377 (list gxc#::false::t))
            (__tmp161376 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp161377
         '()
         __tmp161376
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args159920%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args159920%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp161378
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
        (__make-atomic-promise __tmp161378)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx159912%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self159915%_
                (let ((__obj161346
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj161346))
               (__tmp161379
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159915%_ _%stx159912%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161379
           gxc#current-compile-method
           _%self159915%_))))
    (define gxc#::count-values::t
      (let ((__tmp161381 (list gxc#::false-expression::t))
            (__tmp161380 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp161381
         '()
         __tmp161380
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args159909%_
        (apply make-instance gxc#::count-values::t _%$args159909%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp161382
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
        (__make-atomic-promise __tmp161382)))
    (define gxc#apply-count-values
      (lambda (_%stx159901%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self159904%_
                (let ((__obj161348
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj161348))
               (__tmp161383
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159904%_ _%stx159901%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161383
           gxc#current-compile-method
           _%self159904%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp161384 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp161384
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args159898%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args159898%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp161385
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
        (__make-atomic-promise __tmp161385)))
    (define gxc#::generate-loader::t
      (let ((__tmp161387 (list gxc#::generate-runtime-empty::t))
            (__tmp161386 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp161387
         '()
         __tmp161386
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args159894%_
        (apply make-instance gxc#::generate-loader::t _%$args159894%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp161388
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
        (__make-atomic-promise __tmp161388)))
    (define gxc#apply-generate-loader
      (lambda (_%stx159886%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self159889%_
                (let ((__obj161351
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj161351))
               (__tmp161389
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159889%_ _%stx159886%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161389
           gxc#current-compile-method
           _%self159889%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp161390 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp161390
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args159883%_
        (apply make-instance gxc#::generate-runtime::t _%$args159883%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp161391
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
        (__make-atomic-promise __tmp161391)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx159875%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self159878%_
                (let ((__obj161353
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj161353))
               (__tmp161392
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159878%_ _%stx159875%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161392
           gxc#current-compile-method
           _%self159878%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp161394 (list gxc#::generate-runtime::t))
            (__tmp161393 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp161394
         '()
         __tmp161393
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args159872%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args159872%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp161395
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
        (__make-atomic-promise __tmp161395)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx159864%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self159867%_
                (let ((__obj161355
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj161355))
               (__tmp161396
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159867%_ _%stx159864%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161396
           gxc#current-compile-method
           _%self159867%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp161397 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp161397
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args159861%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args159861%_)))
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
      (let ((__tmp161398
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
        (__make-atomic-promise __tmp161398)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords159836%_ _%table159833159837%_ _%stx159838%_)
        (let ((_%table159841%_
               (if (eq? _%table159833159837%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table159833159837%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self159843%_
                  (let ((__obj161357
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj161357
                       _%table159841%_
                       '1
                       '#f
                       '#f))
                    __obj161357))
                 (__tmp161399
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self159843%_ _%stx159838%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp161399
             gxc#current-compile-method
             _%self159843%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords159850%_ . _%args159851%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords159850%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159850%_
                  'table:
                  absent-value))
               _%args159851%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args159834159857%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args159834159857%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp161401 (list gxc#::void-expression::t))
            (__tmp161400 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp161401
         '(state)
         __tmp161400
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args159829%_
        (apply make-instance gxc#::generate-meta::t _%$args159829%_)))
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
      (let ((__tmp161402
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
        (__make-atomic-promise __tmp161402)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords159804%_ _%state159801159805%_ _%stx159806%_)
        (let ((_%state159809%_
               (if (eq? _%state159801159805%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state159801159805%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self159811%_
                  (let ((__obj161359
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj161359
                       _%state159809%_
                       '1
                       '#f
                       '#f))
                    __obj161359))
                 (__tmp161403
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self159811%_ _%stx159806%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp161403
             gxc#current-compile-method
             _%self159811%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords159818%_ . _%args159819%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords159818%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159818%_
                  'state:
                  absent-value))
               _%args159819%_)))
    (define gxc#apply-generate-meta
      (lambda _%args159802159825%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args159802159825%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp161405 (list)) (__tmp161404 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp161405
         '(state)
         __tmp161404
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args159797%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args159797%_)))
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
      (let ((__tmp161406
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
        (__make-atomic-promise __tmp161406)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords159772%_ _%state159769159773%_ _%stx159774%_)
        (let ((_%state159777%_
               (if (eq? _%state159769159773%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state159769159773%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self159779%_
                  (let ((__obj161361
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj161361
                       _%state159777%_
                       '1
                       '#f
                       '#f))
                    __obj161361))
                 (__tmp161407
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self159779%_ _%stx159774%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp161407
             gxc#current-compile-method
             _%self159779%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords159786%_ . _%args159787%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords159786%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159786%_
                  'state:
                  absent-value))
               _%args159787%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args159770159793%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args159770159793%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self159698%_ _%stx159699%_)
        (let* ((_%g159701159718%_
                (lambda (_%g159702159715%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159702159715%_))))
               (_%g159700159765%_
                (lambda (_%g159702159721%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159702159721%_))
                      (let ((_%e159705159723%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159702159721%_))))
                        (let ((_%hd159706159726%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159705159723%_)))
                              (_%tl159707159728%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159705159723%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159707159728%_))
                              (let ((_%e159708159731%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159707159728%_))))
                                (let ((_%hd159709159734%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159708159731%_)))
                                      (_%tl159710159736%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159708159731%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl159710159736%_))
                                      (let ((_%e159711159739%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl159710159736%_))))
                                        (let ((_%hd159712159742%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159711159739%_)))
                                              (_%tl159713159744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159711159739%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl159713159744%_))
                                              ((lambda (_%g159703159747%_
                                                        _%g159704159748%_)
                                                 (let ((__tmp161408
                                                        (lambda (_%bind159763%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind159763%_))
                      (gxc#add-module-binding! _%bind159763%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp161408
                                                    _%g159704159748%_)))
                                               _%hd159712159742%_
                                               _%hd159709159734%_)
                                              (_%g159701159718%_
                                               _%g159702159721%_))))
                                      (_%g159701159718%_ _%g159702159721%_))))
                              (_%g159701159718%_ _%g159702159721%_))))
                      (_%g159701159718%_ _%g159702159721%_)))))
          (_%g159700159765%_ _%stx159699%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self159630%_ _%stx159631%_)
        (let* ((_%g159633159650%_
                (lambda (_%g159634159647%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159634159647%_))))
               (_%g159632159695%_
                (lambda (_%g159634159653%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159634159653%_))
                      (let ((_%e159637159655%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159634159653%_))))
                        (let ((_%hd159638159658%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159637159655%_)))
                              (_%tl159639159660%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159637159655%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159639159660%_))
                              (let ((_%e159640159663%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159639159660%_))))
                                (let ((_%hd159641159666%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159640159663%_)))
                                      (_%tl159642159668%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159640159663%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl159642159668%_))
                                      (let ((_%e159643159671%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl159642159668%_))))
                                        (let ((_%hd159644159674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159643159671%_)))
                                              (_%tl159645159676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159643159671%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl159645159676%_))
                                              ((lambda (_%g159635159679%_
                                                        _%g159636159680%_)
                                                 (gxc#add-module-binding!
                                                  _%g159636159680%_
                                                  '#t))
                                               _%hd159644159674%_
                                               _%hd159641159666%_)
                                              (_%g159633159650%_
                                               _%g159634159653%_))))
                                      (_%g159633159650%_ _%g159634159653%_))))
                              (_%g159633159650%_ _%g159634159653%_))))
                      (_%g159633159650%_ _%g159634159653%_)))))
          (_%g159632159695%_ _%stx159631%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self159572%_ _%stx159573%_)
        (let* ((_%g159575159589%_
                (lambda (_%g159576159586%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159576159586%_))))
               (_%g159574159627%_
                (lambda (_%g159576159592%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159576159592%_))
                      (let ((_%e159579159594%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159576159592%_))))
                        (let ((_%hd159580159597%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159579159594%_)))
                              (_%tl159581159599%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159579159594%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159581159599%_))
                              (let ((_%e159582159602%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159581159599%_))))
                                (let ((_%hd159583159605%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159582159602%_)))
                                      (_%tl159584159607%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159582159602%_))))
                                  ((lambda (_%g159577159610%_
                                            _%g159578159611%_)
                                     (let ((_%ctx159624%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g159578159611%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self159572%_
                                           'modules))
                                        (cons _%ctx159624%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self159572%_
                                                        'modules)))))
                                       (let ((__tmp161409
                                              (lambda ()
                                                (let ((__tmp161410
                                                       (##structure-ref
                                                        _%ctx159624%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self159572%_
                                                   __tmp161410)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp161409
                                          gx#current-expander-context
                                          _%ctx159624%_))))
                                   _%tl159584159607%_
                                   _%hd159583159605%_)))
                              (_%g159575159589%_ _%g159576159592%_))))
                      (_%g159575159589%_ _%g159576159592%_)))))
          (_%g159574159627%_ _%stx159573%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls159526159528%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls159526159528%_
              (let ((_%decls159530%_ _%decls159526159528%_))
                (let _%lp159532%_ ((_%rest159534%_ _%decls159530%_))
                  (let* ((_%rest159535159543%_ _%rest159534%_)
                         (_%else159537159551%_ (lambda () '#f))
                         (_%K159539159560%_
                          (lambda (_%decls159554%_ _%decl159555%_)
                            (if (equal? _%decl159555%_ '(not safe))
                                '#t
                                (if (equal? _%decl159555%_ '(safe))
                                    '#f
                                    (_%lp159532%_ _%decls159554%_))))))
                    (if (pair? _%rest159535159543%_)
                        (let ((_%hd159540159563%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest159535159543%_)))
                              (_%tl159541159565%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest159535159543%_))))
                          (let* ((_%decl159568%_ _%hd159540159563%_)
                                 (_%decls159570%_ _%tl159541159565%_))
                            (_%K159539159560%_
                             _%decls159570%_
                             _%decl159568%_)))
                        (_%else159537159551%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id159520%_ _%syntax?159521%_)
        (let ((_%eid159523%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id159520%_))
                '1
                gx#binding::t
                '#f))
              (_%ht159524%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid159523%_))
              '#!void
              (let ((__tmp161411
                     (let ((__tmp161412
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid159523%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp161412 _%syntax?159521%_))))
                (declare (not safe))
                (hash-put! _%ht159524%_ _%eid159523%_ __tmp161411))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id159518%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id159518%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key159473%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key159473%_))
            _%key159473%_
            (if (uninterned-symbol? _%key159473%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key159473%_))
                (let* ((_%key159477159484%_ _%key159473%_)
                       (_%E159479159488%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key159477159484%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K159480159506%_
                        (lambda (_%mark159491%_ _%eid159492%_)
                          (let ((_%$e159494%_
                                 (##structure-ref
                                  _%mark159491%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e159494%_
                                ((lambda (_%ht159497%_)
                                   (let ((_%$e159499%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht159497%_
                                             _%eid159492%_))))
                                     (if _%$e159499%_
                                         ((lambda (_%id159502%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id159502%_))
                                                _%id159502%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id159502%_))))
                                          _%$e159499%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid159492%_))))
                                 _%$e159494%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid159492%_))))))
                  (if (pair? _%key159477159484%_)
                      (let ((_%hd159481159509%_
                             (let ()
                               (declare (not safe))
                               (##car _%key159477159484%_)))
                            (_%tl159482159511%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key159477159484%_))))
                        (let* ((_%eid159514%_ _%hd159481159509%_)
                               (_%mark159516%_ _%tl159482159511%_))
                          (_%K159480159506%_ _%mark159516%_ _%eid159514%_)))
                      (_%E159479159488%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self159470%_ _%stx159471%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self159317%_ _%stx159318%_)
        (letrec ((_%simplify159320%_
                  (lambda (_%body159368%_)
                    (let _%lp159370%_ ((_%rest159372%_ _%body159368%_)
                                       (_%r159373%_ '()))
                      (let* ((_%rest159374159382%_ _%rest159372%_)
                             (_%else159376159390%_
                              (lambda () (reverse _%r159373%_)))
                             (_%K159378159458%_
                              (lambda (_%rest159393%_ _%hd159394%_)
                                (let* ((_%hd159395159411%_ _%hd159394%_)
                                       (_%else159399159419%_
                                        (lambda ()
                                          (_%lp159370%_
                                           _%rest159393%_
                                           (cons _%hd159394%_ _%r159373%_)))))
                                  (let ((_%K159407159448%_
                                         (lambda (_%exprs159446%_)
                                           (_%lp159370%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest159393%_
                                               _%exprs159446%_))
                                            _%r159373%_)))
                                        (_%K159402159432%_
                                         (lambda ()
                                           (if (null? _%rest159393%_)
                                               (_%lp159370%_
                                                _%rest159393%_
                                                (cons _%hd159394%_
                                                      _%r159373%_))
                                               (_%lp159370%_
                                                _%rest159393%_
                                                _%r159373%_))))
                                        (_%K159401159424%_
                                         (lambda ()
                                           (if (null? _%rest159393%_)
                                               (_%lp159370%_
                                                _%rest159393%_
                                                (cons _%hd159394%_
                                                      _%r159373%_))
                                               (_%lp159370%_
                                                _%rest159393%_
                                                _%r159373%_)))))
                                    (let ((_%try-match159398159427%_
                                           (lambda ()
                                             (if (symbol? _%hd159395159411%_)
                                                 (_%K159401159424%_)
                                                 (_%else159399159419%_)))))
                                      (if (pair? _%hd159395159411%_)
                                          (let ((_%tl159409159453%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd159395159411%_)))
                                                (_%hd159408159451%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd159395159411%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd159408159451%_
                                                         'begin))
                                                (let ((_%exprs159456%_
                                                       _%tl159409159453%_))
                                                  (_%K159407159448%_
                                                   _%exprs159456%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd159408159451%_
                                                             'quote))
                                                    (if (pair? _%tl159409159453%_)
                                                        (let ((_%tl159406159440%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl159409159453%_))))
                  (if (null? _%tl159406159440%_)
                      (_%K159402159432%_)
                      (_%try-match159398159427%_)))
                (_%try-match159398159427%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match159398159427%_))))
                                          (_%try-match159398159427%_))))))))
                        (if (pair? _%rest159374159382%_)
                            (let ((_%hd159379159461%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest159374159382%_)))
                                  (_%tl159380159463%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest159374159382%_))))
                              (let* ((_%hd159466%_ _%hd159379159461%_)
                                     (_%rest159468%_ _%tl159380159463%_))
                                (_%K159378159458%_
                                 _%rest159468%_
                                 _%hd159466%_)))
                            (_%else159376159390%_)))))))
          (let* ((_%g159322159332%_
                  (lambda (_%g159323159329%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g159323159329%_))))
                 (_%g159321159365%_
                  (lambda (_%g159323159335%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g159323159335%_))
                        (let ((_%e159325159337%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g159323159335%_))))
                          (let ((_%hd159326159340%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e159325159337%_)))
                                (_%tl159327159342%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e159325159337%_))))
                            ((lambda (_%g159324159345%_)
                               (let* ((_%body159360%_
                                       (map (lambda (_%g159355159357%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self159317%_
                                                 _%g159355159357%_)))
                                            _%g159324159345%_))
                                      (_%body159362%_
                                       (_%simplify159320%_ _%body159360%_)))
                                 (if (let ((__tmp161413
                                            (length _%body159362%_)))
                                       (declare (not safe))
                                       (##fx= __tmp161413 '1))
                                     (car _%body159362%_)
                                     (cons 'begin _%body159362%_))))
                             _%tl159327159342%_)))
                        (_%g159322159332%_ _%g159323159335%_)))))
            (_%g159321159365%_ _%stx159318%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self159278%_ _%stx159279%_)
        (let* ((_%g159281159291%_
                (lambda (_%g159282159288%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159282159288%_))))
               (_%g159280159314%_
                (lambda (_%g159282159294%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159282159294%_))
                      (let ((_%e159284159296%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159282159294%_))))
                        (let ((_%hd159285159299%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159284159296%_)))
                              (_%tl159286159301%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159284159296%_))))
                          ((lambda (_%g159283159304%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g159283159304%_))))
                           _%tl159286159301%_)))
                      (_%g159281159291%_ _%g159282159294%_)))))
          (_%g159280159314%_ _%stx159279%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self159044%_ _%stx159045%_)
        (let* ((_%__stx160003160004%_ _%stx159045%_)
               (_%g159049159101%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx160003160004%_)))))
          (let ((_%__kont160005160006%_
                 (lambda (_%g159051159260%_ _%g159052159261%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self159044%_ _%g159051159260%_))))
                (_%__kont160007160008%_
                 (lambda (_%g159062159208%_
                          _%g159063159209%_
                          _%g159064159210%_)
                   (if (let ((__tmp161414
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g159064159210%_))))
                         (declare (not safe))
                         (##memq __tmp161414 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self159044%_
                          _%g159062159208%_)))))
                (_%__kont160011160012%_
                 (lambda (_%g159086159130%_ _%g159087159131%_)
                   (let ((_%decls159146%_
                          (map gx#syntax->datum _%g159087159131%_)))
                     (let ((__tmp161417
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls159146%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self159044%_
                                                   _%g159086159130%_))
                                                '())))))
                           (__tmp161415
                            (let ((__tmp161416
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp161416 _%decls159146%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp161417
                        gxc#current-compile-decls
                        __tmp161415))))))
            (let* ((_%__match160058160059%_
                    (lambda (_%e159065159154%_
                             _%hd159066159157%_
                             _%tl159067159159%_
                             _%e159068159162%_
                             _%hd159069159165%_
                             _%tl159070159167%_
                             _%e159071159170%_
                             _%hd159072159173%_
                             _%tl159073159175%_
                             _%__splice160009160010%_
                             _%target159074159178%_
                             _%tl159076159180%_)
                      (letrec ((_%loop159077159183%_
                                (lambda (_%hd159075159186%_
                                         _%param159081159188%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd159075159186%_))
                                      (let ((_%e159078159190%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd159075159186%_))))
                                        (let ((_%lp-tl159080159195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159078159190%_)))
                                              (_%lp-hd159079159193%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159078159190%_))))
                                          (_%loop159077159183%_
                                           _%lp-tl159080159195%_
                                           (cons _%lp-hd159079159193%_
                                                 _%param159081159188%_))))
                                      (let ((_%param159082159198%_
                                             (reverse _%param159081159188%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl159070159167%_))
                                            (let ((_%e159083159200%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl159070159167%_))))
                                              (let ((_%tl159085159205%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e159083159200%_)))
                                                    (_%hd159084159203%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e159083159200%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl159085159205%_))
                                                    (let ((_%g159062159208%_
                                                           _%hd159084159203%_)
                                                          (_%g159063159209%_
                                                           _%param159082159198%_)
                                                          (_%g159064159210%_
                                                           _%hd159072159173%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g159064159210%_))
                       (not (let ((__tmp161418
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g159064159210%_))))
                              (declare (not safe))
                              (##memq __tmp161418 gxc#gambit-annotations))))
                  (_%__kont160007160008%_
                   _%g159062159208%_
                   _%g159063159209%_
                   _%g159064159210%_)
                  (_%__kont160011160012%_
                   _%hd159084159203%_
                   _%hd159069159165%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g159049159101%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g159049159101%_))))))))
                        (_%loop159077159183%_ _%target159074159178%_ '()))))
                   (_%__match160032160033%_
                    (lambda (_%e159053159236%_
                             _%hd159054159239%_
                             _%tl159055159241%_
                             _%e159056159244%_
                             _%hd159057159247%_
                             _%tl159058159249%_
                             _%e159059159252%_
                             _%hd159060159255%_
                             _%tl159061159257%_)
                      (let ((_%g159051159260%_ _%hd159060159255%_)
                            (_%g159052159261%_ _%hd159057159247%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g159052159261%_))
                            (_%__kont160005160006%_
                             _%g159051159260%_
                             _%g159052159261%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd159057159247%_))
                                (let ((_%e159071159170%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd159057159247%_))))
                                  (let ((_%tl159073159175%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e159071159170%_)))
                                        (_%hd159072159173%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e159071159170%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl159073159175%_))
                                        (let ((_%__splice160009160010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl159073159175%_
                                                  '0))))
                                          (let ((_%tl159076159180%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice160009160010%_
                                                    '1)))
                                                (_%target159074159178%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice160009160010%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159076159180%_))
                                                (_%__match160058160059%_
                                                 _%e159053159236%_
                                                 _%hd159054159239%_
                                                 _%tl159055159241%_
                                                 _%e159056159244%_
                                                 _%hd159057159247%_
                                                 _%tl159058159249%_
                                                 _%e159071159170%_
                                                 _%hd159072159173%_
                                                 _%tl159073159175%_
                                                 _%__splice160009160010%_
                                                 _%target159074159178%_
                                                 _%tl159076159180%_)
                                                (_%__kont160011160012%_
                                                 _%hd159060159255%_
                                                 _%hd159057159247%_))))
                                        (_%__kont160011160012%_
                                         _%hd159060159255%_
                                         _%hd159057159247%_))))
                                (_%__kont160011160012%_
                                 _%hd159060159255%_
                                 _%hd159057159247%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx160003160004%_))
                  (let ((_%e159053159236%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx160003160004%_))))
                    (let ((_%tl159055159241%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e159053159236%_)))
                          (_%hd159054159239%_
                           (let ()
                             (declare (not safe))
                             (##car _%e159053159236%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl159055159241%_))
                          (let ((_%e159056159244%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl159055159241%_))))
                            (let ((_%tl159058159249%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e159056159244%_)))
                                  (_%hd159057159247%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e159056159244%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl159058159249%_))
                                  (let ((_%e159059159252%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl159058159249%_))))
                                    (let ((_%tl159061159257%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e159059159252%_)))
                                          (_%hd159060159255%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e159059159252%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl159061159257%_))
                                          (_%__match160032160033%_
                                           _%e159053159236%_
                                           _%hd159054159239%_
                                           _%tl159055159241%_
                                           _%e159056159244%_
                                           _%hd159057159247%_
                                           _%tl159058159249%_
                                           _%e159059159252%_
                                           _%hd159060159255%_
                                           _%tl159061159257%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd159057159247%_))
                                              (let ((_%e159071159170%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd159057159247%_))))
                                                (let ((_%tl159073159175%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e159071159170%_)))
                                                      (_%hd159072159173%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e159071159170%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl159073159175%_))
                                                      (let ((_%__splice160009160010%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl159073159175%_
                        '0))))
                (let ((_%tl159076159180%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice160009160010%_ '1)))
                      (_%target159074159178%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice160009160010%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl159076159180%_))
                      (_%__match160058160059%_
                       _%e159053159236%_
                       _%hd159054159239%_
                       _%tl159055159241%_
                       _%e159056159244%_
                       _%hd159057159247%_
                       _%tl159058159249%_
                       _%e159071159170%_
                       _%hd159072159173%_
                       _%tl159073159175%_
                       _%__splice160009160010%_
                       _%target159074159178%_
                       _%tl159076159180%_)
                      (let () (declare (not safe)) (_%g159049159101%_)))))
              (let () (declare (not safe)) (_%g159049159101%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g159049159101%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd159057159247%_))
                                      (let ((_%e159071159170%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd159057159247%_))))
                                        (let ((_%tl159073159175%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159071159170%_)))
                                              (_%hd159072159173%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159071159170%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl159073159175%_))
                                              (let ((_%__splice160009160010%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl159073159175%_
                                                        '0))))
                                                (let ((_%tl159076159180%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice160009160010%_
                                                          '1)))
                                                      (_%target159074159178%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice160009160010%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl159076159180%_))
                                                      (_%__match160058160059%_
                                                       _%e159053159236%_
                                                       _%hd159054159239%_
                                                       _%tl159055159241%_
                                                       _%e159056159244%_
                                                       _%hd159057159247%_
                                                       _%tl159058159249%_
                                                       _%e159071159170%_
                                                       _%hd159072159173%_
                                                       _%tl159073159175%_
                                                       _%__splice160009160010%_
                                                       _%target159074159178%_
                                                       _%tl159076159180%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g159049159101%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g159049159101%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g159049159101%_))))))
                          (let () (declare (not safe)) (_%g159049159101%_)))))
                  (let () (declare (not safe)) (_%g159049159101%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self159003%_ _%stx159004%_)
        (let* ((_%g159006159016%_
                (lambda (_%g159007159013%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159007159013%_))))
               (_%g159005159041%_
                (lambda (_%g159007159019%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159007159019%_))
                      (let ((_%e159009159021%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159007159019%_))))
                        (let ((_%hd159010159024%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159009159021%_)))
                              (_%tl159011159026%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159009159021%_))))
                          ((lambda (_%g159008159029%_)
                             (let ((_%decls159039%_
                                    (map gx#syntax->datum _%g159008159029%_)))
                               (let ((__tmp161419
                                      (let ((__tmp161420
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp161420
                                         _%decls159039%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp161419))
                               (cons 'declare _%decls159039%_)))
                           _%tl159011159026%_)))
                      (_%g159006159016%_ _%g159007159019%_)))))
          (_%g159005159041%_ _%stx159004%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self158750%_ _%stx158751%_)
        (let* ((_%g158753158770%_
                (lambda (_%g158754158767%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158754158767%_))))
               (_%g158752159000%_
                (lambda (_%g158754158773%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158754158773%_))
                      (let ((_%e158757158775%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158754158773%_))))
                        (let ((_%hd158758158778%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158757158775%_)))
                              (_%tl158759158780%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158757158775%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl158759158780%_))
                              (let ((_%e158760158783%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl158759158780%_))))
                                (let ((_%hd158761158786%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e158760158783%_)))
                                      (_%tl158762158788%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e158760158783%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl158762158788%_))
                                      (let ((_%e158763158791%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl158762158788%_))))
                                        (let ((_%hd158764158794%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e158763158791%_)))
                                              (_%tl158765158796%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e158763158791%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl158765158796%_))
                                              ((lambda (_%g158755158799%_
                                                        _%g158756158800%_)
                                                 (let* ((_%__stx160111160112%_
                                                         _%g158756158800%_)
                                                        (_%g158817158831%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx160111160112%_)))))
                                                   (let ((_%__kont160113160114%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self158750%_
                                                               _%g158755158799%_))))
                                                         (_%__kont160115160116%_
                                                          (lambda (_%g158823158963%_)
                                                            (let ((_%eid158972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g158823158963%_))))
                      (let ((_%lambda-expr158973158975%_
                             (gxc#apply-find-lambda-expression
                              _%g158755158799%_)))
                        (if _%lambda-expr158973158975%_
                            (let* ((_%lambda-expr158977%_
                                    _%lambda-expr158973158975%_)
                                   (__tmp161421
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp161421
                               _%lambda-expr158977%_
                               _%eid158972%_))
                            '#f))
                      (cons 'define
                            (cons _%eid158972%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self158750%_
                                           _%g158755158799%_))
                                        '()))))))
                 (_%__kont160117160118%_
                  (lambda ()
                    (let* ((_%tmp158838%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body158947%_
                            (let _%lp158840%_ ((_%rest158842%_
                                                _%g158756158800%_)
                                               (_%k158843%_ '0)
                                               (_%r158844%_ '()))
                              (let* ((_%__stx160081160082%_ _%rest158842%_)
                                     (_%g158849158866%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx160081160082%_)))))
                                (let ((_%__kont160083160084%_
                                       (lambda (_%g158851158934%_)
                                         (_%lp158840%_
                                          _%g158851158934%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k158843%_ '1))
                                          _%r158844%_)))
                                      (_%__kont160085160086%_
                                       (lambda (_%g158856158907%_
                                                _%g158857158908%_)
                                         (_%lp158840%_
                                          _%g158856158907%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k158843%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g158857158908%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp158838%_
                           _%k158843%_
                           _%g158856158907%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r158844%_))))
                                      (_%__kont160087160088%_
                                       (lambda (_%g158861158878%_)
                                         (let ((__tmp161422
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g158861158878%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp158838%_
                                 _%k158843%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp161422
                                            _%r158844%_))))
                                      (_%__kont160089160090%_
                                       (lambda () (reverse _%r158844%_))))
                                  (let ((_%g158847158894%_
                                         (lambda ()
                                           (let ((_%g158861158878%_
                                                  _%__stx160081160082%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g158861158878%_))
                                                 (_%__kont160087160088%_
                                                  _%g158861158878%_)
                                                 (_%__kont160089160090%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx160081160082%_))
                                        (let ((_%e158852158923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx160081160082%_))))
                                          (let ((_%tl158854158928%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e158852158923%_)))
                                                (_%hd158853158926%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e158852158923%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd158853158926%_))
                                                (let ((_%e158855158931%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd158853158926%_))))
                                                  (if (equal? _%e158855158931%_
                                                              '#f)
                                                      (_%__kont160083160084%_
                                                       _%tl158854158928%_)
                                                      (_%__kont160085160086%_
                                                       _%tl158854158928%_
                                                       _%hd158853158926%_)))
                                                (_%__kont160085160086%_
                                                 _%tl158854158928%_
                                                 _%hd158853158926%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g158847158894%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp158838%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self158750%_
                                                       _%g158755158799%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp158838%_
                                         _%g158756158800%_
                                         _%g158755158799%_)
                                        _%body158947%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx160111160112%_))
                                                         (let ((_%e158819158984%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx160111160112%_))))
                   (let ((_%tl158821158989%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e158819158984%_)))
                         (_%hd158820158987%_
                          (let ()
                            (declare (not safe))
                            (##car _%e158819158984%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd158820158987%_))
                         (let ((_%e158822158992%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd158820158987%_))))
                           (if (equal? _%e158822158992%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl158821158989%_))
                                   (_%__kont160113160114%_)
                                   (_%__kont160117160118%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl158821158989%_))
                                   (_%__kont160115160116%_ _%hd158820158987%_)
                                   (_%__kont160117160118%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl158821158989%_))
                             (_%__kont160115160116%_ _%hd158820158987%_)
                             (_%__kont160117160118%_)))))
                 (_%__kont160117160118%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd158764158794%_
                                               _%hd158761158786%_)
                                              (_%g158753158770%_
                                               _%g158754158773%_))))
                                      (_%g158753158770%_ _%g158754158773%_))))
                              (_%g158753158770%_ _%g158754158773%_))))
                      (_%g158753158770%_ _%g158754158773%_)))))
          (_%g158752159000%_ _%stx158751%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals158725%_ _%hd158726%_ _%expr158727%_)
        (let ((_%$e158729%_ (gxc#apply-count-values _%expr158727%_)))
          (if _%$e158729%_
              ((lambda (_%count158732%_)
                 (let ((_%len158734%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd158726%_)))
                       (_%cmp158735%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd158726%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len158734%_ '0))
                           (_%cmp158735%_ _%count158732%_ _%len158734%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr158727%_
                          _%hd158726%_)))))
               _%$e158729%_)
              (let* ((_%len158741%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd158726%_)))
                     (_%cmp158743%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd158726%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg158745%_
                      (let ((__tmp161424
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd158726%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp161423 (number->string _%len158741%_)))
                        (declare (not safe))
                        (##string-append __tmp161424 __tmp161423 '" values")))
                     (_%count158747%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd158726%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len158741%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count158747%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals158725%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp158743%_
                                (cons _%count158747%_
                                      (cons _%len158741%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp158743%_
                                                        (cons _%count158747%_
                                                              (cons _%len158741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg158745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count158747%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var158720%_)
        (letrec ((_%generate-inline158722%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var158720%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var158720%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline158722%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline158722%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var158713%_ _%i158714%_ _%rest158715%_)
        (letrec ((_%generate-inline158717%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i158714%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest158715%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var158713%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var158713%_
                                                      (cons '0 '())))
                                          (cons _%var158713%_ '()))))
                        (cons '##values-ref
                              (cons _%var158713%_ (cons _%i158714%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline158717%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline158717%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var158707%_ _%i158708%_)
        (if (let () (declare (not safe)) (##fx= _%i158708%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var158707%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var158707%_ '()))
                                  (cons (cons 'list (cons _%var158707%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var158707%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var158707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var158707%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i158708%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var158707%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var158707%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var158707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var158707%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var158707%_ '()))
                                (cons _%i158708%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var158707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i158708%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self158639%_ _%stx158640%_)
        (let* ((_%g158642158659%_
                (lambda (_%g158643158656%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158643158656%_))))
               (_%g158641158704%_
                (lambda (_%g158643158662%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158643158662%_))
                      (let ((_%e158646158664%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158643158662%_))))
                        (let ((_%hd158647158667%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158646158664%_)))
                              (_%tl158648158669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158646158664%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl158648158669%_))
                              (let ((_%e158649158672%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl158648158669%_))))
                                (let ((_%hd158650158675%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e158649158672%_)))
                                      (_%tl158651158677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e158649158672%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl158651158677%_))
                                      (let ((_%e158652158680%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl158651158677%_))))
                                        (let ((_%hd158653158683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e158652158680%_)))
                                              (_%tl158654158685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e158652158680%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl158654158685%_))
                                              ((lambda (_%g158644158688%_
                                                        _%g158645158689%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self158639%_
                                                  _%g158645158689%_
                                                  _%g158644158688%_))
                                               _%hd158653158683%_
                                               _%hd158650158675%_)
                                              (_%g158642158659%_
                                               _%g158643158662%_))))
                                      (_%g158642158659%_ _%g158643158662%_))))
                              (_%g158642158659%_ _%g158643158662%_))))
                      (_%g158642158659%_ _%g158643158662%_)))))
          (_%g158641158704%_ _%stx158640%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self158598%_ _%hd158599%_ _%body158600%_)
        (let* ((_%hd158602%_ (gxc#generate-runtime-lambda-head _%hd158599%_))
               (_%body158604%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self158598%_ _%body158600%_)))
               (_%body158636%_
                (let* ((_%body158605158613%_ _%body158604%_)
                       (_%else158607158621%_
                        (lambda () (cons _%body158604%_ '())))
                       (_%K158609158626%_
                        (lambda (_%exprs158624%_) _%exprs158624%_)))
                  (if (pair? _%body158605158613%_)
                      (let ((_%hd158610158629%_
                             (let ()
                               (declare (not safe))
                               (##car _%body158605158613%_)))
                            (_%tl158611158631%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body158605158613%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd158610158629%_ 'begin))
                            (let ((_%exprs158634%_ _%tl158611158631%_))
                              (_%K158609158626%_ _%exprs158634%_))
                            (_%else158607158621%_)))
                      (_%else158607158621%_)))))
          (cons 'lambda (cons _%hd158602%_ _%body158636%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd158596%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd158596%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self157153%_ _%stx157154%_)
        (letrec ((_%dispatch-case?157156%_
                  (lambda (_%hd157834%_ _%body157835%_)
                    (let* ((_%form157837%_
                            (cons _%hd157834%_ (cons _%body157835%_ '())))
                           (_%__stx160143160144%_ _%form157837%_)
                           (_%g157842157999%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx160143160144%_)))))
                      (let ((_%__kont160145160146%_
                             (lambda (_%g157844158516%_
                                      _%g157845158517%_
                                      _%g157846158518%_)
                               '#t))
                            (_%__kont160151160152%_
                             (lambda (_%g157889158308%_
                                      _%g157890158309%_
                                      _%g157891158310%_
                                      _%g157892158311%_
                                      _%g157893158312%_
                                      _%g157894158313%_)
                               '#t))
                            (_%__kont160157160158%_
                             (lambda (_%g157955158107%_
                                      _%g157956158108%_
                                      _%g157957158109%_
                                      _%g157958158110%_)
                               '#t))
                            (_%__kont160159160160%_ (lambda () '#f)))
                        (let* ((_%__match160284160285%_
                                (lambda (_%e157959158011%_
                                         _%hd157960158014%_
                                         _%tl157961158016%_
                                         _%e157962158019%_
                                         _%hd157963158022%_
                                         _%tl157964158024%_
                                         _%e157965158027%_
                                         _%hd157966158030%_
                                         _%tl157967158032%_
                                         _%e157968158035%_
                                         _%hd157969158038%_
                                         _%tl157970158040%_
                                         _%e157971158043%_
                                         _%hd157972158046%_
                                         _%tl157973158048%_
                                         _%e157974158051%_
                                         _%hd157975158054%_
                                         _%tl157976158056%_
                                         _%e157977158059%_
                                         _%hd157978158062%_
                                         _%tl157979158064%_
                                         _%e157980158067%_
                                         _%hd157981158070%_
                                         _%tl157982158072%_
                                         _%e157983158075%_
                                         _%hd157984158078%_
                                         _%tl157985158080%_
                                         _%e157986158083%_
                                         _%hd157987158086%_
                                         _%tl157988158088%_
                                         _%e157989158091%_
                                         _%hd157990158094%_
                                         _%tl157991158096%_
                                         _%e157992158099%_
                                         _%hd157993158102%_
                                         _%tl157994158104%_)
                                  (let ((_%g157955158107%_ _%hd157993158102%_)
                                        (_%g157956158108%_ _%hd157984158078%_)
                                        (_%g157957158109%_ _%hd157975158054%_)
                                        (_%g157958158110%_ _%hd157960158014%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g157958158110%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g157957158109%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g157958158110%_
                                                _%g157955158107%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g157956158108%_
                                                     _%g157958158110%_))))
                                        (_%__kont160157160158%_
                                         _%g157955158107%_
                                         _%g157956158108%_
                                         _%g157957158109%_
                                         _%g157958158110%_)
                                        (_%__kont160159160160%_)))))
                               (_%__match160256160257%_
                                (lambda (_%e157959158011%_
                                         _%hd157960158014%_
                                         _%tl157961158016%_
                                         _%e157962158019%_
                                         _%hd157963158022%_
                                         _%tl157964158024%_
                                         _%e157965158027%_
                                         _%hd157966158030%_
                                         _%tl157967158032%_
                                         _%e157968158035%_
                                         _%hd157969158038%_
                                         _%tl157970158040%_
                                         _%e157971158043%_
                                         _%hd157972158046%_
                                         _%tl157973158048%_
                                         _%e157974158051%_
                                         _%hd157975158054%_
                                         _%tl157976158056%_
                                         _%e157977158059%_
                                         _%hd157978158062%_
                                         _%tl157979158064%_
                                         _%e157980158067%_
                                         _%hd157981158070%_
                                         _%tl157982158072%_
                                         _%e157983158075%_
                                         _%hd157984158078%_
                                         _%tl157985158080%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl157979158064%_))
                                      (let ((_%e157986158083%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl157979158064%_))))
                                        (let ((_%tl157988158088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e157986158083%_)))
                                              (_%hd157987158086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e157986158083%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd157987158086%_))
                                              (let ((_%e157989158091%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd157987158086%_))))
                                                (let ((_%tl157991158096%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e157989158091%_)))
                                                      (_%hd157990158094%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e157989158091%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd157990158094%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd157990158094%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl157991158096%_))
                      (let ((_%e157992158099%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl157991158096%_))))
                        (let ((_%tl157994158104%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157992158099%_)))
                              (_%hd157993158102%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157992158099%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl157994158104%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl157988158088%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl157964158024%_))
                                      (_%__match160284160285%_
                                       _%e157959158011%_
                                       _%hd157960158014%_
                                       _%tl157961158016%_
                                       _%e157962158019%_
                                       _%hd157963158022%_
                                       _%tl157964158024%_
                                       _%e157965158027%_
                                       _%hd157966158030%_
                                       _%tl157967158032%_
                                       _%e157968158035%_
                                       _%hd157969158038%_
                                       _%tl157970158040%_
                                       _%e157971158043%_
                                       _%hd157972158046%_
                                       _%tl157973158048%_
                                       _%e157974158051%_
                                       _%hd157975158054%_
                                       _%tl157976158056%_
                                       _%e157977158059%_
                                       _%hd157978158062%_
                                       _%tl157979158064%_
                                       _%e157980158067%_
                                       _%hd157981158070%_
                                       _%tl157982158072%_
                                       _%e157983158075%_
                                       _%hd157984158078%_
                                       _%tl157985158080%_
                                       _%e157986158083%_
                                       _%hd157987158086%_
                                       _%tl157988158088%_
                                       _%e157989158091%_
                                       _%hd157990158094%_
                                       _%tl157991158096%_
                                       _%e157992158099%_
                                       _%hd157993158102%_
                                       _%tl157994158104%_)
                                      (_%__kont160159160160%_))
                                  (_%__kont160159160160%_))
                              (_%__kont160159160160%_))))
                      (_%__kont160159160160%_))
                  (_%__kont160159160160%_))
              (_%__kont160159160160%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont160159160160%_))))
                                      (_%__kont160159160160%_))))
                               (_%__match160186160187%_
                                (lambda (_%e157895158152%_
                                         _%hd157896158155%_
                                         _%tl157897158157%_
                                         _%__splice160153160154%_
                                         _%target157898158160%_
                                         _%tl157900158162%_)
                                  (letrec ((_%loop157901158165%_
                                            (lambda (_%hd157899158168%_
                                                     _%arg157905158170%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157899158168%_))
                                                  (let ((_%e157902158172%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157899158168%_))))
                                                    (let ((_%lp-tl157904158177%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157902158172%_)))
                                                          (_%lp-hd157903158175%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157902158172%_))))
                                                      (_%loop157901158165%_
                                                       _%lp-tl157904158177%_
                                                       (cons _%lp-hd157903158175%_
                                                             _%arg157905158170%_))))
                                                  (let ((_%arg157906158180%_
                                                         (reverse _%arg157905158170%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl157897158157%_))
                                                        (let ((_%e157907158182%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl157897158157%_))))
                  (let ((_%tl157909158187%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e157907158182%_)))
                        (_%hd157908158185%_
                         (let ()
                           (declare (not safe))
                           (##car _%e157907158182%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd157908158185%_))
                        (let ((_%e157910158190%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd157908158185%_))))
                          (let ((_%tl157912158195%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157910158190%_)))
                                (_%hd157911158193%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157910158190%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd157911158193%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd157911158193%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl157912158195%_))
                                        (let ((_%e157913158198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl157912158195%_))))
                                          (let ((_%tl157915158203%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e157913158198%_)))
                                                (_%hd157914158201%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e157913158198%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd157914158201%_))
                                                (let ((_%e157916158206%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd157914158201%_))))
                                                  (let ((_%tl157918158211%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e157916158206%_)))
                                                        (_%hd157917158209%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e157916158206%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd157917158209%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd157917158209%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl157918158211%_))
                        (let ((_%e157919158214%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl157918158211%_))))
                          (let ((_%tl157921158219%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157919158214%_)))
                                (_%hd157920158217%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157919158214%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl157921158219%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl157915158203%_))
                                    (let ((_%e157922158222%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl157915158203%_))))
                                      (let ((_%tl157924158227%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e157922158222%_)))
                                            (_%hd157923158225%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e157922158222%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd157923158225%_))
                                            (let ((_%e157925158230%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd157923158225%_))))
                                              (let ((_%tl157927158235%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e157925158230%_)))
                                                    (_%hd157926158233%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e157925158230%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd157926158233%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd157926158233%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl157927158235%_))
                                                            (let ((_%e157928158238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl157927158235%_))))
                      (let ((_%tl157930158243%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e157928158238%_)))
                            (_%hd157929158241%_
                             (let ()
                               (declare (not safe))
                               (##car _%e157928158238%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl157930158243%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl157924158227%_))
                                (if (let ((__tmp161425
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl157924158227%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp161425 '1))
                                    (let ((_%__splice160155160156%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl157924158227%_
                                              '1))))
                                      (let ((_%tl157933158248%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice160155160156%_
                                                '1)))
                                            (_%target157931158246%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice160155160156%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl157933158248%_))
                                            (let ((_%e157940158251%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl157933158248%_))))
                                              (let ((_%tl157942158256%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e157940158251%_)))
                                                    (_%hd157941158254%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e157940158251%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd157941158254%_))
                                                    (let ((_%e157943158259%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd157941158254%_))))
                                                      (let ((_%tl157945158264%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e157943158259%_)))
                    (_%hd157944158262%_
                     (let () (declare (not safe)) (##car _%e157943158259%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd157944158262%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd157944158262%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl157945158264%_))
                            (let ((_%e157946158267%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl157945158264%_))))
                              (let ((_%tl157948158272%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e157946158267%_)))
                                    (_%hd157947158270%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e157946158267%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl157948158272%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl157942158256%_))
                                        (letrec ((_%loop157934158275%_
                                                  (lambda (_%hd157932158278%_
                                                           _%xarg157938158280%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd157932158278%_))
                                                        (let ((_%e157935158282%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd157932158278%_))))
                  (let ((_%lp-tl157937158287%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e157935158282%_)))
                        (_%lp-hd157936158285%_
                         (let ()
                           (declare (not safe))
                           (##car _%e157935158282%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd157936158285%_))
                        (let ((_%e157949158290%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd157936158285%_))))
                          (let ((_%tl157951158295%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157949158290%_)))
                                (_%hd157950158293%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157949158290%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd157950158293%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd157950158293%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl157951158295%_))
                                        (let ((_%e157952158298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl157951158295%_))))
                                          (let ((_%tl157954158303%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e157952158298%_)))
                                                (_%hd157953158301%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e157952158298%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl157954158303%_))
                                                (_%loop157934158275%_
                                                 _%lp-tl157937158287%_
                                                 (cons _%hd157953158301%_
                                                       _%xarg157938158280%_))
                                                (_%__match160256160257%_
                                                 _%e157895158152%_
                                                 _%hd157896158155%_
                                                 _%tl157897158157%_
                                                 _%e157907158182%_
                                                 _%hd157908158185%_
                                                 _%tl157909158187%_
                                                 _%e157910158190%_
                                                 _%hd157911158193%_
                                                 _%tl157912158195%_
                                                 _%e157913158198%_
                                                 _%hd157914158201%_
                                                 _%tl157915158203%_
                                                 _%e157916158206%_
                                                 _%hd157917158209%_
                                                 _%tl157918158211%_
                                                 _%e157919158214%_
                                                 _%hd157920158217%_
                                                 _%tl157921158219%_
                                                 _%e157922158222%_
                                                 _%hd157923158225%_
                                                 _%tl157924158227%_
                                                 _%e157925158230%_
                                                 _%hd157926158233%_
                                                 _%tl157927158235%_
                                                 _%e157928158238%_
                                                 _%hd157929158241%_
                                                 _%tl157930158243%_))))
                                        (_%__match160256160257%_
                                         _%e157895158152%_
                                         _%hd157896158155%_
                                         _%tl157897158157%_
                                         _%e157907158182%_
                                         _%hd157908158185%_
                                         _%tl157909158187%_
                                         _%e157910158190%_
                                         _%hd157911158193%_
                                         _%tl157912158195%_
                                         _%e157913158198%_
                                         _%hd157914158201%_
                                         _%tl157915158203%_
                                         _%e157916158206%_
                                         _%hd157917158209%_
                                         _%tl157918158211%_
                                         _%e157919158214%_
                                         _%hd157920158217%_
                                         _%tl157921158219%_
                                         _%e157922158222%_
                                         _%hd157923158225%_
                                         _%tl157924158227%_
                                         _%e157925158230%_
                                         _%hd157926158233%_
                                         _%tl157927158235%_
                                         _%e157928158238%_
                                         _%hd157929158241%_
                                         _%tl157930158243%_))
                                    (_%__match160256160257%_
                                     _%e157895158152%_
                                     _%hd157896158155%_
                                     _%tl157897158157%_
                                     _%e157907158182%_
                                     _%hd157908158185%_
                                     _%tl157909158187%_
                                     _%e157910158190%_
                                     _%hd157911158193%_
                                     _%tl157912158195%_
                                     _%e157913158198%_
                                     _%hd157914158201%_
                                     _%tl157915158203%_
                                     _%e157916158206%_
                                     _%hd157917158209%_
                                     _%tl157918158211%_
                                     _%e157919158214%_
                                     _%hd157920158217%_
                                     _%tl157921158219%_
                                     _%e157922158222%_
                                     _%hd157923158225%_
                                     _%tl157924158227%_
                                     _%e157925158230%_
                                     _%hd157926158233%_
                                     _%tl157927158235%_
                                     _%e157928158238%_
                                     _%hd157929158241%_
                                     _%tl157930158243%_))
                                (_%__match160256160257%_
                                 _%e157895158152%_
                                 _%hd157896158155%_
                                 _%tl157897158157%_
                                 _%e157907158182%_
                                 _%hd157908158185%_
                                 _%tl157909158187%_
                                 _%e157910158190%_
                                 _%hd157911158193%_
                                 _%tl157912158195%_
                                 _%e157913158198%_
                                 _%hd157914158201%_
                                 _%tl157915158203%_
                                 _%e157916158206%_
                                 _%hd157917158209%_
                                 _%tl157918158211%_
                                 _%e157919158214%_
                                 _%hd157920158217%_
                                 _%tl157921158219%_
                                 _%e157922158222%_
                                 _%hd157923158225%_
                                 _%tl157924158227%_
                                 _%e157925158230%_
                                 _%hd157926158233%_
                                 _%tl157927158235%_
                                 _%e157928158238%_
                                 _%hd157929158241%_
                                 _%tl157930158243%_))))
                        (_%__match160256160257%_
                         _%e157895158152%_
                         _%hd157896158155%_
                         _%tl157897158157%_
                         _%e157907158182%_
                         _%hd157908158185%_
                         _%tl157909158187%_
                         _%e157910158190%_
                         _%hd157911158193%_
                         _%tl157912158195%_
                         _%e157913158198%_
                         _%hd157914158201%_
                         _%tl157915158203%_
                         _%e157916158206%_
                         _%hd157917158209%_
                         _%tl157918158211%_
                         _%e157919158214%_
                         _%hd157920158217%_
                         _%tl157921158219%_
                         _%e157922158222%_
                         _%hd157923158225%_
                         _%tl157924158227%_
                         _%e157925158230%_
                         _%hd157926158233%_
                         _%tl157927158235%_
                         _%e157928158238%_
                         _%hd157929158241%_
                         _%tl157930158243%_))))
                (let ((_%xarg157939158306%_ (reverse _%xarg157938158280%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl157909158187%_))
                      (let ((_%g157889158308%_ _%hd157947158270%_)
                            (_%g157890158309%_ _%xarg157939158306%_)
                            (_%g157891158310%_ _%hd157929158241%_)
                            (_%g157892158311%_ _%hd157920158217%_)
                            (_%g157893158312%_ _%tl157900158162%_)
                            (_%g157894158313%_ _%arg157906158180%_))
                        (if (and (let ((__tmp161426
                                        (let ((__tmp161427
                                               (lambda (_%g158356158359%_
                                                        _%g158357158361%_)
                                                 (cons _%g158356158359%_
                                                       _%g158357158361%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp161427
                                           '()
                                           _%g157894158313%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp161426))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g157893158312%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g157892158311%_
                                    'apply))
                                 (let ((__tmp161430
                                        (length (let ((__tmp161431
                                                       (lambda (_%g158363158366%_
                                                                _%g158364158368%_)
                                                         (cons _%g158363158366%_
                                                               _%g158364158368%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp161431
                                                   '()
                                                   _%g157894158313%_))))
                                       (__tmp161428
                                        (length (let ((__tmp161429
                                                       (lambda (_%g158370158373%_
                                                                _%g158371158375%_)
                                                         (cons _%g158370158373%_
                                                               _%g158371158375%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp161429
                                                   '()
                                                   _%g157890158309%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp161430 __tmp161428))
                                 (let ((__tmp161434
                                        (let ((__tmp161435
                                               (lambda (_%g158377158380%_
                                                        _%g158378158382%_)
                                                 (cons _%g158377158380%_
                                                       _%g158378158382%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp161435
                                           '()
                                           _%g157894158313%_)))
                                       (__tmp161432
                                        (let ((__tmp161433
                                               (lambda (_%g158384158387%_
                                                        _%g158385158389%_)
                                                 (cons _%g158384158387%_
                                                       _%g158385158389%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp161433
                                           '()
                                           _%g157890158309%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp161434
                                    __tmp161432))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g157893158312%_
                                    _%g157889158308%_))
                                 (not (let ((__tmp161439
                                             (lambda (_%g158391158393%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g158391158393%_
                                                  _%g157891158310%_))))
                                            (__tmp161436
                                             (let ((__tmp161438
                                                    (lambda (_%g158395158398%_
                                                             _%g158396158400%_)
                                                      (cons _%g158395158398%_
                                                            _%g158396158400%_)))
                                                   (__tmp161437
                                                    (cons _%g157893158312%_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp161438
                                                __tmp161437
                                                _%g157894158313%_))))
                                        (declare (not safe))
                                        (__find __tmp161439 __tmp161436))))
                            (_%__kont160151160152%_
                             _%g157889158308%_
                             _%g157890158309%_
                             _%g157891158310%_
                             _%g157892158311%_
                             _%g157893158312%_
                             _%g157894158313%_)
                            (_%__match160256160257%_
                             _%e157895158152%_
                             _%hd157896158155%_
                             _%tl157897158157%_
                             _%e157907158182%_
                             _%hd157908158185%_
                             _%tl157909158187%_
                             _%e157910158190%_
                             _%hd157911158193%_
                             _%tl157912158195%_
                             _%e157913158198%_
                             _%hd157914158201%_
                             _%tl157915158203%_
                             _%e157916158206%_
                             _%hd157917158209%_
                             _%tl157918158211%_
                             _%e157919158214%_
                             _%hd157920158217%_
                             _%tl157921158219%_
                             _%e157922158222%_
                             _%hd157923158225%_
                             _%tl157924158227%_
                             _%e157925158230%_
                             _%hd157926158233%_
                             _%tl157927158235%_
                             _%e157928158238%_
                             _%hd157929158241%_
                             _%tl157930158243%_)))
                      (_%__match160256160257%_
                       _%e157895158152%_
                       _%hd157896158155%_
                       _%tl157897158157%_
                       _%e157907158182%_
                       _%hd157908158185%_
                       _%tl157909158187%_
                       _%e157910158190%_
                       _%hd157911158193%_
                       _%tl157912158195%_
                       _%e157913158198%_
                       _%hd157914158201%_
                       _%tl157915158203%_
                       _%e157916158206%_
                       _%hd157917158209%_
                       _%tl157918158211%_
                       _%e157919158214%_
                       _%hd157920158217%_
                       _%tl157921158219%_
                       _%e157922158222%_
                       _%hd157923158225%_
                       _%tl157924158227%_
                       _%e157925158230%_
                       _%hd157926158233%_
                       _%tl157927158235%_
                       _%e157928158238%_
                       _%hd157929158241%_
                       _%tl157930158243%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop157934158275%_
                                           _%target157931158246%_
                                           '()))
                                        (_%__match160256160257%_
                                         _%e157895158152%_
                                         _%hd157896158155%_
                                         _%tl157897158157%_
                                         _%e157907158182%_
                                         _%hd157908158185%_
                                         _%tl157909158187%_
                                         _%e157910158190%_
                                         _%hd157911158193%_
                                         _%tl157912158195%_
                                         _%e157913158198%_
                                         _%hd157914158201%_
                                         _%tl157915158203%_
                                         _%e157916158206%_
                                         _%hd157917158209%_
                                         _%tl157918158211%_
                                         _%e157919158214%_
                                         _%hd157920158217%_
                                         _%tl157921158219%_
                                         _%e157922158222%_
                                         _%hd157923158225%_
                                         _%tl157924158227%_
                                         _%e157925158230%_
                                         _%hd157926158233%_
                                         _%tl157927158235%_
                                         _%e157928158238%_
                                         _%hd157929158241%_
                                         _%tl157930158243%_))
                                    (_%__match160256160257%_
                                     _%e157895158152%_
                                     _%hd157896158155%_
                                     _%tl157897158157%_
                                     _%e157907158182%_
                                     _%hd157908158185%_
                                     _%tl157909158187%_
                                     _%e157910158190%_
                                     _%hd157911158193%_
                                     _%tl157912158195%_
                                     _%e157913158198%_
                                     _%hd157914158201%_
                                     _%tl157915158203%_
                                     _%e157916158206%_
                                     _%hd157917158209%_
                                     _%tl157918158211%_
                                     _%e157919158214%_
                                     _%hd157920158217%_
                                     _%tl157921158219%_
                                     _%e157922158222%_
                                     _%hd157923158225%_
                                     _%tl157924158227%_
                                     _%e157925158230%_
                                     _%hd157926158233%_
                                     _%tl157927158235%_
                                     _%e157928158238%_
                                     _%hd157929158241%_
                                     _%tl157930158243%_))))
                            (_%__match160256160257%_
                             _%e157895158152%_
                             _%hd157896158155%_
                             _%tl157897158157%_
                             _%e157907158182%_
                             _%hd157908158185%_
                             _%tl157909158187%_
                             _%e157910158190%_
                             _%hd157911158193%_
                             _%tl157912158195%_
                             _%e157913158198%_
                             _%hd157914158201%_
                             _%tl157915158203%_
                             _%e157916158206%_
                             _%hd157917158209%_
                             _%tl157918158211%_
                             _%e157919158214%_
                             _%hd157920158217%_
                             _%tl157921158219%_
                             _%e157922158222%_
                             _%hd157923158225%_
                             _%tl157924158227%_
                             _%e157925158230%_
                             _%hd157926158233%_
                             _%tl157927158235%_
                             _%e157928158238%_
                             _%hd157929158241%_
                             _%tl157930158243%_))
                        (_%__match160256160257%_
                         _%e157895158152%_
                         _%hd157896158155%_
                         _%tl157897158157%_
                         _%e157907158182%_
                         _%hd157908158185%_
                         _%tl157909158187%_
                         _%e157910158190%_
                         _%hd157911158193%_
                         _%tl157912158195%_
                         _%e157913158198%_
                         _%hd157914158201%_
                         _%tl157915158203%_
                         _%e157916158206%_
                         _%hd157917158209%_
                         _%tl157918158211%_
                         _%e157919158214%_
                         _%hd157920158217%_
                         _%tl157921158219%_
                         _%e157922158222%_
                         _%hd157923158225%_
                         _%tl157924158227%_
                         _%e157925158230%_
                         _%hd157926158233%_
                         _%tl157927158235%_
                         _%e157928158238%_
                         _%hd157929158241%_
                         _%tl157930158243%_))
                    (_%__match160256160257%_
                     _%e157895158152%_
                     _%hd157896158155%_
                     _%tl157897158157%_
                     _%e157907158182%_
                     _%hd157908158185%_
                     _%tl157909158187%_
                     _%e157910158190%_
                     _%hd157911158193%_
                     _%tl157912158195%_
                     _%e157913158198%_
                     _%hd157914158201%_
                     _%tl157915158203%_
                     _%e157916158206%_
                     _%hd157917158209%_
                     _%tl157918158211%_
                     _%e157919158214%_
                     _%hd157920158217%_
                     _%tl157921158219%_
                     _%e157922158222%_
                     _%hd157923158225%_
                     _%tl157924158227%_
                     _%e157925158230%_
                     _%hd157926158233%_
                     _%tl157927158235%_
                     _%e157928158238%_
                     _%hd157929158241%_
                     _%tl157930158243%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match160256160257%_
                                                     _%e157895158152%_
                                                     _%hd157896158155%_
                                                     _%tl157897158157%_
                                                     _%e157907158182%_
                                                     _%hd157908158185%_
                                                     _%tl157909158187%_
                                                     _%e157910158190%_
                                                     _%hd157911158193%_
                                                     _%tl157912158195%_
                                                     _%e157913158198%_
                                                     _%hd157914158201%_
                                                     _%tl157915158203%_
                                                     _%e157916158206%_
                                                     _%hd157917158209%_
                                                     _%tl157918158211%_
                                                     _%e157919158214%_
                                                     _%hd157920158217%_
                                                     _%tl157921158219%_
                                                     _%e157922158222%_
                                                     _%hd157923158225%_
                                                     _%tl157924158227%_
                                                     _%e157925158230%_
                                                     _%hd157926158233%_
                                                     _%tl157927158235%_
                                                     _%e157928158238%_
                                                     _%hd157929158241%_
                                                     _%tl157930158243%_))))
                                            (_%__match160256160257%_
                                             _%e157895158152%_
                                             _%hd157896158155%_
                                             _%tl157897158157%_
                                             _%e157907158182%_
                                             _%hd157908158185%_
                                             _%tl157909158187%_
                                             _%e157910158190%_
                                             _%hd157911158193%_
                                             _%tl157912158195%_
                                             _%e157913158198%_
                                             _%hd157914158201%_
                                             _%tl157915158203%_
                                             _%e157916158206%_
                                             _%hd157917158209%_
                                             _%tl157918158211%_
                                             _%e157919158214%_
                                             _%hd157920158217%_
                                             _%tl157921158219%_
                                             _%e157922158222%_
                                             _%hd157923158225%_
                                             _%tl157924158227%_
                                             _%e157925158230%_
                                             _%hd157926158233%_
                                             _%tl157927158235%_
                                             _%e157928158238%_
                                             _%hd157929158241%_
                                             _%tl157930158243%_))))
                                    (_%__match160256160257%_
                                     _%e157895158152%_
                                     _%hd157896158155%_
                                     _%tl157897158157%_
                                     _%e157907158182%_
                                     _%hd157908158185%_
                                     _%tl157909158187%_
                                     _%e157910158190%_
                                     _%hd157911158193%_
                                     _%tl157912158195%_
                                     _%e157913158198%_
                                     _%hd157914158201%_
                                     _%tl157915158203%_
                                     _%e157916158206%_
                                     _%hd157917158209%_
                                     _%tl157918158211%_
                                     _%e157919158214%_
                                     _%hd157920158217%_
                                     _%tl157921158219%_
                                     _%e157922158222%_
                                     _%hd157923158225%_
                                     _%tl157924158227%_
                                     _%e157925158230%_
                                     _%hd157926158233%_
                                     _%tl157927158235%_
                                     _%e157928158238%_
                                     _%hd157929158241%_
                                     _%tl157930158243%_))
                                (_%__match160256160257%_
                                 _%e157895158152%_
                                 _%hd157896158155%_
                                 _%tl157897158157%_
                                 _%e157907158182%_
                                 _%hd157908158185%_
                                 _%tl157909158187%_
                                 _%e157910158190%_
                                 _%hd157911158193%_
                                 _%tl157912158195%_
                                 _%e157913158198%_
                                 _%hd157914158201%_
                                 _%tl157915158203%_
                                 _%e157916158206%_
                                 _%hd157917158209%_
                                 _%tl157918158211%_
                                 _%e157919158214%_
                                 _%hd157920158217%_
                                 _%tl157921158219%_
                                 _%e157922158222%_
                                 _%hd157923158225%_
                                 _%tl157924158227%_
                                 _%e157925158230%_
                                 _%hd157926158233%_
                                 _%tl157927158235%_
                                 _%e157928158238%_
                                 _%hd157929158241%_
                                 _%tl157930158243%_))
                            (_%__kont160159160160%_))))
                    (_%__kont160159160160%_))
                (_%__kont160159160160%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont160159160160%_))))
                                            (_%__kont160159160160%_))))
                                    (_%__kont160159160160%_))
                                (_%__kont160159160160%_))))
                        (_%__kont160159160160%_))
                    (_%__kont160159160160%_))
                (_%__kont160159160160%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont160159160160%_))))
                                        (_%__kont160159160160%_))
                                    (_%__kont160159160160%_))
                                (_%__kont160159160160%_))))
                        (_%__kont160159160160%_))))
                (_%__kont160159160160%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop157901158165%_
                                     _%target157898158160%_
                                     '()))))
                               (_%__match160174160175%_
                                (lambda (_%e157847158408%_
                                         _%hd157848158411%_
                                         _%tl157849158413%_
                                         _%__splice160147160148%_
                                         _%target157850158416%_
                                         _%tl157852158418%_)
                                  (letrec ((_%loop157853158421%_
                                            (lambda (_%hd157851158424%_
                                                     _%arg157857158426%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157851158424%_))
                                                  (let ((_%e157854158428%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157851158424%_))))
                                                    (let ((_%lp-tl157856158433%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157854158428%_)))
                                                          (_%lp-hd157855158431%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157854158428%_))))
                                                      (_%loop157853158421%_
                                                       _%lp-tl157856158433%_
                                                       (cons _%lp-hd157855158431%_
                                                             _%arg157857158426%_))))
                                                  (let ((_%arg157858158436%_
                                                         (reverse _%arg157857158426%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl157849158413%_))
                                                        (let ((_%e157859158438%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl157849158413%_))))
                  (let ((_%tl157861158443%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e157859158438%_)))
                        (_%hd157860158441%_
                         (let ()
                           (declare (not safe))
                           (##car _%e157859158438%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd157860158441%_))
                        (let ((_%e157862158446%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd157860158441%_))))
                          (let ((_%tl157864158451%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157862158446%_)))
                                (_%hd157863158449%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157862158446%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd157863158449%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd157863158449%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl157864158451%_))
                                        (let ((_%e157865158454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl157864158451%_))))
                                          (let ((_%tl157867158459%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e157865158454%_)))
                                                (_%hd157866158457%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e157865158454%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd157866158457%_))
                                                (let ((_%e157868158462%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd157866158457%_))))
                                                  (let ((_%tl157870158467%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e157868158462%_)))
                                                        (_%hd157869158465%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e157868158462%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd157869158465%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd157869158465%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl157870158467%_))
                        (let ((_%e157871158470%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl157870158467%_))))
                          (let ((_%tl157873158475%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157871158470%_)))
                                (_%hd157872158473%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157871158470%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl157873158475%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl157867158459%_))
                                    (let ((_%__splice160149160150%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl157867158459%_
                                              '0))))
                                      (let ((_%tl157876158480%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice160149160150%_
                                                '1)))
                                            (_%target157874158478%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice160149160150%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl157876158480%_))
                                            (letrec ((_%loop157877158483%_
                                                      (lambda (_%hd157875158486%_
                                                               _%xarg157881158488%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd157875158486%_))
                                                            (let ((_%e157878158490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd157875158486%_))))
                      (let ((_%lp-tl157880158495%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e157878158490%_)))
                            (_%lp-hd157879158493%_
                             (let ()
                               (declare (not safe))
                               (##car _%e157878158490%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd157879158493%_))
                            (let ((_%e157883158498%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd157879158493%_))))
                              (let ((_%tl157885158503%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e157883158498%_)))
                                    (_%hd157884158501%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e157883158498%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd157884158501%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd157884158501%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl157885158503%_))
                                            (let ((_%e157886158506%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl157885158503%_))))
                                              (let ((_%tl157888158511%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e157886158506%_)))
                                                    (_%hd157887158509%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e157886158506%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl157888158511%_))
                                                    (_%loop157877158483%_
                                                     _%lp-tl157880158495%_
                                                     (cons _%hd157887158509%_
                                                           _%xarg157881158488%_))
                                                    (_%__match160186160187%_
                                                     _%e157847158408%_
                                                     _%hd157848158411%_
                                                     _%tl157849158413%_
                                                     _%__splice160147160148%_
                                                     _%target157850158416%_
                                                     _%tl157852158418%_))))
                                            (_%__match160186160187%_
                                             _%e157847158408%_
                                             _%hd157848158411%_
                                             _%tl157849158413%_
                                             _%__splice160147160148%_
                                             _%target157850158416%_
                                             _%tl157852158418%_))
                                        (_%__match160186160187%_
                                         _%e157847158408%_
                                         _%hd157848158411%_
                                         _%tl157849158413%_
                                         _%__splice160147160148%_
                                         _%target157850158416%_
                                         _%tl157852158418%_))
                                    (_%__match160186160187%_
                                     _%e157847158408%_
                                     _%hd157848158411%_
                                     _%tl157849158413%_
                                     _%__splice160147160148%_
                                     _%target157850158416%_
                                     _%tl157852158418%_))))
                            (_%__match160186160187%_
                             _%e157847158408%_
                             _%hd157848158411%_
                             _%tl157849158413%_
                             _%__splice160147160148%_
                             _%target157850158416%_
                             _%tl157852158418%_))))
                    (let ((_%xarg157882158514%_
                           (reverse _%xarg157881158488%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl157861158443%_))
                          (let ((_%g157844158516%_ _%xarg157882158514%_)
                                (_%g157845158517%_ _%hd157872158473%_)
                                (_%g157846158518%_ _%arg157858158436%_))
                            (if (and (let ((__tmp161440
                                            (let ((__tmp161441
                                                   (lambda (_%g158546158549%_
                                                            _%g158547158551%_)
                                                     (cons _%g158546158549%_
                                                           _%g158547158551%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp161441
                                               '()
                                               _%g157846158518%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp161440))
                                     (let ((__tmp161444
                                            (length (let ((__tmp161445
                                                           (lambda (_%g158553158556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g158554158558%_)
                     (cons _%g158553158556%_ _%g158554158558%_))))
              (declare (not safe))
              (__foldr1 __tmp161445 '() _%g157846158518%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp161442
                                            (length (let ((__tmp161443
                                                           (lambda (_%g158560158563%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g158561158565%_)
                     (cons _%g158560158563%_ _%g158561158565%_))))
              (declare (not safe))
              (__foldr1 __tmp161443 '() _%g157844158516%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp161444 __tmp161442))
                                     (let ((__tmp161448
                                            (let ((__tmp161449
                                                   (lambda (_%g158567158570%_
                                                            _%g158568158572%_)
                                                     (cons _%g158567158570%_
                                                           _%g158568158572%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp161449
                                               '()
                                               _%g157846158518%_)))
                                           (__tmp161446
                                            (let ((__tmp161447
                                                   (lambda (_%g158574158577%_
                                                            _%g158575158579%_)
                                                     (cons _%g158574158577%_
                                                           _%g158575158579%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp161447
                                               '()
                                               _%g157844158516%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp161448
                                        __tmp161446))
                                     (not (let ((__tmp161452
                                                 (lambda (_%g158581158583%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g158581158583%_
                                                      _%g157845158517%_))))
                                                (__tmp161450
                                                 (let ((__tmp161451
                                                        (lambda (_%g158585158588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g158586158590%_)
                  (cons _%g158585158588%_ _%g158586158590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp161451
                                                    '()
                                                    _%g157846158518%_))))
                                            (declare (not safe))
                                            (__find __tmp161452 __tmp161450))))
                                (_%__kont160145160146%_
                                 _%g157844158516%_
                                 _%g157845158517%_
                                 _%g157846158518%_)
                                (_%__match160186160187%_
                                 _%e157847158408%_
                                 _%hd157848158411%_
                                 _%tl157849158413%_
                                 _%__splice160147160148%_
                                 _%target157850158416%_
                                 _%tl157852158418%_)))
                          (_%__match160186160187%_
                           _%e157847158408%_
                           _%hd157848158411%_
                           _%tl157849158413%_
                           _%__splice160147160148%_
                           _%target157850158416%_
                           _%tl157852158418%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop157877158483%_
                                               _%target157874158478%_
                                               '()))
                                            (_%__match160186160187%_
                                             _%e157847158408%_
                                             _%hd157848158411%_
                                             _%tl157849158413%_
                                             _%__splice160147160148%_
                                             _%target157850158416%_
                                             _%tl157852158418%_))))
                                    (_%__match160186160187%_
                                     _%e157847158408%_
                                     _%hd157848158411%_
                                     _%tl157849158413%_
                                     _%__splice160147160148%_
                                     _%target157850158416%_
                                     _%tl157852158418%_))
                                (_%__match160186160187%_
                                 _%e157847158408%_
                                 _%hd157848158411%_
                                 _%tl157849158413%_
                                 _%__splice160147160148%_
                                 _%target157850158416%_
                                 _%tl157852158418%_))))
                        (_%__match160186160187%_
                         _%e157847158408%_
                         _%hd157848158411%_
                         _%tl157849158413%_
                         _%__splice160147160148%_
                         _%target157850158416%_
                         _%tl157852158418%_))
                    (_%__match160186160187%_
                     _%e157847158408%_
                     _%hd157848158411%_
                     _%tl157849158413%_
                     _%__splice160147160148%_
                     _%target157850158416%_
                     _%tl157852158418%_))
                (_%__match160186160187%_
                 _%e157847158408%_
                 _%hd157848158411%_
                 _%tl157849158413%_
                 _%__splice160147160148%_
                 _%target157850158416%_
                 _%tl157852158418%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match160186160187%_
                                                 _%e157847158408%_
                                                 _%hd157848158411%_
                                                 _%tl157849158413%_
                                                 _%__splice160147160148%_
                                                 _%target157850158416%_
                                                 _%tl157852158418%_))))
                                        (_%__match160186160187%_
                                         _%e157847158408%_
                                         _%hd157848158411%_
                                         _%tl157849158413%_
                                         _%__splice160147160148%_
                                         _%target157850158416%_
                                         _%tl157852158418%_))
                                    (_%__match160186160187%_
                                     _%e157847158408%_
                                     _%hd157848158411%_
                                     _%tl157849158413%_
                                     _%__splice160147160148%_
                                     _%target157850158416%_
                                     _%tl157852158418%_))
                                (_%__match160186160187%_
                                 _%e157847158408%_
                                 _%hd157848158411%_
                                 _%tl157849158413%_
                                 _%__splice160147160148%_
                                 _%target157850158416%_
                                 _%tl157852158418%_))))
                        (_%__match160186160187%_
                         _%e157847158408%_
                         _%hd157848158411%_
                         _%tl157849158413%_
                         _%__splice160147160148%_
                         _%target157850158416%_
                         _%tl157852158418%_))))
                (_%__match160186160187%_
                 _%e157847158408%_
                 _%hd157848158411%_
                 _%tl157849158413%_
                 _%__splice160147160148%_
                 _%target157850158416%_
                 _%tl157852158418%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop157853158421%_
                                     _%target157850158416%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx160143160144%_))
                              (let ((_%e157847158408%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx160143160144%_))))
                                (let ((_%tl157849158413%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157847158408%_)))
                                      (_%hd157848158411%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157847158408%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd157848158411%_))
                                      (let ((_%__splice160147160148%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd157848158411%_
                                                '0))))
                                        (let ((_%tl157852158418%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice160147160148%_
                                                  '1)))
                                              (_%target157850158416%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice160147160148%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl157852158418%_))
                                              (_%__match160174160175%_
                                               _%e157847158408%_
                                               _%hd157848158411%_
                                               _%tl157849158413%_
                                               _%__splice160147160148%_
                                               _%target157850158416%_
                                               _%tl157852158418%_)
                                              (_%__match160186160187%_
                                               _%e157847158408%_
                                               _%hd157848158411%_
                                               _%tl157849158413%_
                                               _%__splice160147160148%_
                                               _%target157850158416%_
                                               _%tl157852158418%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl157849158413%_))
                                          (let ((_%e157962158019%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl157849158413%_))))
                                            (let ((_%tl157964158024%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e157962158019%_)))
                                                  (_%hd157963158022%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e157962158019%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157963158022%_))
                                                  (let ((_%e157965158027%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157963158022%_))))
                                                    (let ((_%tl157967158032%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157965158027%_)))
                                                          (_%hd157966158030%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157965158027%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd157966158030%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd157966158030%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl157967158032%_))
                          (let ((_%e157968158035%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl157967158032%_))))
                            (let ((_%tl157970158040%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e157968158035%_)))
                                  (_%hd157969158038%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e157968158035%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd157969158038%_))
                                  (let ((_%e157971158043%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd157969158038%_))))
                                    (let ((_%tl157973158048%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e157971158043%_)))
                                          (_%hd157972158046%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e157971158043%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd157972158046%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd157972158046%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl157973158048%_))
                                                  (let ((_%e157974158051%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl157973158048%_))))
                                                    (let ((_%tl157976158056%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157974158051%_)))
                                                          (_%hd157975158054%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157974158051%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl157976158056%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl157970158040%_))
                      (let ((_%e157977158059%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl157970158040%_))))
                        (let ((_%tl157979158064%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157977158059%_)))
                              (_%hd157978158062%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157977158059%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd157978158062%_))
                              (let ((_%e157980158067%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd157978158062%_))))
                                (let ((_%tl157982158072%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157980158067%_)))
                                      (_%hd157981158070%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157980158067%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd157981158070%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd157981158070%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl157982158072%_))
                                              (let ((_%e157983158075%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl157982158072%_))))
                                                (let ((_%tl157985158080%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e157983158075%_)))
                                                      (_%hd157984158078%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e157983158075%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl157985158080%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl157979158064%_))
                                                          (let ((_%e157986158083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl157979158064%_))))
                    (let ((_%tl157988158088%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e157986158083%_)))
                          (_%hd157987158086%_
                           (let ()
                             (declare (not safe))
                             (##car _%e157986158083%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd157987158086%_))
                          (let ((_%e157989158091%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd157987158086%_))))
                            (let ((_%tl157991158096%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e157989158091%_)))
                                  (_%hd157990158094%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e157989158091%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd157990158094%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd157990158094%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl157991158096%_))
                                          (let ((_%e157992158099%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl157991158096%_))))
                                            (let ((_%tl157994158104%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e157992158099%_)))
                                                  (_%hd157993158102%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e157992158099%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl157994158104%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl157988158088%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl157964158024%_))
                                                          (_%__match160284160285%_
                                                           _%e157847158408%_
                                                           _%hd157848158411%_
                                                           _%tl157849158413%_
                                                           _%e157962158019%_
                                                           _%hd157963158022%_
                                                           _%tl157964158024%_
                                                           _%e157965158027%_
                                                           _%hd157966158030%_
                                                           _%tl157967158032%_
                                                           _%e157968158035%_
                                                           _%hd157969158038%_
                                                           _%tl157970158040%_
                                                           _%e157971158043%_
                                                           _%hd157972158046%_
                                                           _%tl157973158048%_
                                                           _%e157974158051%_
                                                           _%hd157975158054%_
                                                           _%tl157976158056%_
                                                           _%e157977158059%_
                                                           _%hd157978158062%_
                                                           _%tl157979158064%_
                                                           _%e157980158067%_
                                                           _%hd157981158070%_
                                                           _%tl157982158072%_
                                                           _%e157983158075%_
                                                           _%hd157984158078%_
                                                           _%tl157985158080%_
                                                           _%e157986158083%_
                                                           _%hd157987158086%_
                                                           _%tl157988158088%_
                                                           _%e157989158091%_
                                                           _%hd157990158094%_
                                                           _%tl157991158096%_
                                                           _%e157992158099%_
                                                           _%hd157993158102%_
                                                           _%tl157994158104%_)
                                                          (_%__kont160159160160%_))
                                                      (_%__kont160159160160%_))
                                                  (_%__kont160159160160%_))))
                                          (_%__kont160159160160%_))
                                      (_%__kont160159160160%_))
                                  (_%__kont160159160160%_))))
                          (_%__kont160159160160%_))))
                  (_%__kont160159160160%_))
              (_%__kont160159160160%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont160159160160%_))
                                          (_%__kont160159160160%_))
                                      (_%__kont160159160160%_))))
                              (_%__kont160159160160%_))))
                      (_%__kont160159160160%_))
                  (_%__kont160159160160%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont160159160160%_))
                                              (_%__kont160159160160%_))
                                          (_%__kont160159160160%_))))
                                  (_%__kont160159160160%_))))
                          (_%__kont160159160160%_))
                      (_%__kont160159160160%_))
                  (_%__kont160159160160%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont160159160160%_))))
                                          (_%__kont160159160160%_)))))
                              (_%__kont160159160160%_)))))))
                 (_%dispatch-case-e157157%_
                  (lambda (_%hd157304%_ _%body157305%_)
                    (let* ((_%form157307%_
                            (cons _%hd157304%_ (cons _%body157305%_ '())))
                           (_%__stx160287160288%_ _%form157307%_)
                           (_%g157311157435%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx160287160288%_)))))
                      (let ((_%__kont160289160290%_
                             (lambda (_%g157313157800%_
                                      _%g157314157801%_
                                      _%g157315157802%_)
                               (let ((__tmp161453
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g157314157801%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self157153%_
                                  __tmp161453))))
                            (_%__kont160295160296%_
                             (lambda (_%g157358157652%_
                                      _%g157359157653%_
                                      _%g157360157654%_
                                      _%g157361157655%_)
                               (let ((__tmp161454
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g157358157652%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self157153%_
                                  __tmp161454))))
                            (_%__kont160299160300%_
                             (lambda (_%g157398157520%_
                                      _%g157399157521%_
                                      _%g157400157522%_)
                               (let ((__tmp161455
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g157398157520%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self157153%_
                                  __tmp161455)))))
                        (let* ((_%__match160396160397%_
                                (lambda (_%e157401157440%_
                                         _%hd157402157443%_
                                         _%tl157403157445%_
                                         _%e157404157448%_
                                         _%hd157405157451%_
                                         _%tl157406157453%_
                                         _%e157407157456%_
                                         _%hd157408157459%_
                                         _%tl157409157461%_
                                         _%e157410157464%_
                                         _%hd157411157467%_
                                         _%tl157412157469%_
                                         _%e157413157472%_
                                         _%hd157414157475%_
                                         _%tl157415157477%_
                                         _%e157416157480%_
                                         _%hd157417157483%_
                                         _%tl157418157485%_
                                         _%e157419157488%_
                                         _%hd157420157491%_
                                         _%tl157421157493%_
                                         _%e157422157496%_
                                         _%hd157423157499%_
                                         _%tl157424157501%_
                                         _%e157425157504%_
                                         _%hd157426157507%_
                                         _%tl157427157509%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl157421157493%_))
                                      (let ((_%e157428157512%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl157421157493%_))))
                                        (let ((_%tl157430157517%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e157428157512%_)))
                                              (_%hd157429157515%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e157428157512%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl157430157517%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl157406157453%_))
                                                  (_%__kont160299160300%_
                                                   _%hd157426157507%_
                                                   _%hd157417157483%_
                                                   _%hd157402157443%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g157311157435%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g157311157435%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g157311157435%_)))))
                               (_%__match160326160327%_
                                (lambda (_%e157362157558%_
                                         _%hd157363157561%_
                                         _%tl157364157563%_
                                         _%__splice160297160298%_
                                         _%target157365157566%_
                                         _%tl157367157568%_)
                                  (letrec ((_%loop157368157571%_
                                            (lambda (_%hd157366157574%_
                                                     _%arg157372157576%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157366157574%_))
                                                  (let ((_%e157369157578%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157366157574%_))))
                                                    (let ((_%lp-tl157371157583%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157369157578%_)))
                                                          (_%lp-hd157370157581%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157369157578%_))))
                                                      (_%loop157368157571%_
                                                       _%lp-tl157371157583%_
                                                       (cons _%lp-hd157370157581%_
                                                             _%arg157372157576%_))))
                                                  (let ((_%arg157373157586%_
                                                         (reverse _%arg157372157576%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl157364157563%_))
                                                        (let ((_%e157374157588%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl157364157563%_))))
                  (let ((_%tl157376157593%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e157374157588%_)))
                        (_%hd157375157591%_
                         (let ()
                           (declare (not safe))
                           (##car _%e157374157588%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd157375157591%_))
                        (let ((_%e157377157596%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd157375157591%_))))
                          (let ((_%tl157379157601%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157377157596%_)))
                                (_%hd157378157599%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157377157596%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd157378157599%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd157378157599%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl157379157601%_))
                                        (let ((_%e157380157604%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl157379157601%_))))
                                          (let ((_%tl157382157609%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e157380157604%_)))
                                                (_%hd157381157607%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e157380157604%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd157381157607%_))
                                                (let ((_%e157383157612%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd157381157607%_))))
                                                  (let ((_%tl157385157617%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e157383157612%_)))
                                                        (_%hd157384157615%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e157383157612%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd157384157615%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd157384157615%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl157385157617%_))
                        (let ((_%e157386157620%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl157385157617%_))))
                          (let ((_%tl157388157625%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157386157620%_)))
                                (_%hd157387157623%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157386157620%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl157388157625%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl157382157609%_))
                                    (let ((_%e157389157628%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl157382157609%_))))
                                      (let ((_%tl157391157633%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e157389157628%_)))
                                            (_%hd157390157631%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e157389157628%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd157390157631%_))
                                            (let ((_%e157392157636%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd157390157631%_))))
                                              (let ((_%tl157394157641%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e157392157636%_)))
                                                    (_%hd157393157639%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e157392157636%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd157393157639%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd157393157639%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl157394157641%_))
                                                            (let ((_%e157395157644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl157394157641%_))))
                      (let ((_%tl157397157649%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e157395157644%_)))
                            (_%hd157396157647%_
                             (let ()
                               (declare (not safe))
                               (##car _%e157395157644%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl157397157649%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl157376157593%_))
                                (_%__kont160295160296%_
                                 _%hd157396157647%_
                                 _%hd157387157623%_
                                 _%tl157367157568%_
                                 _%arg157373157586%_)
                                (_%__match160396160397%_
                                 _%e157362157558%_
                                 _%hd157363157561%_
                                 _%tl157364157563%_
                                 _%e157374157588%_
                                 _%hd157375157591%_
                                 _%tl157376157593%_
                                 _%e157377157596%_
                                 _%hd157378157599%_
                                 _%tl157379157601%_
                                 _%e157380157604%_
                                 _%hd157381157607%_
                                 _%tl157382157609%_
                                 _%e157383157612%_
                                 _%hd157384157615%_
                                 _%tl157385157617%_
                                 _%e157386157620%_
                                 _%hd157387157623%_
                                 _%tl157388157625%_
                                 _%e157389157628%_
                                 _%hd157390157631%_
                                 _%tl157391157633%_
                                 _%e157392157636%_
                                 _%hd157393157639%_
                                 _%tl157394157641%_
                                 _%e157395157644%_
                                 _%hd157396157647%_
                                 _%tl157397157649%_))
                            (let ()
                              (declare (not safe))
                              (_%g157311157435%_)))))
                    (let () (declare (not safe)) (_%g157311157435%_)))
                (let () (declare (not safe)) (_%g157311157435%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g157311157435%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g157311157435%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g157311157435%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g157311157435%_)))))
                        (let () (declare (not safe)) (_%g157311157435%_)))
                    (let () (declare (not safe)) (_%g157311157435%_)))
                (let () (declare (not safe)) (_%g157311157435%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g157311157435%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g157311157435%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g157311157435%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g157311157435%_)))))
                        (let () (declare (not safe)) (_%g157311157435%_)))))
                (let () (declare (not safe)) (_%g157311157435%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop157368157571%_
                                     _%target157365157566%_
                                     '()))))
                               (_%__match160314160315%_
                                (lambda (_%e157316157692%_
                                         _%hd157317157695%_
                                         _%tl157318157697%_
                                         _%__splice160291160292%_
                                         _%target157319157700%_
                                         _%tl157321157702%_)
                                  (letrec ((_%loop157322157705%_
                                            (lambda (_%hd157320157708%_
                                                     _%arg157326157710%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157320157708%_))
                                                  (let ((_%e157323157712%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157320157708%_))))
                                                    (let ((_%lp-tl157325157717%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157323157712%_)))
                                                          (_%lp-hd157324157715%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157323157712%_))))
                                                      (_%loop157322157705%_
                                                       _%lp-tl157325157717%_
                                                       (cons _%lp-hd157324157715%_
                                                             _%arg157326157710%_))))
                                                  (let ((_%arg157327157720%_
                                                         (reverse _%arg157326157710%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl157318157697%_))
                                                        (let ((_%e157328157722%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl157318157697%_))))
                  (let ((_%tl157330157727%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e157328157722%_)))
                        (_%hd157329157725%_
                         (let ()
                           (declare (not safe))
                           (##car _%e157328157722%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd157329157725%_))
                        (let ((_%e157331157730%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd157329157725%_))))
                          (let ((_%tl157333157735%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157331157730%_)))
                                (_%hd157332157733%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157331157730%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd157332157733%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd157332157733%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl157333157735%_))
                                        (let ((_%e157334157738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl157333157735%_))))
                                          (let ((_%tl157336157743%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e157334157738%_)))
                                                (_%hd157335157741%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e157334157738%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd157335157741%_))
                                                (let ((_%e157337157746%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd157335157741%_))))
                                                  (let ((_%tl157339157751%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e157337157746%_)))
                                                        (_%hd157338157749%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e157337157746%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd157338157749%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd157338157749%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl157339157751%_))
                        (let ((_%e157340157754%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl157339157751%_))))
                          (let ((_%tl157342157759%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157340157754%_)))
                                (_%hd157341157757%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157340157754%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl157342157759%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl157336157743%_))
                                    (let ((_%__splice160293160294%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl157336157743%_
                                              '0))))
                                      (let ((_%tl157345157764%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice160293160294%_
                                                '1)))
                                            (_%target157343157762%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice160293160294%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl157345157764%_))
                                            (letrec ((_%loop157346157767%_
                                                      (lambda (_%hd157344157770%_
                                                               _%xarg157350157772%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd157344157770%_))
                                                            (let ((_%e157347157774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd157344157770%_))))
                      (let ((_%lp-tl157349157779%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e157347157774%_)))
                            (_%lp-hd157348157777%_
                             (let ()
                               (declare (not safe))
                               (##car _%e157347157774%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd157348157777%_))
                            (let ((_%e157352157782%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd157348157777%_))))
                              (let ((_%tl157354157787%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e157352157782%_)))
                                    (_%hd157353157785%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e157352157782%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd157353157785%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd157353157785%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl157354157787%_))
                                            (let ((_%e157355157790%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl157354157787%_))))
                                              (let ((_%tl157357157795%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e157355157790%_)))
                                                    (_%hd157356157793%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e157355157790%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl157357157795%_))
                                                    (_%loop157346157767%_
                                                     _%lp-tl157349157779%_
                                                     (cons _%hd157356157793%_
                                                           _%xarg157350157772%_))
                                                    (_%__match160326160327%_
                                                     _%e157316157692%_
                                                     _%hd157317157695%_
                                                     _%tl157318157697%_
                                                     _%__splice160291160292%_
                                                     _%target157319157700%_
                                                     _%tl157321157702%_))))
                                            (_%__match160326160327%_
                                             _%e157316157692%_
                                             _%hd157317157695%_
                                             _%tl157318157697%_
                                             _%__splice160291160292%_
                                             _%target157319157700%_
                                             _%tl157321157702%_))
                                        (_%__match160326160327%_
                                         _%e157316157692%_
                                         _%hd157317157695%_
                                         _%tl157318157697%_
                                         _%__splice160291160292%_
                                         _%target157319157700%_
                                         _%tl157321157702%_))
                                    (_%__match160326160327%_
                                     _%e157316157692%_
                                     _%hd157317157695%_
                                     _%tl157318157697%_
                                     _%__splice160291160292%_
                                     _%target157319157700%_
                                     _%tl157321157702%_))))
                            (_%__match160326160327%_
                             _%e157316157692%_
                             _%hd157317157695%_
                             _%tl157318157697%_
                             _%__splice160291160292%_
                             _%target157319157700%_
                             _%tl157321157702%_))))
                    (let ((_%xarg157351157798%_
                           (reverse _%xarg157350157772%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl157330157727%_))
                          (_%__kont160289160290%_
                           _%xarg157351157798%_
                           _%hd157341157757%_
                           _%arg157327157720%_)
                          (_%__match160326160327%_
                           _%e157316157692%_
                           _%hd157317157695%_
                           _%tl157318157697%_
                           _%__splice160291160292%_
                           _%target157319157700%_
                           _%tl157321157702%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop157346157767%_
                                               _%target157343157762%_
                                               '()))
                                            (_%__match160326160327%_
                                             _%e157316157692%_
                                             _%hd157317157695%_
                                             _%tl157318157697%_
                                             _%__splice160291160292%_
                                             _%target157319157700%_
                                             _%tl157321157702%_))))
                                    (_%__match160326160327%_
                                     _%e157316157692%_
                                     _%hd157317157695%_
                                     _%tl157318157697%_
                                     _%__splice160291160292%_
                                     _%target157319157700%_
                                     _%tl157321157702%_))
                                (_%__match160326160327%_
                                 _%e157316157692%_
                                 _%hd157317157695%_
                                 _%tl157318157697%_
                                 _%__splice160291160292%_
                                 _%target157319157700%_
                                 _%tl157321157702%_))))
                        (_%__match160326160327%_
                         _%e157316157692%_
                         _%hd157317157695%_
                         _%tl157318157697%_
                         _%__splice160291160292%_
                         _%target157319157700%_
                         _%tl157321157702%_))
                    (_%__match160326160327%_
                     _%e157316157692%_
                     _%hd157317157695%_
                     _%tl157318157697%_
                     _%__splice160291160292%_
                     _%target157319157700%_
                     _%tl157321157702%_))
                (_%__match160326160327%_
                 _%e157316157692%_
                 _%hd157317157695%_
                 _%tl157318157697%_
                 _%__splice160291160292%_
                 _%target157319157700%_
                 _%tl157321157702%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match160326160327%_
                                                 _%e157316157692%_
                                                 _%hd157317157695%_
                                                 _%tl157318157697%_
                                                 _%__splice160291160292%_
                                                 _%target157319157700%_
                                                 _%tl157321157702%_))))
                                        (_%__match160326160327%_
                                         _%e157316157692%_
                                         _%hd157317157695%_
                                         _%tl157318157697%_
                                         _%__splice160291160292%_
                                         _%target157319157700%_
                                         _%tl157321157702%_))
                                    (_%__match160326160327%_
                                     _%e157316157692%_
                                     _%hd157317157695%_
                                     _%tl157318157697%_
                                     _%__splice160291160292%_
                                     _%target157319157700%_
                                     _%tl157321157702%_))
                                (_%__match160326160327%_
                                 _%e157316157692%_
                                 _%hd157317157695%_
                                 _%tl157318157697%_
                                 _%__splice160291160292%_
                                 _%target157319157700%_
                                 _%tl157321157702%_))))
                        (_%__match160326160327%_
                         _%e157316157692%_
                         _%hd157317157695%_
                         _%tl157318157697%_
                         _%__splice160291160292%_
                         _%target157319157700%_
                         _%tl157321157702%_))))
                (_%__match160326160327%_
                 _%e157316157692%_
                 _%hd157317157695%_
                 _%tl157318157697%_
                 _%__splice160291160292%_
                 _%target157319157700%_
                 _%tl157321157702%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop157322157705%_
                                     _%target157319157700%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx160287160288%_))
                              (let ((_%e157316157692%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx160287160288%_))))
                                (let ((_%tl157318157697%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157316157692%_)))
                                      (_%hd157317157695%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157316157692%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd157317157695%_))
                                      (let ((_%__splice160291160292%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd157317157695%_
                                                '0))))
                                        (let ((_%tl157321157702%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice160291160292%_
                                                  '1)))
                                              (_%target157319157700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice160291160292%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl157321157702%_))
                                              (_%__match160314160315%_
                                               _%e157316157692%_
                                               _%hd157317157695%_
                                               _%tl157318157697%_
                                               _%__splice160291160292%_
                                               _%target157319157700%_
                                               _%tl157321157702%_)
                                              (_%__match160326160327%_
                                               _%e157316157692%_
                                               _%hd157317157695%_
                                               _%tl157318157697%_
                                               _%__splice160291160292%_
                                               _%target157319157700%_
                                               _%tl157321157702%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl157318157697%_))
                                          (let ((_%e157404157448%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl157318157697%_))))
                                            (let ((_%tl157406157453%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e157404157448%_)))
                                                  (_%hd157405157451%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e157404157448%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157405157451%_))
                                                  (let ((_%e157407157456%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157405157451%_))))
                                                    (let ((_%tl157409157461%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157407157456%_)))
                                                          (_%hd157408157459%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157407157456%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd157408157459%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd157408157459%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl157409157461%_))
                          (let ((_%e157410157464%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl157409157461%_))))
                            (let ((_%tl157412157469%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e157410157464%_)))
                                  (_%hd157411157467%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e157410157464%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd157411157467%_))
                                  (let ((_%e157413157472%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd157411157467%_))))
                                    (let ((_%tl157415157477%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e157413157472%_)))
                                          (_%hd157414157475%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e157413157472%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd157414157475%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd157414157475%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl157415157477%_))
                                                  (let ((_%e157416157480%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl157415157477%_))))
                                                    (let ((_%tl157418157485%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157416157480%_)))
                                                          (_%hd157417157483%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157416157480%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl157418157485%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl157412157469%_))
                      (let ((_%e157419157488%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl157412157469%_))))
                        (let ((_%tl157421157493%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157419157488%_)))
                              (_%hd157420157491%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157419157488%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd157420157491%_))
                              (let ((_%e157422157496%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd157420157491%_))))
                                (let ((_%tl157424157501%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157422157496%_)))
                                      (_%hd157423157499%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157422157496%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd157423157499%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd157423157499%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl157424157501%_))
                                              (let ((_%e157425157504%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl157424157501%_))))
                                                (let ((_%tl157427157509%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e157425157504%_)))
                                                      (_%hd157426157507%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e157425157504%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl157427157509%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl157421157493%_))
                                                          (let ((_%e157428157512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl157421157493%_))))
                    (let ((_%tl157430157517%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e157428157512%_)))
                          (_%hd157429157515%_
                           (let ()
                             (declare (not safe))
                             (##car _%e157428157512%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl157430157517%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl157406157453%_))
                              (_%__kont160299160300%_
                               _%hd157426157507%_
                               _%hd157417157483%_
                               _%hd157317157695%_)
                              (let ()
                                (declare (not safe))
                                (_%g157311157435%_)))
                          (let () (declare (not safe)) (_%g157311157435%_)))))
                  (let () (declare (not safe)) (_%g157311157435%_)))
              (let () (declare (not safe)) (_%g157311157435%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g157311157435%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g157311157435%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g157311157435%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g157311157435%_)))))
                      (let () (declare (not safe)) (_%g157311157435%_)))
                  (let () (declare (not safe)) (_%g157311157435%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g157311157435%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g157311157435%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g157311157435%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g157311157435%_)))))
                          (let () (declare (not safe)) (_%g157311157435%_)))
                      (let () (declare (not safe)) (_%g157311157435%_)))
                  (let () (declare (not safe)) (_%g157311157435%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g157311157435%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g157311157435%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g157311157435%_))))))))
                 (_%generate1157158%_
                  (lambda (_%args157289%_
                           _%arglen157290%_
                           _%hd157291%_
                           _%body157292%_)
                    (let* ((_%len157294%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd157291%_)))
                           (_%condition157299%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd157291%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen157290%_
                                                (cons _%len157294%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen157290%_ (cons _%len157294%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len157294%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen157290%_
                                                    (cons _%len157294%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen157290%_ (cons _%len157294%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch157301%_
                            (if (_%dispatch-case?157156%_
                                 _%hd157291%_
                                 _%body157292%_)
                                (_%dispatch-case-e157157%_
                                 _%hd157291%_
                                 _%body157292%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self157153%_
                                 _%hd157291%_
                                 _%body157292%_))))
                      (cons _%condition157299%_
                            (cons (cons 'apply
                                        (cons _%dispatch157301%_
                                              (cons _%args157289%_ '())))
                                  '()))))))
          (let* ((_%g157160157188%_
                  (lambda (_%g157161157185%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g157161157185%_))))
                 (_%g157159157286%_
                  (lambda (_%g157161157191%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g157161157191%_))
                        (let ((_%e157164157193%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g157161157191%_))))
                          (let ((_%hd157165157196%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157164157193%_)))
                                (_%tl157166157198%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157164157193%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl157166157198%_))
                                (let ((_g161456_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl157166157198%_
                                          '0))))
                                  (begin
                                    (let ((_g161457_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g161456_)
                                                 (##values-length _g161456_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g161457_ 2)))
                                          (error "Context expects 2 values"
                                                 _g161457_)))
                                    (let ((_%target157167157201%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g161456_ 0)))
                                          (_%tl157169157203%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g161456_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl157169157203%_))
                                          (letrec ((_%loop157170157206%_
                                                    (lambda (_%hd157168157209%_
                                                             _%body157174157211%_
                                                             _%hd157175157212%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd157168157209%_))
                                                          (let ((_%e157171157214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd157168157209%_))))
                    (let ((_%lp-hd157172157217%_
                           (let ()
                             (declare (not safe))
                             (##car _%e157171157214%_)))
                          (_%lp-tl157173157219%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e157171157214%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd157172157217%_))
                          (let ((_%e157178157222%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd157172157217%_))))
                            (let ((_%hd157179157225%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e157178157222%_)))
                                  (_%tl157180157227%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e157178157222%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl157180157227%_))
                                  (let ((_%e157181157230%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl157180157227%_))))
                                    (let ((_%hd157182157233%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e157181157230%_)))
                                          (_%tl157183157235%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e157181157230%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl157183157235%_))
                                          (_%loop157170157206%_
                                           _%lp-tl157173157219%_
                                           (cons _%hd157182157233%_
                                                 _%body157174157211%_)
                                           (cons _%hd157179157225%_
                                                 _%hd157175157212%_))
                                          (_%g157160157188%_
                                           _%g157161157191%_))))
                                  (_%g157160157188%_ _%g157161157191%_))))
                          (_%g157160157188%_ _%g157161157191%_))))
                  (let ((_%body157176157238%_ (reverse _%body157174157211%_))
                        (_%hd157177157239%_ (reverse _%hd157175157212%_)))
                    ((lambda (_%g157162157241%_ _%g157163157242%_)
                       (let ((_%args157261%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen157262%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name157263%_
                              (let ((_%$e157258%_
                                     (let ((__tmp161458
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp161458 _%stx157154%_))))
                                (if _%$e157258%_
                                    _%$e157258%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args157261%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen157262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args157261%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args157261%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp161462
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name157263%_
                                                                (cons _%args157261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp161459
                                  (map (lambda (_%g157264157267%_
                                                _%g157265157269%_)
                                         (_%generate1157158%_
                                          _%args157261%_
                                          _%arglen157262%_
                                          _%g157264157267%_
                                          _%g157265157269%_))
                                       (let ((__tmp161460
                                              (lambda (_%g157271157274%_
                                                       _%g157272157276%_)
                                                (cons _%g157271157274%_
                                                      _%g157272157276%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp161460
                                          '()
                                          _%g157163157242%_))
                                       (let ((__tmp161461
                                              (lambda (_%g157278157281%_
                                                       _%g157279157283%_)
                                                (cons _%g157278157281%_
                                                      _%g157279157283%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp161461
                                          '()
                                          _%g157162157241%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp161462 __tmp161459)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body157176157238%_
                     _%hd157177157239%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop157170157206%_
                                             _%target157167157201%_
                                             '()
                                             '()))
                                          (_%g157160157188%_
                                           _%g157161157191%_)))))
                                (_%g157160157188%_ _%g157161157191%_))))
                        (_%g157160157188%_ _%g157161157191%_)))))
            (_%g157159157286%_ _%stx157154%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self156390%_ _%stx156391%_ _%compiled-body?156392%_)
        (letrec ((_%generate-simple156394%_
                  (lambda (_%hd157138%_ _%body157139%_)
                    (_%coalesce-boolean156395%_
                     (_%simplify-let156396%_
                      (gxc#generate-runtime-simple-let
                       _%self156390%_
                       'let
                       _%hd157138%_
                       _%body157139%_
                       _%compiled-body?156392%_)))))
                 (_%coalesce-boolean156395%_
                  (lambda (_%code156999%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code157000157026%_ _%code156999%_)
                               (_%else157002157034%_
                                (lambda () _%code156999%_))
                               (_%K157004157071%_
                                (lambda (_%expr2157037%_
                                         _%expr1157038%_
                                         _%id157039%_)
                                  (let* ((_%expr2157040157048%_
                                          _%expr2157037%_)
                                         (_%else157042157056%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1157038%_
                                                        (cons _%expr2157037%_
                                                              '())))))
                                         (_%K157044157061%_
                                          (lambda (_%exprs157059%_)
                                            (cons 'or
                                                  (cons _%expr1157038%_
                                                        _%exprs157059%_)))))
                                    (if (pair? _%expr2157040157048%_)
                                        (let ((_%hd157045157064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2157040157048%_)))
                                              (_%tl157046157066%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2157040157048%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd157045157064%_ 'or))
                                              (let ((_%exprs157069%_
                                                     _%tl157046157066%_))
                                                (_%K157044157061%_
                                                 _%exprs157069%_))
                                              (_%else157042157056%_)))
                                        (_%else157042157056%_))))))
                          (if (pair? _%code157000157026%_)
                              (let ((_%hd157005157074%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code157000157026%_)))
                                    (_%tl157006157076%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code157000157026%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd157005157074%_ 'let))
                                    (if (pair? _%tl157006157076%_)
                                        (let ((_%hd157007157079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl157006157076%_)))
                                              (_%tl157008157081%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl157006157076%_))))
                                          (if (pair? _%hd157007157079%_)
                                              (let ((_%hd157019157084%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd157007157079%_)))
                                                    (_%tl157020157086%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd157007157079%_))))
                                                (if (pair? _%hd157019157084%_)
                                                    (let ((_%hd157021157089%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd157019157084%_)))
                                                          (_%tl157022157091%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd157019157084%_))))
                                                      (let ((_%id157094%_
                                                             _%hd157021157089%_))
                                                        (if (pair? _%tl157022157091%_)
                                                            (let ((_%hd157023157096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl157022157091%_)))
                          (_%tl157024157098%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl157022157091%_))))
                      (let ((_%expr1157101%_ _%hd157023157096%_))
                        (if (null? _%tl157024157098%_)
                            (if (null? _%tl157020157086%_)
                                (if (pair? _%tl157008157081%_)
                                    (let ((_%hd157009157103%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl157008157081%_)))
                                          (_%tl157010157105%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl157008157081%_))))
                                      (if (pair? _%hd157009157103%_)
                                          (let ((_%hd157011157108%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd157009157103%_)))
                                                (_%tl157012157110%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd157009157103%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd157011157108%_
                                                         'if))
                                                (if (pair? _%tl157012157110%_)
                                                    (let ((_%hd157013157113%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl157012157110%_)))
                                                          (_%tl157014157115%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl157012157110%_))))
                                                      (if ((lambda (_%g157117157119%_)
                                                             (eq? _%g157117157119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id157094%_))
                   _%hd157013157113%_)
                  (if (pair? _%tl157014157115%_)
                      (let ((_%hd157015157122%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl157014157115%_)))
                            (_%tl157016157124%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl157014157115%_))))
                        (if ((lambda (_%g157126157128%_)
                               (eq? _%g157126157128%_ _%id157094%_))
                             _%hd157015157122%_)
                            (if (pair? _%tl157016157124%_)
                                (let ((_%hd157017157131%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl157016157124%_)))
                                      (_%tl157018157133%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl157016157124%_))))
                                  (let ((_%expr2157136%_ _%hd157017157131%_))
                                    (if (null? _%tl157018157133%_)
                                        (if (null? _%tl157010157105%_)
                                            (_%K157004157071%_
                                             _%expr2157136%_
                                             _%expr1157101%_
                                             _%id157094%_)
                                            (_%else157002157034%_))
                                        (_%else157002157034%_))))
                                (_%else157002157034%_))
                            (_%else157002157034%_)))
                      (_%else157002157034%_))
                  (_%else157002157034%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else157002157034%_))
                                                (_%else157002157034%_)))
                                          (_%else157002157034%_)))
                                    (_%else157002157034%_))
                                (_%else157002157034%_))
                            (_%else157002157034%_))))
                    (_%else157002157034%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else157002157034%_)))
                                              (_%else157002157034%_)))
                                        (_%else157002157034%_))
                                    (_%else157002157034%_)))
                              (_%else157002157034%_)))
                        _%code156999%_)))
                 (_%simplify-let156396%_
                  (lambda (_%code156698%_)
                    (let* ((_%code156699156771%_ _%code156698%_)
                           (_%else156704156779%_ (lambda () _%code156698%_)))
                      (let ((_%K156763156979%_
                             (lambda (_%expr156977%_) _%expr156977%_))
                            (_%K156746156925%_
                             (lambda (_%body156921%_
                                      _%expr156922%_
                                      _%id156923%_)
                               (cons 'let
                                     (cons (cons (cons _%id156923%_
                                                       (cons _%expr156922%_
                                                             '()))
                                                 '())
                                           _%body156921%_))))
                            (_%K156723156849%_
                             (lambda (_%body156843%_
                                      _%expr2156844%_
                                      _%id2156845%_
                                      _%expr1156846%_
                                      _%id1156847%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1156847%_
                                                       (cons _%expr1156846%_
                                                             '()))
                                                 (cons (cons _%id2156845%_
                                                             (cons _%expr2156844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body156843%_))))
                            (_%K156706156788%_
                             (lambda (_%body156783%_
                                      _%bind156784%_
                                      _%expr1156785%_
                                      _%id1156786%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1156786%_
                                                       (cons _%expr1156785%_
                                                             '()))
                                                 _%bind156784%_)
                                           _%body156783%_)))))
                        (if (pair? _%code156699156771%_)
                            (let ((_%tl156765156984%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code156699156771%_)))
                                  (_%hd156764156982%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code156699156771%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd156764156982%_ 'let))
                                  (if (pair? _%tl156765156984%_)
                                      (let ((_%tl156767156989%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl156765156984%_)))
                                            (_%hd156766156987%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl156765156984%_))))
                                        (if (null? _%hd156766156987%_)
                                            (if (pair? _%tl156767156989%_)
                                                (let ((_%tl156769156994%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl156767156989%_)))
                                                      (_%hd156768156992%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl156767156989%_))))
                                                  (if (null? _%tl156769156994%_)
                                                      (let ((_%expr156997%_
                                                             _%hd156768156992%_))
                                                        (_%K156763156979%_
                                                         _%expr156997%_))
                                                      (_%else156704156779%_)))
                                                (_%else156704156779%_))
                                            (if (pair? _%hd156766156987%_)
                                                (let ((_%tl156758156940%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd156766156987%_)))
                                                      (_%hd156757156938%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd156766156987%_))))
                                                  (if (pair? _%hd156757156938%_)
                                                      (let ((_%tl156760156945%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd156757156938%_)))
                    (_%hd156759156943%_
                     (let () (declare (not safe)) (##car _%hd156757156938%_))))
                (if (pair? _%tl156760156945%_)
                    (let ((_%tl156762156952%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl156760156945%_)))
                          (_%hd156761156950%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl156760156945%_))))
                      (if (null? _%tl156762156952%_)
                          (if (null? _%tl156758156940%_)
                              (if (pair? _%tl156767156989%_)
                                  (let ((_%tl156752156959%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl156767156989%_)))
                                        (_%hd156751156957%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl156767156989%_))))
                                    (if (pair? _%hd156751156957%_)
                                        (let ((_%tl156754156964%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd156751156957%_)))
                                              (_%hd156753156962%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd156751156957%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd156753156962%_
                                                       'let))
                                              (if (pair? _%tl156754156964%_)
                                                  (let ((_%tl156756156969%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl156754156964%_)))
                                                        (_%hd156755156967%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl156754156964%_))))
                                                    (if (null? _%hd156755156967%_)
                                                        (if (null? _%tl156752156959%_)
                                                            (let ((_%id156948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd156759156943%_)
                          (_%expr156955%_ _%hd156761156950%_)
                          (_%body156972%_ _%tl156756156969%_))
                      (_%K156746156925%_
                       _%body156972%_
                       _%expr156955%_
                       _%id156948%_))
                    (_%else156704156779%_))
                (if (pair? _%hd156755156967%_)
                    (let ((_%tl156735156898%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd156755156967%_)))
                          (_%hd156734156896%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd156755156967%_))))
                      (if (pair? _%hd156734156896%_)
                          (let ((_%tl156737156903%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd156734156896%_)))
                                (_%hd156736156901%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd156734156896%_))))
                            (if (pair? _%tl156737156903%_)
                                (let ((_%tl156739156910%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl156737156903%_)))
                                      (_%hd156738156908%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl156737156903%_))))
                                  (if (null? _%tl156739156910%_)
                                      (if (null? _%tl156735156898%_)
                                          (if (null? _%tl156752156959%_)
                                              (let ((_%id1156872%_
                                                     _%hd156759156943%_)
                                                    (_%expr1156879%_
                                                     _%hd156761156950%_)
                                                    (_%id2156906%_
                                                     _%hd156736156901%_)
                                                    (_%expr2156913%_
                                                     _%hd156738156908%_)
                                                    (_%body156915%_
                                                     _%tl156756156969%_))
                                                (_%K156723156849%_
                                                 _%body156915%_
                                                 _%expr2156913%_
                                                 _%id2156906%_
                                                 _%expr1156879%_
                                                 _%id1156872%_))
                                              (_%else156704156779%_))
                                          (_%else156704156779%_))
                                      (_%else156704156779%_)))
                                (_%else156704156779%_)))
                          (_%else156704156779%_)))
                    (_%else156704156779%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else156704156779%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd156753156962%_
                                                           'let*))
                                                  (if (pair? _%tl156754156964%_)
                                                      (let ((_%tl156716156832%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl156754156964%_)))
                    (_%hd156715156830%_
                     (let () (declare (not safe)) (##car _%tl156754156964%_))))
                (if (null? _%tl156752156959%_)
                    (let ((_%id1156811%_ _%hd156759156943%_)
                          (_%expr1156818%_ _%hd156761156950%_)
                          (_%bind156835%_ _%hd156715156830%_)
                          (_%body156837%_ _%tl156716156832%_))
                      (_%K156706156788%_
                       _%body156837%_
                       _%bind156835%_
                       _%expr1156818%_
                       _%id1156811%_))
                    (_%else156704156779%_)))
              (_%else156704156779%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else156704156779%_))))
                                        (_%else156704156779%_)))
                                  (_%else156704156779%_))
                              (_%else156704156779%_))
                          (_%else156704156779%_)))
                    (_%else156704156779%_)))
              (_%else156704156779%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else156704156779%_))))
                                      (_%else156704156779%_))
                                  (_%else156704156779%_)))
                            (_%else156704156779%_))))))
                 (_%generate-values156397%_
                  (lambda (_%hd156511%_ _%body156512%_)
                    (let _%lp156514%_ ((_%rest156516%_ _%hd156511%_)
                                       (_%bind156517%_ '())
                                       (_%check156518%_ '())
                                       (_%post156519%_ '()))
                      (let* ((_%__stx160616160617%_ _%rest156516%_)
                             (_%g156522156533%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx160616160617%_)))))
                        (let ((_%__kont160618160619%_
                               (lambda (_%g156524156560%_ _%g156525156561%_)
                                 (let* ((_%__stx160572160573%_
                                         _%g156525156561%_)
                                        (_%g156576156601%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx160572160573%_)))))
                                   (let ((_%__kont160574160575%_
                                          (lambda (_%g156578156674%_
                                                   _%g156579156675%_)
                                            (let ((_%eid156689%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g156579156675%_)))
                                                  (_%expr156690%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self156390%_
                                                      _%g156578156674%_))))
                                              (_%lp156514%_
                                               _%g156524156560%_
                                               (cons (cons _%eid156689%_
                                                           (cons _%expr156690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind156517%_)
                                               _%check156518%_
                                               _%post156519%_))))
                                         (_%__kont160576160577%_
                                          (lambda (_%g156589156622%_
                                                   _%g156590156623%_)
                                            (let* ((_%vals156636%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values156638%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals156636%_
                                                     _%g156590156623%_
                                                     _%g156589156622%_))
                                                   (_%refs156640%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals156636%_
                                                     _%g156590156623%_))
                                                   (_%expr156642%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self156390%_
                                                       _%g156589156622%_))))
                                              (_%lp156514%_
                                               _%g156524156560%_
                                               (cons (cons _%vals156636%_
                                                           (cons _%expr156642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind156517%_)
                                               (cons _%check-values156638%_
                                                     _%check156518%_)
                                               (cons _%refs156640%_
                                                     _%post156519%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx160572160573%_))
                                         (let ((_%e156580156650%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx160572160573%_))))
                                           (let ((_%tl156582156655%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e156580156650%_)))
                                                 (_%hd156581156653%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e156580156650%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd156581156653%_))
                                                 (let ((_%e156583156658%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd156581156653%_))))
                                                   (let ((_%tl156585156663%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e156583156658%_)))
                                                         (_%hd156584156661%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e156583156658%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl156585156663%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl156582156655%_))
                     (let ((_%e156586156666%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl156582156655%_))))
                       (let ((_%tl156588156671%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e156586156666%_)))
                             (_%hd156587156669%_
                              (let ()
                                (declare (not safe))
                                (##car _%e156586156666%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl156588156671%_))
                             (_%__kont160574160575%_
                              _%hd156587156669%_
                              _%hd156584156661%_)
                             (let ()
                               (declare (not safe))
                               (_%g156576156601%_)))))
                     (let () (declare (not safe)) (_%g156576156601%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl156582156655%_))
                     (let ((_%e156594156614%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl156582156655%_))))
                       (let ((_%tl156596156619%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e156594156614%_)))
                             (_%hd156595156617%_
                              (let ()
                                (declare (not safe))
                                (##car _%e156594156614%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl156596156619%_))
                             (_%__kont160576160577%_
                              _%hd156595156617%_
                              _%hd156581156653%_)
                             (let ()
                               (declare (not safe))
                               (_%g156576156601%_)))))
                     (let () (declare (not safe)) (_%g156576156601%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl156582156655%_))
                                                     (let ((_%e156594156614%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl156582156655%_))))
                                                       (let ((_%tl156596156619%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e156594156614%_)))
                     (_%hd156595156617%_
                      (let () (declare (not safe)) (##car _%e156594156614%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl156596156619%_))
                     (_%__kont160576160577%_
                      _%hd156595156617%_
                      _%hd156581156653%_)
                     (let () (declare (not safe)) (_%g156576156601%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g156576156601%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g156576156601%_)))))))
                              (_%__kont160620160621%_
                               (lambda ()
                                 (let* ((_%body156540%_
                                         (if _%compiled-body?156392%_
                                             _%body156512%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self156390%_
                                                _%body156512%_))))
                                        (_%body156542%_
                                         (_%generate-values-post156398%_
                                          _%post156519%_
                                          _%body156540%_))
                                        (_%body156544%_
                                         (_%generate-values-check156399%_
                                          _%check156518%_
                                          _%body156542%_)))
                                   (cons 'let
                                         (cons (reverse _%bind156517%_)
                                               (cons _%body156544%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx160616160617%_))
                              (let ((_%e156526156552%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx160616160617%_))))
                                (let ((_%tl156528156557%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e156526156552%_)))
                                      (_%hd156527156555%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e156526156552%_))))
                                  (_%__kont160618160619%_
                                   _%tl156528156557%_
                                   _%hd156527156555%_)))
                              (_%__kont160620160621%_)))))))
                 (_%generate-values-post156398%_
                  (lambda (_%post156470%_ _%body156471%_)
                    (let _%lp156473%_ ((_%rest156475%_ _%post156470%_)
                                       (_%body156476%_ _%body156471%_))
                      (let* ((_%rest156477156485%_ _%rest156475%_)
                             (_%else156479156493%_ (lambda () _%body156476%_))
                             (_%K156481156499%_
                              (lambda (_%rest156496%_ _%bind156497%_)
                                (_%lp156473%_
                                 _%rest156496%_
                                 (cons 'let
                                       (cons _%bind156497%_
                                             (cons _%body156476%_ '())))))))
                        (if (pair? _%rest156477156485%_)
                            (let ((_%hd156482156502%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest156477156485%_)))
                                  (_%tl156483156504%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest156477156485%_))))
                              (let* ((_%bind156507%_ _%hd156482156502%_)
                                     (_%rest156509%_ _%tl156483156504%_))
                                (_%K156481156499%_
                                 _%rest156509%_
                                 _%bind156507%_)))
                            (_%else156479156493%_))))))
                 (_%generate-values-check156399%_
                  (lambda (_%check156467%_ _%body156468%_)
                    (cons 'begin
                          (let ((__tmp161464 (cons _%body156468%_ '()))
                                (__tmp161463 (reverse _%check156467%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp161464 __tmp161463))))))
          (let* ((_%g156401156418%_
                  (lambda (_%g156402156415%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g156402156415%_))))
                 (_%g156400156464%_
                  (lambda (_%g156402156421%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g156402156421%_))
                        (let ((_%e156405156423%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g156402156421%_))))
                          (let ((_%hd156406156426%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e156405156423%_)))
                                (_%tl156407156428%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e156405156423%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl156407156428%_))
                                (let ((_%e156408156431%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl156407156428%_))))
                                  (let ((_%hd156409156434%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e156408156431%_)))
                                        (_%tl156410156436%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e156408156431%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl156410156436%_))
                                        (let ((_%e156411156439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl156410156436%_))))
                                          (let ((_%hd156412156442%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e156411156439%_)))
                                                (_%tl156413156444%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e156411156439%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl156413156444%_))
                                                ((lambda (_%g156403156447%_
                                                          _%g156404156448%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g156404156448%_)
                                                       (_%generate-simple156394%_
                                                        _%g156404156448%_
                                                        _%g156403156447%_)
                                                       (_%generate-values156397%_
                                                        _%g156404156448%_
                                                        _%g156403156447%_)))
                                                 _%hd156412156442%_
                                                 _%hd156409156434%_)
                                                (_%g156401156418%_
                                                 _%g156402156421%_))))
                                        (_%g156401156418%_
                                         _%g156402156421%_))))
                                (_%g156401156418%_ _%g156402156421%_))))
                        (_%g156401156418%_ _%g156402156421%_)))))
            (_%g156400156464%_ _%stx156391%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self157144%_ _%stx157145%_)
        (let ((_%compiled-body?157147%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self157144%_
           _%stx157145%_
           _%compiled-body?157147%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g161465_
        (let ((_g161466_ (let () (declare (not safe)) (##length _g161465_))))
          (cond ((let () (declare (not safe)) (##fx= _g161466_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g161465_))
                ((let () (declare (not safe)) (##fx= _g161466_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g161465_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g161465_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals156284%_ _%hd156285%_)
        (let _%lp156287%_ ((_%rest156289%_ _%hd156285%_)
                           (_%k156290%_ '0)
                           (_%r156291%_ '()))
          (let* ((_%__stx160630160631%_ _%rest156289%_)
                 (_%g156296156313%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx160630160631%_)))))
            (let ((_%__kont160632160633%_
                   (lambda (_%g156298156376%_)
                     (_%lp156287%_
                      _%g156298156376%_
                      (let () (declare (not safe)) (##fx+ _%k156290%_ '1))
                      _%r156291%_)))
                  (_%__kont160634160635%_
                   (lambda (_%g156303156349%_ _%g156304156350%_)
                     (_%lp156287%_
                      _%g156303156349%_
                      (let () (declare (not safe)) (##fx+ _%k156290%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g156304156350%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals156284%_
                                         _%k156290%_
                                         _%g156303156349%_)
                                        '()))
                            _%r156291%_))))
                  (_%__kont160636160637%_
                   (lambda (_%g156308156325%_)
                     (let ((__tmp161467
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g156308156325%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals156284%_
                                               _%k156290%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp161467 _%r156291%_))))
                  (_%__kont160638160639%_ (lambda () (reverse _%r156291%_))))
              (let ((_%g156294156336%_
                     (lambda ()
                       (let ((_%g156308156325%_ _%__stx160630160631%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g156308156325%_))
                             (_%__kont160636160637%_ _%g156308156325%_)
                             (_%__kont160638160639%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx160630160631%_))
                    (let ((_%e156299156365%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx160630160631%_))))
                      (let ((_%tl156301156370%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e156299156365%_)))
                            (_%hd156300156368%_
                             (let ()
                               (declare (not safe))
                               (##car _%e156299156365%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd156300156368%_))
                            (let ((_%e156302156373%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd156300156368%_))))
                              (if (equal? _%e156302156373%_ '#f)
                                  (_%__kont160632160633%_ _%tl156301156370%_)
                                  (_%__kont160634160635%_
                                   _%tl156301156370%_
                                   _%hd156300156368%_)))
                            (_%__kont160634160635%_
                             _%tl156301156370%_
                             _%hd156300156368%_))))
                    (let () (declare (not safe)) (_%g156294156336%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self155963%_ _%stx155964%_ _%compiled-body?155965%_)
        (letrec ((_%generate-simple155967%_
                  (lambda (_%hd156269%_ _%body156270%_)
                    (gxc#generate-runtime-simple-let
                     _%self155963%_
                     'letrec
                     _%hd156269%_
                     _%body156270%_
                     _%compiled-body?155965%_)))
                 (_%generate-values155968%_
                  (lambda (_%hd156048%_ _%body156049%_)
                    (let _%lp156051%_ ((_%rest156053%_ _%hd156048%_)
                                       (_%bind156054%_ '())
                                       (_%check156055%_ '())
                                       (_%post156056%_ '()))
                      (let* ((_%__stx160704160705%_ _%rest156053%_)
                             (_%g156059156070%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx160704160705%_)))))
                        (let ((_%__kont160706160707%_
                               (lambda (_%g156061156097%_ _%g156062156098%_)
                                 (let* ((_%__stx160660160661%_
                                         _%g156062156098%_)
                                        (_%g156113156138%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx160660160661%_)))))
                                   (let ((_%__kont160662160663%_
                                          (lambda (_%g156115156245%_
                                                   _%g156116156246%_)
                                            (let ((_%eid156260%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g156116156246%_)))
                                                  (_%expr156261%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self155963%_
                                                      _%g156115156245%_))))
                                              (_%lp156051%_
                                               _%g156061156097%_
                                               (cons (cons _%eid156260%_
                                                           (cons _%expr156261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind156054%_)
                                               _%check156055%_
                                               _%post156056%_))))
                                         (_%__kont160664160665%_
                                          (lambda (_%g156126156159%_
                                                   _%g156127156160%_)
                                            (let* ((_%vals156173%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values156175%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals156173%_
                                                     _%g156127156160%_
                                                     _%g156126156159%_))
                                                   (_%refs156177%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals156173%_
                                                     _%g156127156160%_))
                                                   (_%expr156179%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self155963%_
                                                       _%g156126156159%_))))
                                              (_%lp156051%_
                                               _%g156061156097%_
                                               (let ((__tmp161469
                                                      (cons (cons _%vals156173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr156179%_ '()))
                    _%bind156054%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp161468
                                                      (map (lambda (_%e156181156183%_)
                                                             (let* ((_%e156181156185156194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e156181156183%_)
                            (_%E156187156198%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e156181156185156194%_
                                        '([eid _])))
                               '#!void))
                            (_%K156188156203%_
                             (lambda (_%eid156201%_)
                               (cons _%eid156201%_ (cons '#!void '())))))
                       (if (pair? _%e156181156185156194%_)
                           (let ((_%hd156189156206%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e156181156185156194%_)))
                                 (_%tl156190156208%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e156181156185156194%_))))
                             (let ((_%eid156211%_ _%hd156189156206%_))
                               (if (pair? _%tl156190156208%_)
                                   (let ((_%tl156192156213%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl156190156208%_))))
                                     (if (null? _%tl156192156213%_)
                                         (_%K156188156203%_ _%eid156211%_)
                                         (_%E156187156198%_)))
                                   (_%E156187156198%_))))
                           (_%E156187156198%_))))
                   _%refs156177%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp161469
                                                  __tmp161468))
                                               (cons _%check-values156175%_
                                                     _%check156055%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs156177%_
                                                  _%post156056%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx160660160661%_))
                                         (let ((_%e156117156221%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx160660160661%_))))
                                           (let ((_%tl156119156226%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e156117156221%_)))
                                                 (_%hd156118156224%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e156117156221%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd156118156224%_))
                                                 (let ((_%e156120156229%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd156118156224%_))))
                                                   (let ((_%tl156122156234%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e156120156229%_)))
                                                         (_%hd156121156232%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e156120156229%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl156122156234%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl156119156226%_))
                     (let ((_%e156123156237%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl156119156226%_))))
                       (let ((_%tl156125156242%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e156123156237%_)))
                             (_%hd156124156240%_
                              (let ()
                                (declare (not safe))
                                (##car _%e156123156237%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl156125156242%_))
                             (_%__kont160662160663%_
                              _%hd156124156240%_
                              _%hd156121156232%_)
                             (let ()
                               (declare (not safe))
                               (_%g156113156138%_)))))
                     (let () (declare (not safe)) (_%g156113156138%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl156119156226%_))
                     (let ((_%e156131156151%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl156119156226%_))))
                       (let ((_%tl156133156156%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e156131156151%_)))
                             (_%hd156132156154%_
                              (let ()
                                (declare (not safe))
                                (##car _%e156131156151%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl156133156156%_))
                             (_%__kont160664160665%_
                              _%hd156132156154%_
                              _%hd156118156224%_)
                             (let ()
                               (declare (not safe))
                               (_%g156113156138%_)))))
                     (let () (declare (not safe)) (_%g156113156138%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl156119156226%_))
                                                     (let ((_%e156131156151%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl156119156226%_))))
                                                       (let ((_%tl156133156156%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e156131156151%_)))
                     (_%hd156132156154%_
                      (let () (declare (not safe)) (##car _%e156131156151%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl156133156156%_))
                     (_%__kont160664160665%_
                      _%hd156132156154%_
                      _%hd156118156224%_)
                     (let () (declare (not safe)) (_%g156113156138%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g156113156138%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g156113156138%_)))))))
                              (_%__kont160708160709%_
                               (lambda ()
                                 (let* ((_%body156077%_
                                         (if _%compiled-body?155965%_
                                             _%body156049%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self155963%_
                                                _%body156049%_))))
                                        (_%body156079%_
                                         (_%generate-values-post155970%_
                                          _%post156056%_
                                          _%body156077%_))
                                        (_%body156081%_
                                         (_%generate-values-check155969%_
                                          _%check156055%_
                                          _%body156079%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind156054%_)
                                               (cons _%body156081%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx160704160705%_))
                              (let ((_%e156063156089%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx160704160705%_))))
                                (let ((_%tl156065156094%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e156063156089%_)))
                                      (_%hd156064156092%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e156063156089%_))))
                                  (_%__kont160706160707%_
                                   _%tl156065156094%_
                                   _%hd156064156092%_)))
                              (_%__kont160708160709%_)))))))
                 (_%generate-values-check155969%_
                  (lambda (_%check156045%_ _%body156046%_)
                    (cons 'begin
                          (let ((__tmp161471 (cons _%body156046%_ '()))
                                (__tmp161470 (reverse _%check156045%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp161471 __tmp161470)))))
                 (_%generate-values-post155970%_
                  (lambda (_%post156038%_ _%body156039%_)
                    (cons 'begin
                          (let ((__tmp161475 (cons _%body156039%_ '()))
                                (__tmp161472
                                 (let ((__tmp161474
                                        (lambda (_%g156040156042%_)
                                          (cons 'set! _%g156040156042%_)))
                                       (__tmp161473 (reverse _%post156038%_)))
                                   (declare (not safe))
                                   (##map __tmp161474 __tmp161473))))
                            (declare (not safe))
                            (__foldr1 cons __tmp161475 __tmp161472))))))
          (let* ((_%g155972155989%_
                  (lambda (_%g155973155986%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g155973155986%_))))
                 (_%g155971156035%_
                  (lambda (_%g155973155992%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g155973155992%_))
                        (let ((_%e155976155994%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g155973155992%_))))
                          (let ((_%hd155977155997%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e155976155994%_)))
                                (_%tl155978155999%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e155976155994%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl155978155999%_))
                                (let ((_%e155979156002%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl155978155999%_))))
                                  (let ((_%hd155980156005%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e155979156002%_)))
                                        (_%tl155981156007%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e155979156002%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl155981156007%_))
                                        (let ((_%e155982156010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl155981156007%_))))
                                          (let ((_%hd155983156013%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e155982156010%_)))
                                                (_%tl155984156015%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e155982156010%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl155984156015%_))
                                                ((lambda (_%g155974156018%_
                                                          _%g155975156019%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g155975156019%_)
                                                       (_%generate-simple155967%_
                                                        _%g155975156019%_
                                                        _%g155974156018%_)
                                                       (_%generate-values155968%_
                                                        _%g155975156019%_
                                                        _%g155974156018%_)))
                                                 _%hd155983156013%_
                                                 _%hd155980156005%_)
                                                (_%g155972155989%_
                                                 _%g155973155992%_))))
                                        (_%g155972155989%_
                                         _%g155973155992%_))))
                                (_%g155972155989%_ _%g155973155992%_))))
                        (_%g155972155989%_ _%g155973155992%_)))))
            (_%g155971156035%_ _%stx155964%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self156275%_ _%stx156276%_)
        (let ((_%compiled-body?156278%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self156275%_
           _%stx156276%_
           _%compiled-body?156278%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g161476_
        (let ((_g161477_ (let () (declare (not safe)) (##length _g161476_))))
          (cond ((let () (declare (not safe)) (##fx= _g161477_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g161476_))
                ((let () (declare (not safe)) (##fx= _g161477_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g161476_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g161476_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self155544%_ _%stx155545%_)
        (letrec ((_%generate-values155547%_
                  (lambda (_%hd155790%_ _%body155791%_)
                    (let _%lp155793%_ ((_%rest155795%_ _%hd155790%_)
                                       (_%bind155796%_ '()))
                      (let* ((_%rest155797155805%_ _%rest155795%_)
                             (_%else155799155816%_
                              (lambda ()
                                (let ((_%bind155813%_ (reverse _%bind155796%_))
                                      (_%body155814%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self155544%_
                                          _%body155791%_))))
                                  (cons 'letrec*
                                        (cons _%bind155813%_
                                              (cons _%body155814%_ '()))))))
                             (_%K155801155950%_
                              (lambda (_%rest155819%_ _%hd-bind155820%_)
                                (let* ((_%__stx160718160719%_
                                        _%hd-bind155820%_)
                                       (_%g155823155848%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx160718160719%_)))))
                                  (let ((_%__kont160720160721%_
                                         (lambda (_%g155825155929%_
                                                  _%g155826155930%_)
                                           (let ((_%eid155944%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g155826155930%_)))
                                                 (_%expr155945%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self155544%_
                                                     _%g155825155929%_))))
                                             (_%lp155793%_
                                              _%rest155819%_
                                              (cons (cons _%eid155944%_
                                                          (cons _%expr155945%_
                                                                '()))
                                                    _%bind155796%_)))))
                                        (_%__kont160722160723%_
                                         (lambda (_%g155836155869%_
                                                  _%g155837155870%_)
                                           (let* ((_%vals155889%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp155891%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values155893%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp155891%_
                                                    _%g155837155870%_
                                                    _%g155836155869%_))
                                                  (_%refs155895%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals155889%_
                                                    _%g155837155870%_))
                                                  (_%expr155897%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self155544%_
                                                      _%g155836155869%_))))
                                             (_%lp155793%_
                                              _%rest155819%_
                                              (let ((__tmp161478
                                                     (cons (cons _%vals155889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp155891%_
                                                       (cons _%expr155897%_
                                                             '()))
                                                 '())
                                           (cons _%check-values155893%_
                                                 (cons _%tmp155891%_ '()))))
                               '()))
                   _%bind155796%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp161478
                                                 _%refs155895%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx160718160719%_))
                                        (let ((_%e155827155905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx160718160719%_))))
                                          (let ((_%tl155829155910%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e155827155905%_)))
                                                (_%hd155828155908%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e155827155905%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd155828155908%_))
                                                (let ((_%e155830155913%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd155828155908%_))))
                                                  (let ((_%tl155832155918%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e155830155913%_)))
                                                        (_%hd155831155916%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e155830155913%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl155832155918%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl155829155910%_))
                                                            (let ((_%e155833155921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl155829155910%_))))
                      (let ((_%tl155835155926%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e155833155921%_)))
                            (_%hd155834155924%_
                             (let ()
                               (declare (not safe))
                               (##car _%e155833155921%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl155835155926%_))
                            (_%__kont160720160721%_
                             _%hd155834155924%_
                             _%hd155831155916%_)
                            (let ()
                              (declare (not safe))
                              (_%g155823155848%_)))))
                    (let () (declare (not safe)) (_%g155823155848%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl155829155910%_))
                    (let ((_%e155841155861%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl155829155910%_))))
                      (let ((_%tl155843155866%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e155841155861%_)))
                            (_%hd155842155864%_
                             (let ()
                               (declare (not safe))
                               (##car _%e155841155861%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl155843155866%_))
                            (_%__kont160722160723%_
                             _%hd155842155864%_
                             _%hd155828155908%_)
                            (let ()
                              (declare (not safe))
                              (_%g155823155848%_)))))
                    (let () (declare (not safe)) (_%g155823155848%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl155829155910%_))
                                                    (let ((_%e155841155861%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl155829155910%_))))
                                                      (let ((_%tl155843155866%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e155841155861%_)))
                    (_%hd155842155864%_
                     (let () (declare (not safe)) (##car _%e155841155861%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl155843155866%_))
                    (_%__kont160722160723%_
                     _%hd155842155864%_
                     _%hd155828155908%_)
                    (let () (declare (not safe)) (_%g155823155848%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g155823155848%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g155823155848%_))))))))
                        (if (pair? _%rest155797155805%_)
                            (let ((_%hd155802155953%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest155797155805%_)))
                                  (_%tl155803155955%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest155797155805%_))))
                              (let* ((_%hd-bind155958%_ _%hd155802155953%_)
                                     (_%rest155960%_ _%tl155803155955%_))
                                (_%K155801155950%_
                                 _%rest155960%_
                                 _%hd-bind155958%_)))
                            (_%else155799155816%_))))))
                 (_%generate-letrec?155548%_
                  (lambda (_%hd155680%_)
                    (let _%lp155682%_ ((_%rest155684%_ _%hd155680%_))
                      (let* ((_%rest155685155693%_ _%rest155684%_)
                             (_%else155687155701%_ (lambda () '#t))
                             (_%K155689155778%_
                              (lambda (_%rest155704%_ _%hd-bind155705%_)
                                (let* ((_%g155707155724%_
                                        (lambda (_%g155708155721%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g155708155721%_))))
                                       (_%g155706155775%_
                                        (lambda (_%g155708155727%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g155708155727%_))
                                              (let ((_%e155711155729%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g155708155727%_))))
                                                (let ((_%hd155712155732%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e155711155729%_)))
                                                      (_%tl155713155734%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e155711155729%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd155712155732%_))
                                                      (let ((_%e155714155737%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd155712155732%_))))
                (let ((_%hd155715155740%_
                       (let () (declare (not safe)) (##car _%e155714155737%_)))
                      (_%tl155716155742%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e155714155737%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl155716155742%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl155713155734%_))
                          (let ((_%e155717155745%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl155713155734%_))))
                            (let ((_%hd155718155748%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e155717155745%_)))
                                  (_%tl155719155750%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e155717155745%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl155719155750%_))
                                  ((lambda (_%g155709155753%_
                                            _%g155710155754%_)
                                     (if (_%is-lambda-expr?155549%_
                                          _%g155709155753%_)
                                         (_%lp155682%_ _%rest155704%_)
                                         '#f))
                                   _%hd155718155748%_
                                   _%hd155715155740%_)
                                  (_%g155707155724%_ _%g155708155727%_))))
                          (_%g155707155724%_ _%g155708155727%_))
                      (_%g155707155724%_ _%g155708155727%_))))
              (_%g155707155724%_ _%g155708155727%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g155707155724%_
                                               _%g155708155727%_)))))
                                  (_%g155706155775%_ _%hd-bind155705%_)))))
                        (if (pair? _%rest155685155693%_)
                            (let ((_%hd155690155781%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest155685155693%_)))
                                  (_%tl155691155783%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest155685155693%_))))
                              (let* ((_%hd-bind155786%_ _%hd155690155781%_)
                                     (_%rest155788%_ _%tl155691155783%_))
                                (_%K155689155778%_
                                 _%rest155788%_
                                 _%hd-bind155786%_)))
                            (_%else155687155701%_))))))
                 (_%is-lambda-expr?155549%_
                  (lambda (_%expr155617%_)
                    (let* ((_%__stx160762160763%_ _%expr155617%_)
                           (_%g155620155634%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx160762160763%_)))))
                      (let ((_%__kont160764160765%_
                             (lambda (_%g155622155662%_ _%g155623155663%_)
                               '#t))
                            (_%__kont160766160767%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx160762160763%_))
                            (let ((_%e155624155646%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx160762160763%_))))
                              (let ((_%tl155626155651%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e155624155646%_)))
                                    (_%hd155625155649%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e155624155646%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd155625155649%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd155625155649%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl155626155651%_))
                                            (let ((_%e155627155654%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl155626155651%_))))
                                              (let ((_%tl155629155659%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e155627155654%_)))
                                                    (_%hd155628155657%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e155627155654%_))))
                                                (_%__kont160764160765%_
                                                 _%tl155629155659%_
                                                 _%hd155628155657%_)))
                                            (_%__kont160766160767%_))
                                        (_%__kont160766160767%_))
                                    (_%__kont160766160767%_))))
                            (_%__kont160766160767%_)))))))
          (let* ((_%g155551155568%_
                  (lambda (_%g155552155565%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g155552155565%_))))
                 (_%g155550155614%_
                  (lambda (_%g155552155571%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g155552155571%_))
                        (let ((_%e155555155573%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g155552155571%_))))
                          (let ((_%hd155556155576%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e155555155573%_)))
                                (_%tl155557155578%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e155555155573%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl155557155578%_))
                                (let ((_%e155558155581%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl155557155578%_))))
                                  (let ((_%hd155559155584%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e155558155581%_)))
                                        (_%tl155560155586%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e155558155581%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl155560155586%_))
                                        (let ((_%e155561155589%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl155560155586%_))))
                                          (let ((_%hd155562155592%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e155561155589%_)))
                                                (_%tl155563155594%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e155561155589%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl155563155594%_))
                                                ((lambda (_%g155553155597%_
                                                          _%g155554155598%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g155554155598%_)
                                                       (if (_%generate-letrec?155548%_
                                                            _%g155554155598%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self155544%_
                                                            'letrec
                                                            _%g155554155598%_
                                                            _%g155553155597%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self155544%_
                                                            'letrec*
                                                            _%g155554155598%_
                                                            _%g155553155597%_
                                                            '#f))
                                                       (_%generate-values155547%_
                                                        _%g155554155598%_
                                                        _%g155553155597%_)))
                                                 _%hd155562155592%_
                                                 _%hd155559155584%_)
                                                (_%g155551155568%_
                                                 _%g155552155571%_))))
                                        (_%g155551155568%_
                                         _%g155552155571%_))))
                                (_%g155551155568%_ _%g155552155571%_))))
                        (_%g155551155568%_ _%g155552155571%_)))))
            (_%g155550155614%_ _%stx155545%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd155481%_)
        (let _%lp155483%_ ((_%rest155485%_ _%hd155481%_))
          (let* ((_%rest155486155502%_ _%rest155485%_)
                 (_%else155489155510%_ (lambda () '#f)))
            (let ((_%K155492155523%_
                   (lambda (_%rest155521%_) (_%lp155483%_ _%rest155521%_)))
                  (_%K155491155515%_ (lambda () '#t)))
              (let ((_%try-match155488155518%_
                     (lambda ()
                       (if (null? _%rest155486155502%_)
                           (_%K155491155515%_)
                           (_%else155489155510%_)))))
                (if (pair? _%rest155486155502%_)
                    (let ((_%tl155494155528%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest155486155502%_)))
                          (_%hd155493155526%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest155486155502%_))))
                      (if (pair? _%hd155493155526%_)
                          (let ((_%tl155496155533%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd155493155526%_)))
                                (_%hd155495155531%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd155493155526%_))))
                            (if (pair? _%hd155495155531%_)
                                (let ((_%tl155500155536%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd155495155531%_))))
                                  (if (null? _%tl155500155536%_)
                                      (if (pair? _%tl155496155533%_)
                                          (let ((_%tl155498155539%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl155496155533%_))))
                                            (if (null? _%tl155498155539%_)
                                                (let ((_%rest155542%_
                                                       _%tl155494155528%_))
                                                  (_%lp155483%_
                                                   _%rest155542%_))
                                                (_%else155489155510%_)))
                                          (_%else155489155510%_))
                                      (_%else155489155510%_)))
                                (_%else155489155510%_)))
                          (_%else155489155510%_)))
                    (_%try-match155488155518%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self155393%_
               _%form155394%_
               _%hd155395%_
               _%body155396%_
               _%compiled-body?155397%_)
        (letrec ((_%generate1155399%_
                  (lambda (_%bind155438%_)
                    (let* ((_%bind155439155450%_ _%bind155438%_)
                           (_%E155441155453%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind155439155450%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K155442155459%_
                            (lambda (_%expr155456%_ _%id155457%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id155457%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self155393%_
                                             _%expr155456%_))
                                          '())))))
                      (if (pair? _%bind155439155450%_)
                          (let ((_%hd155443155462%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind155439155450%_)))
                                (_%tl155444155464%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind155439155450%_))))
                            (if (pair? _%hd155443155462%_)
                                (let ((_%hd155447155467%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd155443155462%_)))
                                      (_%tl155448155469%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd155443155462%_))))
                                  (let ((_%id155472%_ _%hd155447155467%_))
                                    (if (null? _%tl155448155469%_)
                                        (if (pair? _%tl155444155464%_)
                                            (let ((_%hd155445155474%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl155444155464%_)))
                                                  (_%tl155446155476%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl155444155464%_))))
                                              (let ((_%expr155479%_
                                                     _%hd155445155474%_))
                                                (if (null? _%tl155446155476%_)
                                                    (_%K155442155459%_
                                                     _%expr155479%_
                                                     _%id155472%_)
                                                    (_%E155441155453%_))))
                                            (_%E155441155453%_))
                                        (_%E155441155453%_))))
                                (_%E155441155453%_)))
                          (_%E155441155453%_))))))
          (let* ((_%bind155401%_ (map _%generate1155399%_ _%hd155395%_))
                 (_%body155403%_
                  (if _%compiled-body?155397%_
                      _%body155396%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self155393%_ _%body155396%_))))
                 (_%body155435%_
                  (let* ((_%body155404155412%_ _%body155403%_)
                         (_%else155406155420%_
                          (lambda () (cons _%body155403%_ '())))
                         (_%K155408155425%_
                          (lambda (_%exprs155423%_) _%exprs155423%_)))
                    (if (pair? _%body155404155412%_)
                        (let ((_%hd155409155428%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body155404155412%_)))
                              (_%tl155410155430%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body155404155412%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd155409155428%_ 'begin))
                              (let ((_%exprs155433%_ _%tl155410155430%_))
                                (_%K155408155425%_ _%exprs155433%_))
                              (_%else155406155420%_)))
                        (_%else155406155420%_)))))
            (cons _%form155394%_ (cons _%bind155401%_ _%body155435%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self155293%_ _%stx155294%_)
        (letrec ((_%generate1155296%_
                  (lambda (_%datum155348%_)
                    (if (or (null? _%datum155348%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum155348%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum155348%_))
                            (eof-object? _%datum155348%_))
                        _%datum155348%_
                        (if (uninterned-symbol? _%datum155348%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum155348%_
                               '#t))
                            (if (pair? _%datum155348%_)
                                (cons (_%generate1155296%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum155348%_)))
                                      (_%generate1155296%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum155348%_))))
                                (if (box? _%datum155348%_)
                                    (box (_%generate1155296%_
                                          (unbox _%datum155348%_)))
                                    (if (vector? _%datum155348%_)
                                        (vector-map
                                         _%generate1155296%_
                                         _%datum155348%_)
                                        (if (or (s8vector? _%datum155348%_)
                                                (u8vector? _%datum155348%_)
                                                (s16vector? _%datum155348%_)
                                                (u16vector? _%datum155348%_)
                                                (s32vector? _%datum155348%_)
                                                (u32vector? _%datum155348%_)
                                                (s64vector? _%datum155348%_)
                                                (u64vector? _%datum155348%_)
                                                (f32vector? _%datum155348%_)
                                                (f64vector? _%datum155348%_))
                                            _%datum155348%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx155294%_)))))))))))
          (let* ((_%g155298155311%_
                  (lambda (_%g155299155308%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g155299155308%_))))
                 (_%g155297155345%_
                  (lambda (_%g155299155314%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g155299155314%_))
                        (let ((_%e155301155316%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g155299155314%_))))
                          (let ((_%hd155302155319%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e155301155316%_)))
                                (_%tl155303155321%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e155301155316%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl155303155321%_))
                                (let ((_%e155304155324%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl155303155321%_))))
                                  (let ((_%hd155305155327%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e155304155324%_)))
                                        (_%tl155306155329%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e155304155324%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl155306155329%_))
                                        ((lambda (_%g155300155332%_)
                                           (cons 'quote
                                                 (cons (_%generate1155296%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g155300155332%_)))
                                                       '())))
                                         _%hd155305155327%_)
                                        (_%g155298155311%_
                                         _%g155299155314%_))))
                                (_%g155298155311%_ _%g155299155314%_))))
                        (_%g155298155311%_ _%g155299155314%_)))))
            (_%g155297155345%_ _%stx155294%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self154740%_ _%stx154741%_)
        (letrec ((_%compile-call154743%_
                  (lambda (_%rator155030%_ _%rands155031%_)
                    (let ((_%rator155037%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self154740%_
                              _%rator155030%_)))
                          (_%rands155038%_
                           (map (lambda (_%g155032155034%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self154740%_
                                     _%g155032155034%_)))
                                _%rands155031%_)))
                      (let* ((_%__stx160809160810%_ _%rator155037%_)
                             (_%g155041155093%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx160809160810%_)))))
                        (let ((_%__kont160811160812%_
                               (lambda (_%g155043155213%_
                                        _%g155044155214%_
                                        _%g155045155215%_
                                        _%g155046155216%_)
                                 (if (let ((__tmp161481
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands155038%_)))
                                           (__tmp161479
                                            (length (let ((__tmp161480
                                                           (lambda (_%g155252155255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g155253155257%_)
                     (cons _%g155252155255%_ _%g155253155257%_))))
              (declare (not safe))
              (__foldr1 __tmp161480 '() _%g155045155215%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp161481 __tmp161479))
                                     (let* ((_%id155260%_ _%g155046155216%_)
                                            (_%args155269%_
                                             (let ((__tmp161482
                                                    (lambda (_%g155261155264%_
                                                             _%g155262155266%_)
                                                      (cons _%g155261155264%_
                                                            _%g155262155266%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp161482
                                                '()
                                                _%g155045155215%_)))
                                            (_%body155278%_
                                             (let ((__tmp161483
                                                    (lambda (_%g155270155273%_
                                                             _%g155271155275%_)
                                                      (cons _%g155270155273%_
                                                            _%g155271155275%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp161483
                                                '()
                                                _%g155044155214%_)))
                                            (_%init155280%_
                                             (map list
                                                  _%args155269%_
                                                  _%rands155038%_)))
                                       (cons 'let
                                             (cons _%id155260%_
                                                   (cons _%init155280%_
                                                         _%body155278%_))))
                                     (let ((__tmp161484
                                            (let ((__tmp161485
                                                   (lambda (_%g155282155285%_
                                                            _%g155283155287%_)
                                                     (cons _%g155282155285%_
                                                           _%g155283155287%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp161485
                                               '()
                                               _%g155045155215%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx154741%_
                                        __tmp161484
                                        _%rands155038%_)))))
                              (_%__kont160817160818%_
                               (lambda ()
                                 (cons _%rator155037%_ _%rands155038%_))))
                          (let ((_%__match160876160877%_
                                 (lambda (_%e155047155105%_
                                          _%hd155048155108%_
                                          _%tl155049155110%_
                                          _%e155050155113%_
                                          _%hd155051155116%_
                                          _%tl155052155118%_
                                          _%e155053155121%_
                                          _%hd155054155124%_
                                          _%tl155055155126%_
                                          _%e155056155129%_
                                          _%hd155057155132%_
                                          _%tl155058155134%_
                                          _%e155059155137%_
                                          _%hd155060155140%_
                                          _%tl155061155142%_
                                          _%e155062155145%_
                                          _%hd155063155148%_
                                          _%tl155064155150%_
                                          _%e155065155153%_
                                          _%hd155066155156%_
                                          _%tl155067155158%_
                                          _%__splice160813160814%_
                                          _%target155068155161%_
                                          _%tl155070155163%_)
                                   (letrec ((_%loop155071155166%_
                                             (lambda (_%hd155069155169%_
                                                      _%arg155075155171%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd155069155169%_))
                                                   (let ((_%e155072155173%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd155069155169%_))))
                                                     (let ((_%lp-tl155074155178%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e155072155173%_)))
                                                           (_%lp-hd155073155176%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e155072155173%_))))
                                                       (_%loop155071155166%_
                                                        _%lp-tl155074155178%_
                                                        (cons _%lp-hd155073155176%_
                                                              _%arg155075155171%_))))
                                                   (let ((_%arg155076155181%_
                                                          (reverse _%arg155075155171%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl155067155158%_))
                                                         (let ((_%__splice160815160816%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl155067155158%_
                           '0))))
                   (let ((_%tl155079155185%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice160815160816%_ '1)))
                         (_%target155077155183%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice160815160816%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl155079155185%_))
                         (letrec ((_%loop155080155188%_
                                   (lambda (_%hd155078155191%_
                                            _%body155084155193%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd155078155191%_))
                                         (let ((_%e155081155195%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd155078155191%_))))
                                           (let ((_%lp-tl155083155200%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e155081155195%_)))
                                                 (_%lp-hd155082155198%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e155081155195%_))))
                                             (_%loop155080155188%_
                                              _%lp-tl155083155200%_
                                              (cons _%lp-hd155082155198%_
                                                    _%body155084155193%_))))
                                         (let ((_%body155085155203%_
                                                (reverse _%body155084155193%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl155061155142%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl155055155126%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl155052155118%_))
                                                       (let ((_%e155086155205%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl155052155118%_))))
                 (let ((_%tl155088155210%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e155086155205%_)))
                       (_%hd155087155208%_
                        (let ()
                          (declare (not safe))
                          (##car _%e155086155205%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl155088155210%_))
                       (let ((_%g155043155213%_ _%hd155087155208%_)
                             (_%g155044155214%_ _%body155085155203%_)
                             (_%g155045155215%_ _%arg155076155181%_)
                             (_%g155046155216%_ _%hd155057155132%_))
                         (if (eq? _%g155046155216%_ _%g155043155213%_)
                             (_%__kont160811160812%_
                              _%g155043155213%_
                              _%g155044155214%_
                              _%g155045155215%_
                              _%g155046155216%_)
                             (_%__kont160817160818%_)))
                       (_%__kont160817160818%_))))
               (_%__kont160817160818%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont160817160818%_))
                                               (_%__kont160817160818%_)))))))
                           (_%loop155080155188%_ _%target155077155183%_ '()))
                         (_%__kont160817160818%_))))
                 (_%__kont160817160818%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop155071155166%_
                                      _%target155068155161%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx160809160810%_))
                                (let ((_%e155047155105%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx160809160810%_))))
                                  (let ((_%tl155049155110%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e155047155105%_)))
                                        (_%hd155048155108%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e155047155105%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd155048155108%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd155048155108%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl155049155110%_))
                                                (let ((_%e155050155113%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl155049155110%_))))
                                                  (let ((_%tl155052155118%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e155050155113%_)))
                                                        (_%hd155051155116%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e155050155113%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd155051155116%_))
                                                        (let ((_%e155053155121%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd155051155116%_))))
                  (let ((_%tl155055155126%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e155053155121%_)))
                        (_%hd155054155124%_
                         (let ()
                           (declare (not safe))
                           (##car _%e155053155121%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd155054155124%_))
                        (let ((_%e155056155129%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd155054155124%_))))
                          (let ((_%tl155058155134%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e155056155129%_)))
                                (_%hd155057155132%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e155056155129%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl155058155134%_))
                                (let ((_%e155059155137%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl155058155134%_))))
                                  (let ((_%tl155061155142%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e155059155137%_)))
                                        (_%hd155060155140%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e155059155137%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd155060155140%_))
                                        (let ((_%e155062155145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd155060155140%_))))
                                          (let ((_%tl155064155150%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e155062155145%_)))
                                                (_%hd155063155148%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e155062155145%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd155063155148%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd155063155148%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl155064155150%_))
                                                        (let ((_%e155065155153%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl155064155150%_))))
                  (let ((_%tl155067155158%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e155065155153%_)))
                        (_%hd155066155156%_
                         (let ()
                           (declare (not safe))
                           (##car _%e155065155153%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd155066155156%_))
                        (let ((_%__splice160813160814%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd155066155156%_
                                  '0))))
                          (let ((_%tl155070155163%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice160813160814%_ '1)))
                                (_%target155068155161%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice160813160814%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl155070155163%_))
                                (_%__match160876160877%_
                                 _%e155047155105%_
                                 _%hd155048155108%_
                                 _%tl155049155110%_
                                 _%e155050155113%_
                                 _%hd155051155116%_
                                 _%tl155052155118%_
                                 _%e155053155121%_
                                 _%hd155054155124%_
                                 _%tl155055155126%_
                                 _%e155056155129%_
                                 _%hd155057155132%_
                                 _%tl155058155134%_
                                 _%e155059155137%_
                                 _%hd155060155140%_
                                 _%tl155061155142%_
                                 _%e155062155145%_
                                 _%hd155063155148%_
                                 _%tl155064155150%_
                                 _%e155065155153%_
                                 _%hd155066155156%_
                                 _%tl155067155158%_
                                 _%__splice160813160814%_
                                 _%target155068155161%_
                                 _%tl155070155163%_)
                                (_%__kont160817160818%_))))
                        (_%__kont160817160818%_))))
                (_%__kont160817160818%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont160817160818%_))
                                                (_%__kont160817160818%_))))
                                        (_%__kont160817160818%_))))
                                (_%__kont160817160818%_))))
                        (_%__kont160817160818%_))))
                (_%__kont160817160818%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont160817160818%_))
                                            (_%__kont160817160818%_))
                                        (_%__kont160817160818%_))))
                                (_%__kont160817160818%_)))))))))
          (let* ((_%g154745154768%_
                  (lambda (_%g154746154765%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g154746154765%_))))
                 (_%g154744155027%_
                  (lambda (_%g154746154771%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g154746154771%_))
                        (let ((_%e154749154773%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g154746154771%_))))
                          (let ((_%hd154750154776%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154749154773%_)))
                                (_%tl154751154778%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154749154773%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl154751154778%_))
                                (let ((_%e154752154781%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl154751154778%_))))
                                  (let ((_%hd154753154784%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154752154781%_)))
                                        (_%tl154754154786%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154752154781%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl154754154786%_))
                                        (let ((_g161486_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl154754154786%_
                                                  '0))))
                                          (begin
                                            (let ((_g161487_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g161486_)
                                                         (##values-length
                                                          _g161486_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g161487_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g161487_)))
                                            (let ((_%target154755154789%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g161486_
                                                      0)))
                                                  (_%tl154757154791%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g161486_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl154757154791%_))
                                                  (letrec ((_%loop154758154794%_
                                                            (lambda (_%hd154756154797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand154762154799%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd154756154797%_))
                          (let ((_%e154759154801%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd154756154797%_))))
                            (let ((_%lp-hd154760154804%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e154759154801%_)))
                                  (_%lp-tl154761154806%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e154759154801%_))))
                              (_%loop154758154794%_
                               _%lp-tl154761154806%_
                               (cons _%lp-hd154760154804%_
                                     _%rand154762154799%_))))
                          (let ((_%rand154763154809%_
                                 (reverse _%rand154762154799%_)))
                            ((lambda (_%g154747154811%_ _%g154748154812%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call154743%_
                                    _%g154748154812%_
                                    (let ((__tmp161488
                                           (lambda (_%g154829154832%_
                                                    _%g154830154834%_)
                                             (cons _%g154829154832%_
                                                   _%g154830154834%_))))
                                      (declare (not safe))
                                      (__foldr1
                                       __tmp161488
                                       '()
                                       _%g154747154811%_)))
                                   (let* ((_%__stx160925160926%_
                                           _%g154748154812%_)
                                          (_%g154838154850%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx160925160926%_)))))
                                     (let ((_%__kont160927160928%_
                                            (lambda ()
                                              (let ((_%f154887%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self154740%_
                                                        _%g154748154812%_))))
                                                (if (and (let ((__tmp161489
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f154887%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp161489))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f154887%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp154889%_ ((_%rest154892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp161491
                                                (lambda (_%g155009155012%_
                                                         _%g155010155014%_)
                                                  (cons _%g155009155012%_
                                                        _%g155010155014%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp161491
                                            '()
                                            _%g154747154811%_))))
                               (_%bind154894%_ '())
                               (_%args154895%_ '()))
              (let* ((_%rest154896154904%_ _%rest154892%_)
                     (_%else154898154912%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind154894%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f154887%_
                                                      _%args154895%_)
                                                '()))))))
                     (_%K154900154998%_
                      (lambda (_%rest154915%_ _%e154916%_)
                        (let* ((_%__stx160879160880%_ _%e154916%_)
                               (_%g154921154939%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx160879160880%_)))))
                          (let ((_%__kont160881160882%_
                                 (lambda ()
                                   (_%lp154889%_
                                    _%rest154915%_
                                    _%bind154894%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e154916%_))
                                          _%args154895%_))))
                                (_%__kont160883160884%_
                                 (lambda ()
                                   (_%lp154889%_
                                    _%rest154915%_
                                    _%bind154894%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e154916%_))
                                          _%args154895%_))))
                                (_%__kont160885160886%_
                                 (lambda ()
                                   (let ((_%tmp154946%_
                                          (let ((__tmp161490
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp161490))))
                                     (_%lp154889%_
                                      _%rest154915%_
                                      (cons (cons _%tmp154946%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e154916%_))
                                                        '()))
                                            _%bind154894%_)
                                      (cons _%tmp154946%_ _%args154895%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx160879160880%_))
                                (let ((_%e154923154977%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx160879160880%_))))
                                  (let ((_%tl154925154982%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154923154977%_)))
                                        (_%hd154924154980%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154923154977%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd154924154980%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd154924154980%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl154925154982%_))
                                                (let ((_%e154926154985%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl154925154982%_))))
                                                  (let ((_%tl154928154990%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e154926154985%_)))
                                                        (_%hd154927154988%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e154926154985%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl154928154990%_))
                                                        (_%__kont160881160882%_)
                                                        (_%__kont160885160886%_))))
                                                (_%__kont160885160886%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd154924154980%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl154925154982%_))
                                                    (let ((_%e154932154962%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl154925154982%_))))
                                                      (let ((_%tl154934154967%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e154932154962%_)))
                    (_%hd154933154965%_
                     (let () (declare (not safe)) (##car _%e154932154962%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl154934154967%_))
                    (_%__kont160883160884%_)
                    (_%__kont160885160886%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont160885160886%_))
                                                (_%__kont160885160886%_)))
                                        (_%__kont160885160886%_))))
                                (_%__kont160885160886%_)))))))
                (if (pair? _%rest154896154904%_)
                    (let ((_%hd154901155001%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest154896154904%_)))
                          (_%tl154902155003%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest154896154904%_))))
                      (let* ((_%e155006%_ _%hd154901155001%_)
                             (_%rest155008%_ _%tl154902155003%_))
                        (_%K154900154998%_ _%rest155008%_ _%e155006%_)))
                    (_%else154898154912%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call154743%_
                                                     _%g154748154812%_
                                                     (let ((__tmp161492
                                                            (lambda (_%g155016155019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g155017155021%_)
                      (cons _%g155016155019%_ _%g155017155021%_))))
               (declare (not safe))
               (__foldr1 __tmp161492 '() _%g154747154811%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont160929160930%_
                                            (lambda ()
                                              (_%compile-call154743%_
                                               _%g154748154812%_
                                               (let ((__tmp161493
                                                      (lambda (_%g154856154859%_
                                                               _%g154857154861%_)
                                                        (cons _%g154856154859%_
                                                              _%g154857154861%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp161493
                                                  '()
                                                  _%g154747154811%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx160925160926%_))
                                           (let ((_%e154840154869%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx160925160926%_))))
                                             (let ((_%tl154842154874%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e154840154869%_)))
                                                   (_%hd154841154872%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e154840154869%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd154841154872%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd154841154872%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl154842154874%_))
                                                           (let ((_%e154843154877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl154842154874%_))))
                     (let ((_%tl154845154882%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e154843154877%_)))
                           (_%hd154844154880%_
                            (let ()
                              (declare (not safe))
                              (##car _%e154843154877%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl154845154882%_))
                           (_%__kont160927160928%_)
                           (_%__kont160929160930%_))))
                   (_%__kont160929160930%_))
               (_%__kont160929160930%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont160929160930%_))))
                                           (_%__kont160929160930%_))))))
                             _%rand154763154809%_
                             _%hd154753154784%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop154758154794%_
                                                     _%target154755154789%_
                                                     '()))
                                                  (_%g154745154768%_
                                                   _%g154746154771%_)))))
                                        (_%g154745154768%_
                                         _%g154746154771%_))))
                                (_%g154745154768%_ _%g154746154771%_))))
                        (_%g154745154768%_ _%g154746154771%_)))))
            (_%g154744155027%_ _%stx154741%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self154485%_ _%stx154486%_)
        (let* ((_%__stx160997160998%_ _%stx154486%_)
               (_%g154489154518%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx160997160998%_)))))
          (let ((_%__kont160999161000%_
                 (lambda (_%g154491154584%_ _%g154492154585%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self154485%_
                        _%stx154486%_)
                       (let ((_%f154607%_
                              (let ((__tmp161494
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g154492154585%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self154485%_
                                 __tmp161494))))
                         (let _%lp154609%_ ((_%rest154612%_
                                             (reverse (let ((__tmp161496
                                                             (lambda (_%g154729154732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g154730154734%_)
                       (cons _%g154729154732%_ _%g154730154734%_))))
                (declare (not safe))
                (__foldr1 __tmp161496 '() _%g154491154584%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind154614%_ '())
                                            (_%args154615%_ '()))
                           (let* ((_%rest154616154624%_ _%rest154612%_)
                                  (_%else154618154632%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind154614%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f154607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args154615%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K154620154718%_
                                   (lambda (_%rest154635%_ _%e154636%_)
                                     (let* ((_%__stx160951160952%_ _%e154636%_)
                                            (_%g154641154659%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx160951160952%_)))))
                                       (let ((_%__kont160953160954%_
                                              (lambda ()
                                                (_%lp154609%_
                                                 _%rest154635%_
                                                 _%bind154614%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e154636%_))
                                                       _%args154615%_))))
                                             (_%__kont160955160956%_
                                              (lambda ()
                                                (_%lp154609%_
                                                 _%rest154635%_
                                                 _%bind154614%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e154636%_))
                                                       _%args154615%_))))
                                             (_%__kont160957160958%_
                                              (lambda ()
                                                (let ((_%tmp154666%_
                                                       (let ((__tmp161495
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp161495))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp154609%_
                                                   _%rest154635%_
                                                   (cons (cons _%tmp154666%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e154636%_))
                             '()))
                 _%bind154614%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp154666%_
                                                         _%args154615%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx160951160952%_))
                                             (let ((_%e154643154697%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx160951160952%_))))
                                               (let ((_%tl154645154702%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e154643154697%_)))
                                                     (_%hd154644154700%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e154643154697%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd154644154700%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd154644154700%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl154645154702%_))
                     (let ((_%e154646154705%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl154645154702%_))))
                       (let ((_%tl154648154710%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e154646154705%_)))
                             (_%hd154647154708%_
                              (let ()
                                (declare (not safe))
                                (##car _%e154646154705%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl154648154710%_))
                             (_%__kont160953160954%_)
                             (_%__kont160957160958%_))))
                     (_%__kont160957160958%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd154644154700%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl154645154702%_))
                         (let ((_%e154652154682%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl154645154702%_))))
                           (let ((_%tl154654154687%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e154652154682%_)))
                                 (_%hd154653154685%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e154652154682%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl154654154687%_))
                                 (_%__kont160955160956%_)
                                 (_%__kont160957160958%_))))
                         (_%__kont160957160958%_))
                     (_%__kont160957160958%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont160957160958%_))))
                                             (_%__kont160957160958%_)))))))
                             (if (pair? _%rest154616154624%_)
                                 (let ((_%hd154621154721%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest154616154624%_)))
                                       (_%tl154622154723%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest154616154624%_))))
                                   (let* ((_%e154726%_ _%hd154621154721%_)
                                          (_%rest154728%_ _%tl154622154723%_))
                                     (_%K154620154718%_
                                      _%rest154728%_
                                      _%e154726%_)))
                                 (_%else154618154632%_))))))))
                (_%__kont161003161004%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self154485%_ _%stx154486%_))))
            (let ((_%__match161042161043%_
                   (lambda (_%e154493154530%_
                            _%hd154494154533%_
                            _%tl154495154535%_
                            _%e154496154538%_
                            _%hd154497154541%_
                            _%tl154498154543%_
                            _%e154499154546%_
                            _%hd154500154549%_
                            _%tl154501154551%_
                            _%e154502154554%_
                            _%hd154503154557%_
                            _%tl154504154559%_
                            _%__splice161001161002%_
                            _%target154505154562%_
                            _%tl154507154564%_)
                     (letrec ((_%loop154508154567%_
                               (lambda (_%hd154506154570%_
                                        _%rand154512154572%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd154506154570%_))
                                     (let ((_%e154509154574%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd154506154570%_))))
                                       (let ((_%lp-tl154511154579%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e154509154574%_)))
                                             (_%lp-hd154510154577%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e154509154574%_))))
                                         (_%loop154508154567%_
                                          _%lp-tl154511154579%_
                                          (cons _%lp-hd154510154577%_
                                                _%rand154512154572%_))))
                                     (let ((_%rand154513154582%_
                                            (reverse _%rand154512154572%_)))
                                       (_%__kont160999161000%_
                                        _%rand154513154582%_
                                        _%hd154503154557%_))))))
                       (_%loop154508154567%_ _%target154505154562%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx160997160998%_))
                  (let ((_%e154493154530%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx160997160998%_))))
                    (let ((_%tl154495154535%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e154493154530%_)))
                          (_%hd154494154533%_
                           (let ()
                             (declare (not safe))
                             (##car _%e154493154530%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl154495154535%_))
                          (let ((_%e154496154538%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl154495154535%_))))
                            (let ((_%tl154498154543%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e154496154538%_)))
                                  (_%hd154497154541%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e154496154538%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd154497154541%_))
                                  (let ((_%e154499154546%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd154497154541%_))))
                                    (let ((_%tl154501154551%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e154499154546%_)))
                                          (_%hd154500154549%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e154499154546%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd154500154549%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd154500154549%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl154501154551%_))
                                                  (let ((_%e154502154554%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl154501154551%_))))
                                                    (let ((_%tl154504154559%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e154502154554%_)))
                                                          (_%hd154503154557%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e154502154554%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl154504154559%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl154498154543%_))
                      (let ((_%__splice161001161002%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl154498154543%_
                                '0))))
                        (let ((_%tl154507154564%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice161001161002%_ '1)))
                              (_%target154505154562%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice161001161002%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl154507154564%_))
                              (_%__match161042161043%_
                               _%e154493154530%_
                               _%hd154494154533%_
                               _%tl154495154535%_
                               _%e154496154538%_
                               _%hd154497154541%_
                               _%tl154498154543%_
                               _%e154499154546%_
                               _%hd154500154549%_
                               _%tl154501154551%_
                               _%e154502154554%_
                               _%hd154503154557%_
                               _%tl154504154559%_
                               _%__splice161001161002%_
                               _%target154505154562%_
                               _%tl154507154564%_)
                              (_%__kont161003161004%_))))
                      (_%__kont161003161004%_))
                  (_%__kont161003161004%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont161003161004%_))
                                              (_%__kont161003161004%_))
                                          (_%__kont161003161004%_))))
                                  (_%__kont161003161004%_))))
                          (_%__kont161003161004%_))))
                  (_%__kont161003161004%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self154297%_ _%stx154298%_)
        (letrec ((_%simplify154300%_
                  (lambda (_%code154385%_)
                    (let* ((_%code154386154404%_ _%code154385%_)
                           (_%else154388154412%_ (lambda () _%code154385%_))
                           (_%K154390154448%_
                            (lambda (_%expr154415%_ _%test154416%_)
                              (let* ((_%expr154417154425%_ _%expr154415%_)
                                     (_%else154419154433%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test154416%_
                                                    (cons _%expr154415%_
                                                          '())))))
                                     (_%K154421154438%_
                                      (lambda (_%exprs154436%_)
                                        (cons 'and
                                              (cons _%test154416%_
                                                    _%exprs154436%_)))))
                                (if (pair? _%expr154417154425%_)
                                    (let ((_%hd154422154441%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr154417154425%_)))
                                          (_%tl154423154443%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr154417154425%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd154422154441%_ 'and))
                                          (let ((_%exprs154446%_
                                                 _%tl154423154443%_))
                                            (_%K154421154438%_
                                             _%exprs154446%_))
                                          (_%else154419154433%_)))
                                    (_%else154419154433%_))))))
                      (if (pair? _%code154386154404%_)
                          (let ((_%hd154391154451%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code154386154404%_)))
                                (_%tl154392154453%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code154386154404%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd154391154451%_ 'if))
                                (if (pair? _%tl154392154453%_)
                                    (let ((_%hd154393154456%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl154392154453%_)))
                                          (_%tl154394154458%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl154392154453%_))))
                                      (let ((_%test154461%_
                                             _%hd154393154456%_))
                                        (if (pair? _%tl154394154458%_)
                                            (let ((_%hd154395154463%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl154394154458%_)))
                                                  (_%tl154396154465%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl154394154458%_))))
                                              (let ((_%expr154468%_
                                                     _%hd154395154463%_))
                                                (if (pair? _%tl154396154465%_)
                                                    (let ((_%hd154397154470%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl154396154465%_)))
                                                          (_%tl154398154472%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl154396154465%_))))
                                                      (if (pair? _%hd154397154470%_)
                                                          (let ((_%hd154399154475%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd154397154470%_)))
                        (_%tl154400154477%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd154397154470%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd154399154475%_ 'quote))
                        (if (pair? _%tl154400154477%_)
                            (let ((_%hd154401154480%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl154400154477%_)))
                                  (_%tl154402154482%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl154400154477%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd154401154480%_ '#f))
                                  (if (null? _%tl154402154482%_)
                                      (if (null? _%tl154398154472%_)
                                          (_%K154390154448%_
                                           _%expr154468%_
                                           _%test154461%_)
                                          (_%else154388154412%_))
                                      (_%else154388154412%_))
                                  (_%else154388154412%_)))
                            (_%else154388154412%_))
                        (_%else154388154412%_)))
                  (_%else154388154412%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else154388154412%_))))
                                            (_%else154388154412%_))))
                                    (_%else154388154412%_))
                                (_%else154388154412%_)))
                          (_%else154388154412%_))))))
          (let* ((_%g154302154323%_
                  (lambda (_%g154303154320%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g154303154320%_))))
                 (_%g154301154382%_
                  (lambda (_%g154303154326%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g154303154326%_))
                        (let ((_%e154307154328%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g154303154326%_))))
                          (let ((_%hd154308154331%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154307154328%_)))
                                (_%tl154309154333%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154307154328%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl154309154333%_))
                                (let ((_%e154310154336%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl154309154333%_))))
                                  (let ((_%hd154311154339%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154310154336%_)))
                                        (_%tl154312154341%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154310154336%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl154312154341%_))
                                        (let ((_%e154313154344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl154312154341%_))))
                                          (let ((_%hd154314154347%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e154313154344%_)))
                                                (_%tl154315154349%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e154313154344%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl154315154349%_))
                                                (let ((_%e154316154352%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl154315154349%_))))
                                                  (let ((_%hd154317154355%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e154316154352%_)))
                                                        (_%tl154318154357%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e154316154352%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl154318154357%_))
                                                        ((lambda (_%g154304154360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g154305154361%_
                          _%g154306154362%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify154300%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self154297%_
                                       _%g154306154362%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self154297%_
                                             _%g154305154361%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self154297%_
                                                   _%g154304154360%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp161497
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self154297%_
                                               _%g154306154362%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp161497
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self154297%_
                                            _%g154305154361%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self154297%_
                                                  _%g154304154360%_))
                                               '()))))))
                 _%hd154317154355%_
                 _%hd154314154347%_
                 _%hd154311154339%_)
                (_%g154302154323%_ _%g154303154326%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g154302154323%_
                                                 _%g154303154326%_))))
                                        (_%g154302154323%_
                                         _%g154303154326%_))))
                                (_%g154302154323%_ _%g154303154326%_))))
                        (_%g154302154323%_ _%g154303154326%_)))))
            (_%g154301154382%_ _%stx154298%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self154245%_ _%stx154246%_)
        (let* ((_%g154248154261%_
                (lambda (_%g154249154258%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154249154258%_))))
               (_%g154247154294%_
                (lambda (_%g154249154264%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154249154264%_))
                      (let ((_%e154251154266%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154249154264%_))))
                        (let ((_%hd154252154269%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154251154266%_)))
                              (_%tl154253154271%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154251154266%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154253154271%_))
                              (let ((_%e154254154274%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154253154271%_))))
                                (let ((_%hd154255154277%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154254154274%_)))
                                      (_%tl154256154279%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154254154274%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154256154279%_))
                                      ((lambda (_%g154250154282%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g154250154282%_)))
                                       _%hd154255154277%_)
                                      (_%g154248154261%_ _%g154249154264%_))))
                              (_%g154248154261%_ _%g154249154264%_))))
                      (_%g154248154261%_ _%g154249154264%_)))))
          (_%g154247154294%_ _%stx154246%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self154177%_ _%stx154178%_)
        (let* ((_%g154180154197%_
                (lambda (_%g154181154194%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154181154194%_))))
               (_%g154179154242%_
                (lambda (_%g154181154200%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154181154200%_))
                      (let ((_%e154184154202%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154181154200%_))))
                        (let ((_%hd154185154205%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154184154202%_)))
                              (_%tl154186154207%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154184154202%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154186154207%_))
                              (let ((_%e154187154210%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154186154207%_))))
                                (let ((_%hd154188154213%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154187154210%_)))
                                      (_%tl154189154215%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154187154210%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154189154215%_))
                                      (let ((_%e154190154218%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154189154215%_))))
                                        (let ((_%hd154191154221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154190154218%_)))
                                              (_%tl154192154223%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154190154218%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154192154223%_))
                                              ((lambda (_%g154182154226%_
                                                        _%g154183154227%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g154183154227%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self154177%_
                              _%g154182154226%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd154191154221%_
                                               _%hd154188154213%_)
                                              (_%g154180154197%_
                                               _%g154181154200%_))))
                                      (_%g154180154197%_ _%g154181154200%_))))
                              (_%g154180154197%_ _%g154181154200%_))))
                      (_%g154180154197%_ _%g154181154200%_)))))
          (_%g154179154242%_ _%stx154178%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self153988%_ _%stx153989%_)
        (let* ((_%g153991154008%_
                (lambda (_%g153992154005%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153992154005%_))))
               (_%g153990154174%_
                (lambda (_%g153992154011%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153992154011%_))
                      (let ((_%e153995154013%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153992154011%_))))
                        (let ((_%hd153996154016%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153995154013%_)))
                              (_%tl153997154018%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153995154013%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153997154018%_))
                              (let ((_%e153998154021%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153997154018%_))))
                                (let ((_%hd153999154024%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153998154021%_)))
                                      (_%tl154000154026%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153998154021%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154000154026%_))
                                      (let ((_%e154001154029%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154000154026%_))))
                                        (let ((_%hd154002154032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154001154029%_)))
                                              (_%tl154003154034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154001154029%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154003154034%_))
                                              ((lambda (_%g153993154037%_
                                                        _%g153994154038%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self153988%_ _%g153993154037%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self153988%_
                                  _%g153994154038%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp154053%_ ((_%rest154056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g153994154038%_
                                       (cons _%g153993154037%_ '())))
                                (_%bind154058%_ '())
                                (_%args154059%_ '()))
               (let* ((_%rest154060154068%_ _%rest154056%_)
                      (_%else154062154076%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind154058%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args154059%_)
                                                 '()))))))
                      (_%K154064154162%_
                       (lambda (_%rest154079%_ _%e154080%_)
                         (let* ((_%__stx161045161046%_ _%e154080%_)
                                (_%g154085154103%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx161045161046%_)))))
                           (let ((_%__kont161047161048%_
                                  (lambda ()
                                    (_%lp154053%_
                                     _%rest154079%_
                                     _%bind154058%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e154080%_))
                                           _%args154059%_))))
                                 (_%__kont161049161050%_
                                  (lambda ()
                                    (_%lp154053%_
                                     _%rest154079%_
                                     _%bind154058%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e154080%_))
                                           _%args154059%_))))
                                 (_%__kont161051161052%_
                                  (lambda ()
                                    (let ((_%tmp154110%_
                                           (let ((__tmp161498
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp161498))))
                                      (_%lp154053%_
                                       _%rest154079%_
                                       (cons (cons _%tmp154110%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e154080%_))
                                                         '()))
                                             _%bind154058%_)
                                       (cons _%tmp154110%_ _%args154059%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx161045161046%_))
                                 (let ((_%e154087154141%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx161045161046%_))))
                                   (let ((_%tl154089154146%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e154087154141%_)))
                                         (_%hd154088154144%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e154087154141%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd154088154144%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd154088154144%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl154089154146%_))
                                                 (let ((_%e154090154149%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl154089154146%_))))
                                                   (let ((_%tl154092154154%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e154090154149%_)))
                                                         (_%hd154091154152%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e154090154149%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl154092154154%_))
                                                         (_%__kont161047161048%_)
                                                         (_%__kont161051161052%_))))
                                                 (_%__kont161051161052%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd154088154144%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl154089154146%_))
                                                     (let ((_%e154096154126%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl154089154146%_))))
                                                       (let ((_%tl154098154131%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e154096154126%_)))
                     (_%hd154097154129%_
                      (let () (declare (not safe)) (##car _%e154096154126%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl154098154131%_))
                     (_%__kont161049161050%_)
                     (_%__kont161051161052%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont161051161052%_))
                                                 (_%__kont161051161052%_)))
                                         (_%__kont161051161052%_))))
                                 (_%__kont161051161052%_)))))))
                 (if (pair? _%rest154060154068%_)
                     (let ((_%hd154065154165%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest154060154068%_)))
                           (_%tl154066154167%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest154060154068%_))))
                       (let* ((_%e154170%_ _%hd154065154165%_)
                              (_%rest154172%_ _%tl154066154167%_))
                         (_%K154064154162%_ _%rest154172%_ _%e154170%_)))
                     (_%else154062154076%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd154002154032%_
                                               _%hd153999154024%_)
                                              (_%g153991154008%_
                                               _%g153992154011%_))))
                                      (_%g153991154008%_ _%g153992154011%_))))
                              (_%g153991154008%_ _%g153992154011%_))))
                      (_%g153991154008%_ _%g153992154011%_)))))
          (_%g153990154174%_ _%stx153989%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self153799%_ _%stx153800%_)
        (let* ((_%g153802153819%_
                (lambda (_%g153803153816%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153803153816%_))))
               (_%g153801153985%_
                (lambda (_%g153803153822%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153803153822%_))
                      (let ((_%e153806153824%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153803153822%_))))
                        (let ((_%hd153807153827%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153806153824%_)))
                              (_%tl153808153829%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153806153824%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153808153829%_))
                              (let ((_%e153809153832%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153808153829%_))))
                                (let ((_%hd153810153835%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153809153832%_)))
                                      (_%tl153811153837%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153809153832%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153811153837%_))
                                      (let ((_%e153812153840%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153811153837%_))))
                                        (let ((_%hd153813153843%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153812153840%_)))
                                              (_%tl153814153845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153812153840%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153814153845%_))
                                              ((lambda (_%g153804153848%_
                                                        _%g153805153849%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self153799%_ _%g153804153848%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self153799%_
                                  _%g153805153849%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp153864%_ ((_%rest153867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g153805153849%_
                                       (cons _%g153804153848%_ '())))
                                (_%bind153869%_ '())
                                (_%args153870%_ '()))
               (let* ((_%rest153871153879%_ _%rest153867%_)
                      (_%else153873153887%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind153869%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args153870%_)
                                                 '()))))))
                      (_%K153875153973%_
                       (lambda (_%rest153890%_ _%e153891%_)
                         (let* ((_%__stx161091161092%_ _%e153891%_)
                                (_%g153896153914%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx161091161092%_)))))
                           (let ((_%__kont161093161094%_
                                  (lambda ()
                                    (_%lp153864%_
                                     _%rest153890%_
                                     _%bind153869%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e153891%_))
                                           _%args153870%_))))
                                 (_%__kont161095161096%_
                                  (lambda ()
                                    (_%lp153864%_
                                     _%rest153890%_
                                     _%bind153869%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e153891%_))
                                           _%args153870%_))))
                                 (_%__kont161097161098%_
                                  (lambda ()
                                    (let ((_%tmp153921%_
                                           (let ((__tmp161499
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp161499))))
                                      (_%lp153864%_
                                       _%rest153890%_
                                       (cons (cons _%tmp153921%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e153891%_))
                                                         '()))
                                             _%bind153869%_)
                                       (cons _%tmp153921%_ _%args153870%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx161091161092%_))
                                 (let ((_%e153898153952%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx161091161092%_))))
                                   (let ((_%tl153900153957%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e153898153952%_)))
                                         (_%hd153899153955%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e153898153952%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd153899153955%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd153899153955%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl153900153957%_))
                                                 (let ((_%e153901153960%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl153900153957%_))))
                                                   (let ((_%tl153903153965%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e153901153960%_)))
                                                         (_%hd153902153963%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e153901153960%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl153903153965%_))
                                                         (_%__kont161093161094%_)
                                                         (_%__kont161097161098%_))))
                                                 (_%__kont161097161098%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd153899153955%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl153900153957%_))
                                                     (let ((_%e153907153937%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl153900153957%_))))
                                                       (let ((_%tl153909153942%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e153907153937%_)))
                     (_%hd153908153940%_
                      (let () (declare (not safe)) (##car _%e153907153937%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl153909153942%_))
                     (_%__kont161095161096%_)
                     (_%__kont161097161098%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont161097161098%_))
                                                 (_%__kont161097161098%_)))
                                         (_%__kont161097161098%_))))
                                 (_%__kont161097161098%_)))))))
                 (if (pair? _%rest153871153879%_)
                     (let ((_%hd153876153976%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest153871153879%_)))
                           (_%tl153877153978%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest153871153879%_))))
                       (let* ((_%e153981%_ _%hd153876153976%_)
                              (_%rest153983%_ _%tl153877153978%_))
                         (_%K153875153973%_ _%rest153983%_ _%e153981%_)))
                     (_%else153873153887%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd153813153843%_
                                               _%hd153810153835%_)
                                              (_%g153802153819%_
                                               _%g153803153822%_))))
                                      (_%g153802153819%_ _%g153803153822%_))))
                              (_%g153802153819%_ _%g153803153822%_))))
                      (_%g153802153819%_ _%g153803153822%_)))))
          (_%g153801153985%_ _%stx153800%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self153715%_ _%stx153716%_)
        (let* ((_%g153718153739%_
                (lambda (_%g153719153736%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153719153736%_))))
               (_%g153717153796%_
                (lambda (_%g153719153742%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153719153742%_))
                      (let ((_%e153723153744%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153719153742%_))))
                        (let ((_%hd153724153747%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153723153744%_)))
                              (_%tl153725153749%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153723153744%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153725153749%_))
                              (let ((_%e153726153752%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153725153749%_))))
                                (let ((_%hd153727153755%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153726153752%_)))
                                      (_%tl153728153757%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153726153752%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153728153757%_))
                                      (let ((_%e153729153760%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153728153757%_))))
                                        (let ((_%hd153730153763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153729153760%_)))
                                              (_%tl153731153765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153729153760%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153731153765%_))
                                              (let ((_%e153732153768%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153731153765%_))))
                                                (let ((_%hd153733153771%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153732153768%_)))
                                                      (_%tl153734153773%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153732153768%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl153734153773%_))
                                                      ((lambda (_%g153720153776%_
                                                                _%g153721153777%_
                                                                _%g153722153778%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self153715%_
                                _%g153720153776%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self153715%_
                                      _%g153721153777%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self153715%_
                                            _%g153722153778%_))
                                         (cons ''#f '()))))))
               _%hd153733153771%_
               _%hd153730153763%_
               _%hd153727153755%_)
              (_%g153718153739%_ _%g153719153742%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g153718153739%_
                                               _%g153719153742%_))))
                                      (_%g153718153739%_ _%g153719153742%_))))
                              (_%g153718153739%_ _%g153719153742%_))))
                      (_%g153718153739%_ _%g153719153742%_)))))
          (_%g153717153796%_ _%stx153716%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self153615%_ _%stx153616%_)
        (let* ((_%g153618153643%_
                (lambda (_%g153619153640%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153619153640%_))))
               (_%g153617153712%_
                (lambda (_%g153619153646%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153619153646%_))
                      (let ((_%e153624153648%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153619153646%_))))
                        (let ((_%hd153625153651%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153624153648%_)))
                              (_%tl153626153653%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153624153648%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153626153653%_))
                              (let ((_%e153627153656%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153626153653%_))))
                                (let ((_%hd153628153659%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153627153656%_)))
                                      (_%tl153629153661%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153627153656%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153629153661%_))
                                      (let ((_%e153630153664%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153629153661%_))))
                                        (let ((_%hd153631153667%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153630153664%_)))
                                              (_%tl153632153669%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153630153664%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153632153669%_))
                                              (let ((_%e153633153672%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153632153669%_))))
                                                (let ((_%hd153634153675%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153633153672%_)))
                                                      (_%tl153635153677%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153633153672%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl153635153677%_))
                                                      (let ((_%e153636153680%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl153635153677%_))))
                (let ((_%hd153637153683%_
                       (let () (declare (not safe)) (##car _%e153636153680%_)))
                      (_%tl153638153685%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e153636153680%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl153638153685%_))
                      ((lambda (_%g153620153688%_
                                _%g153621153689%_
                                _%g153622153690%_
                                _%g153623153691%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self153615%_
                                        _%g153621153689%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self153615%_
                                              _%g153620153688%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self153615%_
                                                    _%g153622153690%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self153615%_
                                                          _%g153623153691%_))
                                                       (cons ''#f '())))))))
                       _%hd153637153683%_
                       _%hd153634153675%_
                       _%hd153631153667%_
                       _%hd153628153659%_)
                      (_%g153618153643%_ _%g153619153646%_))))
              (_%g153618153643%_ _%g153619153646%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g153618153643%_
                                               _%g153619153646%_))))
                                      (_%g153618153643%_ _%g153619153646%_))))
                              (_%g153618153643%_ _%g153619153646%_))))
                      (_%g153618153643%_ _%g153619153646%_)))))
          (_%g153617153712%_ _%stx153616%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self153531%_ _%stx153532%_)
        (let* ((_%g153534153555%_
                (lambda (_%g153535153552%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153535153552%_))))
               (_%g153533153612%_
                (lambda (_%g153535153558%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153535153558%_))
                      (let ((_%e153539153560%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153535153558%_))))
                        (let ((_%hd153540153563%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153539153560%_)))
                              (_%tl153541153565%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153539153560%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153541153565%_))
                              (let ((_%e153542153568%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153541153565%_))))
                                (let ((_%hd153543153571%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153542153568%_)))
                                      (_%tl153544153573%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153542153568%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153544153573%_))
                                      (let ((_%e153545153576%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153544153573%_))))
                                        (let ((_%hd153546153579%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153545153576%_)))
                                              (_%tl153547153581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153545153576%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153547153581%_))
                                              (let ((_%e153548153584%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153547153581%_))))
                                                (let ((_%hd153549153587%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153548153584%_)))
                                                      (_%tl153550153589%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153548153584%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl153550153589%_))
                                                      ((lambda (_%g153536153592%_
                                                                _%g153537153593%_
                                                                _%g153538153594%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self153531%_
                                _%g153536153592%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self153531%_
                                      _%g153537153593%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self153531%_
                                            _%g153538153594%_))
                                         (cons ''#f '()))))))
               _%hd153549153587%_
               _%hd153546153579%_
               _%hd153543153571%_)
              (_%g153534153555%_ _%g153535153558%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g153534153555%_
                                               _%g153535153558%_))))
                                      (_%g153534153555%_ _%g153535153558%_))))
                              (_%g153534153555%_ _%g153535153558%_))))
                      (_%g153534153555%_ _%g153535153558%_)))))
          (_%g153533153612%_ _%stx153532%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self153431%_ _%stx153432%_)
        (let* ((_%g153434153459%_
                (lambda (_%g153435153456%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153435153456%_))))
               (_%g153433153528%_
                (lambda (_%g153435153462%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153435153462%_))
                      (let ((_%e153440153464%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153435153462%_))))
                        (let ((_%hd153441153467%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153440153464%_)))
                              (_%tl153442153469%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153440153464%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153442153469%_))
                              (let ((_%e153443153472%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153442153469%_))))
                                (let ((_%hd153444153475%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153443153472%_)))
                                      (_%tl153445153477%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153443153472%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153445153477%_))
                                      (let ((_%e153446153480%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153445153477%_))))
                                        (let ((_%hd153447153483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153446153480%_)))
                                              (_%tl153448153485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153446153480%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153448153485%_))
                                              (let ((_%e153449153488%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153448153485%_))))
                                                (let ((_%hd153450153491%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153449153488%_)))
                                                      (_%tl153451153493%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153449153488%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl153451153493%_))
                                                      (let ((_%e153452153496%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl153451153493%_))))
                (let ((_%hd153453153499%_
                       (let () (declare (not safe)) (##car _%e153452153496%_)))
                      (_%tl153454153501%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e153452153496%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl153454153501%_))
                      ((lambda (_%g153436153504%_
                                _%g153437153505%_
                                _%g153438153506%_
                                _%g153439153507%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self153431%_
                                        _%g153437153505%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self153431%_
                                              _%g153436153504%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self153431%_
                                                    _%g153438153506%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self153431%_
                                                          _%g153439153507%_))
                                                       (cons ''#f '())))))))
                       _%hd153453153499%_
                       _%hd153450153491%_
                       _%hd153447153483%_
                       _%hd153444153475%_)
                      (_%g153434153459%_ _%g153435153462%_))))
              (_%g153434153459%_ _%g153435153462%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g153434153459%_
                                               _%g153435153462%_))))
                                      (_%g153434153459%_ _%g153435153462%_))))
                              (_%g153434153459%_ _%g153435153462%_))))
                      (_%g153434153459%_ _%g153435153462%_)))))
          (_%g153433153528%_ _%stx153432%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self153226%_ _%stx153227%_)
        (let* ((_%g153229153250%_
                (lambda (_%g153230153247%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153230153247%_))))
               (_%g153228153428%_
                (lambda (_%g153230153253%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153230153253%_))
                      (let ((_%e153234153255%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153230153253%_))))
                        (let ((_%hd153235153258%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153234153255%_)))
                              (_%tl153236153260%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153234153255%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153236153260%_))
                              (let ((_%e153237153263%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153236153260%_))))
                                (let ((_%hd153238153266%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153237153263%_)))
                                      (_%tl153239153268%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153237153263%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153239153268%_))
                                      (let ((_%e153240153271%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153239153268%_))))
                                        (let ((_%hd153241153274%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153240153271%_)))
                                              (_%tl153242153276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153240153271%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153242153276%_))
                                              (let ((_%e153243153279%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153242153276%_))))
                                                (let ((_%hd153244153282%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153243153279%_)))
                                                      (_%tl153245153284%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153243153279%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl153245153284%_))
                                                      ((lambda (_%g153231153287%_
                                                                _%g153232153288%_
                                                                _%g153233153289%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self153226%_
                                    _%g153231153287%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self153226%_
                                          _%g153232153288%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp153307%_ ((_%rest153310%_
                                         (cons _%g153232153288%_
                                               (cons _%g153231153287%_ '())))
                                        (_%bind153312%_ '())
                                        (_%args153313%_ '()))
                       (let* ((_%rest153314153322%_ _%rest153310%_)
                              (_%else153316153330%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind153312%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp161500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp161500 _%args153313%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K153318153416%_
                               (lambda (_%rest153333%_ _%e153334%_)
                                 (let* ((_%__stx161137161138%_ _%e153334%_)
                                        (_%g153339153357%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx161137161138%_)))))
                                   (let ((_%__kont161139161140%_
                                          (lambda ()
                                            (_%lp153307%_
                                             _%rest153333%_
                                             _%bind153312%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e153334%_))
                                                   _%args153313%_))))
                                         (_%__kont161141161142%_
                                          (lambda ()
                                            (_%lp153307%_
                                             _%rest153333%_
                                             _%bind153312%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e153334%_))
                                                   _%args153313%_))))
                                         (_%__kont161143161144%_
                                          (lambda ()
                                            (let ((_%tmp153364%_
                                                   (let ((__tmp161501
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp161501))))
                                              (_%lp153307%_
                                               _%rest153333%_
                                               (cons (cons _%tmp153364%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e153334%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind153312%_)
                                               (cons _%tmp153364%_
                                                     _%args153313%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx161137161138%_))
                                         (let ((_%e153341153395%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx161137161138%_))))
                                           (let ((_%tl153343153400%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e153341153395%_)))
                                                 (_%hd153342153398%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e153341153395%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd153342153398%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd153342153398%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl153343153400%_))
                                                         (let ((_%e153344153403%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl153343153400%_))))
                   (let ((_%tl153346153408%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e153344153403%_)))
                         (_%hd153345153406%_
                          (let ()
                            (declare (not safe))
                            (##car _%e153344153403%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl153346153408%_))
                         (_%__kont161139161140%_)
                         (_%__kont161143161144%_))))
                 (_%__kont161143161144%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd153342153398%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl153343153400%_))
                     (let ((_%e153350153380%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl153343153400%_))))
                       (let ((_%tl153352153385%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e153350153380%_)))
                             (_%hd153351153383%_
                              (let ()
                                (declare (not safe))
                                (##car _%e153350153380%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl153352153385%_))
                             (_%__kont161141161142%_)
                             (_%__kont161143161144%_))))
                     (_%__kont161143161144%_))
                 (_%__kont161143161144%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont161143161144%_))))
                                         (_%__kont161143161144%_)))))))
                         (if (pair? _%rest153314153322%_)
                             (let ((_%hd153319153419%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest153314153322%_)))
                                   (_%tl153320153421%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest153314153322%_))))
                               (let* ((_%e153424%_ _%hd153319153419%_)
                                      (_%rest153426%_ _%tl153320153421%_))
                                 (_%K153318153416%_
                                  _%rest153426%_
                                  _%e153424%_)))
                             (_%else153316153330%_))))))
               _%hd153244153282%_
               _%hd153241153274%_
               _%hd153238153266%_)
              (_%g153229153250%_ _%g153230153253%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g153229153250%_
                                               _%g153230153253%_))))
                                      (_%g153229153250%_ _%g153230153253%_))))
                              (_%g153229153250%_ _%g153230153253%_))))
                      (_%g153229153250%_ _%g153230153253%_)))))
          (_%g153228153428%_ _%stx153227%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self153005%_ _%stx153006%_)
        (let* ((_%g153008153033%_
                (lambda (_%g153009153030%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153009153030%_))))
               (_%g153007153223%_
                (lambda (_%g153009153036%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153009153036%_))
                      (let ((_%e153014153038%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153009153036%_))))
                        (let ((_%hd153015153041%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153014153038%_)))
                              (_%tl153016153043%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153014153038%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153016153043%_))
                              (let ((_%e153017153046%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153016153043%_))))
                                (let ((_%hd153018153049%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153017153046%_)))
                                      (_%tl153019153051%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153017153046%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153019153051%_))
                                      (let ((_%e153020153054%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153019153051%_))))
                                        (let ((_%hd153021153057%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153020153054%_)))
                                              (_%tl153022153059%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153020153054%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153022153059%_))
                                              (let ((_%e153023153062%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153022153059%_))))
                                                (let ((_%hd153024153065%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153023153062%_)))
                                                      (_%tl153025153067%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153023153062%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl153025153067%_))
                                                      (let ((_%e153026153070%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl153025153067%_))))
                (let ((_%hd153027153073%_
                       (let () (declare (not safe)) (##car _%e153026153070%_)))
                      (_%tl153028153075%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e153026153070%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl153028153075%_))
                      ((lambda (_%g153010153078%_
                                _%g153011153079%_
                                _%g153012153080%_
                                _%g153013153081%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self153005%_
                                            _%g153011153079%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self153005%_
                                                  _%g153010153078%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self153005%_
                                                        _%g153012153080%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp153102%_ ((_%rest153105%_
                                                 (cons _%g153012153080%_
                                                       (cons _%g153010153078%_
                                                             (cons _%g153011153079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind153107%_ '())
                                                (_%args153108%_ '()))
                               (let* ((_%rest153109153117%_ _%rest153105%_)
                                      (_%else153111153125%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind153107%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp161502 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp161502 _%args153108%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K153113153211%_
                                       (lambda (_%rest153128%_ _%e153129%_)
                                         (let* ((_%__stx161183161184%_
                                                 _%e153129%_)
                                                (_%g153134153152%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx161183161184%_)))))
                                           (let ((_%__kont161185161186%_
                                                  (lambda ()
                                                    (_%lp153102%_
                                                     _%rest153128%_
                                                     _%bind153107%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e153129%_))
                                                           _%args153108%_))))
                                                 (_%__kont161187161188%_
                                                  (lambda ()
                                                    (_%lp153102%_
                                                     _%rest153128%_
                                                     _%bind153107%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e153129%_))
                                                           _%args153108%_))))
                                                 (_%__kont161189161190%_
                                                  (lambda ()
                                                    (let ((_%tmp153159%_
                                                           (let ((__tmp161503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp161503))))
              (_%lp153102%_
               _%rest153128%_
               (cons (cons _%tmp153159%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e153129%_))
                                 '()))
                     _%bind153107%_)
               (cons _%tmp153159%_ _%args153108%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx161183161184%_))
                                                 (let ((_%e153136153190%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx161183161184%_))))
                                                   (let ((_%tl153138153195%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e153136153190%_)))
                                                         (_%hd153137153193%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e153136153190%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd153137153193%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd153137153193%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl153138153195%_))
                         (let ((_%e153139153198%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl153138153195%_))))
                           (let ((_%tl153141153203%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e153139153198%_)))
                                 (_%hd153140153201%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e153139153198%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl153141153203%_))
                                 (_%__kont161185161186%_)
                                 (_%__kont161189161190%_))))
                         (_%__kont161189161190%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd153137153193%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl153138153195%_))
                             (let ((_%e153145153175%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl153138153195%_))))
                               (let ((_%tl153147153180%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e153145153175%_)))
                                     (_%hd153146153178%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e153145153175%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl153147153180%_))
                                     (_%__kont161187161188%_)
                                     (_%__kont161189161190%_))))
                             (_%__kont161189161190%_))
                         (_%__kont161189161190%_)))
                 (_%__kont161189161190%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont161189161190%_)))))))
                                 (if (pair? _%rest153109153117%_)
                                     (let ((_%hd153114153214%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest153109153117%_)))
                                           (_%tl153115153216%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest153109153117%_))))
                                       (let* ((_%e153219%_ _%hd153114153214%_)
                                              (_%rest153221%_
                                               _%tl153115153216%_))
                                         (_%K153113153211%_
                                          _%rest153221%_
                                          _%e153219%_)))
                                     (_%else153111153125%_))))))
                       _%hd153027153073%_
                       _%hd153024153065%_
                       _%hd153021153057%_
                       _%hd153018153049%_)
                      (_%g153008153033%_ _%g153009153036%_))))
              (_%g153008153033%_ _%g153009153036%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g153008153033%_
                                               _%g153009153036%_))))
                                      (_%g153008153033%_ _%g153009153036%_))))
                              (_%g153008153033%_ _%g153009153036%_))))
                      (_%g153008153033%_ _%g153009153036%_)))))
          (_%g153007153223%_ _%stx153006%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self152844%_ _%stx152845%_)
        (letrec ((_%import-set-template152847%_
                  (lambda (_%in152950%_ _%phi152951%_)
                    (let ((_%iphi152953%_
                           (fx+ _%phi152951%_
                                (##direct-structure-ref
                                 _%in152950%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports152954%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in152950%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp152956%_ ((_%rest152958%_ _%imports152954%_)
                                         (_%r152959%_ '()))
                        (let* ((_%rest152960152968%_ _%rest152958%_)
                               (_%else152962152976%_ (lambda () _%r152959%_))
                               (_%K152964152993%_
                                (lambda (_%rest152979%_ _%in152980%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in152980%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi152953%_))
                                          (_%lp152956%_
                                           _%rest152979%_
                                           (cons _%in152980%_ _%r152959%_))
                                          (_%lp152956%_
                                           _%rest152979%_
                                           _%r152959%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in152980%_
                                             'gx#module-import::t))
                                          (let ((_%iphi152984%_
                                                 (fx+ _%phi152951%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in152980%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi152984%_))
                                                (_%lp152956%_
                                                 _%rest152979%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in152980%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r152959%_))
                                                (_%lp152956%_
                                                 _%rest152979%_
                                                 _%r152959%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in152980%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi152987%_
                                                     (fx+ _%iphi152953%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in152980%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi152987%_))
                                                    (_%lp152956%_
                                                     _%rest152979%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in152980%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r152959%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi152987%_))
                                                        (_%lp152956%_
                                                         _%rest152979%_
                                                         (let ((__tmp161504
                                                                (_%import-set-template152847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in152980%_
                         _%iphi152953%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r152959%_ __tmp161504)))
                (_%lp152956%_ _%rest152979%_ _%r152959%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp152956%_
                                               _%rest152979%_
                                               _%r152959%_)))))))
                          (if (pair? _%rest152960152968%_)
                              (let ((_%hd152965152996%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest152960152968%_)))
                                    (_%tl152966152998%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest152960152968%_))))
                                (let* ((_%in153001%_ _%hd152965152996%_)
                                       (_%rest153003%_ _%tl152966152998%_))
                                  (_%K152964152993%_
                                   _%rest153003%_
                                   _%in153001%_)))
                              (_%else152962152976%_))))))))
          (let* ((_%g152849152859%_
                  (lambda (_%g152850152856%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g152850152856%_))))
                 (_%g152848152947%_
                  (lambda (_%g152850152862%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g152850152862%_))
                        (let ((_%e152852152864%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g152850152862%_))))
                          (let ((_%hd152853152867%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152852152864%_)))
                                (_%tl152854152869%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152852152864%_))))
                            ((lambda (_%g152851152872%_)
                               (let ((_%ht152883%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp152885%_ ((_%rest152887%_
                                                     _%g152851152872%_)
                                                    (_%loads152888%_ '()))
                                   (letrec ((_%K152890%_
                                             (lambda (_%ctx152940%_
                                                      _%rest152941%_)
                                               (let ((_%id152943%_
                                                      (##structure-ref
                                                       _%ctx152940%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht152883%_
                                                        _%id152943%_))
                                                     (_%lp152885%_
                                                      _%rest152941%_
                                                      _%loads152888%_)
                                                     (let ((_%rt152945%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id152943%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht152883%_
                                                          _%id152943%_
                                                          _%rt152945%_))
                                                       (_%lp152885%_
                                                        _%rest152941%_
                                                        (cons _%rt152945%_
                                                              _%loads152888%_))))))))
                                     (let* ((_%rest152891152899%_
                                             _%rest152887%_)
                                            (_%else152893152911%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp161506
                                                            (lambda (_%g152906152908%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g152906152908%_)))
                   (__tmp161505 (reverse _%loads152888%_)))
               (declare (not safe))
               (##map __tmp161506 __tmp161505)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K152895152928%_
                                             (lambda (_%rest152914%_
                                                      _%in152915%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in152915%_
                                                      'gx#module-context::t))
                                                   (_%K152890%_
                                                    _%in152915%_
                                                    _%rest152914%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in152915%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in152915%_
                               '3
                               '#f
                               '#f)))
                   (_%K152890%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in152915%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest152914%_)
                   (_%lp152885%_ _%rest152914%_ _%loads152888%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in152915%_
                      'gx#import-set::t))
                   (let ((_%phi152920%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in152915%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi152920%_)
                         (_%K152890%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in152915%_
                             '1
                             '#f
                             '#f))
                          _%rest152914%_)
                         (if (fxpositive? _%phi152920%_)
                             (let ((_%deps152924%_
                                    (_%import-set-template152847%_
                                     _%in152915%_
                                     '0)))
                               (_%lp152885%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest152914%_
                                   _%deps152924%_))
                                _%loads152888%_))
                             (_%lp152885%_ _%rest152914%_ _%loads152888%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx152845%_
                      _%in152915%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest152891152899%_)
                                           (let ((_%hd152896152931%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest152891152899%_)))
                                                 (_%tl152897152933%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest152891152899%_))))
                                             (let* ((_%in152936%_
                                                     _%hd152896152931%_)
                                                    (_%rest152938%_
                                                     _%tl152897152933%_))
                                               (_%K152895152928%_
                                                _%rest152938%_
                                                _%in152936%_)))
                                           (_%else152893152911%_)))))))
                             _%tl152854152869%_)))
                        (_%g152849152859%_ _%g152850152862%_)))))
            (_%g152848152947%_ _%stx152845%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self152658%_ _%stx152659%_)
        (letrec ((_%add-lift!152661%_
                  (lambda (_%expr152842%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr152842%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote152662%_
                  (lambda (_%id152839%_ _%marks152840%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id152839%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks152840%_
                                                        '()))))))))
                 (_%generate-simple152663%_
                  (lambda (_%stxq152834%_)
                    (let ((_%gid152836%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid152837%_
                           (gxc#generate-runtime-identifier _%stxq152834%_)))
                      (_%add-lift!152661%_
                       (cons 'define
                             (cons _%gid152836%_
                                   (cons (_%generate-syntax-quote152662%_
                                          _%qid152837%_
                                          ''())
                                         '()))))
                      (let ((__tmp161507
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp161507 _%stxq152834%_ _%gid152836%_))
                      _%gid152836%_)))
                 (_%generate-serialized152664%_
                  (lambda (_%stxq152824%_ _%marks152825%_)
                    (let* ((_%mark-refs152827%_
                            (map _%generate-mark152665%_ _%marks152825%_))
                           (_%gid152829%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid152831%_
                            (gxc#generate-runtime-identifier _%stxq152824%_)))
                      (_%add-lift!152661%_
                       (cons 'define
                             (cons _%gid152829%_
                                   (cons (_%generate-syntax-quote152662%_
                                          _%qid152831%_
                                          (cons 'list _%mark-refs152827%_))
                                         '()))))
                      (let ((__tmp161508
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp161508 _%stxq152824%_ _%gid152829%_))
                      _%gid152829%_)))
                 (_%generate-mark152665%_
                  (lambda (_%mark152809%_)
                    (let ((_%$e152811%_
                           (let ((__tmp161509
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp161509 _%mark152809%_))))
                      (if _%$e152811%_
                          _%$e152811%_
                          (let* ((_%gid152815%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr152817%_
                                  (_%serialize-mark152666%_ _%mark152809%_))
                                 (_%ctx152819%_
                                  (let ((__tmp161510
                                         (##structure-ref
                                          _%mark152809%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp161510)))
                                 (_%ctx-ref152821%_
                                  (if (eq? _%ctx152819%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref152667%_
                                                               _%ctx152819%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp161511
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp161511
                               _%mark152809%_
                               _%gid152815%_))
                            (_%add-lift!152661%_
                             (cons 'define
                                   (cons _%gid152815%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr152817%_ '()))
                   (cons _%ctx-ref152821%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid152815%_)))))
                 (_%serialize-mark152666%_
                  (lambda (_%mark152757%_)
                    (letrec ((_%quote-e152759%_
                              (lambda (_%sym152807%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym152807%_))
                                    _%sym152807%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym152807%_))))))
                      (let* ((_%mark152760152769%_ _%mark152757%_)
                             (_%E152762152772%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark152760152769%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K152763152784%_
                              (lambda (_%trace152775%_
                                       _%phi152776%_
                                       _%ctx152777%_
                                       _%subst152778%_)
                                (let ((_%subs152780%_
                                       (if _%subst152778%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst152778%_))
                                           '())))
                                  (cons _%phi152776%_
                                        (let ((__tmp161512
                                               (lambda (_%pair152782%_)
                                                 (cons (_%quote-e152759%_
                                                        (car _%pair152782%_))
                                                       (_%quote-e152759%_
                                                        (cdr _%pair152782%_))))))
                                          (declare (not safe))
                                          (##map __tmp161512
                                                 _%subs152780%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark152760152769%_
                               'gx#expander-mark::t))
                            (let* ((_%e152764152787%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark152760152769%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst152790%_ _%e152764152787%_)
                                   (_%e152765152792%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark152760152769%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx152795%_ _%e152765152792%_)
                                   (_%e152766152797%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark152760152769%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi152800%_ _%e152766152797%_)
                                   (_%e152767152802%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark152760152769%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace152805%_ _%e152767152802%_))
                              (_%K152763152784%_
                               _%trace152805%_
                               _%phi152800%_
                               _%ctx152795%_
                               _%subst152790%_))
                            (_%E152762152772%_))))))
                 (_%context-ref152667%_
                  (lambda (_%ctx152744%_)
                    (if (let ((__tmp161513
                               (##structure-ref
                                _%ctx152744%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp161513
                           'gx#module-context::t))
                        (let ((_%ctx-ref152746%_
                               (_%context-ref-nested152669%_ _%ctx152744%_))
                              (_%ctx-origin152747%_
                               (_%context-ref-origin152668%_ _%ctx152744%_))
                              (_%origin152748%_
                               (_%context-ref-origin152668%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin152748%_ _%ctx-origin152747%_)
                              (let ((_%ref152750%_
                                     (_%context-ref-nested152669%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp152752%_ ((_%ref152754%_
                                                    (cdr _%ref152750%_))
                                                   (_%ctx-ref152755%_
                                                    (cdr _%ctx-ref152746%_)))
                                  (if (and (pair? _%ref152754%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref152754%_))
                                                (car _%ctx-ref152755%_)))
                                      (_%lp152752%_
                                       (cdr _%ref152754%_)
                                       (cdr _%ctx-ref152755%_))
                                      (cons '#f _%ctx-ref152755%_))))
                              _%ctx-ref152746%_))
                        (let ((__tmp161514
                               (##structure-ref
                                _%ctx152744%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp161514)))))
                 (_%context-ref-origin152668%_
                  (lambda (_%ctx152736%_)
                    (let _%lp152738%_ ((_%ctx152740%_ _%ctx152736%_))
                      (let ((_%super152742%_
                             (##structure-ref
                              _%ctx152740%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super152742%_
                               'gx#module-context::t))
                            (_%lp152738%_ _%super152742%_)
                            _%ctx152740%_)))))
                 (_%context-ref-nested152669%_
                  (lambda (_%ctx152727%_)
                    (let _%lp152729%_ ((_%ctx152731%_ _%ctx152727%_)
                                       (_%r152732%_ '()))
                      (let ((_%super152734%_
                             (##structure-ref
                              _%ctx152731%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super152734%_
                               'gx#module-context::t))
                            (_%lp152729%_
                             _%super152734%_
                             (cons (car (##structure-ref
                                         _%ctx152731%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r152732%_))
                            (cons (let ((__tmp161515
                                         (##structure-ref
                                          _%ctx152731%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp161515))
                                  _%r152732%_)))))))
          (let* ((_%g152671152684%_
                  (lambda (_%g152672152681%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g152672152681%_))))
                 (_%g152670152724%_
                  (lambda (_%g152672152687%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g152672152687%_))
                        (let ((_%e152674152689%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g152672152687%_))))
                          (let ((_%hd152675152692%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152674152689%_)))
                                (_%tl152676152694%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152674152689%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl152676152694%_))
                                (let ((_%e152677152697%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl152676152694%_))))
                                  (let ((_%hd152678152700%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e152677152697%_)))
                                        (_%tl152679152702%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e152677152697%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl152679152702%_))
                                        ((lambda (_%g152673152705%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g152673152705%_))
                                               (let ((_%$e152718%_
                                                      (let ((__tmp161516
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp161516 _%g152673152705%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e152718%_
                                                     _%$e152718%_
                                                     (let ((_%marks152722%_
                                                            (##direct-structure-ref
                                                             _%g152673152705%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks152722%_)
                                                           (_%generate-simple152663%_
                                                            _%g152673152705%_)
                                                           (_%generate-serialized152664%_
                                                            _%g152673152705%_
                                                            _%marks152722%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g152673152705%_))))
                                         _%hd152678152700%_)
                                        (_%g152671152684%_
                                         _%g152672152687%_))))
                                (_%g152671152684%_ _%g152672152687%_))))
                        (_%g152671152684%_ _%g152672152687%_)))))
            (_%g152670152724%_ _%stx152659%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self152590%_ _%stx152591%_)
        (let* ((_%g152593152610%_
                (lambda (_%g152594152607%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152594152607%_))))
               (_%g152592152655%_
                (lambda (_%g152594152613%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152594152613%_))
                      (let ((_%e152597152615%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152594152613%_))))
                        (let ((_%hd152598152618%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152597152615%_)))
                              (_%tl152599152620%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152597152615%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152599152620%_))
                              (let ((_%e152600152623%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152599152620%_))))
                                (let ((_%hd152601152626%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152600152623%_)))
                                      (_%tl152602152628%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152600152623%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152602152628%_))
                                      (let ((_%e152603152631%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152602152628%_))))
                                        (let ((_%hd152604152634%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152603152631%_)))
                                              (_%tl152605152636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152603152631%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl152605152636%_))
                                              ((lambda (_%g152595152639%_
                                                        _%g152596152640%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g152596152640%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self152590%_
                              _%g152595152639%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd152604152634%_
                                               _%hd152601152626%_)
                                              (_%g152593152610%_
                                               _%g152594152613%_))))
                                      (_%g152593152610%_ _%g152594152613%_))))
                              (_%g152593152610%_ _%g152594152613%_))))
                      (_%g152593152610%_ _%g152594152613%_)))))
          (_%g152592152655%_ _%stx152591%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self152539%_ _%stx152540%_)
        (let* ((_%g152542152552%_
                (lambda (_%g152543152549%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152543152549%_))))
               (_%g152541152587%_
                (lambda (_%g152543152555%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152543152555%_))
                      (let ((_%e152545152557%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152543152555%_))))
                        (let ((_%hd152546152560%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152545152557%_)))
                              (_%tl152547152562%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152545152557%_))))
                          ((lambda (_%g152544152565%_)
                             (let* ((_%c-body152579%_
                                     (map (lambda (_%g152574152576%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self152539%_
                                               _%g152574152576%_)))
                                          _%g152544152565%_))
                                    (_%c-body152584%_
                                     (let ((__tmp161517
                                            (lambda (_%$obj152581%_)
                                              (not (eq? _%$obj152581%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp161517
                                        _%c-body152579%_))))
                               (cons '%#begin _%c-body152584%_)))
                           _%tl152547152562%_)))
                      (_%g152542152552%_ _%g152543152555%_)))))
          (_%g152541152587%_ _%stx152540%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self152444%_ _%stx152445%_)
        (let* ((_%g152447152457%_
                (lambda (_%g152448152454%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152448152454%_))))
               (_%g152446152536%_
                (lambda (_%g152448152460%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152448152460%_))
                      (let ((_%e152450152462%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152448152460%_))))
                        (let ((_%hd152451152465%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152450152462%_)))
                              (_%tl152452152467%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152450152462%_))))
                          ((lambda (_%g152449152470%_)
                             (let* ((_%phi152480%_
                                     (let ((__tmp161518
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp161518 '1)))
                                    (_%block152482%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self152444%_ 'state))
                                      _%phi152480%_))
                                    (_%compiled152485%_
                                     (let ((__tmp161519
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self152444%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g152449152470%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp161519
                                        gx#current-expander-phi
                                        _%phi152480%_)))
                                    (_%g152488152498%_
                                     (lambda (_%g152489152495%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g152489152495%_))))
                                    (_%g152487152533%_
                                     (lambda (_%g152489152501%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g152489152501%_))
                                           (let ((_%e152491152503%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g152489152501%_))))
                                             (let ((_%hd152492152506%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e152491152503%_)))
                                                   (_%tl152493152508%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e152491152503%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd152492152506%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd152492152506%_))
                                                       ((lambda (_%g152490152511%_)
                                                          (let ((_%c-body152528%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj152525%_)
                                   (not (eq? _%$obj152525%_ '#!void)))
                                 _%g152490152511%_)))
                    (if _%block152482%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block152482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body152528%_))
                        (if (null? _%c-body152528%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body152528%_)))))
                _%tl152493152508%_)
               (_%g152488152498%_ _%g152489152501%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g152488152498%_
                                                    _%g152489152501%_))))
                                           (_%g152488152498%_
                                            _%g152489152501%_)))))
                               (_%g152487152533%_ _%compiled152485%_)))
                           _%tl152452152467%_)))
                      (_%g152447152457%_ _%g152448152460%_)))))
          (_%g152446152536%_ _%stx152445%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self152375%_ _%stx152376%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self152375%_ 'state)))
        (let* ((_%g152378152392%_
                (lambda (_%g152379152389%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152379152389%_))))
               (_%g152377152441%_
                (lambda (_%g152379152395%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152379152395%_))
                      (let ((_%e152382152397%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152379152395%_))))
                        (let ((_%hd152383152400%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152382152397%_)))
                              (_%tl152384152402%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152382152397%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152384152402%_))
                              (let ((_%e152385152405%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152384152402%_))))
                                (let ((_%hd152386152408%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152385152405%_)))
                                      (_%tl152387152410%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152385152405%_))))
                                  ((lambda (_%g152380152413%_
                                            _%g152381152414%_)
                                     (let ((_%key152427%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g152381152414%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key152427%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx152376%_
                                              _%g152381152414%_
                                              _%key152427%_)))
                                       (let* ((_%ctx152429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g152381152414%_)))
                                              (_%code152432%_
                                               (let ((__tmp161520
                                                      (lambda ()
                                                        (let ((__tmp161521
                                                               (##structure-ref
                                                                _%ctx152429%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self152375%_
                                                           __tmp161521)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp161520
                                                  gx#current-expander-context
                                                  _%ctx152429%_)))
                                              (_%rt152434%_
                                               (let ((__tmp161522
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp161522
                                                  _%ctx152429%_)))
                                              (_%loader152436%_
                                               (if _%rt152434%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt152434%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid152438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g152381152414%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self152375%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid152438%_
                                                     (cons _%code152432%_
                                                           _%loader152436%_))))))
                                   _%tl152387152410%_
                                   _%hd152386152408%_)))
                              (_%g152378152392%_ _%g152379152395%_))))
                      (_%g152378152392%_ _%g152379152395%_)))))
          (_%g152377152441%_ _%stx152376%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx152362%_ _%context-chain152363%_)
        (let _%lp152365%_ ((_%ctx152367%_ _%ctx152362%_) (_%path152368%_ '()))
          (let ((_%super152370%_
                 (##structure-ref _%ctx152367%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super152370%_ _%context-chain152363%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx152367%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path152368%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super152370%_
                       'gx#module-context::t))
                    (_%lp152365%_
                     _%super152370%_
                     (cons (car (##structure-ref
                                 _%ctx152367%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path152368%_))
                    (cons (let ((__tmp161523
                                 (##structure-ref
                                  _%ctx152367%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp161523))
                          _%path152368%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp152355%_ ((_%ctx152357%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r152358%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx152357%_ 'gx#module-context::t))
              (_%lp152355%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx152357%_ '3 '#f '#f))
               (cons _%ctx152357%_ _%r152358%_))
              _%r152358%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self152120%_ _%stx152121%_)
        (letrec* ((_%context-chain152123%_ (gxc#current-context-chain))
                  (_%make-import-spec152124%_
                   (lambda (_%in152292%_)
                     (let* ((_%in152293152305%_ _%in152292%_)
                            (_%E152295152308%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in152293152305%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K152296152318%_
                             (lambda (_%phi152311%_
                                      _%name152312%_
                                      _%src-name152313%_
                                      _%src-phi152314%_
                                      _%src-key152315%_
                                      _%src-ctx152316%_)
                               (cons _%phi152311%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name152312%_)
                                           (cons _%src-phi152314%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name152313%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in152293152305%_
                              'gx#module-import::t))
                           (let ((_%e152297152321%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in152293152305%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e152297152321%_
                                    'gx#module-export::t))
                                 (let* ((_%e152300152324%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e152297152321%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx152327%_ _%e152300152324%_)
                                        (_%e152301152329%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e152297152321%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key152332%_ _%e152301152329%_)
                                        (_%e152302152334%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e152297152321%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi152337%_ _%e152302152334%_)
                                        (_%e152303152339%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e152297152321%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name152342%_ _%e152303152339%_)
                                        (_%e152298152344%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in152293152305%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name152347%_ _%e152298152344%_)
                                        (_%e152299152349%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in152293152305%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi152352%_ _%e152299152349%_))
                                   (_%K152296152318%_
                                    _%phi152352%_
                                    _%name152347%_
                                    _%src-name152342%_
                                    _%src-phi152337%_
                                    _%src-key152332%_
                                    _%src-ctx152327%_))
                                 (_%E152295152308%_)))
                           (_%E152295152308%_)))))
                  (_%make-import-path152125%_
                   (lambda (_%ctx152290%_)
                     (gxc#generate-meta-import-path
                      _%ctx152290%_
                      _%context-chain152123%_)))
                  (_%make-import-spec-in152126%_
                   (lambda (_%ctx152287%_ _%in152288%_)
                     (cons 'spec:
                           (cons (_%make-import-path152125%_ _%ctx152287%_)
                                 (reverse _%in152288%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self152120%_ 'state)))
          (let* ((_%g152128152138%_
                  (lambda (_%g152129152135%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g152129152135%_))))
                 (_%g152127152284%_
                  (lambda (_%g152129152141%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g152129152141%_))
                        (let ((_%e152131152143%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g152129152141%_))))
                          (let ((_%hd152132152146%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152131152143%_)))
                                (_%tl152133152148%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152131152143%_))))
                            ((lambda (_%g152130152151%_)
                               (let _%lp152162%_ ((_%rest152164%_
                                                   _%g152130152151%_)
                                                  (_%current-src152165%_ '#f)
                                                  (_%current-in152166%_ '())
                                                  (_%r152167%_ '()))
                                 (let* ((_%rest152168152176%_ _%rest152164%_)
                                        (_%else152170152186%_
                                         (lambda ()
                                           (let ((_%r152184%_
                                                  (if _%current-src152165%_
                                                      (cons (_%make-import-spec-in152126%_
                                                             _%current-src152165%_
                                                             _%current-in152166%_)
                                                            _%r152167%_)
                                                      _%r152167%_)))
                                             (cons '%#import
                                                   (reverse _%r152184%_)))))
                                        (_%K152172152272%_
                                         (lambda (_%rest152189%_ _%in152190%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in152190%_
                                                  'gx#module-import::t))
                                               (let* ((_%in152192152199%_
                                                       _%in152190%_)
                                                      (_%E152194152202%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in152192152199%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K152195152210%_
               (lambda (_%src-ctx152205%_)
                 (if (eq? _%current-src152165%_ _%src-ctx152205%_)
                     (_%lp152162%_
                      _%rest152189%_
                      _%current-src152165%_
                      (cons (_%make-import-spec152124%_ _%in152190%_)
                            _%current-in152166%_)
                      _%r152167%_)
                     (if _%current-src152165%_
                         (_%lp152162%_
                          _%rest152189%_
                          _%src-ctx152205%_
                          (cons (_%make-import-spec152124%_ _%in152190%_) '())
                          (cons (_%make-import-spec-in152126%_
                                 _%current-src152165%_
                                 _%current-in152166%_)
                                _%r152167%_))
                         (_%lp152162%_
                          _%rest152189%_
                          _%src-ctx152205%_
                          (cons (_%make-import-spec152124%_ _%in152190%_) '())
                          _%r152167%_)))))
              (_%e152196152213%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in152192152199%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e152196152213%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e152197152216%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e152196152213%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx152219%_ _%e152197152216%_))
               (_%K152195152210%_ _%src-ctx152219%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E152194152202%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in152190%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi152222%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in152190%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src152224%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in152190%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in152264%_
                                                           (let* ((_%g152225152234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path152125%_ _%src152224%_))
                          (_%E152228152238%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g152225152234%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K152230152254%_
                            (lambda (_%path152252%_) _%path152252%_))
                           (_%K152229152244%_
                            (lambda (_%path152242%_)
                              (cons 'in: _%path152242%_))))
                       (if (pair? _%g152225152234%_)
                           (let ((_%tl152232152259%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g152225152234%_)))
                                 (_%hd152231152257%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g152225152234%_))))
                             (if (null? _%tl152232152259%_)
                                 (let ((_%path152262%_ _%hd152231152257%_))
                                   (_%K152230152254%_ _%path152262%_))
                                 (let ((_%path152247%_ _%g152225152234%_))
                                   (_%K152229152244%_ _%path152247%_))))
                           (let ((_%path152247%_ _%g152225152234%_))
                             (_%K152229152244%_ _%path152247%_))))))
                  (_%r152266%_
                   (if _%current-src152165%_
                       (cons (_%make-import-spec-in152126%_
                              _%current-src152165%_
                              _%current-in152166%_)
                             _%r152167%_)
                       _%r152167%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp152162%_
                                                      _%rest152189%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi152222%_)
                                                                _%src-in152264%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi152222%_
                                    (cons _%src-in152264%_ '()))))
                    _%r152266%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in152190%_
                                                          'gx#module-context::t))
                                                       (let ((_%r152270%_
                                                              (if _%current-src152165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in152126%_
                                 _%current-src152165%_
                                 _%current-in152166%_)
                                _%r152167%_)
                          _%r152167%_)))
                 (_%lp152162%_
                  _%rest152189%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path152125%_ _%in152190%_))
                        _%r152270%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest152168152176%_)
                                       (let ((_%hd152173152275%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest152168152176%_)))
                                             (_%tl152174152277%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest152168152176%_))))
                                         (let* ((_%in152280%_
                                                 _%hd152173152275%_)
                                                (_%rest152282%_
                                                 _%tl152174152277%_))
                                           (_%K152172152272%_
                                            _%rest152282%_
                                            _%in152280%_)))
                                       (_%else152170152186%_)))))
                             _%tl152133152148%_)))
                        (_%g152128152138%_ _%g152129152141%_)))))
            (_%g152127152284%_ _%stx152121%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self151930%_ _%stx151931%_)
        (letrec* ((_%context-chain151933%_ (gxc#current-context-chain))
                  (_%make-import-path151934%_
                   (lambda (_%ctx152118%_)
                     (gxc#generate-meta-import-path
                      _%ctx152118%_
                      _%context-chain151933%_))))
          (let* ((_%g151936151946%_
                  (lambda (_%g151937151943%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151937151943%_))))
                 (_%g151935152115%_
                  (lambda (_%g151937151949%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151937151949%_))
                        (let ((_%e151939151951%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151937151949%_))))
                          (let ((_%hd151940151954%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151939151951%_)))
                                (_%tl151941151956%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151939151951%_))))
                            ((lambda (_%g151938151959%_)
                               (let _%lp151970%_ ((_%rest151972%_
                                                   _%g151938151959%_)
                                                  (_%r151973%_ '()))
                                 (let* ((_%rest151974151982%_ _%rest151972%_)
                                        (_%else151976151990%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r151973%_))))
                                        (_%K151978152103%_
                                         (lambda (_%rest151993%_ _%out151994%_)
                                           (let* ((_%out151995152008%_
                                                   _%out151994%_)
                                                  (_%E151998152012%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out151995152008%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K152002152082%_
                                                    (lambda (_%name152078%_
                                                             _%phi152079%_
                                                             _%key152080%_)
                                                      (_%lp151970%_
                                                       _%rest151993%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi152079%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key152080%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name152078%_)
                                             '()))))
                     _%r151973%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K151999152062%_
                                                    (lambda (_%phi152016%_
                                                             _%src152017%_)
                                                      (let* ((_%out152057%_
                                                              (if _%src152017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g152018152027%_
                                              (_%make-import-path151934%_
                                               _%src152017%_))
                                             (_%E152021152031%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g152018152027%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K152023152047%_
                                               (lambda (_%path152045%_)
                                                 _%path152045%_))
                                              (_%K152022152037%_
                                               (lambda (_%path152035%_)
                                                 (cons 'in: _%path152035%_))))
                                          (if (pair? _%g152018152027%_)
                                              (let ((_%tl152025152052%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g152018152027%_)))
                                                    (_%hd152024152050%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g152018152027%_))))
                                                (if (null? _%tl152025152052%_)
                                                    (let ((_%path152055%_
                                                           _%hd152024152050%_))
                                                      (_%K152023152047%_
                                                       _%path152055%_))
                                                    (let ((_%path152040%_
                                                           _%g152018152027%_))
                                                      (_%K152022152037%_
                                                       _%path152040%_))))
                                              (let ((_%path152040%_
                                                     _%g152018152027%_))
                                                (_%K152022152037%_
                                                 _%path152040%_)))))
                                      '()))
                          '#t))
                     (_%out152059%_
                      (if (fxzero? _%phi152016%_)
                          _%out152057%_
                          (cons 'phi:
                                (cons _%phi152016%_
                                      (cons _%out152057%_ '()))))))
                (_%lp151970%_
                 _%rest151993%_
                 (cons _%out152059%_ _%r151973%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match151997152075%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out151995152008%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e152000152065%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out151995152008%_
                               '1
                               '#f
                               '#f)))
                           (_%e152001152070%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out151995152008%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src152068%_ _%e152000152065%_)
                            (_%phi152073%_ _%e152001152070%_))
                        (_%K151999152062%_ _%phi152073%_ _%src152068%_)))
                    (_%E151998152012%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out151995152008%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e152003152085%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out151995152008%_
                        '1
                        '#f
                        '#f)))
                    (_%e152004152088%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out151995152008%_
                        '2
                        '#f
                        '#f)))
                    (_%e152005152093%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out151995152008%_
                        '3
                        '#f
                        '#f)))
                    (_%e152006152098%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out151995152008%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key152091%_ _%e152004152088%_)
                     (_%phi152096%_ _%e152005152093%_)
                     (_%name152101%_ _%e152006152098%_))
                 (_%K152002152082%_
                  _%name152101%_
                  _%phi152096%_
                  _%key152091%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match151997152075%_))))))))
                                   (if (pair? _%rest151974151982%_)
                                       (let ((_%hd151979152106%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest151974151982%_)))
                                             (_%tl151980152108%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest151974151982%_))))
                                         (let* ((_%out152111%_
                                                 _%hd151979152106%_)
                                                (_%rest152113%_
                                                 _%tl151980152108%_))
                                           (_%K151978152103%_
                                            _%rest152113%_
                                            _%out152111%_)))
                                       (_%else151976151990%_)))))
                             _%tl151941151956%_)))
                        (_%g151936151946%_ _%g151937151949%_)))))
            (_%g151935152115%_ _%stx151931%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self151891%_ _%stx151892%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self151891%_ 'state)))
        (let* ((_%g151894151904%_
                (lambda (_%g151895151901%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151895151901%_))))
               (_%g151893151927%_
                (lambda (_%g151895151907%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151895151907%_))
                      (let ((_%e151897151909%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151895151907%_))))
                        (let ((_%hd151898151912%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151897151909%_)))
                              (_%tl151899151914%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151897151909%_))))
                          ((lambda (_%g151896151917%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g151896151917%_)))
                           _%tl151899151914%_)))
                      (_%g151894151904%_ _%g151895151907%_)))))
          (_%g151893151927%_ _%stx151892%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self151766%_ _%stx151767%_)
        (letrec ((_%generate1151769%_
                  (lambda (_%id151886%_ _%eid151887%_)
                    (let ((_%eid151889%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid151887%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid151889%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx151767%_
                             _%eid151889%_)))
                      (cons (gxc#generate-runtime-identifier _%id151886%_)
                            (cons _%eid151889%_ '()))))))
          (let* ((_%g151771151799%_
                  (lambda (_%g151772151796%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151772151796%_))))
                 (_%g151770151883%_
                  (lambda (_%g151772151802%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151772151802%_))
                        (let ((_%e151775151804%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151772151802%_))))
                          (let ((_%hd151776151807%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151775151804%_)))
                                (_%tl151777151809%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151775151804%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl151777151809%_))
                                (let ((_g161524_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl151777151809%_
                                          '0))))
                                  (begin
                                    (let ((_g161525_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g161524_)
                                                 (##values-length _g161524_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g161525_ 2)))
                                          (error "Context expects 2 values"
                                                 _g161525_)))
                                    (let ((_%target151778151812%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g161524_ 0)))
                                          (_%tl151780151814%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g161524_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl151780151814%_))
                                          (letrec ((_%loop151781151817%_
                                                    (lambda (_%hd151779151820%_
                                                             _%eid151785151822%_
                                                             _%id151786151823%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd151779151820%_))
                                                          (let ((_%e151782151825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd151779151820%_))))
                    (let ((_%lp-hd151783151828%_
                           (let ()
                             (declare (not safe))
                             (##car _%e151782151825%_)))
                          (_%lp-tl151784151830%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e151782151825%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd151783151828%_))
                          (let ((_%e151789151833%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd151783151828%_))))
                            (let ((_%hd151790151836%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e151789151833%_)))
                                  (_%tl151791151838%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e151789151833%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl151791151838%_))
                                  (let ((_%e151792151841%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl151791151838%_))))
                                    (let ((_%hd151793151844%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e151792151841%_)))
                                          (_%tl151794151846%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e151792151841%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl151794151846%_))
                                          (_%loop151781151817%_
                                           _%lp-tl151784151830%_
                                           (cons _%hd151793151844%_
                                                 _%eid151785151822%_)
                                           (cons _%hd151790151836%_
                                                 _%id151786151823%_))
                                          (_%g151771151799%_
                                           _%g151772151802%_))))
                                  (_%g151771151799%_ _%g151772151802%_))))
                          (_%g151771151799%_ _%g151772151802%_))))
                  (let ((_%eid151787151849%_ (reverse _%eid151785151822%_))
                        (_%id151788151850%_ (reverse _%id151786151823%_)))
                    ((lambda (_%g151773151852%_ _%g151774151853%_)
                       (cons '%#extern
                             (map _%generate1151769%_
                                  (let ((__tmp161526
                                         (lambda (_%g151868151871%_
                                                  _%g151869151873%_)
                                           (cons _%g151868151871%_
                                                 _%g151869151873%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp161526
                                     '()
                                     _%g151774151853%_))
                                  (let ((__tmp161527
                                         (lambda (_%g151875151878%_
                                                  _%g151876151880%_)
                                           (cons _%g151875151878%_
                                                 _%g151876151880%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp161527
                                     '()
                                     _%g151773151852%_)))))
                     _%eid151787151849%_
                     _%id151788151850%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop151781151817%_
                                             _%target151778151812%_
                                             '()
                                             '()))
                                          (_%g151771151799%_
                                           _%g151772151802%_)))))
                                (_%g151771151799%_ _%g151772151802%_))))
                        (_%g151771151799%_ _%g151772151802%_)))))
            (_%g151770151883%_ _%stx151767%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self151556%_ _%stx151557%_)
        (letrec ((_%generate1151559%_
                  (lambda (_%id151761%_)
                    (let ((_%eid151763%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id151761%_)))
                          (_%ident151764%_
                           (gxc#generate-runtime-identifier _%id151761%_)))
                      (cons '%#define-runtime
                            (cons _%ident151764%_ (cons _%eid151763%_ '()))))))
                 (_%generate*151560%_
                  (lambda (_%all151729%_)
                    (let* ((_%all151730151738%_ _%all151729%_)
                           (_%else151732151746%_
                            (lambda () (cons '%#begin _%all151729%_)))
                           (_%K151734151751%_
                            (lambda (_%one151749%_) _%one151749%_)))
                      (if (pair? _%all151730151738%_)
                          (let ((_%hd151735151754%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all151730151738%_)))
                                (_%tl151736151756%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all151730151738%_))))
                            (let ((_%one151759%_ _%hd151735151754%_))
                              (if (null? _%tl151736151756%_)
                                  (_%K151734151751%_ _%one151759%_)
                                  (_%else151732151746%_))))
                          (_%else151732151746%_))))))
          (let* ((_%g151562151579%_
                  (lambda (_%g151563151576%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151563151576%_))))
                 (_%g151561151726%_
                  (lambda (_%g151563151582%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151563151582%_))
                        (let ((_%e151566151584%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151563151582%_))))
                          (let ((_%hd151567151587%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151566151584%_)))
                                (_%tl151568151589%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151566151584%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl151568151589%_))
                                (let ((_%e151569151592%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl151568151589%_))))
                                  (let ((_%hd151570151595%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151569151592%_)))
                                        (_%tl151571151597%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151569151592%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl151571151597%_))
                                        (let ((_%e151572151600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl151571151597%_))))
                                          (let ((_%hd151573151603%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151572151600%_)))
                                                (_%tl151574151605%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151572151600%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl151574151605%_))
                                                ((lambda (_%g151564151608%_
                                                          _%g151565151609%_)
                                                   (let _%lp151625%_ ((_%rest151627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g151565151609%_)
                              (_%r151628%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx161262161263%_
                                                             _%rest151627%_)
                                                            (_%g151633151650%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx161262161263%_)))))
               (let ((_%__kont161264161265%_
                      (lambda (_%g151635151713%_)
                        (_%lp151625%_ _%g151635151713%_ _%r151628%_)))
                     (_%__kont161266161267%_
                      (lambda (_%g151640151686%_ _%g151641151687%_)
                        (_%lp151625%_
                         _%g151640151686%_
                         (cons (_%generate1151559%_ _%g151641151687%_)
                               _%r151628%_))))
                     (_%__kont161268161269%_
                      (lambda (_%g151645151662%_)
                        (_%generate*151560%_
                         (let ((__tmp161528
                                (cons (_%generate1151559%_ _%g151645151662%_)
                                      '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp161528 _%r151628%_)))))
                     (_%__kont161270161271%_
                      (lambda () (_%generate*151560%_ (reverse _%r151628%_)))))
                 (let ((_%g151631151673%_
                        (lambda ()
                          (let ((_%g151645151662%_ _%__stx161262161263%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g151645151662%_))
                                (_%__kont161268161269%_ _%g151645151662%_)
                                (_%__kont161270161271%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx161262161263%_))
                       (let ((_%e151636151702%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx161262161263%_))))
                         (let ((_%tl151638151707%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e151636151702%_)))
                               (_%hd151637151705%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e151636151702%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd151637151705%_))
                               (let ((_%e151639151710%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd151637151705%_))))
                                 (if (equal? _%e151639151710%_ '#f)
                                     (_%__kont161264161265%_
                                      _%tl151638151707%_)
                                     (_%__kont161266161267%_
                                      _%tl151638151707%_
                                      _%hd151637151705%_)))
                               (_%__kont161266161267%_
                                _%tl151638151707%_
                                _%hd151637151705%_))))
                       (let () (declare (not safe)) (_%g151631151673%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd151573151603%_
                                                 _%hd151570151595%_)
                                                (_%g151562151579%_
                                                 _%g151563151582%_))))
                                        (_%g151562151579%_
                                         _%g151563151582%_))))
                                (_%g151562151579%_ _%g151563151582%_))))
                        (_%g151562151579%_ _%g151563151582%_)))))
            (_%g151561151726%_ _%stx151557%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self151453%_ _%stx151454%_)
        (let* ((_%g151456151473%_
                (lambda (_%g151457151470%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151457151470%_))))
               (_%g151455151553%_
                (lambda (_%g151457151476%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151457151476%_))
                      (let ((_%e151460151478%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151457151476%_))))
                        (let ((_%hd151461151481%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151460151478%_)))
                              (_%tl151462151483%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151460151478%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151462151483%_))
                              (let ((_%e151463151486%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151462151483%_))))
                                (let ((_%hd151464151489%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151463151486%_)))
                                      (_%tl151465151491%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151463151486%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151465151491%_))
                                      (let ((_%e151466151494%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151465151491%_))))
                                        (let ((_%hd151467151497%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151466151494%_)))
                                              (_%tl151468151499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151466151494%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151468151499%_))
                                              ((lambda (_%g151458151502%_
                                                        _%g151459151503%_)
                                                 (let* ((_%eid151518%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g151459151503%_)))
                                                        (_%phi151520%_
                                                         (let ((__tmp161529
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp161529 '1)))
                (_%block151522%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self151453%_ 'state))
                  _%phi151520%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g151525151532%_
                                                           (lambda (_%g151526151529%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g151526151529%_))))
                  (_%g151524151550%_
                   (lambda (_%g151526151535%_)
                     ((lambda (_%g151527151537%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self151453%_ 'state))
                         _%phi151520%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g151527151537%_
                                     (cons _%g151458151502%_ '())))))
                      _%g151526151535%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g151524151550%_
                                                      _%eid151518%_))
                                                   (if _%block151522%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block151522%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%g151459151503%_)
                                             (cons _%eid151518%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%g151459151503%_)
                           (cons _%eid151518%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd151467151497%_
                                               _%hd151464151489%_)
                                              (_%g151456151473%_
                                               _%g151457151476%_))))
                                      (_%g151456151473%_ _%g151457151476%_))))
                              (_%g151456151473%_ _%g151457151476%_))))
                      (_%g151456151473%_ _%g151457151476%_)))))
          (_%g151455151553%_ _%stx151454%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self151385%_ _%stx151386%_)
        (let* ((_%g151388151405%_
                (lambda (_%g151389151402%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151389151402%_))))
               (_%g151387151450%_
                (lambda (_%g151389151408%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151389151408%_))
                      (let ((_%e151392151410%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151389151408%_))))
                        (let ((_%hd151393151413%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151392151410%_)))
                              (_%tl151394151415%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151392151410%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151394151415%_))
                              (let ((_%e151395151418%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151394151415%_))))
                                (let ((_%hd151396151421%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151395151418%_)))
                                      (_%tl151397151423%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151395151418%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151397151423%_))
                                      (let ((_%e151398151426%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151397151423%_))))
                                        (let ((_%hd151399151429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151398151426%_)))
                                              (_%tl151400151431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151398151426%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151400151431%_))
                                              ((lambda (_%g151390151434%_
                                                        _%g151391151435%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%g151391151435%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g151390151434%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd151399151429%_
                                               _%hd151396151421%_)
                                              (_%g151388151405%_
                                               _%g151389151408%_))))
                                      (_%g151388151405%_ _%g151389151408%_))))
                              (_%g151388151405%_ _%g151389151408%_))))
                      (_%g151388151405%_ _%g151389151408%_)))))
          (_%g151387151450%_ _%stx151386%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self151382%_ _%stx151383%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self151382%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx151383%_)
        (gxc#generate-meta-define-values% _%self151382%_ _%stx151383%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self151379%_ _%stx151380%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self151379%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx151380%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp161531 (list)) (__tmp161530 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp161531
         '(src n open blocks)
         __tmp161530
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args151376%_
        (apply make-instance gxc#meta-state::t _%$args151376%_)))
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
      (lambda (_%self151362%_ _%ctx151363%_)
        (let ((_%self151366%_ _%self151362%_))
          (if (let ((__tmp161532
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self151366%_))))
                (declare (not safe))
                (##fx< '4 __tmp161532))
              (begin
                (let ((__tmp161533
                       (let ((__tmp161534
                              (##structure-ref
                               _%ctx151363%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp161534))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self151366%_
                   __tmp161533
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self151366%_ '1 '2 '#f '#f))
                (let ((__tmp161535
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self151366%_
                   __tmp161535
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self151366%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp161536
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self151366%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self151366%_
                       '4
                       __tmp161536))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp161538 (list)) (__tmp161537 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp161538
         '(ctx phi n code)
         __tmp161537
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args151237%_
        (apply make-instance gxc#meta-state-block::t _%$args151237%_)))
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
      (lambda (_%state151197%_ _%phi151198%_)
        (let* ((_%state151199151207%_ _%state151197%_)
               (_%E151201151210%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state151199151207%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K151202151219%_
                (lambda (_%open151213%_ _%n151214%_ _%src151215%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open151213%_ _%phi151198%_))
                      '#f
                      (let ((_%block-ref151217%_
                             (let ((__tmp161539 (number->string _%n151214%_)))
                               (declare (not safe))
                               (##string-append
                                _%src151215%_
                                '"~"
                                __tmp161539))))
                        (##structure-set!
                         _%state151197%_
                         (let () (declare (not safe)) (##fx+ _%n151214%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp161540
                               (let ((__tmp161541
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp161541
                                  _%phi151198%_
                                  _%n151214%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open151213%_ _%phi151198%_ __tmp161540))
                        _%block-ref151217%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state151199151207%_
                 'gxc#meta-state::t))
              (let* ((_%e151203151222%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state151199151207%_
                         '1
                         '#f
                         '#f)))
                     (_%src151225%_ _%e151203151222%_)
                     (_%e151204151227%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state151199151207%_
                         '2
                         '#f
                         '#f)))
                     (_%n151230%_ _%e151204151227%_)
                     (_%e151205151232%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state151199151207%_
                         '3
                         '#f
                         '#f)))
                     (_%open151235%_ _%e151205151232%_))
                (_%K151202151219%_ _%open151235%_ _%n151230%_ _%src151225%_))
              (_%E151201151210%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state151191%_ _%phi151192%_ _%stx151193%_)
        (let ((_%block151195%_
               (let ((__tmp161542
                      (##structure-ref
                       _%state151191%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp161542 _%phi151192%_))))
          (##structure-set!
           _%block151195%_
           (cons _%stx151193%_
                 (##structure-ref
                  _%block151195%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state151185%_)
        (##structure-set!
         _%state151185%_
         (let ((__tmp161545
                (lambda (_%_151187%_ _%block151188%_ _%r151189%_)
                  (cons _%block151188%_ _%r151189%_)))
               (__tmp161544
                (##structure-ref _%state151185%_ '4 gxc#meta-state::t '#f))
               (__tmp161543
                (##structure-ref _%state151185%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp161545 __tmp161544 __tmp161543))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state151185%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state151138%_)
        (gxc#meta-state-end-phi! _%state151138%_)
        (let ((__tmp161547
               (lambda (_%block151140%_ _%r151141%_)
                 (let* ((_%block151142151151%_ _%block151140%_)
                        (_%E151144151154%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block151142151151%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K151145151162%_
                         (lambda (_%code151157%_
                                  _%n151158%_
                                  _%phi151159%_
                                  _%ctx151160%_)
                           (if (null? _%code151157%_)
                               _%r151141%_
                               (cons (cons _%ctx151160%_
                                           (cons _%phi151159%_
                                                 (cons _%n151158%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code151157%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r151141%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block151142151151%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e151146151165%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block151142151151%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx151168%_ _%e151146151165%_)
                              (_%e151147151170%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block151142151151%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi151173%_ _%e151147151170%_)
                              (_%e151148151175%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block151142151151%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n151178%_ _%e151148151175%_)
                              (_%e151149151180%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block151142151151%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code151183%_ _%e151149151180%_))
                         (_%K151145151162%_
                          _%code151183%_
                          _%n151178%_
                          _%phi151173%_
                          _%ctx151168%_))
                       (_%E151144151154%_)))))
              (__tmp161546
               (##structure-ref _%state151138%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp161547 '() __tmp161546))))
    (define gxc#collect-expression-refs
      (lambda (_%stx151134%_)
        (let ((_%ht151136%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht151136%_ _%stx151134%_)
          _%ht151136%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self151077%_ _%stx151078%_)
        (let* ((_%g151080151093%_
                (lambda (_%g151081151090%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151081151090%_))))
               (_%g151079151131%_
                (lambda (_%g151081151096%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151081151096%_))
                      (let ((_%e151083151098%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151081151096%_))))
                        (let ((_%hd151084151101%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151083151098%_)))
                              (_%tl151085151103%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151083151098%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151085151103%_))
                              (let ((_%e151086151106%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151085151103%_))))
                                (let ((_%hd151087151109%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151086151106%_)))
                                      (_%tl151088151111%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151086151106%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151088151111%_))
                                      ((lambda (_%g151082151114%_)
                                         (let* ((_%bind151126%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g151082151114%_)))
                                                (_%eid151128%_
                                                 (if _%bind151126%_
                                                     (##structure-ref
                                                      _%bind151126%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g151082151114%_))))
                                                (__tmp161548
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self151077%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp161548
                                            _%eid151128%_
                                            _%eid151128%_)))
                                       _%hd151087151109%_)
                                      (_%g151080151093%_ _%g151081151096%_))))
                              (_%g151080151093%_ _%g151081151096%_))))
                      (_%g151080151093%_ _%g151081151096%_)))))
          (_%g151079151131%_ _%stx151078%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self151004%_ _%stx151005%_)
        (let* ((_%g151007151024%_
                (lambda (_%g151008151021%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151008151021%_))))
               (_%g151006151074%_
                (lambda (_%g151008151027%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151008151027%_))
                      (let ((_%e151011151029%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151008151027%_))))
                        (let ((_%hd151012151032%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151011151029%_)))
                              (_%tl151013151034%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151011151029%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151013151034%_))
                              (let ((_%e151014151037%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151013151034%_))))
                                (let ((_%hd151015151040%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151014151037%_)))
                                      (_%tl151016151042%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151014151037%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151016151042%_))
                                      (let ((_%e151017151045%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151016151042%_))))
                                        (let ((_%hd151018151048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151017151045%_)))
                                              (_%tl151019151050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151017151045%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151019151050%_))
                                              ((lambda (_%g151009151053%_
                                                        _%g151010151054%_)
                                                 (let* ((_%bind151069%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g151010151054%_)))
                                                        (_%eid151071%_
                                                         (if _%bind151069%_
                                                             (##structure-ref
                                                              _%bind151069%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g151010151054%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp161549
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self151004%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp161549
                                                      _%eid151071%_
                                                      _%eid151071%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self151004%_
                                                      _%g151009151053%_))))
                                               _%hd151018151048%_
                                               _%hd151015151040%_)
                                              (_%g151007151024%_
                                               _%g151008151027%_))))
                                      (_%g151007151024%_ _%g151008151027%_))))
                              (_%g151007151024%_ _%g151008151027%_))))
                      (_%g151007151024%_ _%g151008151027%_)))))
          (_%g151006151074%_ _%stx151005%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self150961%_ _%stx150962%_)
        (let* ((_%g150964150974%_
                (lambda (_%g150965150971%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150965150971%_))))
               (_%g150963151001%_
                (lambda (_%g150965150977%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150965150977%_))
                      (let ((_%e150967150979%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150965150977%_))))
                        (let ((_%hd150968150982%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150967150979%_)))
                              (_%tl150969150984%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150967150979%_))))
                          ((lambda (_%g150966150987%_)
                             (let ((__tmp161550
                                    (lambda (_%g150996150998%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self150961%_
                                         _%g150996150998%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp161550 _%g150966150987%_)))
                           _%tl150969150984%_)))
                      (_%g150964150974%_ _%g150965150977%_)))))
          (_%g150963151001%_ _%stx150962%_))))
    (define gxc#count-values-single%
      (lambda (_%self150958%_ _%stx150959%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self150826%_ _%stx150827%_)
        (let* ((_%__stx161292161293%_ _%stx150827%_)
               (_%g150830150859%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx161292161293%_)))))
          (let ((_%__kont161294161295%_
                 (lambda (_%g150832150925%_ _%g150833150926%_)
                   (length (let ((__tmp161551
                                  (lambda (_%g150947150950%_ _%g150948150952%_)
                                    (cons _%g150947150950%_
                                          _%g150948150952%_))))
                             (declare (not safe))
                             (__foldr1 __tmp161551 '() _%g150832150925%_)))))
                (_%__kont161298161299%_ (lambda () '#f)))
            (let ((_%__match161337161338%_
                   (lambda (_%e150834150871%_
                            _%hd150835150874%_
                            _%tl150836150876%_
                            _%e150837150879%_
                            _%hd150838150882%_
                            _%tl150839150884%_
                            _%e150840150887%_
                            _%hd150841150890%_
                            _%tl150842150892%_
                            _%e150843150895%_
                            _%hd150844150898%_
                            _%tl150845150900%_
                            _%__splice161296161297%_
                            _%target150846150903%_
                            _%tl150848150905%_)
                     (letrec ((_%loop150849150908%_
                               (lambda (_%hd150847150911%_
                                        _%rand150853150913%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd150847150911%_))
                                     (let ((_%e150850150915%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd150847150911%_))))
                                       (let ((_%lp-tl150852150920%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e150850150915%_)))
                                             (_%lp-hd150851150918%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e150850150915%_))))
                                         (_%loop150849150908%_
                                          _%lp-tl150852150920%_
                                          (cons _%lp-hd150851150918%_
                                                _%rand150853150913%_))))
                                     (let ((_%rand150854150923%_
                                            (reverse _%rand150853150913%_)))
                                       (let ((_%g150832150925%_
                                              _%rand150854150923%_)
                                             (_%g150833150926%_
                                              _%hd150844150898%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g150833150926%_
                                                'values))
                                             (_%__kont161294161295%_
                                              _%g150832150925%_
                                              _%g150833150926%_)
                                             (_%__kont161298161299%_))))))))
                       (_%loop150849150908%_ _%target150846150903%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx161292161293%_))
                  (let ((_%e150834150871%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx161292161293%_))))
                    (let ((_%tl150836150876%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150834150871%_)))
                          (_%hd150835150874%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150834150871%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl150836150876%_))
                          (let ((_%e150837150879%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl150836150876%_))))
                            (let ((_%tl150839150884%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150837150879%_)))
                                  (_%hd150838150882%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150837150879%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd150838150882%_))
                                  (let ((_%e150840150887%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd150838150882%_))))
                                    (let ((_%tl150842150892%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e150840150887%_)))
                                          (_%hd150841150890%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e150840150887%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd150841150890%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd150841150890%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl150842150892%_))
                                                  (let ((_%e150843150895%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl150842150892%_))))
                                                    (let ((_%tl150845150900%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e150843150895%_)))
                                                          (_%hd150844150898%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e150843150895%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl150845150900%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl150839150884%_))
                      (let ((_%__splice161296161297%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl150839150884%_
                                '0))))
                        (let ((_%tl150848150905%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice161296161297%_ '1)))
                              (_%target150846150903%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice161296161297%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl150848150905%_))
                              (_%__match161337161338%_
                               _%e150834150871%_
                               _%hd150835150874%_
                               _%tl150836150876%_
                               _%e150837150879%_
                               _%hd150838150882%_
                               _%tl150839150884%_
                               _%e150840150887%_
                               _%hd150841150890%_
                               _%tl150842150892%_
                               _%e150843150895%_
                               _%hd150844150898%_
                               _%tl150845150900%_
                               _%__splice161296161297%_
                               _%target150846150903%_
                               _%tl150848150905%_)
                              (_%__kont161298161299%_))))
                      (_%__kont161298161299%_))
                  (_%__kont161298161299%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont161298161299%_))
                                              (_%__kont161298161299%_))
                                          (_%__kont161298161299%_))))
                                  (_%__kont161298161299%_))))
                          (_%__kont161298161299%_))))
                  (_%__kont161298161299%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self150731%_ _%stx150732%_)
        (let* ((_%g150734150755%_
                (lambda (_%g150735150752%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150735150752%_))))
               (_%g150733150823%_
                (lambda (_%g150735150758%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150735150758%_))
                      (let ((_%e150739150760%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150735150758%_))))
                        (let ((_%hd150740150763%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150739150760%_)))
                              (_%tl150741150765%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150739150760%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150741150765%_))
                              (let ((_%e150742150768%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150741150765%_))))
                                (let ((_%hd150743150771%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150742150768%_)))
                                      (_%tl150744150773%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150742150768%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150744150773%_))
                                      (let ((_%e150745150776%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150744150773%_))))
                                        (let ((_%hd150746150779%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150745150776%_)))
                                              (_%tl150747150781%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150745150776%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl150747150781%_))
                                              (let ((_%e150748150784%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl150747150781%_))))
                                                (let ((_%hd150749150787%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e150748150784%_)))
                                                      (_%tl150750150789%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e150748150784%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl150750150789%_))
                                                      ((lambda (_%g150736150792%_
                                                                _%g150737150793%_
                                                                _%g150738150794%_)
                                                         (let ((_%c1150811150813%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self150731%_
                           _%g150737150793%_))))
                   (if _%c1150811150813%_
                       (let* ((_%c1150815%_ _%c1150811150813%_)
                              (_%c2150816150818%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self150731%_
                                  _%g150736150792%_))))
                         (if _%c2150816150818%_
                             (let ((_%c2150820%_ _%c2150816150818%_))
                               (if (fx= _%c1150815%_ _%c2150820%_)
                                   _%c1150815%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd150749150787%_
               _%hd150746150779%_
               _%hd150743150771%_)
              (_%g150734150755%_ _%g150735150758%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g150734150755%_
                                               _%g150735150758%_))))
                                      (_%g150734150755%_ _%g150735150758%_))))
                              (_%g150734150755%_ _%g150735150758%_))))
                      (_%g150734150755%_ _%g150735150758%_)))))
          (_%g150733150823%_ _%stx150732%_))))))
