(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1769384629)
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
        (letrec ((_%hash-e160034%_
                  (lambda (_%id160036%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id160036%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e160034%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp161421 (list gxc#::void::t))
            (__tmp161420 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp161421
         '()
         __tmp161420
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args160030%_
        (apply make-instance gxc#::collect-bindings::t _%$args160030%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp161422
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
        (__make-atomic-promise __tmp161422)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx160022%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self160025%_
                (let ((__obj161396
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj161396))
               (__tmp161423
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self160025%_ _%stx160022%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161423
           gxc#current-compile-method
           _%self160025%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp161425 (list gxc#::void::t))
            (__tmp161424 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp161425
         '(modules)
         __tmp161424
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args160019%_
        (apply make-instance gxc#::lift-modules::t _%$args160019%_)))
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
      (let ((__tmp161426
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
        (__make-atomic-promise __tmp161426)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords159994%_ _%modules159991159995%_ _%stx159996%_)
        (let ((_%modules159999%_
               (if (eq? _%modules159991159995%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules159991159995%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self160001%_
                  (let ((__obj161398
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj161398
                       _%modules159999%_
                       '1
                       '#f
                       '#f))
                    __obj161398))
                 (__tmp161427
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self160001%_ _%stx159996%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp161427
             gxc#current-compile-method
             _%self160001%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords160008%_ . _%args160009%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords160008%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords160008%_
                  'modules:
                  absent-value))
               _%args160009%_)))
    (define gxc#apply-lift-modules
      (lambda _%args159992160015%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args159992160015%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp161429 (list)) (__tmp161428 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp161429
         '()
         __tmp161428
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args159987%_
        (apply make-instance gxc#::find-runtime-code::t _%$args159987%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp161430
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
        (__make-atomic-promise __tmp161430)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx159979%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self159982%_
                (let ((__obj161400
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj161400))
               (__tmp161431
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159982%_ _%stx159979%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161431
           gxc#current-compile-method
           _%self159982%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp161433 (list gxc#::false::t))
            (__tmp161432 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp161433
         '()
         __tmp161432
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args159976%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args159976%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp161434
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
        (__make-atomic-promise __tmp161434)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx159968%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self159971%_
                (let ((__obj161402
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj161402))
               (__tmp161435
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159971%_ _%stx159968%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161435
           gxc#current-compile-method
           _%self159971%_))))
    (define gxc#::count-values::t
      (let ((__tmp161437 (list gxc#::false-expression::t))
            (__tmp161436 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp161437
         '()
         __tmp161436
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args159965%_
        (apply make-instance gxc#::count-values::t _%$args159965%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp161438
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
        (__make-atomic-promise __tmp161438)))
    (define gxc#apply-count-values
      (lambda (_%stx159957%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self159960%_
                (let ((__obj161404
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj161404))
               (__tmp161439
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159960%_ _%stx159957%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161439
           gxc#current-compile-method
           _%self159960%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp161440 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp161440
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args159954%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args159954%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp161441
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
        (__make-atomic-promise __tmp161441)))
    (define gxc#::generate-loader::t
      (let ((__tmp161443 (list gxc#::generate-runtime-empty::t))
            (__tmp161442 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp161443
         '()
         __tmp161442
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args159950%_
        (apply make-instance gxc#::generate-loader::t _%$args159950%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp161444
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
        (__make-atomic-promise __tmp161444)))
    (define gxc#apply-generate-loader
      (lambda (_%stx159942%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self159945%_
                (let ((__obj161407
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj161407))
               (__tmp161445
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159945%_ _%stx159942%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161445
           gxc#current-compile-method
           _%self159945%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp161446 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp161446
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args159939%_
        (apply make-instance gxc#::generate-runtime::t _%$args159939%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp161447
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
        (__make-atomic-promise __tmp161447)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx159931%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self159934%_
                (let ((__obj161409
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj161409))
               (__tmp161448
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159934%_ _%stx159931%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161448
           gxc#current-compile-method
           _%self159934%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp161450 (list gxc#::generate-runtime::t))
            (__tmp161449 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp161450
         '()
         __tmp161449
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args159928%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args159928%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp161451
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
        (__make-atomic-promise __tmp161451)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx159920%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self159923%_
                (let ((__obj161411
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj161411))
               (__tmp161452
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159923%_ _%stx159920%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161452
           gxc#current-compile-method
           _%self159923%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp161453 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp161453
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args159917%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args159917%_)))
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
      (let ((__tmp161454
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
        (__make-atomic-promise __tmp161454)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords159892%_ _%table159889159893%_ _%stx159894%_)
        (let ((_%table159897%_
               (if (eq? _%table159889159893%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table159889159893%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self159899%_
                  (let ((__obj161413
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj161413
                       _%table159897%_
                       '1
                       '#f
                       '#f))
                    __obj161413))
                 (__tmp161455
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self159899%_ _%stx159894%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp161455
             gxc#current-compile-method
             _%self159899%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords159906%_ . _%args159907%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords159906%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159906%_
                  'table:
                  absent-value))
               _%args159907%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args159890159913%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args159890159913%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp161457 (list gxc#::void-expression::t))
            (__tmp161456 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp161457
         '(state)
         __tmp161456
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args159885%_
        (apply make-instance gxc#::generate-meta::t _%$args159885%_)))
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
      (let ((__tmp161458
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
        (__make-atomic-promise __tmp161458)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords159860%_ _%state159857159861%_ _%stx159862%_)
        (let ((_%state159865%_
               (if (eq? _%state159857159861%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state159857159861%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self159867%_
                  (let ((__obj161415
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj161415
                       _%state159865%_
                       '1
                       '#f
                       '#f))
                    __obj161415))
                 (__tmp161459
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self159867%_ _%stx159862%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp161459
             gxc#current-compile-method
             _%self159867%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords159874%_ . _%args159875%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords159874%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159874%_
                  'state:
                  absent-value))
               _%args159875%_)))
    (define gxc#apply-generate-meta
      (lambda _%args159858159881%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args159858159881%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp161461 (list)) (__tmp161460 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp161461
         '(state)
         __tmp161460
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args159853%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args159853%_)))
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
      (let ((__tmp161462
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
        (__make-atomic-promise __tmp161462)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords159828%_ _%state159825159829%_ _%stx159830%_)
        (let ((_%state159833%_
               (if (eq? _%state159825159829%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state159825159829%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self159835%_
                  (let ((__obj161417
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj161417
                       _%state159833%_
                       '1
                       '#f
                       '#f))
                    __obj161417))
                 (__tmp161463
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self159835%_ _%stx159830%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp161463
             gxc#current-compile-method
             _%self159835%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords159842%_ . _%args159843%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords159842%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159842%_
                  'state:
                  absent-value))
               _%args159843%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args159826159849%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args159826159849%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self159754%_ _%stx159755%_)
        (let* ((_%g159757159774%_
                (lambda (_%g159758159771%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159758159771%_))))
               (_%g159756159821%_
                (lambda (_%g159758159777%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159758159777%_))
                      (let ((_%e159761159779%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159758159777%_))))
                        (let ((_%hd159762159782%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159761159779%_)))
                              (_%tl159763159784%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159761159779%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159763159784%_))
                              (let ((_%e159764159787%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159763159784%_))))
                                (let ((_%hd159765159790%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159764159787%_)))
                                      (_%tl159766159792%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159764159787%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl159766159792%_))
                                      (let ((_%e159767159795%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl159766159792%_))))
                                        (let ((_%hd159768159798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159767159795%_)))
                                              (_%tl159769159800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159767159795%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl159769159800%_))
                                              ((lambda (_%g159759159803%_
                                                        _%g159760159804%_)
                                                 (let ((__tmp161464
                                                        (lambda (_%bind159819%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind159819%_))
                      (gxc#add-module-binding! _%bind159819%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp161464
                                                    _%g159760159804%_)))
                                               _%hd159768159798%_
                                               _%hd159765159790%_)
                                              (_%g159757159774%_
                                               _%g159758159777%_))))
                                      (_%g159757159774%_ _%g159758159777%_))))
                              (_%g159757159774%_ _%g159758159777%_))))
                      (_%g159757159774%_ _%g159758159777%_)))))
          (_%g159756159821%_ _%stx159755%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self159686%_ _%stx159687%_)
        (let* ((_%g159689159706%_
                (lambda (_%g159690159703%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159690159703%_))))
               (_%g159688159751%_
                (lambda (_%g159690159709%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159690159709%_))
                      (let ((_%e159693159711%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159690159709%_))))
                        (let ((_%hd159694159714%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159693159711%_)))
                              (_%tl159695159716%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159693159711%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159695159716%_))
                              (let ((_%e159696159719%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159695159716%_))))
                                (let ((_%hd159697159722%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159696159719%_)))
                                      (_%tl159698159724%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159696159719%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl159698159724%_))
                                      (let ((_%e159699159727%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl159698159724%_))))
                                        (let ((_%hd159700159730%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159699159727%_)))
                                              (_%tl159701159732%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159699159727%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl159701159732%_))
                                              ((lambda (_%g159691159735%_
                                                        _%g159692159736%_)
                                                 (gxc#add-module-binding!
                                                  _%g159692159736%_
                                                  '#t))
                                               _%hd159700159730%_
                                               _%hd159697159722%_)
                                              (_%g159689159706%_
                                               _%g159690159709%_))))
                                      (_%g159689159706%_ _%g159690159709%_))))
                              (_%g159689159706%_ _%g159690159709%_))))
                      (_%g159689159706%_ _%g159690159709%_)))))
          (_%g159688159751%_ _%stx159687%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self159628%_ _%stx159629%_)
        (let* ((_%g159631159645%_
                (lambda (_%g159632159642%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159632159642%_))))
               (_%g159630159683%_
                (lambda (_%g159632159648%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159632159648%_))
                      (let ((_%e159635159650%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159632159648%_))))
                        (let ((_%hd159636159653%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159635159650%_)))
                              (_%tl159637159655%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159635159650%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159637159655%_))
                              (let ((_%e159638159658%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159637159655%_))))
                                (let ((_%hd159639159661%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159638159658%_)))
                                      (_%tl159640159663%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159638159658%_))))
                                  ((lambda (_%g159633159666%_
                                            _%g159634159667%_)
                                     (let ((_%ctx159680%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g159634159667%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self159628%_
                                           'modules))
                                        (cons _%ctx159680%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self159628%_
                                                        'modules)))))
                                       (let ((__tmp161465
                                              (lambda ()
                                                (let ((__tmp161466
                                                       (##structure-ref
                                                        _%ctx159680%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self159628%_
                                                   __tmp161466)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp161465
                                          gx#current-expander-context
                                          _%ctx159680%_))))
                                   _%tl159640159663%_
                                   _%hd159639159661%_)))
                              (_%g159631159645%_ _%g159632159648%_))))
                      (_%g159631159645%_ _%g159632159648%_)))))
          (_%g159630159683%_ _%stx159629%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls159582159584%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls159582159584%_
              (let ((_%decls159586%_ _%decls159582159584%_))
                (let _%lp159588%_ ((_%rest159590%_ _%decls159586%_))
                  (let* ((_%rest159591159599%_ _%rest159590%_)
                         (_%else159593159607%_ (lambda () '#f))
                         (_%K159595159616%_
                          (lambda (_%decls159610%_ _%decl159611%_)
                            (if (equal? _%decl159611%_ '(not safe))
                                '#t
                                (if (equal? _%decl159611%_ '(safe))
                                    '#f
                                    (_%lp159588%_ _%decls159610%_))))))
                    (if (pair? _%rest159591159599%_)
                        (let ((_%hd159596159619%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest159591159599%_)))
                              (_%tl159597159621%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest159591159599%_))))
                          (let* ((_%decl159624%_ _%hd159596159619%_)
                                 (_%decls159626%_ _%tl159597159621%_))
                            (_%K159595159616%_
                             _%decls159626%_
                             _%decl159624%_)))
                        (_%else159593159607%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id159576%_ _%syntax?159577%_)
        (let ((_%eid159579%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id159576%_))
                '1
                gx#binding::t
                '#f))
              (_%ht159580%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid159579%_))
              '#!void
              (let ((__tmp161467
                     (let ((__tmp161468
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid159579%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp161468 _%syntax?159577%_))))
                (declare (not safe))
                (hash-put! _%ht159580%_ _%eid159579%_ __tmp161467))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id159574%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id159574%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key159529%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key159529%_))
            _%key159529%_
            (if (uninterned-symbol? _%key159529%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key159529%_))
                (let* ((_%key159533159540%_ _%key159529%_)
                       (_%E159535159544%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key159533159540%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K159536159562%_
                        (lambda (_%mark159547%_ _%eid159548%_)
                          (let ((_%$e159550%_
                                 (##structure-ref
                                  _%mark159547%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e159550%_
                                ((lambda (_%ht159553%_)
                                   (let ((_%$e159555%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht159553%_
                                             _%eid159548%_))))
                                     (if _%$e159555%_
                                         ((lambda (_%id159558%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id159558%_))
                                                _%id159558%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id159558%_))))
                                          _%$e159555%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid159548%_))))
                                 _%$e159550%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid159548%_))))))
                  (if (pair? _%key159533159540%_)
                      (let ((_%hd159537159565%_
                             (let ()
                               (declare (not safe))
                               (##car _%key159533159540%_)))
                            (_%tl159538159567%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key159533159540%_))))
                        (let* ((_%eid159570%_ _%hd159537159565%_)
                               (_%mark159572%_ _%tl159538159567%_))
                          (_%K159536159562%_ _%mark159572%_ _%eid159570%_)))
                      (_%E159535159544%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self159526%_ _%stx159527%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self159373%_ _%stx159374%_)
        (letrec ((_%simplify159376%_
                  (lambda (_%body159424%_)
                    (let _%lp159426%_ ((_%rest159428%_ _%body159424%_)
                                       (_%r159429%_ '()))
                      (let* ((_%rest159430159438%_ _%rest159428%_)
                             (_%else159432159446%_
                              (lambda () (reverse _%r159429%_)))
                             (_%K159434159514%_
                              (lambda (_%rest159449%_ _%hd159450%_)
                                (let* ((_%hd159451159467%_ _%hd159450%_)
                                       (_%else159455159475%_
                                        (lambda ()
                                          (_%lp159426%_
                                           _%rest159449%_
                                           (cons _%hd159450%_ _%r159429%_)))))
                                  (let ((_%K159463159504%_
                                         (lambda (_%exprs159502%_)
                                           (_%lp159426%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest159449%_
                                               _%exprs159502%_))
                                            _%r159429%_)))
                                        (_%K159458159488%_
                                         (lambda ()
                                           (if (null? _%rest159449%_)
                                               (_%lp159426%_
                                                _%rest159449%_
                                                (cons _%hd159450%_
                                                      _%r159429%_))
                                               (_%lp159426%_
                                                _%rest159449%_
                                                _%r159429%_))))
                                        (_%K159457159480%_
                                         (lambda ()
                                           (if (null? _%rest159449%_)
                                               (_%lp159426%_
                                                _%rest159449%_
                                                (cons _%hd159450%_
                                                      _%r159429%_))
                                               (_%lp159426%_
                                                _%rest159449%_
                                                _%r159429%_)))))
                                    (let ((_%try-match159454159483%_
                                           (lambda ()
                                             (if (symbol? _%hd159451159467%_)
                                                 (_%K159457159480%_)
                                                 (_%else159455159475%_)))))
                                      (if (pair? _%hd159451159467%_)
                                          (let ((_%tl159465159509%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd159451159467%_)))
                                                (_%hd159464159507%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd159451159467%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd159464159507%_
                                                         'begin))
                                                (let ((_%exprs159512%_
                                                       _%tl159465159509%_))
                                                  (_%K159463159504%_
                                                   _%exprs159512%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd159464159507%_
                                                             'quote))
                                                    (if (pair? _%tl159465159509%_)
                                                        (let ((_%tl159462159496%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl159465159509%_))))
                  (if (null? _%tl159462159496%_)
                      (_%K159458159488%_)
                      (_%try-match159454159483%_)))
                (_%try-match159454159483%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match159454159483%_))))
                                          (_%try-match159454159483%_))))))))
                        (if (pair? _%rest159430159438%_)
                            (let ((_%hd159435159517%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest159430159438%_)))
                                  (_%tl159436159519%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest159430159438%_))))
                              (let* ((_%hd159522%_ _%hd159435159517%_)
                                     (_%rest159524%_ _%tl159436159519%_))
                                (_%K159434159514%_
                                 _%rest159524%_
                                 _%hd159522%_)))
                            (_%else159432159446%_)))))))
          (let* ((_%g159378159388%_
                  (lambda (_%g159379159385%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g159379159385%_))))
                 (_%g159377159421%_
                  (lambda (_%g159379159391%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g159379159391%_))
                        (let ((_%e159381159393%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g159379159391%_))))
                          (let ((_%hd159382159396%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e159381159393%_)))
                                (_%tl159383159398%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e159381159393%_))))
                            ((lambda (_%g159380159401%_)
                               (let* ((_%body159416%_
                                       (map (lambda (_%g159411159413%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self159373%_
                                                 _%g159411159413%_)))
                                            _%g159380159401%_))
                                      (_%body159418%_
                                       (_%simplify159376%_ _%body159416%_)))
                                 (if (let ((__tmp161469
                                            (length _%body159418%_)))
                                       (declare (not safe))
                                       (##fx= __tmp161469 '1))
                                     (car _%body159418%_)
                                     (cons 'begin _%body159418%_))))
                             _%tl159383159398%_)))
                        (_%g159378159388%_ _%g159379159391%_)))))
            (_%g159377159421%_ _%stx159374%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self159334%_ _%stx159335%_)
        (let* ((_%g159337159347%_
                (lambda (_%g159338159344%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159338159344%_))))
               (_%g159336159370%_
                (lambda (_%g159338159350%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159338159350%_))
                      (let ((_%e159340159352%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159338159350%_))))
                        (let ((_%hd159341159355%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159340159352%_)))
                              (_%tl159342159357%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159340159352%_))))
                          ((lambda (_%g159339159360%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g159339159360%_))))
                           _%tl159342159357%_)))
                      (_%g159337159347%_ _%g159338159350%_)))))
          (_%g159336159370%_ _%stx159335%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self159100%_ _%stx159101%_)
        (let* ((_%__stx160059160060%_ _%stx159101%_)
               (_%g159105159157%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx160059160060%_)))))
          (let ((_%__kont160061160062%_
                 (lambda (_%g159107159316%_ _%g159108159317%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self159100%_ _%g159107159316%_))))
                (_%__kont160063160064%_
                 (lambda (_%g159118159264%_
                          _%g159119159265%_
                          _%g159120159266%_)
                   (if (let ((__tmp161470
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g159120159266%_))))
                         (declare (not safe))
                         (##memq __tmp161470 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self159100%_
                          _%g159118159264%_)))))
                (_%__kont160067160068%_
                 (lambda (_%g159142159186%_ _%g159143159187%_)
                   (let ((_%decls159202%_
                          (map gx#syntax->datum _%g159143159187%_)))
                     (let ((__tmp161473
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls159202%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self159100%_
                                                   _%g159142159186%_))
                                                '())))))
                           (__tmp161471
                            (let ((__tmp161472
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp161472 _%decls159202%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp161473
                        gxc#current-compile-decls
                        __tmp161471))))))
            (let* ((_%__match160114160115%_
                    (lambda (_%e159121159210%_
                             _%hd159122159213%_
                             _%tl159123159215%_
                             _%e159124159218%_
                             _%hd159125159221%_
                             _%tl159126159223%_
                             _%e159127159226%_
                             _%hd159128159229%_
                             _%tl159129159231%_
                             _%__splice160065160066%_
                             _%target159130159234%_
                             _%tl159132159236%_)
                      (letrec ((_%loop159133159239%_
                                (lambda (_%hd159131159242%_
                                         _%param159137159244%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd159131159242%_))
                                      (let ((_%e159134159246%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd159131159242%_))))
                                        (let ((_%lp-tl159136159251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159134159246%_)))
                                              (_%lp-hd159135159249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159134159246%_))))
                                          (_%loop159133159239%_
                                           _%lp-tl159136159251%_
                                           (cons _%lp-hd159135159249%_
                                                 _%param159137159244%_))))
                                      (let ((_%param159138159254%_
                                             (reverse _%param159137159244%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl159126159223%_))
                                            (let ((_%e159139159256%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl159126159223%_))))
                                              (let ((_%tl159141159261%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e159139159256%_)))
                                                    (_%hd159140159259%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e159139159256%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl159141159261%_))
                                                    (let ((_%g159118159264%_
                                                           _%hd159140159259%_)
                                                          (_%g159119159265%_
                                                           _%param159138159254%_)
                                                          (_%g159120159266%_
                                                           _%hd159128159229%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g159120159266%_))
                       (not (let ((__tmp161474
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g159120159266%_))))
                              (declare (not safe))
                              (##memq __tmp161474 gxc#gambit-annotations))))
                  (_%__kont160063160064%_
                   _%g159118159264%_
                   _%g159119159265%_
                   _%g159120159266%_)
                  (_%__kont160067160068%_
                   _%hd159140159259%_
                   _%hd159125159221%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g159105159157%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g159105159157%_))))))))
                        (_%loop159133159239%_ _%target159130159234%_ '()))))
                   (_%__match160088160089%_
                    (lambda (_%e159109159292%_
                             _%hd159110159295%_
                             _%tl159111159297%_
                             _%e159112159300%_
                             _%hd159113159303%_
                             _%tl159114159305%_
                             _%e159115159308%_
                             _%hd159116159311%_
                             _%tl159117159313%_)
                      (let ((_%g159107159316%_ _%hd159116159311%_)
                            (_%g159108159317%_ _%hd159113159303%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g159108159317%_))
                            (_%__kont160061160062%_
                             _%g159107159316%_
                             _%g159108159317%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd159113159303%_))
                                (let ((_%e159127159226%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd159113159303%_))))
                                  (let ((_%tl159129159231%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e159127159226%_)))
                                        (_%hd159128159229%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e159127159226%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl159129159231%_))
                                        (let ((_%__splice160065160066%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl159129159231%_
                                                  '0))))
                                          (let ((_%tl159132159236%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice160065160066%_
                                                    '1)))
                                                (_%target159130159234%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice160065160066%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl159132159236%_))
                                                (_%__match160114160115%_
                                                 _%e159109159292%_
                                                 _%hd159110159295%_
                                                 _%tl159111159297%_
                                                 _%e159112159300%_
                                                 _%hd159113159303%_
                                                 _%tl159114159305%_
                                                 _%e159127159226%_
                                                 _%hd159128159229%_
                                                 _%tl159129159231%_
                                                 _%__splice160065160066%_
                                                 _%target159130159234%_
                                                 _%tl159132159236%_)
                                                (_%__kont160067160068%_
                                                 _%hd159116159311%_
                                                 _%hd159113159303%_))))
                                        (_%__kont160067160068%_
                                         _%hd159116159311%_
                                         _%hd159113159303%_))))
                                (_%__kont160067160068%_
                                 _%hd159116159311%_
                                 _%hd159113159303%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx160059160060%_))
                  (let ((_%e159109159292%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx160059160060%_))))
                    (let ((_%tl159111159297%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e159109159292%_)))
                          (_%hd159110159295%_
                           (let ()
                             (declare (not safe))
                             (##car _%e159109159292%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl159111159297%_))
                          (let ((_%e159112159300%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl159111159297%_))))
                            (let ((_%tl159114159305%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e159112159300%_)))
                                  (_%hd159113159303%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e159112159300%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl159114159305%_))
                                  (let ((_%e159115159308%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl159114159305%_))))
                                    (let ((_%tl159117159313%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e159115159308%_)))
                                          (_%hd159116159311%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e159115159308%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl159117159313%_))
                                          (_%__match160088160089%_
                                           _%e159109159292%_
                                           _%hd159110159295%_
                                           _%tl159111159297%_
                                           _%e159112159300%_
                                           _%hd159113159303%_
                                           _%tl159114159305%_
                                           _%e159115159308%_
                                           _%hd159116159311%_
                                           _%tl159117159313%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd159113159303%_))
                                              (let ((_%e159127159226%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd159113159303%_))))
                                                (let ((_%tl159129159231%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e159127159226%_)))
                                                      (_%hd159128159229%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e159127159226%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl159129159231%_))
                                                      (let ((_%__splice160065160066%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl159129159231%_
                        '0))))
                (let ((_%tl159132159236%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice160065160066%_ '1)))
                      (_%target159130159234%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice160065160066%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl159132159236%_))
                      (_%__match160114160115%_
                       _%e159109159292%_
                       _%hd159110159295%_
                       _%tl159111159297%_
                       _%e159112159300%_
                       _%hd159113159303%_
                       _%tl159114159305%_
                       _%e159127159226%_
                       _%hd159128159229%_
                       _%tl159129159231%_
                       _%__splice160065160066%_
                       _%target159130159234%_
                       _%tl159132159236%_)
                      (let () (declare (not safe)) (_%g159105159157%_)))))
              (let () (declare (not safe)) (_%g159105159157%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g159105159157%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd159113159303%_))
                                      (let ((_%e159127159226%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd159113159303%_))))
                                        (let ((_%tl159129159231%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159127159226%_)))
                                              (_%hd159128159229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159127159226%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl159129159231%_))
                                              (let ((_%__splice160065160066%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl159129159231%_
                                                        '0))))
                                                (let ((_%tl159132159236%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice160065160066%_
                                                          '1)))
                                                      (_%target159130159234%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice160065160066%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl159132159236%_))
                                                      (_%__match160114160115%_
                                                       _%e159109159292%_
                                                       _%hd159110159295%_
                                                       _%tl159111159297%_
                                                       _%e159112159300%_
                                                       _%hd159113159303%_
                                                       _%tl159114159305%_
                                                       _%e159127159226%_
                                                       _%hd159128159229%_
                                                       _%tl159129159231%_
                                                       _%__splice160065160066%_
                                                       _%target159130159234%_
                                                       _%tl159132159236%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g159105159157%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g159105159157%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g159105159157%_))))))
                          (let () (declare (not safe)) (_%g159105159157%_)))))
                  (let () (declare (not safe)) (_%g159105159157%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self159059%_ _%stx159060%_)
        (let* ((_%g159062159072%_
                (lambda (_%g159063159069%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159063159069%_))))
               (_%g159061159097%_
                (lambda (_%g159063159075%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159063159075%_))
                      (let ((_%e159065159077%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159063159075%_))))
                        (let ((_%hd159066159080%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159065159077%_)))
                              (_%tl159067159082%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159065159077%_))))
                          ((lambda (_%g159064159085%_)
                             (let ((_%decls159095%_
                                    (map gx#syntax->datum _%g159064159085%_)))
                               (let ((__tmp161475
                                      (let ((__tmp161476
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp161476
                                         _%decls159095%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp161475))
                               (cons 'declare _%decls159095%_)))
                           _%tl159067159082%_)))
                      (_%g159062159072%_ _%g159063159075%_)))))
          (_%g159061159097%_ _%stx159060%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self158806%_ _%stx158807%_)
        (let* ((_%g158809158826%_
                (lambda (_%g158810158823%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158810158823%_))))
               (_%g158808159056%_
                (lambda (_%g158810158829%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158810158829%_))
                      (let ((_%e158813158831%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158810158829%_))))
                        (let ((_%hd158814158834%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158813158831%_)))
                              (_%tl158815158836%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158813158831%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl158815158836%_))
                              (let ((_%e158816158839%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl158815158836%_))))
                                (let ((_%hd158817158842%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e158816158839%_)))
                                      (_%tl158818158844%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e158816158839%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl158818158844%_))
                                      (let ((_%e158819158847%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl158818158844%_))))
                                        (let ((_%hd158820158850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e158819158847%_)))
                                              (_%tl158821158852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e158819158847%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl158821158852%_))
                                              ((lambda (_%g158811158855%_
                                                        _%g158812158856%_)
                                                 (let* ((_%__stx160167160168%_
                                                         _%g158812158856%_)
                                                        (_%g158873158887%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx160167160168%_)))))
                                                   (let ((_%__kont160169160170%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self158806%_
                                                               _%g158811158855%_))))
                                                         (_%__kont160171160172%_
                                                          (lambda (_%g158879159019%_)
                                                            (let ((_%eid159028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g158879159019%_))))
                      (let ((_%lambda-expr159029159031%_
                             (gxc#apply-find-lambda-expression
                              _%g158811158855%_)))
                        (if _%lambda-expr159029159031%_
                            (let* ((_%lambda-expr159033%_
                                    _%lambda-expr159029159031%_)
                                   (__tmp161477
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp161477
                               _%lambda-expr159033%_
                               _%eid159028%_))
                            '#f))
                      (cons 'define
                            (cons _%eid159028%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self158806%_
                                           _%g158811158855%_))
                                        '()))))))
                 (_%__kont160173160174%_
                  (lambda ()
                    (let* ((_%tmp158894%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body159003%_
                            (let _%lp158896%_ ((_%rest158898%_
                                                _%g158812158856%_)
                                               (_%k158899%_ '0)
                                               (_%r158900%_ '()))
                              (let* ((_%__stx160137160138%_ _%rest158898%_)
                                     (_%g158905158922%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx160137160138%_)))))
                                (let ((_%__kont160139160140%_
                                       (lambda (_%g158907158990%_)
                                         (_%lp158896%_
                                          _%g158907158990%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k158899%_ '1))
                                          _%r158900%_)))
                                      (_%__kont160141160142%_
                                       (lambda (_%g158912158963%_
                                                _%g158913158964%_)
                                         (_%lp158896%_
                                          _%g158912158963%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k158899%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g158913158964%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp158894%_
                           _%k158899%_
                           _%g158912158963%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r158900%_))))
                                      (_%__kont160143160144%_
                                       (lambda (_%g158917158934%_)
                                         (let ((__tmp161478
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g158917158934%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp158894%_
                                 _%k158899%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp161478
                                            _%r158900%_))))
                                      (_%__kont160145160146%_
                                       (lambda () (reverse _%r158900%_))))
                                  (let ((_%g158903158950%_
                                         (lambda ()
                                           (let ((_%g158917158934%_
                                                  _%__stx160137160138%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g158917158934%_))
                                                 (_%__kont160143160144%_
                                                  _%g158917158934%_)
                                                 (_%__kont160145160146%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx160137160138%_))
                                        (let ((_%e158908158979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx160137160138%_))))
                                          (let ((_%tl158910158984%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e158908158979%_)))
                                                (_%hd158909158982%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e158908158979%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd158909158982%_))
                                                (let ((_%e158911158987%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd158909158982%_))))
                                                  (if (equal? _%e158911158987%_
                                                              '#f)
                                                      (_%__kont160139160140%_
                                                       _%tl158910158984%_)
                                                      (_%__kont160141160142%_
                                                       _%tl158910158984%_
                                                       _%hd158909158982%_)))
                                                (_%__kont160141160142%_
                                                 _%tl158910158984%_
                                                 _%hd158909158982%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g158903158950%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp158894%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self158806%_
                                                       _%g158811158855%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp158894%_
                                         _%g158812158856%_
                                         _%g158811158855%_)
                                        _%body159003%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx160167160168%_))
                                                         (let ((_%e158875159040%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx160167160168%_))))
                   (let ((_%tl158877159045%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e158875159040%_)))
                         (_%hd158876159043%_
                          (let ()
                            (declare (not safe))
                            (##car _%e158875159040%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd158876159043%_))
                         (let ((_%e158878159048%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd158876159043%_))))
                           (if (equal? _%e158878159048%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl158877159045%_))
                                   (_%__kont160169160170%_)
                                   (_%__kont160173160174%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl158877159045%_))
                                   (_%__kont160171160172%_ _%hd158876159043%_)
                                   (_%__kont160173160174%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl158877159045%_))
                             (_%__kont160171160172%_ _%hd158876159043%_)
                             (_%__kont160173160174%_)))))
                 (_%__kont160173160174%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd158820158850%_
                                               _%hd158817158842%_)
                                              (_%g158809158826%_
                                               _%g158810158829%_))))
                                      (_%g158809158826%_ _%g158810158829%_))))
                              (_%g158809158826%_ _%g158810158829%_))))
                      (_%g158809158826%_ _%g158810158829%_)))))
          (_%g158808159056%_ _%stx158807%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals158781%_ _%hd158782%_ _%expr158783%_)
        (let ((_%$e158785%_ (gxc#apply-count-values _%expr158783%_)))
          (if _%$e158785%_
              ((lambda (_%count158788%_)
                 (let ((_%len158790%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd158782%_)))
                       (_%cmp158791%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd158782%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len158790%_ '0))
                           (_%cmp158791%_ _%count158788%_ _%len158790%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr158783%_
                          _%hd158782%_)))))
               _%$e158785%_)
              (let* ((_%len158797%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd158782%_)))
                     (_%cmp158799%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd158782%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg158801%_
                      (let ((__tmp161480
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd158782%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp161479 (number->string _%len158797%_)))
                        (declare (not safe))
                        (##string-append __tmp161480 __tmp161479 '" values")))
                     (_%count158803%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd158782%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len158797%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count158803%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals158781%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp158799%_
                                (cons _%count158803%_
                                      (cons _%len158797%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp158799%_
                                                        (cons _%count158803%_
                                                              (cons _%len158797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg158801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count158803%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var158776%_)
        (letrec ((_%generate-inline158778%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var158776%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var158776%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline158778%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline158778%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var158769%_ _%i158770%_ _%rest158771%_)
        (letrec ((_%generate-inline158773%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i158770%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest158771%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var158769%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var158769%_
                                                      (cons '0 '())))
                                          (cons _%var158769%_ '()))))
                        (cons '##values-ref
                              (cons _%var158769%_ (cons _%i158770%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline158773%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline158773%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var158763%_ _%i158764%_)
        (if (let () (declare (not safe)) (##fx= _%i158764%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var158763%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var158763%_ '()))
                                  (cons (cons 'list (cons _%var158763%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var158763%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var158763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var158763%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i158764%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var158763%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var158763%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var158763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var158763%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var158763%_ '()))
                                (cons _%i158764%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var158763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i158764%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self158695%_ _%stx158696%_)
        (let* ((_%g158698158715%_
                (lambda (_%g158699158712%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158699158712%_))))
               (_%g158697158760%_
                (lambda (_%g158699158718%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158699158718%_))
                      (let ((_%e158702158720%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158699158718%_))))
                        (let ((_%hd158703158723%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158702158720%_)))
                              (_%tl158704158725%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158702158720%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl158704158725%_))
                              (let ((_%e158705158728%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl158704158725%_))))
                                (let ((_%hd158706158731%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e158705158728%_)))
                                      (_%tl158707158733%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e158705158728%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl158707158733%_))
                                      (let ((_%e158708158736%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl158707158733%_))))
                                        (let ((_%hd158709158739%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e158708158736%_)))
                                              (_%tl158710158741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e158708158736%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl158710158741%_))
                                              ((lambda (_%g158700158744%_
                                                        _%g158701158745%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self158695%_
                                                  _%g158701158745%_
                                                  _%g158700158744%_))
                                               _%hd158709158739%_
                                               _%hd158706158731%_)
                                              (_%g158698158715%_
                                               _%g158699158718%_))))
                                      (_%g158698158715%_ _%g158699158718%_))))
                              (_%g158698158715%_ _%g158699158718%_))))
                      (_%g158698158715%_ _%g158699158718%_)))))
          (_%g158697158760%_ _%stx158696%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self158654%_ _%hd158655%_ _%body158656%_)
        (let* ((_%hd158658%_ (gxc#generate-runtime-lambda-head _%hd158655%_))
               (_%body158660%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self158654%_ _%body158656%_)))
               (_%body158692%_
                (let* ((_%body158661158669%_ _%body158660%_)
                       (_%else158663158677%_
                        (lambda () (cons _%body158660%_ '())))
                       (_%K158665158682%_
                        (lambda (_%exprs158680%_) _%exprs158680%_)))
                  (if (pair? _%body158661158669%_)
                      (let ((_%hd158666158685%_
                             (let ()
                               (declare (not safe))
                               (##car _%body158661158669%_)))
                            (_%tl158667158687%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body158661158669%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd158666158685%_ 'begin))
                            (let ((_%exprs158690%_ _%tl158667158687%_))
                              (_%K158665158682%_ _%exprs158690%_))
                            (_%else158663158677%_)))
                      (_%else158663158677%_)))))
          (cons 'lambda (cons _%hd158658%_ _%body158692%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd158652%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd158652%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self157209%_ _%stx157210%_)
        (letrec ((_%dispatch-case?157212%_
                  (lambda (_%hd157890%_ _%body157891%_)
                    (let* ((_%form157893%_
                            (cons _%hd157890%_ (cons _%body157891%_ '())))
                           (_%__stx160199160200%_ _%form157893%_)
                           (_%g157898158055%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx160199160200%_)))))
                      (let ((_%__kont160201160202%_
                             (lambda (_%g157900158572%_
                                      _%g157901158573%_
                                      _%g157902158574%_)
                               '#t))
                            (_%__kont160207160208%_
                             (lambda (_%g157945158364%_
                                      _%g157946158365%_
                                      _%g157947158366%_
                                      _%g157948158367%_
                                      _%g157949158368%_
                                      _%g157950158369%_)
                               '#t))
                            (_%__kont160213160214%_
                             (lambda (_%g158011158163%_
                                      _%g158012158164%_
                                      _%g158013158165%_
                                      _%g158014158166%_)
                               '#t))
                            (_%__kont160215160216%_ (lambda () '#f)))
                        (let* ((_%__match160340160341%_
                                (lambda (_%e158015158067%_
                                         _%hd158016158070%_
                                         _%tl158017158072%_
                                         _%e158018158075%_
                                         _%hd158019158078%_
                                         _%tl158020158080%_
                                         _%e158021158083%_
                                         _%hd158022158086%_
                                         _%tl158023158088%_
                                         _%e158024158091%_
                                         _%hd158025158094%_
                                         _%tl158026158096%_
                                         _%e158027158099%_
                                         _%hd158028158102%_
                                         _%tl158029158104%_
                                         _%e158030158107%_
                                         _%hd158031158110%_
                                         _%tl158032158112%_
                                         _%e158033158115%_
                                         _%hd158034158118%_
                                         _%tl158035158120%_
                                         _%e158036158123%_
                                         _%hd158037158126%_
                                         _%tl158038158128%_
                                         _%e158039158131%_
                                         _%hd158040158134%_
                                         _%tl158041158136%_
                                         _%e158042158139%_
                                         _%hd158043158142%_
                                         _%tl158044158144%_
                                         _%e158045158147%_
                                         _%hd158046158150%_
                                         _%tl158047158152%_
                                         _%e158048158155%_
                                         _%hd158049158158%_
                                         _%tl158050158160%_)
                                  (let ((_%g158011158163%_ _%hd158049158158%_)
                                        (_%g158012158164%_ _%hd158040158134%_)
                                        (_%g158013158165%_ _%hd158031158110%_)
                                        (_%g158014158166%_ _%hd158016158070%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g158014158166%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g158013158165%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g158014158166%_
                                                _%g158011158163%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g158012158164%_
                                                     _%g158014158166%_))))
                                        (_%__kont160213160214%_
                                         _%g158011158163%_
                                         _%g158012158164%_
                                         _%g158013158165%_
                                         _%g158014158166%_)
                                        (_%__kont160215160216%_)))))
                               (_%__match160312160313%_
                                (lambda (_%e158015158067%_
                                         _%hd158016158070%_
                                         _%tl158017158072%_
                                         _%e158018158075%_
                                         _%hd158019158078%_
                                         _%tl158020158080%_
                                         _%e158021158083%_
                                         _%hd158022158086%_
                                         _%tl158023158088%_
                                         _%e158024158091%_
                                         _%hd158025158094%_
                                         _%tl158026158096%_
                                         _%e158027158099%_
                                         _%hd158028158102%_
                                         _%tl158029158104%_
                                         _%e158030158107%_
                                         _%hd158031158110%_
                                         _%tl158032158112%_
                                         _%e158033158115%_
                                         _%hd158034158118%_
                                         _%tl158035158120%_
                                         _%e158036158123%_
                                         _%hd158037158126%_
                                         _%tl158038158128%_
                                         _%e158039158131%_
                                         _%hd158040158134%_
                                         _%tl158041158136%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl158035158120%_))
                                      (let ((_%e158042158139%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl158035158120%_))))
                                        (let ((_%tl158044158144%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e158042158139%_)))
                                              (_%hd158043158142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e158042158139%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd158043158142%_))
                                              (let ((_%e158045158147%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd158043158142%_))))
                                                (let ((_%tl158047158152%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e158045158147%_)))
                                                      (_%hd158046158150%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e158045158147%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd158046158150%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd158046158150%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl158047158152%_))
                      (let ((_%e158048158155%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl158047158152%_))))
                        (let ((_%tl158050158160%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158048158155%_)))
                              (_%hd158049158158%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158048158155%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl158050158160%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl158044158144%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl158020158080%_))
                                      (_%__match160340160341%_
                                       _%e158015158067%_
                                       _%hd158016158070%_
                                       _%tl158017158072%_
                                       _%e158018158075%_
                                       _%hd158019158078%_
                                       _%tl158020158080%_
                                       _%e158021158083%_
                                       _%hd158022158086%_
                                       _%tl158023158088%_
                                       _%e158024158091%_
                                       _%hd158025158094%_
                                       _%tl158026158096%_
                                       _%e158027158099%_
                                       _%hd158028158102%_
                                       _%tl158029158104%_
                                       _%e158030158107%_
                                       _%hd158031158110%_
                                       _%tl158032158112%_
                                       _%e158033158115%_
                                       _%hd158034158118%_
                                       _%tl158035158120%_
                                       _%e158036158123%_
                                       _%hd158037158126%_
                                       _%tl158038158128%_
                                       _%e158039158131%_
                                       _%hd158040158134%_
                                       _%tl158041158136%_
                                       _%e158042158139%_
                                       _%hd158043158142%_
                                       _%tl158044158144%_
                                       _%e158045158147%_
                                       _%hd158046158150%_
                                       _%tl158047158152%_
                                       _%e158048158155%_
                                       _%hd158049158158%_
                                       _%tl158050158160%_)
                                      (_%__kont160215160216%_))
                                  (_%__kont160215160216%_))
                              (_%__kont160215160216%_))))
                      (_%__kont160215160216%_))
                  (_%__kont160215160216%_))
              (_%__kont160215160216%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont160215160216%_))))
                                      (_%__kont160215160216%_))))
                               (_%__match160242160243%_
                                (lambda (_%e157951158208%_
                                         _%hd157952158211%_
                                         _%tl157953158213%_
                                         _%__splice160209160210%_
                                         _%target157954158216%_
                                         _%tl157956158218%_)
                                  (letrec ((_%loop157957158221%_
                                            (lambda (_%hd157955158224%_
                                                     _%arg157961158226%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157955158224%_))
                                                  (let ((_%e157958158228%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157955158224%_))))
                                                    (let ((_%lp-tl157960158233%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157958158228%_)))
                                                          (_%lp-hd157959158231%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157958158228%_))))
                                                      (_%loop157957158221%_
                                                       _%lp-tl157960158233%_
                                                       (cons _%lp-hd157959158231%_
                                                             _%arg157961158226%_))))
                                                  (let ((_%arg157962158236%_
                                                         (reverse _%arg157961158226%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl157953158213%_))
                                                        (let ((_%e157963158238%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl157953158213%_))))
                  (let ((_%tl157965158243%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e157963158238%_)))
                        (_%hd157964158241%_
                         (let ()
                           (declare (not safe))
                           (##car _%e157963158238%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd157964158241%_))
                        (let ((_%e157966158246%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd157964158241%_))))
                          (let ((_%tl157968158251%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157966158246%_)))
                                (_%hd157967158249%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157966158246%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd157967158249%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd157967158249%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl157968158251%_))
                                        (let ((_%e157969158254%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl157968158251%_))))
                                          (let ((_%tl157971158259%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e157969158254%_)))
                                                (_%hd157970158257%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e157969158254%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd157970158257%_))
                                                (let ((_%e157972158262%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd157970158257%_))))
                                                  (let ((_%tl157974158267%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e157972158262%_)))
                                                        (_%hd157973158265%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e157972158262%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd157973158265%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd157973158265%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl157974158267%_))
                        (let ((_%e157975158270%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl157974158267%_))))
                          (let ((_%tl157977158275%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157975158270%_)))
                                (_%hd157976158273%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157975158270%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl157977158275%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl157971158259%_))
                                    (let ((_%e157978158278%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl157971158259%_))))
                                      (let ((_%tl157980158283%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e157978158278%_)))
                                            (_%hd157979158281%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e157978158278%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd157979158281%_))
                                            (let ((_%e157981158286%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd157979158281%_))))
                                              (let ((_%tl157983158291%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e157981158286%_)))
                                                    (_%hd157982158289%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e157981158286%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd157982158289%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd157982158289%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl157983158291%_))
                                                            (let ((_%e157984158294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl157983158291%_))))
                      (let ((_%tl157986158299%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e157984158294%_)))
                            (_%hd157985158297%_
                             (let ()
                               (declare (not safe))
                               (##car _%e157984158294%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl157986158299%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl157980158283%_))
                                (if (let ((__tmp161481
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl157980158283%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp161481 '1))
                                    (let ((_%__splice160211160212%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl157980158283%_
                                              '1))))
                                      (let ((_%tl157989158304%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice160211160212%_
                                                '1)))
                                            (_%target157987158302%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice160211160212%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl157989158304%_))
                                            (let ((_%e157996158307%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl157989158304%_))))
                                              (let ((_%tl157998158312%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e157996158307%_)))
                                                    (_%hd157997158310%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e157996158307%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd157997158310%_))
                                                    (let ((_%e157999158315%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd157997158310%_))))
                                                      (let ((_%tl158001158320%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e157999158315%_)))
                    (_%hd158000158318%_
                     (let () (declare (not safe)) (##car _%e157999158315%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd158000158318%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd158000158318%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl158001158320%_))
                            (let ((_%e158002158323%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl158001158320%_))))
                              (let ((_%tl158004158328%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e158002158323%_)))
                                    (_%hd158003158326%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e158002158323%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl158004158328%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl157998158312%_))
                                        (letrec ((_%loop157990158331%_
                                                  (lambda (_%hd157988158334%_
                                                           _%xarg157994158336%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd157988158334%_))
                                                        (let ((_%e157991158338%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd157988158334%_))))
                  (let ((_%lp-tl157993158343%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e157991158338%_)))
                        (_%lp-hd157992158341%_
                         (let ()
                           (declare (not safe))
                           (##car _%e157991158338%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd157992158341%_))
                        (let ((_%e158005158346%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd157992158341%_))))
                          (let ((_%tl158007158351%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e158005158346%_)))
                                (_%hd158006158349%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e158005158346%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd158006158349%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd158006158349%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl158007158351%_))
                                        (let ((_%e158008158354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl158007158351%_))))
                                          (let ((_%tl158010158359%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e158008158354%_)))
                                                (_%hd158009158357%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e158008158354%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl158010158359%_))
                                                (_%loop157990158331%_
                                                 _%lp-tl157993158343%_
                                                 (cons _%hd158009158357%_
                                                       _%xarg157994158336%_))
                                                (_%__match160312160313%_
                                                 _%e157951158208%_
                                                 _%hd157952158211%_
                                                 _%tl157953158213%_
                                                 _%e157963158238%_
                                                 _%hd157964158241%_
                                                 _%tl157965158243%_
                                                 _%e157966158246%_
                                                 _%hd157967158249%_
                                                 _%tl157968158251%_
                                                 _%e157969158254%_
                                                 _%hd157970158257%_
                                                 _%tl157971158259%_
                                                 _%e157972158262%_
                                                 _%hd157973158265%_
                                                 _%tl157974158267%_
                                                 _%e157975158270%_
                                                 _%hd157976158273%_
                                                 _%tl157977158275%_
                                                 _%e157978158278%_
                                                 _%hd157979158281%_
                                                 _%tl157980158283%_
                                                 _%e157981158286%_
                                                 _%hd157982158289%_
                                                 _%tl157983158291%_
                                                 _%e157984158294%_
                                                 _%hd157985158297%_
                                                 _%tl157986158299%_))))
                                        (_%__match160312160313%_
                                         _%e157951158208%_
                                         _%hd157952158211%_
                                         _%tl157953158213%_
                                         _%e157963158238%_
                                         _%hd157964158241%_
                                         _%tl157965158243%_
                                         _%e157966158246%_
                                         _%hd157967158249%_
                                         _%tl157968158251%_
                                         _%e157969158254%_
                                         _%hd157970158257%_
                                         _%tl157971158259%_
                                         _%e157972158262%_
                                         _%hd157973158265%_
                                         _%tl157974158267%_
                                         _%e157975158270%_
                                         _%hd157976158273%_
                                         _%tl157977158275%_
                                         _%e157978158278%_
                                         _%hd157979158281%_
                                         _%tl157980158283%_
                                         _%e157981158286%_
                                         _%hd157982158289%_
                                         _%tl157983158291%_
                                         _%e157984158294%_
                                         _%hd157985158297%_
                                         _%tl157986158299%_))
                                    (_%__match160312160313%_
                                     _%e157951158208%_
                                     _%hd157952158211%_
                                     _%tl157953158213%_
                                     _%e157963158238%_
                                     _%hd157964158241%_
                                     _%tl157965158243%_
                                     _%e157966158246%_
                                     _%hd157967158249%_
                                     _%tl157968158251%_
                                     _%e157969158254%_
                                     _%hd157970158257%_
                                     _%tl157971158259%_
                                     _%e157972158262%_
                                     _%hd157973158265%_
                                     _%tl157974158267%_
                                     _%e157975158270%_
                                     _%hd157976158273%_
                                     _%tl157977158275%_
                                     _%e157978158278%_
                                     _%hd157979158281%_
                                     _%tl157980158283%_
                                     _%e157981158286%_
                                     _%hd157982158289%_
                                     _%tl157983158291%_
                                     _%e157984158294%_
                                     _%hd157985158297%_
                                     _%tl157986158299%_))
                                (_%__match160312160313%_
                                 _%e157951158208%_
                                 _%hd157952158211%_
                                 _%tl157953158213%_
                                 _%e157963158238%_
                                 _%hd157964158241%_
                                 _%tl157965158243%_
                                 _%e157966158246%_
                                 _%hd157967158249%_
                                 _%tl157968158251%_
                                 _%e157969158254%_
                                 _%hd157970158257%_
                                 _%tl157971158259%_
                                 _%e157972158262%_
                                 _%hd157973158265%_
                                 _%tl157974158267%_
                                 _%e157975158270%_
                                 _%hd157976158273%_
                                 _%tl157977158275%_
                                 _%e157978158278%_
                                 _%hd157979158281%_
                                 _%tl157980158283%_
                                 _%e157981158286%_
                                 _%hd157982158289%_
                                 _%tl157983158291%_
                                 _%e157984158294%_
                                 _%hd157985158297%_
                                 _%tl157986158299%_))))
                        (_%__match160312160313%_
                         _%e157951158208%_
                         _%hd157952158211%_
                         _%tl157953158213%_
                         _%e157963158238%_
                         _%hd157964158241%_
                         _%tl157965158243%_
                         _%e157966158246%_
                         _%hd157967158249%_
                         _%tl157968158251%_
                         _%e157969158254%_
                         _%hd157970158257%_
                         _%tl157971158259%_
                         _%e157972158262%_
                         _%hd157973158265%_
                         _%tl157974158267%_
                         _%e157975158270%_
                         _%hd157976158273%_
                         _%tl157977158275%_
                         _%e157978158278%_
                         _%hd157979158281%_
                         _%tl157980158283%_
                         _%e157981158286%_
                         _%hd157982158289%_
                         _%tl157983158291%_
                         _%e157984158294%_
                         _%hd157985158297%_
                         _%tl157986158299%_))))
                (let ((_%xarg157995158362%_ (reverse _%xarg157994158336%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl157965158243%_))
                      (let ((_%g157945158364%_ _%hd158003158326%_)
                            (_%g157946158365%_ _%xarg157995158362%_)
                            (_%g157947158366%_ _%hd157985158297%_)
                            (_%g157948158367%_ _%hd157976158273%_)
                            (_%g157949158368%_ _%tl157956158218%_)
                            (_%g157950158369%_ _%arg157962158236%_))
                        (if (and (let ((__tmp161482
                                        (let ((__tmp161483
                                               (lambda (_%g158412158415%_
                                                        _%g158413158417%_)
                                                 (cons _%g158412158415%_
                                                       _%g158413158417%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp161483
                                           '()
                                           _%g157950158369%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp161482))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g157949158368%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g157948158367%_
                                    'apply))
                                 (let ((__tmp161486
                                        (length (let ((__tmp161487
                                                       (lambda (_%g158419158422%_
                                                                _%g158420158424%_)
                                                         (cons _%g158419158422%_
                                                               _%g158420158424%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp161487
                                                   '()
                                                   _%g157950158369%_))))
                                       (__tmp161484
                                        (length (let ((__tmp161485
                                                       (lambda (_%g158426158429%_
                                                                _%g158427158431%_)
                                                         (cons _%g158426158429%_
                                                               _%g158427158431%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp161485
                                                   '()
                                                   _%g157946158365%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp161486 __tmp161484))
                                 (let ((__tmp161490
                                        (let ((__tmp161491
                                               (lambda (_%g158433158436%_
                                                        _%g158434158438%_)
                                                 (cons _%g158433158436%_
                                                       _%g158434158438%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp161491
                                           '()
                                           _%g157950158369%_)))
                                       (__tmp161488
                                        (let ((__tmp161489
                                               (lambda (_%g158440158443%_
                                                        _%g158441158445%_)
                                                 (cons _%g158440158443%_
                                                       _%g158441158445%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp161489
                                           '()
                                           _%g157946158365%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp161490
                                    __tmp161488))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g157949158368%_
                                    _%g157945158364%_))
                                 (not (let ((__tmp161495
                                             (lambda (_%g158447158449%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g158447158449%_
                                                  _%g157947158366%_))))
                                            (__tmp161492
                                             (let ((__tmp161494
                                                    (lambda (_%g158451158454%_
                                                             _%g158452158456%_)
                                                      (cons _%g158451158454%_
                                                            _%g158452158456%_)))
                                                   (__tmp161493
                                                    (cons _%g157949158368%_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp161494
                                                __tmp161493
                                                _%g157950158369%_))))
                                        (declare (not safe))
                                        (__find __tmp161495 __tmp161492))))
                            (_%__kont160207160208%_
                             _%g157945158364%_
                             _%g157946158365%_
                             _%g157947158366%_
                             _%g157948158367%_
                             _%g157949158368%_
                             _%g157950158369%_)
                            (_%__match160312160313%_
                             _%e157951158208%_
                             _%hd157952158211%_
                             _%tl157953158213%_
                             _%e157963158238%_
                             _%hd157964158241%_
                             _%tl157965158243%_
                             _%e157966158246%_
                             _%hd157967158249%_
                             _%tl157968158251%_
                             _%e157969158254%_
                             _%hd157970158257%_
                             _%tl157971158259%_
                             _%e157972158262%_
                             _%hd157973158265%_
                             _%tl157974158267%_
                             _%e157975158270%_
                             _%hd157976158273%_
                             _%tl157977158275%_
                             _%e157978158278%_
                             _%hd157979158281%_
                             _%tl157980158283%_
                             _%e157981158286%_
                             _%hd157982158289%_
                             _%tl157983158291%_
                             _%e157984158294%_
                             _%hd157985158297%_
                             _%tl157986158299%_)))
                      (_%__match160312160313%_
                       _%e157951158208%_
                       _%hd157952158211%_
                       _%tl157953158213%_
                       _%e157963158238%_
                       _%hd157964158241%_
                       _%tl157965158243%_
                       _%e157966158246%_
                       _%hd157967158249%_
                       _%tl157968158251%_
                       _%e157969158254%_
                       _%hd157970158257%_
                       _%tl157971158259%_
                       _%e157972158262%_
                       _%hd157973158265%_
                       _%tl157974158267%_
                       _%e157975158270%_
                       _%hd157976158273%_
                       _%tl157977158275%_
                       _%e157978158278%_
                       _%hd157979158281%_
                       _%tl157980158283%_
                       _%e157981158286%_
                       _%hd157982158289%_
                       _%tl157983158291%_
                       _%e157984158294%_
                       _%hd157985158297%_
                       _%tl157986158299%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop157990158331%_
                                           _%target157987158302%_
                                           '()))
                                        (_%__match160312160313%_
                                         _%e157951158208%_
                                         _%hd157952158211%_
                                         _%tl157953158213%_
                                         _%e157963158238%_
                                         _%hd157964158241%_
                                         _%tl157965158243%_
                                         _%e157966158246%_
                                         _%hd157967158249%_
                                         _%tl157968158251%_
                                         _%e157969158254%_
                                         _%hd157970158257%_
                                         _%tl157971158259%_
                                         _%e157972158262%_
                                         _%hd157973158265%_
                                         _%tl157974158267%_
                                         _%e157975158270%_
                                         _%hd157976158273%_
                                         _%tl157977158275%_
                                         _%e157978158278%_
                                         _%hd157979158281%_
                                         _%tl157980158283%_
                                         _%e157981158286%_
                                         _%hd157982158289%_
                                         _%tl157983158291%_
                                         _%e157984158294%_
                                         _%hd157985158297%_
                                         _%tl157986158299%_))
                                    (_%__match160312160313%_
                                     _%e157951158208%_
                                     _%hd157952158211%_
                                     _%tl157953158213%_
                                     _%e157963158238%_
                                     _%hd157964158241%_
                                     _%tl157965158243%_
                                     _%e157966158246%_
                                     _%hd157967158249%_
                                     _%tl157968158251%_
                                     _%e157969158254%_
                                     _%hd157970158257%_
                                     _%tl157971158259%_
                                     _%e157972158262%_
                                     _%hd157973158265%_
                                     _%tl157974158267%_
                                     _%e157975158270%_
                                     _%hd157976158273%_
                                     _%tl157977158275%_
                                     _%e157978158278%_
                                     _%hd157979158281%_
                                     _%tl157980158283%_
                                     _%e157981158286%_
                                     _%hd157982158289%_
                                     _%tl157983158291%_
                                     _%e157984158294%_
                                     _%hd157985158297%_
                                     _%tl157986158299%_))))
                            (_%__match160312160313%_
                             _%e157951158208%_
                             _%hd157952158211%_
                             _%tl157953158213%_
                             _%e157963158238%_
                             _%hd157964158241%_
                             _%tl157965158243%_
                             _%e157966158246%_
                             _%hd157967158249%_
                             _%tl157968158251%_
                             _%e157969158254%_
                             _%hd157970158257%_
                             _%tl157971158259%_
                             _%e157972158262%_
                             _%hd157973158265%_
                             _%tl157974158267%_
                             _%e157975158270%_
                             _%hd157976158273%_
                             _%tl157977158275%_
                             _%e157978158278%_
                             _%hd157979158281%_
                             _%tl157980158283%_
                             _%e157981158286%_
                             _%hd157982158289%_
                             _%tl157983158291%_
                             _%e157984158294%_
                             _%hd157985158297%_
                             _%tl157986158299%_))
                        (_%__match160312160313%_
                         _%e157951158208%_
                         _%hd157952158211%_
                         _%tl157953158213%_
                         _%e157963158238%_
                         _%hd157964158241%_
                         _%tl157965158243%_
                         _%e157966158246%_
                         _%hd157967158249%_
                         _%tl157968158251%_
                         _%e157969158254%_
                         _%hd157970158257%_
                         _%tl157971158259%_
                         _%e157972158262%_
                         _%hd157973158265%_
                         _%tl157974158267%_
                         _%e157975158270%_
                         _%hd157976158273%_
                         _%tl157977158275%_
                         _%e157978158278%_
                         _%hd157979158281%_
                         _%tl157980158283%_
                         _%e157981158286%_
                         _%hd157982158289%_
                         _%tl157983158291%_
                         _%e157984158294%_
                         _%hd157985158297%_
                         _%tl157986158299%_))
                    (_%__match160312160313%_
                     _%e157951158208%_
                     _%hd157952158211%_
                     _%tl157953158213%_
                     _%e157963158238%_
                     _%hd157964158241%_
                     _%tl157965158243%_
                     _%e157966158246%_
                     _%hd157967158249%_
                     _%tl157968158251%_
                     _%e157969158254%_
                     _%hd157970158257%_
                     _%tl157971158259%_
                     _%e157972158262%_
                     _%hd157973158265%_
                     _%tl157974158267%_
                     _%e157975158270%_
                     _%hd157976158273%_
                     _%tl157977158275%_
                     _%e157978158278%_
                     _%hd157979158281%_
                     _%tl157980158283%_
                     _%e157981158286%_
                     _%hd157982158289%_
                     _%tl157983158291%_
                     _%e157984158294%_
                     _%hd157985158297%_
                     _%tl157986158299%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match160312160313%_
                                                     _%e157951158208%_
                                                     _%hd157952158211%_
                                                     _%tl157953158213%_
                                                     _%e157963158238%_
                                                     _%hd157964158241%_
                                                     _%tl157965158243%_
                                                     _%e157966158246%_
                                                     _%hd157967158249%_
                                                     _%tl157968158251%_
                                                     _%e157969158254%_
                                                     _%hd157970158257%_
                                                     _%tl157971158259%_
                                                     _%e157972158262%_
                                                     _%hd157973158265%_
                                                     _%tl157974158267%_
                                                     _%e157975158270%_
                                                     _%hd157976158273%_
                                                     _%tl157977158275%_
                                                     _%e157978158278%_
                                                     _%hd157979158281%_
                                                     _%tl157980158283%_
                                                     _%e157981158286%_
                                                     _%hd157982158289%_
                                                     _%tl157983158291%_
                                                     _%e157984158294%_
                                                     _%hd157985158297%_
                                                     _%tl157986158299%_))))
                                            (_%__match160312160313%_
                                             _%e157951158208%_
                                             _%hd157952158211%_
                                             _%tl157953158213%_
                                             _%e157963158238%_
                                             _%hd157964158241%_
                                             _%tl157965158243%_
                                             _%e157966158246%_
                                             _%hd157967158249%_
                                             _%tl157968158251%_
                                             _%e157969158254%_
                                             _%hd157970158257%_
                                             _%tl157971158259%_
                                             _%e157972158262%_
                                             _%hd157973158265%_
                                             _%tl157974158267%_
                                             _%e157975158270%_
                                             _%hd157976158273%_
                                             _%tl157977158275%_
                                             _%e157978158278%_
                                             _%hd157979158281%_
                                             _%tl157980158283%_
                                             _%e157981158286%_
                                             _%hd157982158289%_
                                             _%tl157983158291%_
                                             _%e157984158294%_
                                             _%hd157985158297%_
                                             _%tl157986158299%_))))
                                    (_%__match160312160313%_
                                     _%e157951158208%_
                                     _%hd157952158211%_
                                     _%tl157953158213%_
                                     _%e157963158238%_
                                     _%hd157964158241%_
                                     _%tl157965158243%_
                                     _%e157966158246%_
                                     _%hd157967158249%_
                                     _%tl157968158251%_
                                     _%e157969158254%_
                                     _%hd157970158257%_
                                     _%tl157971158259%_
                                     _%e157972158262%_
                                     _%hd157973158265%_
                                     _%tl157974158267%_
                                     _%e157975158270%_
                                     _%hd157976158273%_
                                     _%tl157977158275%_
                                     _%e157978158278%_
                                     _%hd157979158281%_
                                     _%tl157980158283%_
                                     _%e157981158286%_
                                     _%hd157982158289%_
                                     _%tl157983158291%_
                                     _%e157984158294%_
                                     _%hd157985158297%_
                                     _%tl157986158299%_))
                                (_%__match160312160313%_
                                 _%e157951158208%_
                                 _%hd157952158211%_
                                 _%tl157953158213%_
                                 _%e157963158238%_
                                 _%hd157964158241%_
                                 _%tl157965158243%_
                                 _%e157966158246%_
                                 _%hd157967158249%_
                                 _%tl157968158251%_
                                 _%e157969158254%_
                                 _%hd157970158257%_
                                 _%tl157971158259%_
                                 _%e157972158262%_
                                 _%hd157973158265%_
                                 _%tl157974158267%_
                                 _%e157975158270%_
                                 _%hd157976158273%_
                                 _%tl157977158275%_
                                 _%e157978158278%_
                                 _%hd157979158281%_
                                 _%tl157980158283%_
                                 _%e157981158286%_
                                 _%hd157982158289%_
                                 _%tl157983158291%_
                                 _%e157984158294%_
                                 _%hd157985158297%_
                                 _%tl157986158299%_))
                            (_%__kont160215160216%_))))
                    (_%__kont160215160216%_))
                (_%__kont160215160216%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont160215160216%_))))
                                            (_%__kont160215160216%_))))
                                    (_%__kont160215160216%_))
                                (_%__kont160215160216%_))))
                        (_%__kont160215160216%_))
                    (_%__kont160215160216%_))
                (_%__kont160215160216%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont160215160216%_))))
                                        (_%__kont160215160216%_))
                                    (_%__kont160215160216%_))
                                (_%__kont160215160216%_))))
                        (_%__kont160215160216%_))))
                (_%__kont160215160216%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop157957158221%_
                                     _%target157954158216%_
                                     '()))))
                               (_%__match160230160231%_
                                (lambda (_%e157903158464%_
                                         _%hd157904158467%_
                                         _%tl157905158469%_
                                         _%__splice160203160204%_
                                         _%target157906158472%_
                                         _%tl157908158474%_)
                                  (letrec ((_%loop157909158477%_
                                            (lambda (_%hd157907158480%_
                                                     _%arg157913158482%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157907158480%_))
                                                  (let ((_%e157910158484%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157907158480%_))))
                                                    (let ((_%lp-tl157912158489%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157910158484%_)))
                                                          (_%lp-hd157911158487%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157910158484%_))))
                                                      (_%loop157909158477%_
                                                       _%lp-tl157912158489%_
                                                       (cons _%lp-hd157911158487%_
                                                             _%arg157913158482%_))))
                                                  (let ((_%arg157914158492%_
                                                         (reverse _%arg157913158482%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl157905158469%_))
                                                        (let ((_%e157915158494%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl157905158469%_))))
                  (let ((_%tl157917158499%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e157915158494%_)))
                        (_%hd157916158497%_
                         (let ()
                           (declare (not safe))
                           (##car _%e157915158494%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd157916158497%_))
                        (let ((_%e157918158502%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd157916158497%_))))
                          (let ((_%tl157920158507%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157918158502%_)))
                                (_%hd157919158505%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157918158502%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd157919158505%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd157919158505%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl157920158507%_))
                                        (let ((_%e157921158510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl157920158507%_))))
                                          (let ((_%tl157923158515%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e157921158510%_)))
                                                (_%hd157922158513%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e157921158510%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd157922158513%_))
                                                (let ((_%e157924158518%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd157922158513%_))))
                                                  (let ((_%tl157926158523%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e157924158518%_)))
                                                        (_%hd157925158521%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e157924158518%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd157925158521%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd157925158521%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl157926158523%_))
                        (let ((_%e157927158526%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl157926158523%_))))
                          (let ((_%tl157929158531%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157927158526%_)))
                                (_%hd157928158529%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157927158526%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl157929158531%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl157923158515%_))
                                    (let ((_%__splice160205160206%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl157923158515%_
                                              '0))))
                                      (let ((_%tl157932158536%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice160205160206%_
                                                '1)))
                                            (_%target157930158534%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice160205160206%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl157932158536%_))
                                            (letrec ((_%loop157933158539%_
                                                      (lambda (_%hd157931158542%_
                                                               _%xarg157937158544%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd157931158542%_))
                                                            (let ((_%e157934158546%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd157931158542%_))))
                      (let ((_%lp-tl157936158551%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e157934158546%_)))
                            (_%lp-hd157935158549%_
                             (let ()
                               (declare (not safe))
                               (##car _%e157934158546%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd157935158549%_))
                            (let ((_%e157939158554%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd157935158549%_))))
                              (let ((_%tl157941158559%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e157939158554%_)))
                                    (_%hd157940158557%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e157939158554%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd157940158557%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd157940158557%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl157941158559%_))
                                            (let ((_%e157942158562%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl157941158559%_))))
                                              (let ((_%tl157944158567%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e157942158562%_)))
                                                    (_%hd157943158565%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e157942158562%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl157944158567%_))
                                                    (_%loop157933158539%_
                                                     _%lp-tl157936158551%_
                                                     (cons _%hd157943158565%_
                                                           _%xarg157937158544%_))
                                                    (_%__match160242160243%_
                                                     _%e157903158464%_
                                                     _%hd157904158467%_
                                                     _%tl157905158469%_
                                                     _%__splice160203160204%_
                                                     _%target157906158472%_
                                                     _%tl157908158474%_))))
                                            (_%__match160242160243%_
                                             _%e157903158464%_
                                             _%hd157904158467%_
                                             _%tl157905158469%_
                                             _%__splice160203160204%_
                                             _%target157906158472%_
                                             _%tl157908158474%_))
                                        (_%__match160242160243%_
                                         _%e157903158464%_
                                         _%hd157904158467%_
                                         _%tl157905158469%_
                                         _%__splice160203160204%_
                                         _%target157906158472%_
                                         _%tl157908158474%_))
                                    (_%__match160242160243%_
                                     _%e157903158464%_
                                     _%hd157904158467%_
                                     _%tl157905158469%_
                                     _%__splice160203160204%_
                                     _%target157906158472%_
                                     _%tl157908158474%_))))
                            (_%__match160242160243%_
                             _%e157903158464%_
                             _%hd157904158467%_
                             _%tl157905158469%_
                             _%__splice160203160204%_
                             _%target157906158472%_
                             _%tl157908158474%_))))
                    (let ((_%xarg157938158570%_
                           (reverse _%xarg157937158544%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl157917158499%_))
                          (let ((_%g157900158572%_ _%xarg157938158570%_)
                                (_%g157901158573%_ _%hd157928158529%_)
                                (_%g157902158574%_ _%arg157914158492%_))
                            (if (and (let ((__tmp161496
                                            (let ((__tmp161497
                                                   (lambda (_%g158602158605%_
                                                            _%g158603158607%_)
                                                     (cons _%g158602158605%_
                                                           _%g158603158607%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp161497
                                               '()
                                               _%g157902158574%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp161496))
                                     (let ((__tmp161500
                                            (length (let ((__tmp161501
                                                           (lambda (_%g158609158612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g158610158614%_)
                     (cons _%g158609158612%_ _%g158610158614%_))))
              (declare (not safe))
              (__foldr1 __tmp161501 '() _%g157902158574%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp161498
                                            (length (let ((__tmp161499
                                                           (lambda (_%g158616158619%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g158617158621%_)
                     (cons _%g158616158619%_ _%g158617158621%_))))
              (declare (not safe))
              (__foldr1 __tmp161499 '() _%g157900158572%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp161500 __tmp161498))
                                     (let ((__tmp161504
                                            (let ((__tmp161505
                                                   (lambda (_%g158623158626%_
                                                            _%g158624158628%_)
                                                     (cons _%g158623158626%_
                                                           _%g158624158628%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp161505
                                               '()
                                               _%g157902158574%_)))
                                           (__tmp161502
                                            (let ((__tmp161503
                                                   (lambda (_%g158630158633%_
                                                            _%g158631158635%_)
                                                     (cons _%g158630158633%_
                                                           _%g158631158635%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp161503
                                               '()
                                               _%g157900158572%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp161504
                                        __tmp161502))
                                     (not (let ((__tmp161508
                                                 (lambda (_%g158637158639%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g158637158639%_
                                                      _%g157901158573%_))))
                                                (__tmp161506
                                                 (let ((__tmp161507
                                                        (lambda (_%g158641158644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g158642158646%_)
                  (cons _%g158641158644%_ _%g158642158646%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp161507
                                                    '()
                                                    _%g157902158574%_))))
                                            (declare (not safe))
                                            (__find __tmp161508 __tmp161506))))
                                (_%__kont160201160202%_
                                 _%g157900158572%_
                                 _%g157901158573%_
                                 _%g157902158574%_)
                                (_%__match160242160243%_
                                 _%e157903158464%_
                                 _%hd157904158467%_
                                 _%tl157905158469%_
                                 _%__splice160203160204%_
                                 _%target157906158472%_
                                 _%tl157908158474%_)))
                          (_%__match160242160243%_
                           _%e157903158464%_
                           _%hd157904158467%_
                           _%tl157905158469%_
                           _%__splice160203160204%_
                           _%target157906158472%_
                           _%tl157908158474%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop157933158539%_
                                               _%target157930158534%_
                                               '()))
                                            (_%__match160242160243%_
                                             _%e157903158464%_
                                             _%hd157904158467%_
                                             _%tl157905158469%_
                                             _%__splice160203160204%_
                                             _%target157906158472%_
                                             _%tl157908158474%_))))
                                    (_%__match160242160243%_
                                     _%e157903158464%_
                                     _%hd157904158467%_
                                     _%tl157905158469%_
                                     _%__splice160203160204%_
                                     _%target157906158472%_
                                     _%tl157908158474%_))
                                (_%__match160242160243%_
                                 _%e157903158464%_
                                 _%hd157904158467%_
                                 _%tl157905158469%_
                                 _%__splice160203160204%_
                                 _%target157906158472%_
                                 _%tl157908158474%_))))
                        (_%__match160242160243%_
                         _%e157903158464%_
                         _%hd157904158467%_
                         _%tl157905158469%_
                         _%__splice160203160204%_
                         _%target157906158472%_
                         _%tl157908158474%_))
                    (_%__match160242160243%_
                     _%e157903158464%_
                     _%hd157904158467%_
                     _%tl157905158469%_
                     _%__splice160203160204%_
                     _%target157906158472%_
                     _%tl157908158474%_))
                (_%__match160242160243%_
                 _%e157903158464%_
                 _%hd157904158467%_
                 _%tl157905158469%_
                 _%__splice160203160204%_
                 _%target157906158472%_
                 _%tl157908158474%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match160242160243%_
                                                 _%e157903158464%_
                                                 _%hd157904158467%_
                                                 _%tl157905158469%_
                                                 _%__splice160203160204%_
                                                 _%target157906158472%_
                                                 _%tl157908158474%_))))
                                        (_%__match160242160243%_
                                         _%e157903158464%_
                                         _%hd157904158467%_
                                         _%tl157905158469%_
                                         _%__splice160203160204%_
                                         _%target157906158472%_
                                         _%tl157908158474%_))
                                    (_%__match160242160243%_
                                     _%e157903158464%_
                                     _%hd157904158467%_
                                     _%tl157905158469%_
                                     _%__splice160203160204%_
                                     _%target157906158472%_
                                     _%tl157908158474%_))
                                (_%__match160242160243%_
                                 _%e157903158464%_
                                 _%hd157904158467%_
                                 _%tl157905158469%_
                                 _%__splice160203160204%_
                                 _%target157906158472%_
                                 _%tl157908158474%_))))
                        (_%__match160242160243%_
                         _%e157903158464%_
                         _%hd157904158467%_
                         _%tl157905158469%_
                         _%__splice160203160204%_
                         _%target157906158472%_
                         _%tl157908158474%_))))
                (_%__match160242160243%_
                 _%e157903158464%_
                 _%hd157904158467%_
                 _%tl157905158469%_
                 _%__splice160203160204%_
                 _%target157906158472%_
                 _%tl157908158474%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop157909158477%_
                                     _%target157906158472%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx160199160200%_))
                              (let ((_%e157903158464%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx160199160200%_))))
                                (let ((_%tl157905158469%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157903158464%_)))
                                      (_%hd157904158467%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157903158464%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd157904158467%_))
                                      (let ((_%__splice160203160204%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd157904158467%_
                                                '0))))
                                        (let ((_%tl157908158474%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice160203160204%_
                                                  '1)))
                                              (_%target157906158472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice160203160204%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl157908158474%_))
                                              (_%__match160230160231%_
                                               _%e157903158464%_
                                               _%hd157904158467%_
                                               _%tl157905158469%_
                                               _%__splice160203160204%_
                                               _%target157906158472%_
                                               _%tl157908158474%_)
                                              (_%__match160242160243%_
                                               _%e157903158464%_
                                               _%hd157904158467%_
                                               _%tl157905158469%_
                                               _%__splice160203160204%_
                                               _%target157906158472%_
                                               _%tl157908158474%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl157905158469%_))
                                          (let ((_%e158018158075%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl157905158469%_))))
                                            (let ((_%tl158020158080%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e158018158075%_)))
                                                  (_%hd158019158078%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e158018158075%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd158019158078%_))
                                                  (let ((_%e158021158083%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd158019158078%_))))
                                                    (let ((_%tl158023158088%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e158021158083%_)))
                                                          (_%hd158022158086%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e158021158083%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd158022158086%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd158022158086%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl158023158088%_))
                          (let ((_%e158024158091%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl158023158088%_))))
                            (let ((_%tl158026158096%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e158024158091%_)))
                                  (_%hd158025158094%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e158024158091%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd158025158094%_))
                                  (let ((_%e158027158099%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd158025158094%_))))
                                    (let ((_%tl158029158104%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e158027158099%_)))
                                          (_%hd158028158102%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e158027158099%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd158028158102%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd158028158102%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl158029158104%_))
                                                  (let ((_%e158030158107%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl158029158104%_))))
                                                    (let ((_%tl158032158112%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e158030158107%_)))
                                                          (_%hd158031158110%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e158030158107%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl158032158112%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl158026158096%_))
                      (let ((_%e158033158115%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl158026158096%_))))
                        (let ((_%tl158035158120%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158033158115%_)))
                              (_%hd158034158118%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158033158115%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd158034158118%_))
                              (let ((_%e158036158123%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd158034158118%_))))
                                (let ((_%tl158038158128%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e158036158123%_)))
                                      (_%hd158037158126%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e158036158123%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd158037158126%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd158037158126%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl158038158128%_))
                                              (let ((_%e158039158131%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl158038158128%_))))
                                                (let ((_%tl158041158136%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e158039158131%_)))
                                                      (_%hd158040158134%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e158039158131%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl158041158136%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl158035158120%_))
                                                          (let ((_%e158042158139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl158035158120%_))))
                    (let ((_%tl158044158144%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e158042158139%_)))
                          (_%hd158043158142%_
                           (let ()
                             (declare (not safe))
                             (##car _%e158042158139%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd158043158142%_))
                          (let ((_%e158045158147%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd158043158142%_))))
                            (let ((_%tl158047158152%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e158045158147%_)))
                                  (_%hd158046158150%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e158045158147%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd158046158150%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd158046158150%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl158047158152%_))
                                          (let ((_%e158048158155%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl158047158152%_))))
                                            (let ((_%tl158050158160%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e158048158155%_)))
                                                  (_%hd158049158158%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e158048158155%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl158050158160%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl158044158144%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl158020158080%_))
                                                          (_%__match160340160341%_
                                                           _%e157903158464%_
                                                           _%hd157904158467%_
                                                           _%tl157905158469%_
                                                           _%e158018158075%_
                                                           _%hd158019158078%_
                                                           _%tl158020158080%_
                                                           _%e158021158083%_
                                                           _%hd158022158086%_
                                                           _%tl158023158088%_
                                                           _%e158024158091%_
                                                           _%hd158025158094%_
                                                           _%tl158026158096%_
                                                           _%e158027158099%_
                                                           _%hd158028158102%_
                                                           _%tl158029158104%_
                                                           _%e158030158107%_
                                                           _%hd158031158110%_
                                                           _%tl158032158112%_
                                                           _%e158033158115%_
                                                           _%hd158034158118%_
                                                           _%tl158035158120%_
                                                           _%e158036158123%_
                                                           _%hd158037158126%_
                                                           _%tl158038158128%_
                                                           _%e158039158131%_
                                                           _%hd158040158134%_
                                                           _%tl158041158136%_
                                                           _%e158042158139%_
                                                           _%hd158043158142%_
                                                           _%tl158044158144%_
                                                           _%e158045158147%_
                                                           _%hd158046158150%_
                                                           _%tl158047158152%_
                                                           _%e158048158155%_
                                                           _%hd158049158158%_
                                                           _%tl158050158160%_)
                                                          (_%__kont160215160216%_))
                                                      (_%__kont160215160216%_))
                                                  (_%__kont160215160216%_))))
                                          (_%__kont160215160216%_))
                                      (_%__kont160215160216%_))
                                  (_%__kont160215160216%_))))
                          (_%__kont160215160216%_))))
                  (_%__kont160215160216%_))
              (_%__kont160215160216%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont160215160216%_))
                                          (_%__kont160215160216%_))
                                      (_%__kont160215160216%_))))
                              (_%__kont160215160216%_))))
                      (_%__kont160215160216%_))
                  (_%__kont160215160216%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont160215160216%_))
                                              (_%__kont160215160216%_))
                                          (_%__kont160215160216%_))))
                                  (_%__kont160215160216%_))))
                          (_%__kont160215160216%_))
                      (_%__kont160215160216%_))
                  (_%__kont160215160216%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont160215160216%_))))
                                          (_%__kont160215160216%_)))))
                              (_%__kont160215160216%_)))))))
                 (_%dispatch-case-e157213%_
                  (lambda (_%hd157360%_ _%body157361%_)
                    (let* ((_%form157363%_
                            (cons _%hd157360%_ (cons _%body157361%_ '())))
                           (_%__stx160343160344%_ _%form157363%_)
                           (_%g157367157491%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx160343160344%_)))))
                      (let ((_%__kont160345160346%_
                             (lambda (_%g157369157856%_
                                      _%g157370157857%_
                                      _%g157371157858%_)
                               (let ((__tmp161509
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g157370157857%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self157209%_
                                  __tmp161509))))
                            (_%__kont160351160352%_
                             (lambda (_%g157414157708%_
                                      _%g157415157709%_
                                      _%g157416157710%_
                                      _%g157417157711%_)
                               (let ((__tmp161510
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g157414157708%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self157209%_
                                  __tmp161510))))
                            (_%__kont160355160356%_
                             (lambda (_%g157454157576%_
                                      _%g157455157577%_
                                      _%g157456157578%_)
                               (let ((__tmp161511
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g157454157576%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self157209%_
                                  __tmp161511)))))
                        (let* ((_%__match160452160453%_
                                (lambda (_%e157457157496%_
                                         _%hd157458157499%_
                                         _%tl157459157501%_
                                         _%e157460157504%_
                                         _%hd157461157507%_
                                         _%tl157462157509%_
                                         _%e157463157512%_
                                         _%hd157464157515%_
                                         _%tl157465157517%_
                                         _%e157466157520%_
                                         _%hd157467157523%_
                                         _%tl157468157525%_
                                         _%e157469157528%_
                                         _%hd157470157531%_
                                         _%tl157471157533%_
                                         _%e157472157536%_
                                         _%hd157473157539%_
                                         _%tl157474157541%_
                                         _%e157475157544%_
                                         _%hd157476157547%_
                                         _%tl157477157549%_
                                         _%e157478157552%_
                                         _%hd157479157555%_
                                         _%tl157480157557%_
                                         _%e157481157560%_
                                         _%hd157482157563%_
                                         _%tl157483157565%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl157477157549%_))
                                      (let ((_%e157484157568%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl157477157549%_))))
                                        (let ((_%tl157486157573%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e157484157568%_)))
                                              (_%hd157485157571%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e157484157568%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl157486157573%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl157462157509%_))
                                                  (_%__kont160355160356%_
                                                   _%hd157482157563%_
                                                   _%hd157473157539%_
                                                   _%hd157458157499%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g157367157491%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g157367157491%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g157367157491%_)))))
                               (_%__match160382160383%_
                                (lambda (_%e157418157614%_
                                         _%hd157419157617%_
                                         _%tl157420157619%_
                                         _%__splice160353160354%_
                                         _%target157421157622%_
                                         _%tl157423157624%_)
                                  (letrec ((_%loop157424157627%_
                                            (lambda (_%hd157422157630%_
                                                     _%arg157428157632%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157422157630%_))
                                                  (let ((_%e157425157634%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157422157630%_))))
                                                    (let ((_%lp-tl157427157639%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157425157634%_)))
                                                          (_%lp-hd157426157637%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157425157634%_))))
                                                      (_%loop157424157627%_
                                                       _%lp-tl157427157639%_
                                                       (cons _%lp-hd157426157637%_
                                                             _%arg157428157632%_))))
                                                  (let ((_%arg157429157642%_
                                                         (reverse _%arg157428157632%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl157420157619%_))
                                                        (let ((_%e157430157644%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl157420157619%_))))
                  (let ((_%tl157432157649%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e157430157644%_)))
                        (_%hd157431157647%_
                         (let ()
                           (declare (not safe))
                           (##car _%e157430157644%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd157431157647%_))
                        (let ((_%e157433157652%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd157431157647%_))))
                          (let ((_%tl157435157657%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157433157652%_)))
                                (_%hd157434157655%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157433157652%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd157434157655%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd157434157655%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl157435157657%_))
                                        (let ((_%e157436157660%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl157435157657%_))))
                                          (let ((_%tl157438157665%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e157436157660%_)))
                                                (_%hd157437157663%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e157436157660%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd157437157663%_))
                                                (let ((_%e157439157668%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd157437157663%_))))
                                                  (let ((_%tl157441157673%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e157439157668%_)))
                                                        (_%hd157440157671%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e157439157668%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd157440157671%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd157440157671%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl157441157673%_))
                        (let ((_%e157442157676%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl157441157673%_))))
                          (let ((_%tl157444157681%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157442157676%_)))
                                (_%hd157443157679%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157442157676%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl157444157681%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl157438157665%_))
                                    (let ((_%e157445157684%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl157438157665%_))))
                                      (let ((_%tl157447157689%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e157445157684%_)))
                                            (_%hd157446157687%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e157445157684%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd157446157687%_))
                                            (let ((_%e157448157692%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd157446157687%_))))
                                              (let ((_%tl157450157697%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e157448157692%_)))
                                                    (_%hd157449157695%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e157448157692%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd157449157695%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd157449157695%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl157450157697%_))
                                                            (let ((_%e157451157700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl157450157697%_))))
                      (let ((_%tl157453157705%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e157451157700%_)))
                            (_%hd157452157703%_
                             (let ()
                               (declare (not safe))
                               (##car _%e157451157700%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl157453157705%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl157432157649%_))
                                (_%__kont160351160352%_
                                 _%hd157452157703%_
                                 _%hd157443157679%_
                                 _%tl157423157624%_
                                 _%arg157429157642%_)
                                (_%__match160452160453%_
                                 _%e157418157614%_
                                 _%hd157419157617%_
                                 _%tl157420157619%_
                                 _%e157430157644%_
                                 _%hd157431157647%_
                                 _%tl157432157649%_
                                 _%e157433157652%_
                                 _%hd157434157655%_
                                 _%tl157435157657%_
                                 _%e157436157660%_
                                 _%hd157437157663%_
                                 _%tl157438157665%_
                                 _%e157439157668%_
                                 _%hd157440157671%_
                                 _%tl157441157673%_
                                 _%e157442157676%_
                                 _%hd157443157679%_
                                 _%tl157444157681%_
                                 _%e157445157684%_
                                 _%hd157446157687%_
                                 _%tl157447157689%_
                                 _%e157448157692%_
                                 _%hd157449157695%_
                                 _%tl157450157697%_
                                 _%e157451157700%_
                                 _%hd157452157703%_
                                 _%tl157453157705%_))
                            (let ()
                              (declare (not safe))
                              (_%g157367157491%_)))))
                    (let () (declare (not safe)) (_%g157367157491%_)))
                (let () (declare (not safe)) (_%g157367157491%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g157367157491%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g157367157491%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g157367157491%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g157367157491%_)))))
                        (let () (declare (not safe)) (_%g157367157491%_)))
                    (let () (declare (not safe)) (_%g157367157491%_)))
                (let () (declare (not safe)) (_%g157367157491%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g157367157491%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g157367157491%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g157367157491%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g157367157491%_)))))
                        (let () (declare (not safe)) (_%g157367157491%_)))))
                (let () (declare (not safe)) (_%g157367157491%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop157424157627%_
                                     _%target157421157622%_
                                     '()))))
                               (_%__match160370160371%_
                                (lambda (_%e157372157748%_
                                         _%hd157373157751%_
                                         _%tl157374157753%_
                                         _%__splice160347160348%_
                                         _%target157375157756%_
                                         _%tl157377157758%_)
                                  (letrec ((_%loop157378157761%_
                                            (lambda (_%hd157376157764%_
                                                     _%arg157382157766%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157376157764%_))
                                                  (let ((_%e157379157768%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157376157764%_))))
                                                    (let ((_%lp-tl157381157773%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157379157768%_)))
                                                          (_%lp-hd157380157771%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157379157768%_))))
                                                      (_%loop157378157761%_
                                                       _%lp-tl157381157773%_
                                                       (cons _%lp-hd157380157771%_
                                                             _%arg157382157766%_))))
                                                  (let ((_%arg157383157776%_
                                                         (reverse _%arg157382157766%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl157374157753%_))
                                                        (let ((_%e157384157778%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl157374157753%_))))
                  (let ((_%tl157386157783%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e157384157778%_)))
                        (_%hd157385157781%_
                         (let ()
                           (declare (not safe))
                           (##car _%e157384157778%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd157385157781%_))
                        (let ((_%e157387157786%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd157385157781%_))))
                          (let ((_%tl157389157791%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157387157786%_)))
                                (_%hd157388157789%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157387157786%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd157388157789%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd157388157789%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl157389157791%_))
                                        (let ((_%e157390157794%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl157389157791%_))))
                                          (let ((_%tl157392157799%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e157390157794%_)))
                                                (_%hd157391157797%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e157390157794%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd157391157797%_))
                                                (let ((_%e157393157802%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd157391157797%_))))
                                                  (let ((_%tl157395157807%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e157393157802%_)))
                                                        (_%hd157394157805%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e157393157802%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd157394157805%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd157394157805%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl157395157807%_))
                        (let ((_%e157396157810%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl157395157807%_))))
                          (let ((_%tl157398157815%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157396157810%_)))
                                (_%hd157397157813%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157396157810%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl157398157815%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl157392157799%_))
                                    (let ((_%__splice160349160350%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl157392157799%_
                                              '0))))
                                      (let ((_%tl157401157820%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice160349160350%_
                                                '1)))
                                            (_%target157399157818%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice160349160350%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl157401157820%_))
                                            (letrec ((_%loop157402157823%_
                                                      (lambda (_%hd157400157826%_
                                                               _%xarg157406157828%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd157400157826%_))
                                                            (let ((_%e157403157830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd157400157826%_))))
                      (let ((_%lp-tl157405157835%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e157403157830%_)))
                            (_%lp-hd157404157833%_
                             (let ()
                               (declare (not safe))
                               (##car _%e157403157830%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd157404157833%_))
                            (let ((_%e157408157838%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd157404157833%_))))
                              (let ((_%tl157410157843%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e157408157838%_)))
                                    (_%hd157409157841%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e157408157838%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd157409157841%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd157409157841%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl157410157843%_))
                                            (let ((_%e157411157846%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl157410157843%_))))
                                              (let ((_%tl157413157851%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e157411157846%_)))
                                                    (_%hd157412157849%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e157411157846%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl157413157851%_))
                                                    (_%loop157402157823%_
                                                     _%lp-tl157405157835%_
                                                     (cons _%hd157412157849%_
                                                           _%xarg157406157828%_))
                                                    (_%__match160382160383%_
                                                     _%e157372157748%_
                                                     _%hd157373157751%_
                                                     _%tl157374157753%_
                                                     _%__splice160347160348%_
                                                     _%target157375157756%_
                                                     _%tl157377157758%_))))
                                            (_%__match160382160383%_
                                             _%e157372157748%_
                                             _%hd157373157751%_
                                             _%tl157374157753%_
                                             _%__splice160347160348%_
                                             _%target157375157756%_
                                             _%tl157377157758%_))
                                        (_%__match160382160383%_
                                         _%e157372157748%_
                                         _%hd157373157751%_
                                         _%tl157374157753%_
                                         _%__splice160347160348%_
                                         _%target157375157756%_
                                         _%tl157377157758%_))
                                    (_%__match160382160383%_
                                     _%e157372157748%_
                                     _%hd157373157751%_
                                     _%tl157374157753%_
                                     _%__splice160347160348%_
                                     _%target157375157756%_
                                     _%tl157377157758%_))))
                            (_%__match160382160383%_
                             _%e157372157748%_
                             _%hd157373157751%_
                             _%tl157374157753%_
                             _%__splice160347160348%_
                             _%target157375157756%_
                             _%tl157377157758%_))))
                    (let ((_%xarg157407157854%_
                           (reverse _%xarg157406157828%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl157386157783%_))
                          (_%__kont160345160346%_
                           _%xarg157407157854%_
                           _%hd157397157813%_
                           _%arg157383157776%_)
                          (_%__match160382160383%_
                           _%e157372157748%_
                           _%hd157373157751%_
                           _%tl157374157753%_
                           _%__splice160347160348%_
                           _%target157375157756%_
                           _%tl157377157758%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop157402157823%_
                                               _%target157399157818%_
                                               '()))
                                            (_%__match160382160383%_
                                             _%e157372157748%_
                                             _%hd157373157751%_
                                             _%tl157374157753%_
                                             _%__splice160347160348%_
                                             _%target157375157756%_
                                             _%tl157377157758%_))))
                                    (_%__match160382160383%_
                                     _%e157372157748%_
                                     _%hd157373157751%_
                                     _%tl157374157753%_
                                     _%__splice160347160348%_
                                     _%target157375157756%_
                                     _%tl157377157758%_))
                                (_%__match160382160383%_
                                 _%e157372157748%_
                                 _%hd157373157751%_
                                 _%tl157374157753%_
                                 _%__splice160347160348%_
                                 _%target157375157756%_
                                 _%tl157377157758%_))))
                        (_%__match160382160383%_
                         _%e157372157748%_
                         _%hd157373157751%_
                         _%tl157374157753%_
                         _%__splice160347160348%_
                         _%target157375157756%_
                         _%tl157377157758%_))
                    (_%__match160382160383%_
                     _%e157372157748%_
                     _%hd157373157751%_
                     _%tl157374157753%_
                     _%__splice160347160348%_
                     _%target157375157756%_
                     _%tl157377157758%_))
                (_%__match160382160383%_
                 _%e157372157748%_
                 _%hd157373157751%_
                 _%tl157374157753%_
                 _%__splice160347160348%_
                 _%target157375157756%_
                 _%tl157377157758%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match160382160383%_
                                                 _%e157372157748%_
                                                 _%hd157373157751%_
                                                 _%tl157374157753%_
                                                 _%__splice160347160348%_
                                                 _%target157375157756%_
                                                 _%tl157377157758%_))))
                                        (_%__match160382160383%_
                                         _%e157372157748%_
                                         _%hd157373157751%_
                                         _%tl157374157753%_
                                         _%__splice160347160348%_
                                         _%target157375157756%_
                                         _%tl157377157758%_))
                                    (_%__match160382160383%_
                                     _%e157372157748%_
                                     _%hd157373157751%_
                                     _%tl157374157753%_
                                     _%__splice160347160348%_
                                     _%target157375157756%_
                                     _%tl157377157758%_))
                                (_%__match160382160383%_
                                 _%e157372157748%_
                                 _%hd157373157751%_
                                 _%tl157374157753%_
                                 _%__splice160347160348%_
                                 _%target157375157756%_
                                 _%tl157377157758%_))))
                        (_%__match160382160383%_
                         _%e157372157748%_
                         _%hd157373157751%_
                         _%tl157374157753%_
                         _%__splice160347160348%_
                         _%target157375157756%_
                         _%tl157377157758%_))))
                (_%__match160382160383%_
                 _%e157372157748%_
                 _%hd157373157751%_
                 _%tl157374157753%_
                 _%__splice160347160348%_
                 _%target157375157756%_
                 _%tl157377157758%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop157378157761%_
                                     _%target157375157756%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx160343160344%_))
                              (let ((_%e157372157748%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx160343160344%_))))
                                (let ((_%tl157374157753%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157372157748%_)))
                                      (_%hd157373157751%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157372157748%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd157373157751%_))
                                      (let ((_%__splice160347160348%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd157373157751%_
                                                '0))))
                                        (let ((_%tl157377157758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice160347160348%_
                                                  '1)))
                                              (_%target157375157756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice160347160348%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl157377157758%_))
                                              (_%__match160370160371%_
                                               _%e157372157748%_
                                               _%hd157373157751%_
                                               _%tl157374157753%_
                                               _%__splice160347160348%_
                                               _%target157375157756%_
                                               _%tl157377157758%_)
                                              (_%__match160382160383%_
                                               _%e157372157748%_
                                               _%hd157373157751%_
                                               _%tl157374157753%_
                                               _%__splice160347160348%_
                                               _%target157375157756%_
                                               _%tl157377157758%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl157374157753%_))
                                          (let ((_%e157460157504%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl157374157753%_))))
                                            (let ((_%tl157462157509%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e157460157504%_)))
                                                  (_%hd157461157507%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e157460157504%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157461157507%_))
                                                  (let ((_%e157463157512%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157461157507%_))))
                                                    (let ((_%tl157465157517%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157463157512%_)))
                                                          (_%hd157464157515%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157463157512%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd157464157515%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd157464157515%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl157465157517%_))
                          (let ((_%e157466157520%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl157465157517%_))))
                            (let ((_%tl157468157525%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e157466157520%_)))
                                  (_%hd157467157523%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e157466157520%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd157467157523%_))
                                  (let ((_%e157469157528%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd157467157523%_))))
                                    (let ((_%tl157471157533%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e157469157528%_)))
                                          (_%hd157470157531%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e157469157528%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd157470157531%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd157470157531%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl157471157533%_))
                                                  (let ((_%e157472157536%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl157471157533%_))))
                                                    (let ((_%tl157474157541%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157472157536%_)))
                                                          (_%hd157473157539%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157472157536%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl157474157541%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl157468157525%_))
                      (let ((_%e157475157544%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl157468157525%_))))
                        (let ((_%tl157477157549%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157475157544%_)))
                              (_%hd157476157547%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157475157544%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd157476157547%_))
                              (let ((_%e157478157552%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd157476157547%_))))
                                (let ((_%tl157480157557%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157478157552%_)))
                                      (_%hd157479157555%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157478157552%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd157479157555%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd157479157555%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl157480157557%_))
                                              (let ((_%e157481157560%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl157480157557%_))))
                                                (let ((_%tl157483157565%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e157481157560%_)))
                                                      (_%hd157482157563%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e157481157560%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl157483157565%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl157477157549%_))
                                                          (let ((_%e157484157568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl157477157549%_))))
                    (let ((_%tl157486157573%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e157484157568%_)))
                          (_%hd157485157571%_
                           (let ()
                             (declare (not safe))
                             (##car _%e157484157568%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl157486157573%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl157462157509%_))
                              (_%__kont160355160356%_
                               _%hd157482157563%_
                               _%hd157473157539%_
                               _%hd157373157751%_)
                              (let ()
                                (declare (not safe))
                                (_%g157367157491%_)))
                          (let () (declare (not safe)) (_%g157367157491%_)))))
                  (let () (declare (not safe)) (_%g157367157491%_)))
              (let () (declare (not safe)) (_%g157367157491%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g157367157491%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g157367157491%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g157367157491%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g157367157491%_)))))
                      (let () (declare (not safe)) (_%g157367157491%_)))
                  (let () (declare (not safe)) (_%g157367157491%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g157367157491%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g157367157491%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g157367157491%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g157367157491%_)))))
                          (let () (declare (not safe)) (_%g157367157491%_)))
                      (let () (declare (not safe)) (_%g157367157491%_)))
                  (let () (declare (not safe)) (_%g157367157491%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g157367157491%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g157367157491%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g157367157491%_))))))))
                 (_%generate1157214%_
                  (lambda (_%args157345%_
                           _%arglen157346%_
                           _%hd157347%_
                           _%body157348%_)
                    (let* ((_%len157350%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd157347%_)))
                           (_%condition157355%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd157347%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen157346%_
                                                (cons _%len157350%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen157346%_ (cons _%len157350%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len157350%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen157346%_
                                                    (cons _%len157350%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen157346%_ (cons _%len157350%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch157357%_
                            (if (_%dispatch-case?157212%_
                                 _%hd157347%_
                                 _%body157348%_)
                                (_%dispatch-case-e157213%_
                                 _%hd157347%_
                                 _%body157348%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self157209%_
                                 _%hd157347%_
                                 _%body157348%_))))
                      (cons _%condition157355%_
                            (cons (cons 'apply
                                        (cons _%dispatch157357%_
                                              (cons _%args157345%_ '())))
                                  '()))))))
          (let* ((_%g157216157244%_
                  (lambda (_%g157217157241%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g157217157241%_))))
                 (_%g157215157342%_
                  (lambda (_%g157217157247%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g157217157247%_))
                        (let ((_%e157220157249%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g157217157247%_))))
                          (let ((_%hd157221157252%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157220157249%_)))
                                (_%tl157222157254%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157220157249%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl157222157254%_))
                                (let ((_g161512_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl157222157254%_
                                          '0))))
                                  (begin
                                    (let ((_g161513_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g161512_)
                                                 (##values-length _g161512_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g161513_ 2)))
                                          (error "Context expects 2 values"
                                                 _g161513_)))
                                    (let ((_%target157223157257%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g161512_ 0)))
                                          (_%tl157225157259%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g161512_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl157225157259%_))
                                          (letrec ((_%loop157226157262%_
                                                    (lambda (_%hd157224157265%_
                                                             _%body157230157267%_
                                                             _%hd157231157268%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd157224157265%_))
                                                          (let ((_%e157227157270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd157224157265%_))))
                    (let ((_%lp-hd157228157273%_
                           (let ()
                             (declare (not safe))
                             (##car _%e157227157270%_)))
                          (_%lp-tl157229157275%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e157227157270%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd157228157273%_))
                          (let ((_%e157234157278%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd157228157273%_))))
                            (let ((_%hd157235157281%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e157234157278%_)))
                                  (_%tl157236157283%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e157234157278%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl157236157283%_))
                                  (let ((_%e157237157286%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl157236157283%_))))
                                    (let ((_%hd157238157289%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e157237157286%_)))
                                          (_%tl157239157291%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e157237157286%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl157239157291%_))
                                          (_%loop157226157262%_
                                           _%lp-tl157229157275%_
                                           (cons _%hd157238157289%_
                                                 _%body157230157267%_)
                                           (cons _%hd157235157281%_
                                                 _%hd157231157268%_))
                                          (_%g157216157244%_
                                           _%g157217157247%_))))
                                  (_%g157216157244%_ _%g157217157247%_))))
                          (_%g157216157244%_ _%g157217157247%_))))
                  (let ((_%body157232157294%_ (reverse _%body157230157267%_))
                        (_%hd157233157295%_ (reverse _%hd157231157268%_)))
                    ((lambda (_%g157218157297%_ _%g157219157298%_)
                       (let ((_%args157317%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen157318%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name157319%_
                              (let ((_%$e157314%_
                                     (let ((__tmp161514
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp161514 _%stx157210%_))))
                                (if _%$e157314%_
                                    _%$e157314%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args157317%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen157318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args157317%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args157317%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp161518
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name157319%_
                                                                (cons _%args157317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp161515
                                  (map (lambda (_%g157320157323%_
                                                _%g157321157325%_)
                                         (_%generate1157214%_
                                          _%args157317%_
                                          _%arglen157318%_
                                          _%g157320157323%_
                                          _%g157321157325%_))
                                       (let ((__tmp161516
                                              (lambda (_%g157327157330%_
                                                       _%g157328157332%_)
                                                (cons _%g157327157330%_
                                                      _%g157328157332%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp161516
                                          '()
                                          _%g157219157298%_))
                                       (let ((__tmp161517
                                              (lambda (_%g157334157337%_
                                                       _%g157335157339%_)
                                                (cons _%g157334157337%_
                                                      _%g157335157339%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp161517
                                          '()
                                          _%g157218157297%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp161518 __tmp161515)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body157232157294%_
                     _%hd157233157295%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop157226157262%_
                                             _%target157223157257%_
                                             '()
                                             '()))
                                          (_%g157216157244%_
                                           _%g157217157247%_)))))
                                (_%g157216157244%_ _%g157217157247%_))))
                        (_%g157216157244%_ _%g157217157247%_)))))
            (_%g157215157342%_ _%stx157210%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self156446%_ _%stx156447%_ _%compiled-body?156448%_)
        (letrec ((_%generate-simple156450%_
                  (lambda (_%hd157194%_ _%body157195%_)
                    (_%coalesce-boolean156451%_
                     (_%simplify-let156452%_
                      (gxc#generate-runtime-simple-let
                       _%self156446%_
                       'let
                       _%hd157194%_
                       _%body157195%_
                       _%compiled-body?156448%_)))))
                 (_%coalesce-boolean156451%_
                  (lambda (_%code157055%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code157056157082%_ _%code157055%_)
                               (_%else157058157090%_
                                (lambda () _%code157055%_))
                               (_%K157060157127%_
                                (lambda (_%expr2157093%_
                                         _%expr1157094%_
                                         _%id157095%_)
                                  (let* ((_%expr2157096157104%_
                                          _%expr2157093%_)
                                         (_%else157098157112%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1157094%_
                                                        (cons _%expr2157093%_
                                                              '())))))
                                         (_%K157100157117%_
                                          (lambda (_%exprs157115%_)
                                            (cons 'or
                                                  (cons _%expr1157094%_
                                                        _%exprs157115%_)))))
                                    (if (pair? _%expr2157096157104%_)
                                        (let ((_%hd157101157120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2157096157104%_)))
                                              (_%tl157102157122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2157096157104%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd157101157120%_ 'or))
                                              (let ((_%exprs157125%_
                                                     _%tl157102157122%_))
                                                (_%K157100157117%_
                                                 _%exprs157125%_))
                                              (_%else157098157112%_)))
                                        (_%else157098157112%_))))))
                          (if (pair? _%code157056157082%_)
                              (let ((_%hd157061157130%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code157056157082%_)))
                                    (_%tl157062157132%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code157056157082%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd157061157130%_ 'let))
                                    (if (pair? _%tl157062157132%_)
                                        (let ((_%hd157063157135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl157062157132%_)))
                                              (_%tl157064157137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl157062157132%_))))
                                          (if (pair? _%hd157063157135%_)
                                              (let ((_%hd157075157140%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd157063157135%_)))
                                                    (_%tl157076157142%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd157063157135%_))))
                                                (if (pair? _%hd157075157140%_)
                                                    (let ((_%hd157077157145%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd157075157140%_)))
                                                          (_%tl157078157147%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd157075157140%_))))
                                                      (let ((_%id157150%_
                                                             _%hd157077157145%_))
                                                        (if (pair? _%tl157078157147%_)
                                                            (let ((_%hd157079157152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl157078157147%_)))
                          (_%tl157080157154%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl157078157147%_))))
                      (let ((_%expr1157157%_ _%hd157079157152%_))
                        (if (null? _%tl157080157154%_)
                            (if (null? _%tl157076157142%_)
                                (if (pair? _%tl157064157137%_)
                                    (let ((_%hd157065157159%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl157064157137%_)))
                                          (_%tl157066157161%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl157064157137%_))))
                                      (if (pair? _%hd157065157159%_)
                                          (let ((_%hd157067157164%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd157065157159%_)))
                                                (_%tl157068157166%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd157065157159%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd157067157164%_
                                                         'if))
                                                (if (pair? _%tl157068157166%_)
                                                    (let ((_%hd157069157169%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl157068157166%_)))
                                                          (_%tl157070157171%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl157068157166%_))))
                                                      (if ((lambda (_%g157173157175%_)
                                                             (eq? _%g157173157175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id157150%_))
                   _%hd157069157169%_)
                  (if (pair? _%tl157070157171%_)
                      (let ((_%hd157071157178%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl157070157171%_)))
                            (_%tl157072157180%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl157070157171%_))))
                        (if ((lambda (_%g157182157184%_)
                               (eq? _%g157182157184%_ _%id157150%_))
                             _%hd157071157178%_)
                            (if (pair? _%tl157072157180%_)
                                (let ((_%hd157073157187%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl157072157180%_)))
                                      (_%tl157074157189%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl157072157180%_))))
                                  (let ((_%expr2157192%_ _%hd157073157187%_))
                                    (if (null? _%tl157074157189%_)
                                        (if (null? _%tl157066157161%_)
                                            (_%K157060157127%_
                                             _%expr2157192%_
                                             _%expr1157157%_
                                             _%id157150%_)
                                            (_%else157058157090%_))
                                        (_%else157058157090%_))))
                                (_%else157058157090%_))
                            (_%else157058157090%_)))
                      (_%else157058157090%_))
                  (_%else157058157090%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else157058157090%_))
                                                (_%else157058157090%_)))
                                          (_%else157058157090%_)))
                                    (_%else157058157090%_))
                                (_%else157058157090%_))
                            (_%else157058157090%_))))
                    (_%else157058157090%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else157058157090%_)))
                                              (_%else157058157090%_)))
                                        (_%else157058157090%_))
                                    (_%else157058157090%_)))
                              (_%else157058157090%_)))
                        _%code157055%_)))
                 (_%simplify-let156452%_
                  (lambda (_%code156754%_)
                    (let* ((_%code156755156827%_ _%code156754%_)
                           (_%else156760156835%_ (lambda () _%code156754%_)))
                      (let ((_%K156819157035%_
                             (lambda (_%expr157033%_) _%expr157033%_))
                            (_%K156802156981%_
                             (lambda (_%body156977%_
                                      _%expr156978%_
                                      _%id156979%_)
                               (cons 'let
                                     (cons (cons (cons _%id156979%_
                                                       (cons _%expr156978%_
                                                             '()))
                                                 '())
                                           _%body156977%_))))
                            (_%K156779156905%_
                             (lambda (_%body156899%_
                                      _%expr2156900%_
                                      _%id2156901%_
                                      _%expr1156902%_
                                      _%id1156903%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1156903%_
                                                       (cons _%expr1156902%_
                                                             '()))
                                                 (cons (cons _%id2156901%_
                                                             (cons _%expr2156900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body156899%_))))
                            (_%K156762156844%_
                             (lambda (_%body156839%_
                                      _%bind156840%_
                                      _%expr1156841%_
                                      _%id1156842%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1156842%_
                                                       (cons _%expr1156841%_
                                                             '()))
                                                 _%bind156840%_)
                                           _%body156839%_)))))
                        (if (pair? _%code156755156827%_)
                            (let ((_%tl156821157040%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code156755156827%_)))
                                  (_%hd156820157038%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code156755156827%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd156820157038%_ 'let))
                                  (if (pair? _%tl156821157040%_)
                                      (let ((_%tl156823157045%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl156821157040%_)))
                                            (_%hd156822157043%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl156821157040%_))))
                                        (if (null? _%hd156822157043%_)
                                            (if (pair? _%tl156823157045%_)
                                                (let ((_%tl156825157050%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl156823157045%_)))
                                                      (_%hd156824157048%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl156823157045%_))))
                                                  (if (null? _%tl156825157050%_)
                                                      (let ((_%expr157053%_
                                                             _%hd156824157048%_))
                                                        (_%K156819157035%_
                                                         _%expr157053%_))
                                                      (_%else156760156835%_)))
                                                (_%else156760156835%_))
                                            (if (pair? _%hd156822157043%_)
                                                (let ((_%tl156814156996%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd156822157043%_)))
                                                      (_%hd156813156994%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd156822157043%_))))
                                                  (if (pair? _%hd156813156994%_)
                                                      (let ((_%tl156816157001%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd156813156994%_)))
                    (_%hd156815156999%_
                     (let () (declare (not safe)) (##car _%hd156813156994%_))))
                (if (pair? _%tl156816157001%_)
                    (let ((_%tl156818157008%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl156816157001%_)))
                          (_%hd156817157006%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl156816157001%_))))
                      (if (null? _%tl156818157008%_)
                          (if (null? _%tl156814156996%_)
                              (if (pair? _%tl156823157045%_)
                                  (let ((_%tl156808157015%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl156823157045%_)))
                                        (_%hd156807157013%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl156823157045%_))))
                                    (if (pair? _%hd156807157013%_)
                                        (let ((_%tl156810157020%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd156807157013%_)))
                                              (_%hd156809157018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd156807157013%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd156809157018%_
                                                       'let))
                                              (if (pair? _%tl156810157020%_)
                                                  (let ((_%tl156812157025%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl156810157020%_)))
                                                        (_%hd156811157023%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl156810157020%_))))
                                                    (if (null? _%hd156811157023%_)
                                                        (if (null? _%tl156808157015%_)
                                                            (let ((_%id157004%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd156815156999%_)
                          (_%expr157011%_ _%hd156817157006%_)
                          (_%body157028%_ _%tl156812157025%_))
                      (_%K156802156981%_
                       _%body157028%_
                       _%expr157011%_
                       _%id157004%_))
                    (_%else156760156835%_))
                (if (pair? _%hd156811157023%_)
                    (let ((_%tl156791156954%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd156811157023%_)))
                          (_%hd156790156952%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd156811157023%_))))
                      (if (pair? _%hd156790156952%_)
                          (let ((_%tl156793156959%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd156790156952%_)))
                                (_%hd156792156957%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd156790156952%_))))
                            (if (pair? _%tl156793156959%_)
                                (let ((_%tl156795156966%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl156793156959%_)))
                                      (_%hd156794156964%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl156793156959%_))))
                                  (if (null? _%tl156795156966%_)
                                      (if (null? _%tl156791156954%_)
                                          (if (null? _%tl156808157015%_)
                                              (let ((_%id1156928%_
                                                     _%hd156815156999%_)
                                                    (_%expr1156935%_
                                                     _%hd156817157006%_)
                                                    (_%id2156962%_
                                                     _%hd156792156957%_)
                                                    (_%expr2156969%_
                                                     _%hd156794156964%_)
                                                    (_%body156971%_
                                                     _%tl156812157025%_))
                                                (_%K156779156905%_
                                                 _%body156971%_
                                                 _%expr2156969%_
                                                 _%id2156962%_
                                                 _%expr1156935%_
                                                 _%id1156928%_))
                                              (_%else156760156835%_))
                                          (_%else156760156835%_))
                                      (_%else156760156835%_)))
                                (_%else156760156835%_)))
                          (_%else156760156835%_)))
                    (_%else156760156835%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else156760156835%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd156809157018%_
                                                           'let*))
                                                  (if (pair? _%tl156810157020%_)
                                                      (let ((_%tl156772156888%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl156810157020%_)))
                    (_%hd156771156886%_
                     (let () (declare (not safe)) (##car _%tl156810157020%_))))
                (if (null? _%tl156808157015%_)
                    (let ((_%id1156867%_ _%hd156815156999%_)
                          (_%expr1156874%_ _%hd156817157006%_)
                          (_%bind156891%_ _%hd156771156886%_)
                          (_%body156893%_ _%tl156772156888%_))
                      (_%K156762156844%_
                       _%body156893%_
                       _%bind156891%_
                       _%expr1156874%_
                       _%id1156867%_))
                    (_%else156760156835%_)))
              (_%else156760156835%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else156760156835%_))))
                                        (_%else156760156835%_)))
                                  (_%else156760156835%_))
                              (_%else156760156835%_))
                          (_%else156760156835%_)))
                    (_%else156760156835%_)))
              (_%else156760156835%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else156760156835%_))))
                                      (_%else156760156835%_))
                                  (_%else156760156835%_)))
                            (_%else156760156835%_))))))
                 (_%generate-values156453%_
                  (lambda (_%hd156567%_ _%body156568%_)
                    (let _%lp156570%_ ((_%rest156572%_ _%hd156567%_)
                                       (_%bind156573%_ '())
                                       (_%check156574%_ '())
                                       (_%post156575%_ '()))
                      (let* ((_%__stx160672160673%_ _%rest156572%_)
                             (_%g156578156589%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx160672160673%_)))))
                        (let ((_%__kont160674160675%_
                               (lambda (_%g156580156616%_ _%g156581156617%_)
                                 (let* ((_%__stx160628160629%_
                                         _%g156581156617%_)
                                        (_%g156632156657%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx160628160629%_)))))
                                   (let ((_%__kont160630160631%_
                                          (lambda (_%g156634156730%_
                                                   _%g156635156731%_)
                                            (let ((_%eid156745%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g156635156731%_)))
                                                  (_%expr156746%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self156446%_
                                                      _%g156634156730%_))))
                                              (_%lp156570%_
                                               _%g156580156616%_
                                               (cons (cons _%eid156745%_
                                                           (cons _%expr156746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind156573%_)
                                               _%check156574%_
                                               _%post156575%_))))
                                         (_%__kont160632160633%_
                                          (lambda (_%g156645156678%_
                                                   _%g156646156679%_)
                                            (let* ((_%vals156692%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values156694%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals156692%_
                                                     _%g156646156679%_
                                                     _%g156645156678%_))
                                                   (_%refs156696%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals156692%_
                                                     _%g156646156679%_))
                                                   (_%expr156698%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self156446%_
                                                       _%g156645156678%_))))
                                              (_%lp156570%_
                                               _%g156580156616%_
                                               (cons (cons _%vals156692%_
                                                           (cons _%expr156698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind156573%_)
                                               (cons _%check-values156694%_
                                                     _%check156574%_)
                                               (cons _%refs156696%_
                                                     _%post156575%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx160628160629%_))
                                         (let ((_%e156636156706%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx160628160629%_))))
                                           (let ((_%tl156638156711%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e156636156706%_)))
                                                 (_%hd156637156709%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e156636156706%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd156637156709%_))
                                                 (let ((_%e156639156714%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd156637156709%_))))
                                                   (let ((_%tl156641156719%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e156639156714%_)))
                                                         (_%hd156640156717%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e156639156714%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl156641156719%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl156638156711%_))
                     (let ((_%e156642156722%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl156638156711%_))))
                       (let ((_%tl156644156727%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e156642156722%_)))
                             (_%hd156643156725%_
                              (let ()
                                (declare (not safe))
                                (##car _%e156642156722%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl156644156727%_))
                             (_%__kont160630160631%_
                              _%hd156643156725%_
                              _%hd156640156717%_)
                             (let ()
                               (declare (not safe))
                               (_%g156632156657%_)))))
                     (let () (declare (not safe)) (_%g156632156657%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl156638156711%_))
                     (let ((_%e156650156670%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl156638156711%_))))
                       (let ((_%tl156652156675%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e156650156670%_)))
                             (_%hd156651156673%_
                              (let ()
                                (declare (not safe))
                                (##car _%e156650156670%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl156652156675%_))
                             (_%__kont160632160633%_
                              _%hd156651156673%_
                              _%hd156637156709%_)
                             (let ()
                               (declare (not safe))
                               (_%g156632156657%_)))))
                     (let () (declare (not safe)) (_%g156632156657%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl156638156711%_))
                                                     (let ((_%e156650156670%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl156638156711%_))))
                                                       (let ((_%tl156652156675%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e156650156670%_)))
                     (_%hd156651156673%_
                      (let () (declare (not safe)) (##car _%e156650156670%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl156652156675%_))
                     (_%__kont160632160633%_
                      _%hd156651156673%_
                      _%hd156637156709%_)
                     (let () (declare (not safe)) (_%g156632156657%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g156632156657%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g156632156657%_)))))))
                              (_%__kont160676160677%_
                               (lambda ()
                                 (let* ((_%body156596%_
                                         (if _%compiled-body?156448%_
                                             _%body156568%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self156446%_
                                                _%body156568%_))))
                                        (_%body156598%_
                                         (_%generate-values-post156454%_
                                          _%post156575%_
                                          _%body156596%_))
                                        (_%body156600%_
                                         (_%generate-values-check156455%_
                                          _%check156574%_
                                          _%body156598%_)))
                                   (cons 'let
                                         (cons (reverse _%bind156573%_)
                                               (cons _%body156600%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx160672160673%_))
                              (let ((_%e156582156608%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx160672160673%_))))
                                (let ((_%tl156584156613%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e156582156608%_)))
                                      (_%hd156583156611%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e156582156608%_))))
                                  (_%__kont160674160675%_
                                   _%tl156584156613%_
                                   _%hd156583156611%_)))
                              (_%__kont160676160677%_)))))))
                 (_%generate-values-post156454%_
                  (lambda (_%post156526%_ _%body156527%_)
                    (let _%lp156529%_ ((_%rest156531%_ _%post156526%_)
                                       (_%body156532%_ _%body156527%_))
                      (let* ((_%rest156533156541%_ _%rest156531%_)
                             (_%else156535156549%_ (lambda () _%body156532%_))
                             (_%K156537156555%_
                              (lambda (_%rest156552%_ _%bind156553%_)
                                (_%lp156529%_
                                 _%rest156552%_
                                 (cons 'let
                                       (cons _%bind156553%_
                                             (cons _%body156532%_ '())))))))
                        (if (pair? _%rest156533156541%_)
                            (let ((_%hd156538156558%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest156533156541%_)))
                                  (_%tl156539156560%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest156533156541%_))))
                              (let* ((_%bind156563%_ _%hd156538156558%_)
                                     (_%rest156565%_ _%tl156539156560%_))
                                (_%K156537156555%_
                                 _%rest156565%_
                                 _%bind156563%_)))
                            (_%else156535156549%_))))))
                 (_%generate-values-check156455%_
                  (lambda (_%check156523%_ _%body156524%_)
                    (cons 'begin
                          (let ((__tmp161520 (cons _%body156524%_ '()))
                                (__tmp161519 (reverse _%check156523%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp161520 __tmp161519))))))
          (let* ((_%g156457156474%_
                  (lambda (_%g156458156471%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g156458156471%_))))
                 (_%g156456156520%_
                  (lambda (_%g156458156477%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g156458156477%_))
                        (let ((_%e156461156479%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g156458156477%_))))
                          (let ((_%hd156462156482%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e156461156479%_)))
                                (_%tl156463156484%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e156461156479%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl156463156484%_))
                                (let ((_%e156464156487%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl156463156484%_))))
                                  (let ((_%hd156465156490%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e156464156487%_)))
                                        (_%tl156466156492%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e156464156487%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl156466156492%_))
                                        (let ((_%e156467156495%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl156466156492%_))))
                                          (let ((_%hd156468156498%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e156467156495%_)))
                                                (_%tl156469156500%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e156467156495%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl156469156500%_))
                                                ((lambda (_%g156459156503%_
                                                          _%g156460156504%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g156460156504%_)
                                                       (_%generate-simple156450%_
                                                        _%g156460156504%_
                                                        _%g156459156503%_)
                                                       (_%generate-values156453%_
                                                        _%g156460156504%_
                                                        _%g156459156503%_)))
                                                 _%hd156468156498%_
                                                 _%hd156465156490%_)
                                                (_%g156457156474%_
                                                 _%g156458156477%_))))
                                        (_%g156457156474%_
                                         _%g156458156477%_))))
                                (_%g156457156474%_ _%g156458156477%_))))
                        (_%g156457156474%_ _%g156458156477%_)))))
            (_%g156456156520%_ _%stx156447%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self157200%_ _%stx157201%_)
        (let ((_%compiled-body?157203%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self157200%_
           _%stx157201%_
           _%compiled-body?157203%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g161521_
        (let ((_g161522_ (let () (declare (not safe)) (##length _g161521_))))
          (cond ((let () (declare (not safe)) (##fx= _g161522_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g161521_))
                ((let () (declare (not safe)) (##fx= _g161522_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g161521_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g161521_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals156340%_ _%hd156341%_)
        (let _%lp156343%_ ((_%rest156345%_ _%hd156341%_)
                           (_%k156346%_ '0)
                           (_%r156347%_ '()))
          (let* ((_%__stx160686160687%_ _%rest156345%_)
                 (_%g156352156369%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx160686160687%_)))))
            (let ((_%__kont160688160689%_
                   (lambda (_%g156354156432%_)
                     (_%lp156343%_
                      _%g156354156432%_
                      (let () (declare (not safe)) (##fx+ _%k156346%_ '1))
                      _%r156347%_)))
                  (_%__kont160690160691%_
                   (lambda (_%g156359156405%_ _%g156360156406%_)
                     (_%lp156343%_
                      _%g156359156405%_
                      (let () (declare (not safe)) (##fx+ _%k156346%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g156360156406%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals156340%_
                                         _%k156346%_
                                         _%g156359156405%_)
                                        '()))
                            _%r156347%_))))
                  (_%__kont160692160693%_
                   (lambda (_%g156364156381%_)
                     (let ((__tmp161523
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g156364156381%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals156340%_
                                               _%k156346%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp161523 _%r156347%_))))
                  (_%__kont160694160695%_ (lambda () (reverse _%r156347%_))))
              (let ((_%g156350156392%_
                     (lambda ()
                       (let ((_%g156364156381%_ _%__stx160686160687%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g156364156381%_))
                             (_%__kont160692160693%_ _%g156364156381%_)
                             (_%__kont160694160695%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx160686160687%_))
                    (let ((_%e156355156421%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx160686160687%_))))
                      (let ((_%tl156357156426%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e156355156421%_)))
                            (_%hd156356156424%_
                             (let ()
                               (declare (not safe))
                               (##car _%e156355156421%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd156356156424%_))
                            (let ((_%e156358156429%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd156356156424%_))))
                              (if (equal? _%e156358156429%_ '#f)
                                  (_%__kont160688160689%_ _%tl156357156426%_)
                                  (_%__kont160690160691%_
                                   _%tl156357156426%_
                                   _%hd156356156424%_)))
                            (_%__kont160690160691%_
                             _%tl156357156426%_
                             _%hd156356156424%_))))
                    (let () (declare (not safe)) (_%g156350156392%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self156019%_ _%stx156020%_ _%compiled-body?156021%_)
        (letrec ((_%generate-simple156023%_
                  (lambda (_%hd156325%_ _%body156326%_)
                    (gxc#generate-runtime-simple-let
                     _%self156019%_
                     'letrec
                     _%hd156325%_
                     _%body156326%_
                     _%compiled-body?156021%_)))
                 (_%generate-values156024%_
                  (lambda (_%hd156104%_ _%body156105%_)
                    (let _%lp156107%_ ((_%rest156109%_ _%hd156104%_)
                                       (_%bind156110%_ '())
                                       (_%check156111%_ '())
                                       (_%post156112%_ '()))
                      (let* ((_%__stx160760160761%_ _%rest156109%_)
                             (_%g156115156126%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx160760160761%_)))))
                        (let ((_%__kont160762160763%_
                               (lambda (_%g156117156153%_ _%g156118156154%_)
                                 (let* ((_%__stx160716160717%_
                                         _%g156118156154%_)
                                        (_%g156169156194%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx160716160717%_)))))
                                   (let ((_%__kont160718160719%_
                                          (lambda (_%g156171156301%_
                                                   _%g156172156302%_)
                                            (let ((_%eid156316%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g156172156302%_)))
                                                  (_%expr156317%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self156019%_
                                                      _%g156171156301%_))))
                                              (_%lp156107%_
                                               _%g156117156153%_
                                               (cons (cons _%eid156316%_
                                                           (cons _%expr156317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind156110%_)
                                               _%check156111%_
                                               _%post156112%_))))
                                         (_%__kont160720160721%_
                                          (lambda (_%g156182156215%_
                                                   _%g156183156216%_)
                                            (let* ((_%vals156229%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values156231%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals156229%_
                                                     _%g156183156216%_
                                                     _%g156182156215%_))
                                                   (_%refs156233%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals156229%_
                                                     _%g156183156216%_))
                                                   (_%expr156235%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self156019%_
                                                       _%g156182156215%_))))
                                              (_%lp156107%_
                                               _%g156117156153%_
                                               (let ((__tmp161525
                                                      (cons (cons _%vals156229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr156235%_ '()))
                    _%bind156110%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp161524
                                                      (map (lambda (_%e156237156239%_)
                                                             (let* ((_%e156237156241156250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e156237156239%_)
                            (_%E156243156254%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e156237156241156250%_
                                        '([eid _])))
                               '#!void))
                            (_%K156244156259%_
                             (lambda (_%eid156257%_)
                               (cons _%eid156257%_ (cons '#!void '())))))
                       (if (pair? _%e156237156241156250%_)
                           (let ((_%hd156245156262%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e156237156241156250%_)))
                                 (_%tl156246156264%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e156237156241156250%_))))
                             (let ((_%eid156267%_ _%hd156245156262%_))
                               (if (pair? _%tl156246156264%_)
                                   (let ((_%tl156248156269%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl156246156264%_))))
                                     (if (null? _%tl156248156269%_)
                                         (_%K156244156259%_ _%eid156267%_)
                                         (_%E156243156254%_)))
                                   (_%E156243156254%_))))
                           (_%E156243156254%_))))
                   _%refs156233%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp161525
                                                  __tmp161524))
                                               (cons _%check-values156231%_
                                                     _%check156111%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs156233%_
                                                  _%post156112%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx160716160717%_))
                                         (let ((_%e156173156277%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx160716160717%_))))
                                           (let ((_%tl156175156282%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e156173156277%_)))
                                                 (_%hd156174156280%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e156173156277%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd156174156280%_))
                                                 (let ((_%e156176156285%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd156174156280%_))))
                                                   (let ((_%tl156178156290%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e156176156285%_)))
                                                         (_%hd156177156288%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e156176156285%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl156178156290%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl156175156282%_))
                     (let ((_%e156179156293%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl156175156282%_))))
                       (let ((_%tl156181156298%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e156179156293%_)))
                             (_%hd156180156296%_
                              (let ()
                                (declare (not safe))
                                (##car _%e156179156293%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl156181156298%_))
                             (_%__kont160718160719%_
                              _%hd156180156296%_
                              _%hd156177156288%_)
                             (let ()
                               (declare (not safe))
                               (_%g156169156194%_)))))
                     (let () (declare (not safe)) (_%g156169156194%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl156175156282%_))
                     (let ((_%e156187156207%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl156175156282%_))))
                       (let ((_%tl156189156212%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e156187156207%_)))
                             (_%hd156188156210%_
                              (let ()
                                (declare (not safe))
                                (##car _%e156187156207%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl156189156212%_))
                             (_%__kont160720160721%_
                              _%hd156188156210%_
                              _%hd156174156280%_)
                             (let ()
                               (declare (not safe))
                               (_%g156169156194%_)))))
                     (let () (declare (not safe)) (_%g156169156194%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl156175156282%_))
                                                     (let ((_%e156187156207%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl156175156282%_))))
                                                       (let ((_%tl156189156212%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e156187156207%_)))
                     (_%hd156188156210%_
                      (let () (declare (not safe)) (##car _%e156187156207%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl156189156212%_))
                     (_%__kont160720160721%_
                      _%hd156188156210%_
                      _%hd156174156280%_)
                     (let () (declare (not safe)) (_%g156169156194%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g156169156194%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g156169156194%_)))))))
                              (_%__kont160764160765%_
                               (lambda ()
                                 (let* ((_%body156133%_
                                         (if _%compiled-body?156021%_
                                             _%body156105%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self156019%_
                                                _%body156105%_))))
                                        (_%body156135%_
                                         (_%generate-values-post156026%_
                                          _%post156112%_
                                          _%body156133%_))
                                        (_%body156137%_
                                         (_%generate-values-check156025%_
                                          _%check156111%_
                                          _%body156135%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind156110%_)
                                               (cons _%body156137%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx160760160761%_))
                              (let ((_%e156119156145%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx160760160761%_))))
                                (let ((_%tl156121156150%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e156119156145%_)))
                                      (_%hd156120156148%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e156119156145%_))))
                                  (_%__kont160762160763%_
                                   _%tl156121156150%_
                                   _%hd156120156148%_)))
                              (_%__kont160764160765%_)))))))
                 (_%generate-values-check156025%_
                  (lambda (_%check156101%_ _%body156102%_)
                    (cons 'begin
                          (let ((__tmp161527 (cons _%body156102%_ '()))
                                (__tmp161526 (reverse _%check156101%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp161527 __tmp161526)))))
                 (_%generate-values-post156026%_
                  (lambda (_%post156094%_ _%body156095%_)
                    (cons 'begin
                          (let ((__tmp161531 (cons _%body156095%_ '()))
                                (__tmp161528
                                 (let ((__tmp161530
                                        (lambda (_%g156096156098%_)
                                          (cons 'set! _%g156096156098%_)))
                                       (__tmp161529 (reverse _%post156094%_)))
                                   (declare (not safe))
                                   (##map __tmp161530 __tmp161529))))
                            (declare (not safe))
                            (__foldr1 cons __tmp161531 __tmp161528))))))
          (let* ((_%g156028156045%_
                  (lambda (_%g156029156042%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g156029156042%_))))
                 (_%g156027156091%_
                  (lambda (_%g156029156048%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g156029156048%_))
                        (let ((_%e156032156050%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g156029156048%_))))
                          (let ((_%hd156033156053%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e156032156050%_)))
                                (_%tl156034156055%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e156032156050%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl156034156055%_))
                                (let ((_%e156035156058%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl156034156055%_))))
                                  (let ((_%hd156036156061%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e156035156058%_)))
                                        (_%tl156037156063%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e156035156058%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl156037156063%_))
                                        (let ((_%e156038156066%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl156037156063%_))))
                                          (let ((_%hd156039156069%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e156038156066%_)))
                                                (_%tl156040156071%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e156038156066%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl156040156071%_))
                                                ((lambda (_%g156030156074%_
                                                          _%g156031156075%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g156031156075%_)
                                                       (_%generate-simple156023%_
                                                        _%g156031156075%_
                                                        _%g156030156074%_)
                                                       (_%generate-values156024%_
                                                        _%g156031156075%_
                                                        _%g156030156074%_)))
                                                 _%hd156039156069%_
                                                 _%hd156036156061%_)
                                                (_%g156028156045%_
                                                 _%g156029156048%_))))
                                        (_%g156028156045%_
                                         _%g156029156048%_))))
                                (_%g156028156045%_ _%g156029156048%_))))
                        (_%g156028156045%_ _%g156029156048%_)))))
            (_%g156027156091%_ _%stx156020%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self156331%_ _%stx156332%_)
        (let ((_%compiled-body?156334%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self156331%_
           _%stx156332%_
           _%compiled-body?156334%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g161532_
        (let ((_g161533_ (let () (declare (not safe)) (##length _g161532_))))
          (cond ((let () (declare (not safe)) (##fx= _g161533_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g161532_))
                ((let () (declare (not safe)) (##fx= _g161533_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g161532_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g161532_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self155600%_ _%stx155601%_)
        (letrec ((_%generate-values155603%_
                  (lambda (_%hd155846%_ _%body155847%_)
                    (let _%lp155849%_ ((_%rest155851%_ _%hd155846%_)
                                       (_%bind155852%_ '()))
                      (let* ((_%rest155853155861%_ _%rest155851%_)
                             (_%else155855155872%_
                              (lambda ()
                                (let ((_%bind155869%_ (reverse _%bind155852%_))
                                      (_%body155870%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self155600%_
                                          _%body155847%_))))
                                  (cons 'letrec*
                                        (cons _%bind155869%_
                                              (cons _%body155870%_ '()))))))
                             (_%K155857156006%_
                              (lambda (_%rest155875%_ _%hd-bind155876%_)
                                (let* ((_%__stx160774160775%_
                                        _%hd-bind155876%_)
                                       (_%g155879155904%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx160774160775%_)))))
                                  (let ((_%__kont160776160777%_
                                         (lambda (_%g155881155985%_
                                                  _%g155882155986%_)
                                           (let ((_%eid156000%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g155882155986%_)))
                                                 (_%expr156001%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self155600%_
                                                     _%g155881155985%_))))
                                             (_%lp155849%_
                                              _%rest155875%_
                                              (cons (cons _%eid156000%_
                                                          (cons _%expr156001%_
                                                                '()))
                                                    _%bind155852%_)))))
                                        (_%__kont160778160779%_
                                         (lambda (_%g155892155925%_
                                                  _%g155893155926%_)
                                           (let* ((_%vals155945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp155947%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values155949%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp155947%_
                                                    _%g155893155926%_
                                                    _%g155892155925%_))
                                                  (_%refs155951%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals155945%_
                                                    _%g155893155926%_))
                                                  (_%expr155953%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self155600%_
                                                      _%g155892155925%_))))
                                             (_%lp155849%_
                                              _%rest155875%_
                                              (let ((__tmp161534
                                                     (cons (cons _%vals155945%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp155947%_
                                                       (cons _%expr155953%_
                                                             '()))
                                                 '())
                                           (cons _%check-values155949%_
                                                 (cons _%tmp155947%_ '()))))
                               '()))
                   _%bind155852%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp161534
                                                 _%refs155951%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx160774160775%_))
                                        (let ((_%e155883155961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx160774160775%_))))
                                          (let ((_%tl155885155966%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e155883155961%_)))
                                                (_%hd155884155964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e155883155961%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd155884155964%_))
                                                (let ((_%e155886155969%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd155884155964%_))))
                                                  (let ((_%tl155888155974%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e155886155969%_)))
                                                        (_%hd155887155972%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e155886155969%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl155888155974%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl155885155966%_))
                                                            (let ((_%e155889155977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl155885155966%_))))
                      (let ((_%tl155891155982%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e155889155977%_)))
                            (_%hd155890155980%_
                             (let ()
                               (declare (not safe))
                               (##car _%e155889155977%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl155891155982%_))
                            (_%__kont160776160777%_
                             _%hd155890155980%_
                             _%hd155887155972%_)
                            (let ()
                              (declare (not safe))
                              (_%g155879155904%_)))))
                    (let () (declare (not safe)) (_%g155879155904%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl155885155966%_))
                    (let ((_%e155897155917%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl155885155966%_))))
                      (let ((_%tl155899155922%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e155897155917%_)))
                            (_%hd155898155920%_
                             (let ()
                               (declare (not safe))
                               (##car _%e155897155917%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl155899155922%_))
                            (_%__kont160778160779%_
                             _%hd155898155920%_
                             _%hd155884155964%_)
                            (let ()
                              (declare (not safe))
                              (_%g155879155904%_)))))
                    (let () (declare (not safe)) (_%g155879155904%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl155885155966%_))
                                                    (let ((_%e155897155917%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl155885155966%_))))
                                                      (let ((_%tl155899155922%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e155897155917%_)))
                    (_%hd155898155920%_
                     (let () (declare (not safe)) (##car _%e155897155917%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl155899155922%_))
                    (_%__kont160778160779%_
                     _%hd155898155920%_
                     _%hd155884155964%_)
                    (let () (declare (not safe)) (_%g155879155904%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g155879155904%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g155879155904%_))))))))
                        (if (pair? _%rest155853155861%_)
                            (let ((_%hd155858156009%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest155853155861%_)))
                                  (_%tl155859156011%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest155853155861%_))))
                              (let* ((_%hd-bind156014%_ _%hd155858156009%_)
                                     (_%rest156016%_ _%tl155859156011%_))
                                (_%K155857156006%_
                                 _%rest156016%_
                                 _%hd-bind156014%_)))
                            (_%else155855155872%_))))))
                 (_%generate-letrec?155604%_
                  (lambda (_%hd155736%_)
                    (let _%lp155738%_ ((_%rest155740%_ _%hd155736%_))
                      (let* ((_%rest155741155749%_ _%rest155740%_)
                             (_%else155743155757%_ (lambda () '#t))
                             (_%K155745155834%_
                              (lambda (_%rest155760%_ _%hd-bind155761%_)
                                (let* ((_%g155763155780%_
                                        (lambda (_%g155764155777%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g155764155777%_))))
                                       (_%g155762155831%_
                                        (lambda (_%g155764155783%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g155764155783%_))
                                              (let ((_%e155767155785%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g155764155783%_))))
                                                (let ((_%hd155768155788%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e155767155785%_)))
                                                      (_%tl155769155790%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e155767155785%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd155768155788%_))
                                                      (let ((_%e155770155793%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd155768155788%_))))
                (let ((_%hd155771155796%_
                       (let () (declare (not safe)) (##car _%e155770155793%_)))
                      (_%tl155772155798%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e155770155793%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl155772155798%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl155769155790%_))
                          (let ((_%e155773155801%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl155769155790%_))))
                            (let ((_%hd155774155804%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e155773155801%_)))
                                  (_%tl155775155806%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e155773155801%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl155775155806%_))
                                  ((lambda (_%g155765155809%_
                                            _%g155766155810%_)
                                     (if (_%is-lambda-expr?155605%_
                                          _%g155765155809%_)
                                         (_%lp155738%_ _%rest155760%_)
                                         '#f))
                                   _%hd155774155804%_
                                   _%hd155771155796%_)
                                  (_%g155763155780%_ _%g155764155783%_))))
                          (_%g155763155780%_ _%g155764155783%_))
                      (_%g155763155780%_ _%g155764155783%_))))
              (_%g155763155780%_ _%g155764155783%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g155763155780%_
                                               _%g155764155783%_)))))
                                  (_%g155762155831%_ _%hd-bind155761%_)))))
                        (if (pair? _%rest155741155749%_)
                            (let ((_%hd155746155837%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest155741155749%_)))
                                  (_%tl155747155839%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest155741155749%_))))
                              (let* ((_%hd-bind155842%_ _%hd155746155837%_)
                                     (_%rest155844%_ _%tl155747155839%_))
                                (_%K155745155834%_
                                 _%rest155844%_
                                 _%hd-bind155842%_)))
                            (_%else155743155757%_))))))
                 (_%is-lambda-expr?155605%_
                  (lambda (_%expr155673%_)
                    (let* ((_%__stx160818160819%_ _%expr155673%_)
                           (_%g155676155690%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx160818160819%_)))))
                      (let ((_%__kont160820160821%_
                             (lambda (_%g155678155718%_ _%g155679155719%_)
                               '#t))
                            (_%__kont160822160823%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx160818160819%_))
                            (let ((_%e155680155702%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx160818160819%_))))
                              (let ((_%tl155682155707%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e155680155702%_)))
                                    (_%hd155681155705%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e155680155702%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd155681155705%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd155681155705%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl155682155707%_))
                                            (let ((_%e155683155710%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl155682155707%_))))
                                              (let ((_%tl155685155715%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e155683155710%_)))
                                                    (_%hd155684155713%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e155683155710%_))))
                                                (_%__kont160820160821%_
                                                 _%tl155685155715%_
                                                 _%hd155684155713%_)))
                                            (_%__kont160822160823%_))
                                        (_%__kont160822160823%_))
                                    (_%__kont160822160823%_))))
                            (_%__kont160822160823%_)))))))
          (let* ((_%g155607155624%_
                  (lambda (_%g155608155621%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g155608155621%_))))
                 (_%g155606155670%_
                  (lambda (_%g155608155627%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g155608155627%_))
                        (let ((_%e155611155629%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g155608155627%_))))
                          (let ((_%hd155612155632%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e155611155629%_)))
                                (_%tl155613155634%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e155611155629%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl155613155634%_))
                                (let ((_%e155614155637%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl155613155634%_))))
                                  (let ((_%hd155615155640%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e155614155637%_)))
                                        (_%tl155616155642%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e155614155637%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl155616155642%_))
                                        (let ((_%e155617155645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl155616155642%_))))
                                          (let ((_%hd155618155648%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e155617155645%_)))
                                                (_%tl155619155650%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e155617155645%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl155619155650%_))
                                                ((lambda (_%g155609155653%_
                                                          _%g155610155654%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g155610155654%_)
                                                       (if (_%generate-letrec?155604%_
                                                            _%g155610155654%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self155600%_
                                                            'letrec
                                                            _%g155610155654%_
                                                            _%g155609155653%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self155600%_
                                                            'letrec*
                                                            _%g155610155654%_
                                                            _%g155609155653%_
                                                            '#f))
                                                       (_%generate-values155603%_
                                                        _%g155610155654%_
                                                        _%g155609155653%_)))
                                                 _%hd155618155648%_
                                                 _%hd155615155640%_)
                                                (_%g155607155624%_
                                                 _%g155608155627%_))))
                                        (_%g155607155624%_
                                         _%g155608155627%_))))
                                (_%g155607155624%_ _%g155608155627%_))))
                        (_%g155607155624%_ _%g155608155627%_)))))
            (_%g155606155670%_ _%stx155601%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd155537%_)
        (let _%lp155539%_ ((_%rest155541%_ _%hd155537%_))
          (let* ((_%rest155542155558%_ _%rest155541%_)
                 (_%else155545155566%_ (lambda () '#f)))
            (let ((_%K155548155579%_
                   (lambda (_%rest155577%_) (_%lp155539%_ _%rest155577%_)))
                  (_%K155547155571%_ (lambda () '#t)))
              (let ((_%try-match155544155574%_
                     (lambda ()
                       (if (null? _%rest155542155558%_)
                           (_%K155547155571%_)
                           (_%else155545155566%_)))))
                (if (pair? _%rest155542155558%_)
                    (let ((_%tl155550155584%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest155542155558%_)))
                          (_%hd155549155582%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest155542155558%_))))
                      (if (pair? _%hd155549155582%_)
                          (let ((_%tl155552155589%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd155549155582%_)))
                                (_%hd155551155587%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd155549155582%_))))
                            (if (pair? _%hd155551155587%_)
                                (let ((_%tl155556155592%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd155551155587%_))))
                                  (if (null? _%tl155556155592%_)
                                      (if (pair? _%tl155552155589%_)
                                          (let ((_%tl155554155595%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl155552155589%_))))
                                            (if (null? _%tl155554155595%_)
                                                (let ((_%rest155598%_
                                                       _%tl155550155584%_))
                                                  (_%lp155539%_
                                                   _%rest155598%_))
                                                (_%else155545155566%_)))
                                          (_%else155545155566%_))
                                      (_%else155545155566%_)))
                                (_%else155545155566%_)))
                          (_%else155545155566%_)))
                    (_%try-match155544155574%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self155449%_
               _%form155450%_
               _%hd155451%_
               _%body155452%_
               _%compiled-body?155453%_)
        (letrec ((_%generate1155455%_
                  (lambda (_%bind155494%_)
                    (let* ((_%bind155495155506%_ _%bind155494%_)
                           (_%E155497155509%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind155495155506%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K155498155515%_
                            (lambda (_%expr155512%_ _%id155513%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id155513%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self155449%_
                                             _%expr155512%_))
                                          '())))))
                      (if (pair? _%bind155495155506%_)
                          (let ((_%hd155499155518%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind155495155506%_)))
                                (_%tl155500155520%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind155495155506%_))))
                            (if (pair? _%hd155499155518%_)
                                (let ((_%hd155503155523%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd155499155518%_)))
                                      (_%tl155504155525%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd155499155518%_))))
                                  (let ((_%id155528%_ _%hd155503155523%_))
                                    (if (null? _%tl155504155525%_)
                                        (if (pair? _%tl155500155520%_)
                                            (let ((_%hd155501155530%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl155500155520%_)))
                                                  (_%tl155502155532%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl155500155520%_))))
                                              (let ((_%expr155535%_
                                                     _%hd155501155530%_))
                                                (if (null? _%tl155502155532%_)
                                                    (_%K155498155515%_
                                                     _%expr155535%_
                                                     _%id155528%_)
                                                    (_%E155497155509%_))))
                                            (_%E155497155509%_))
                                        (_%E155497155509%_))))
                                (_%E155497155509%_)))
                          (_%E155497155509%_))))))
          (let* ((_%bind155457%_ (map _%generate1155455%_ _%hd155451%_))
                 (_%body155459%_
                  (if _%compiled-body?155453%_
                      _%body155452%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self155449%_ _%body155452%_))))
                 (_%body155491%_
                  (let* ((_%body155460155468%_ _%body155459%_)
                         (_%else155462155476%_
                          (lambda () (cons _%body155459%_ '())))
                         (_%K155464155481%_
                          (lambda (_%exprs155479%_) _%exprs155479%_)))
                    (if (pair? _%body155460155468%_)
                        (let ((_%hd155465155484%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body155460155468%_)))
                              (_%tl155466155486%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body155460155468%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd155465155484%_ 'begin))
                              (let ((_%exprs155489%_ _%tl155466155486%_))
                                (_%K155464155481%_ _%exprs155489%_))
                              (_%else155462155476%_)))
                        (_%else155462155476%_)))))
            (cons _%form155450%_ (cons _%bind155457%_ _%body155491%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self155349%_ _%stx155350%_)
        (letrec ((_%generate1155352%_
                  (lambda (_%datum155404%_)
                    (if (or (null? _%datum155404%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum155404%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum155404%_))
                            (eof-object? _%datum155404%_))
                        _%datum155404%_
                        (if (uninterned-symbol? _%datum155404%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum155404%_
                               '#t))
                            (if (pair? _%datum155404%_)
                                (cons (_%generate1155352%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum155404%_)))
                                      (_%generate1155352%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum155404%_))))
                                (if (box? _%datum155404%_)
                                    (box (_%generate1155352%_
                                          (unbox _%datum155404%_)))
                                    (if (vector? _%datum155404%_)
                                        (vector-map
                                         _%generate1155352%_
                                         _%datum155404%_)
                                        (if (or (s8vector? _%datum155404%_)
                                                (u8vector? _%datum155404%_)
                                                (s16vector? _%datum155404%_)
                                                (u16vector? _%datum155404%_)
                                                (s32vector? _%datum155404%_)
                                                (u32vector? _%datum155404%_)
                                                (s64vector? _%datum155404%_)
                                                (u64vector? _%datum155404%_)
                                                (f32vector? _%datum155404%_)
                                                (f64vector? _%datum155404%_))
                                            _%datum155404%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx155350%_)))))))))))
          (let* ((_%g155354155367%_
                  (lambda (_%g155355155364%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g155355155364%_))))
                 (_%g155353155401%_
                  (lambda (_%g155355155370%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g155355155370%_))
                        (let ((_%e155357155372%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g155355155370%_))))
                          (let ((_%hd155358155375%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e155357155372%_)))
                                (_%tl155359155377%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e155357155372%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl155359155377%_))
                                (let ((_%e155360155380%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl155359155377%_))))
                                  (let ((_%hd155361155383%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e155360155380%_)))
                                        (_%tl155362155385%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e155360155380%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl155362155385%_))
                                        ((lambda (_%g155356155388%_)
                                           (cons 'quote
                                                 (cons (_%generate1155352%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g155356155388%_)))
                                                       '())))
                                         _%hd155361155383%_)
                                        (_%g155354155367%_
                                         _%g155355155370%_))))
                                (_%g155354155367%_ _%g155355155370%_))))
                        (_%g155354155367%_ _%g155355155370%_)))))
            (_%g155353155401%_ _%stx155350%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self154796%_ _%stx154797%_)
        (letrec ((_%compile-call154799%_
                  (lambda (_%rator155086%_ _%rands155087%_)
                    (let ((_%rator155093%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self154796%_
                              _%rator155086%_)))
                          (_%rands155094%_
                           (map (lambda (_%g155088155090%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self154796%_
                                     _%g155088155090%_)))
                                _%rands155087%_)))
                      (let* ((_%__stx160865160866%_ _%rator155093%_)
                             (_%g155097155149%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx160865160866%_)))))
                        (let ((_%__kont160867160868%_
                               (lambda (_%g155099155269%_
                                        _%g155100155270%_
                                        _%g155101155271%_
                                        _%g155102155272%_)
                                 (if (let ((__tmp161537
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands155094%_)))
                                           (__tmp161535
                                            (length (let ((__tmp161536
                                                           (lambda (_%g155308155311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g155309155313%_)
                     (cons _%g155308155311%_ _%g155309155313%_))))
              (declare (not safe))
              (__foldr1 __tmp161536 '() _%g155101155271%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp161537 __tmp161535))
                                     (let* ((_%id155316%_ _%g155102155272%_)
                                            (_%args155325%_
                                             (let ((__tmp161538
                                                    (lambda (_%g155317155320%_
                                                             _%g155318155322%_)
                                                      (cons _%g155317155320%_
                                                            _%g155318155322%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp161538
                                                '()
                                                _%g155101155271%_)))
                                            (_%body155334%_
                                             (let ((__tmp161539
                                                    (lambda (_%g155326155329%_
                                                             _%g155327155331%_)
                                                      (cons _%g155326155329%_
                                                            _%g155327155331%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp161539
                                                '()
                                                _%g155100155270%_)))
                                            (_%init155336%_
                                             (map list
                                                  _%args155325%_
                                                  _%rands155094%_)))
                                       (cons 'let
                                             (cons _%id155316%_
                                                   (cons _%init155336%_
                                                         _%body155334%_))))
                                     (let ((__tmp161540
                                            (let ((__tmp161541
                                                   (lambda (_%g155338155341%_
                                                            _%g155339155343%_)
                                                     (cons _%g155338155341%_
                                                           _%g155339155343%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp161541
                                               '()
                                               _%g155101155271%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx154797%_
                                        __tmp161540
                                        _%rands155094%_)))))
                              (_%__kont160873160874%_
                               (lambda ()
                                 (cons _%rator155093%_ _%rands155094%_))))
                          (let ((_%__match160932160933%_
                                 (lambda (_%e155103155161%_
                                          _%hd155104155164%_
                                          _%tl155105155166%_
                                          _%e155106155169%_
                                          _%hd155107155172%_
                                          _%tl155108155174%_
                                          _%e155109155177%_
                                          _%hd155110155180%_
                                          _%tl155111155182%_
                                          _%e155112155185%_
                                          _%hd155113155188%_
                                          _%tl155114155190%_
                                          _%e155115155193%_
                                          _%hd155116155196%_
                                          _%tl155117155198%_
                                          _%e155118155201%_
                                          _%hd155119155204%_
                                          _%tl155120155206%_
                                          _%e155121155209%_
                                          _%hd155122155212%_
                                          _%tl155123155214%_
                                          _%__splice160869160870%_
                                          _%target155124155217%_
                                          _%tl155126155219%_)
                                   (letrec ((_%loop155127155222%_
                                             (lambda (_%hd155125155225%_
                                                      _%arg155131155227%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd155125155225%_))
                                                   (let ((_%e155128155229%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd155125155225%_))))
                                                     (let ((_%lp-tl155130155234%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e155128155229%_)))
                                                           (_%lp-hd155129155232%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e155128155229%_))))
                                                       (_%loop155127155222%_
                                                        _%lp-tl155130155234%_
                                                        (cons _%lp-hd155129155232%_
                                                              _%arg155131155227%_))))
                                                   (let ((_%arg155132155237%_
                                                          (reverse _%arg155131155227%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl155123155214%_))
                                                         (let ((_%__splice160871160872%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl155123155214%_
                           '0))))
                   (let ((_%tl155135155241%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice160871160872%_ '1)))
                         (_%target155133155239%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice160871160872%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl155135155241%_))
                         (letrec ((_%loop155136155244%_
                                   (lambda (_%hd155134155247%_
                                            _%body155140155249%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd155134155247%_))
                                         (let ((_%e155137155251%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd155134155247%_))))
                                           (let ((_%lp-tl155139155256%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e155137155251%_)))
                                                 (_%lp-hd155138155254%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e155137155251%_))))
                                             (_%loop155136155244%_
                                              _%lp-tl155139155256%_
                                              (cons _%lp-hd155138155254%_
                                                    _%body155140155249%_))))
                                         (let ((_%body155141155259%_
                                                (reverse _%body155140155249%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl155117155198%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl155111155182%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl155108155174%_))
                                                       (let ((_%e155142155261%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl155108155174%_))))
                 (let ((_%tl155144155266%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e155142155261%_)))
                       (_%hd155143155264%_
                        (let ()
                          (declare (not safe))
                          (##car _%e155142155261%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl155144155266%_))
                       (let ((_%g155099155269%_ _%hd155143155264%_)
                             (_%g155100155270%_ _%body155141155259%_)
                             (_%g155101155271%_ _%arg155132155237%_)
                             (_%g155102155272%_ _%hd155113155188%_))
                         (if (eq? _%g155102155272%_ _%g155099155269%_)
                             (_%__kont160867160868%_
                              _%g155099155269%_
                              _%g155100155270%_
                              _%g155101155271%_
                              _%g155102155272%_)
                             (_%__kont160873160874%_)))
                       (_%__kont160873160874%_))))
               (_%__kont160873160874%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont160873160874%_))
                                               (_%__kont160873160874%_)))))))
                           (_%loop155136155244%_ _%target155133155239%_ '()))
                         (_%__kont160873160874%_))))
                 (_%__kont160873160874%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop155127155222%_
                                      _%target155124155217%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx160865160866%_))
                                (let ((_%e155103155161%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx160865160866%_))))
                                  (let ((_%tl155105155166%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e155103155161%_)))
                                        (_%hd155104155164%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e155103155161%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd155104155164%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd155104155164%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl155105155166%_))
                                                (let ((_%e155106155169%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl155105155166%_))))
                                                  (let ((_%tl155108155174%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e155106155169%_)))
                                                        (_%hd155107155172%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e155106155169%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd155107155172%_))
                                                        (let ((_%e155109155177%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd155107155172%_))))
                  (let ((_%tl155111155182%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e155109155177%_)))
                        (_%hd155110155180%_
                         (let ()
                           (declare (not safe))
                           (##car _%e155109155177%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd155110155180%_))
                        (let ((_%e155112155185%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd155110155180%_))))
                          (let ((_%tl155114155190%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e155112155185%_)))
                                (_%hd155113155188%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e155112155185%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl155114155190%_))
                                (let ((_%e155115155193%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl155114155190%_))))
                                  (let ((_%tl155117155198%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e155115155193%_)))
                                        (_%hd155116155196%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e155115155193%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd155116155196%_))
                                        (let ((_%e155118155201%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd155116155196%_))))
                                          (let ((_%tl155120155206%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e155118155201%_)))
                                                (_%hd155119155204%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e155118155201%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd155119155204%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd155119155204%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl155120155206%_))
                                                        (let ((_%e155121155209%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl155120155206%_))))
                  (let ((_%tl155123155214%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e155121155209%_)))
                        (_%hd155122155212%_
                         (let ()
                           (declare (not safe))
                           (##car _%e155121155209%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd155122155212%_))
                        (let ((_%__splice160869160870%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd155122155212%_
                                  '0))))
                          (let ((_%tl155126155219%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice160869160870%_ '1)))
                                (_%target155124155217%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice160869160870%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl155126155219%_))
                                (_%__match160932160933%_
                                 _%e155103155161%_
                                 _%hd155104155164%_
                                 _%tl155105155166%_
                                 _%e155106155169%_
                                 _%hd155107155172%_
                                 _%tl155108155174%_
                                 _%e155109155177%_
                                 _%hd155110155180%_
                                 _%tl155111155182%_
                                 _%e155112155185%_
                                 _%hd155113155188%_
                                 _%tl155114155190%_
                                 _%e155115155193%_
                                 _%hd155116155196%_
                                 _%tl155117155198%_
                                 _%e155118155201%_
                                 _%hd155119155204%_
                                 _%tl155120155206%_
                                 _%e155121155209%_
                                 _%hd155122155212%_
                                 _%tl155123155214%_
                                 _%__splice160869160870%_
                                 _%target155124155217%_
                                 _%tl155126155219%_)
                                (_%__kont160873160874%_))))
                        (_%__kont160873160874%_))))
                (_%__kont160873160874%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont160873160874%_))
                                                (_%__kont160873160874%_))))
                                        (_%__kont160873160874%_))))
                                (_%__kont160873160874%_))))
                        (_%__kont160873160874%_))))
                (_%__kont160873160874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont160873160874%_))
                                            (_%__kont160873160874%_))
                                        (_%__kont160873160874%_))))
                                (_%__kont160873160874%_)))))))))
          (let* ((_%g154801154824%_
                  (lambda (_%g154802154821%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g154802154821%_))))
                 (_%g154800155083%_
                  (lambda (_%g154802154827%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g154802154827%_))
                        (let ((_%e154805154829%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g154802154827%_))))
                          (let ((_%hd154806154832%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154805154829%_)))
                                (_%tl154807154834%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154805154829%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl154807154834%_))
                                (let ((_%e154808154837%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl154807154834%_))))
                                  (let ((_%hd154809154840%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154808154837%_)))
                                        (_%tl154810154842%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154808154837%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl154810154842%_))
                                        (let ((_g161542_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl154810154842%_
                                                  '0))))
                                          (begin
                                            (let ((_g161543_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g161542_)
                                                         (##values-length
                                                          _g161542_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g161543_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g161543_)))
                                            (let ((_%target154811154845%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g161542_
                                                      0)))
                                                  (_%tl154813154847%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g161542_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl154813154847%_))
                                                  (letrec ((_%loop154814154850%_
                                                            (lambda (_%hd154812154853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand154818154855%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd154812154853%_))
                          (let ((_%e154815154857%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd154812154853%_))))
                            (let ((_%lp-hd154816154860%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e154815154857%_)))
                                  (_%lp-tl154817154862%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e154815154857%_))))
                              (_%loop154814154850%_
                               _%lp-tl154817154862%_
                               (cons _%lp-hd154816154860%_
                                     _%rand154818154855%_))))
                          (let ((_%rand154819154865%_
                                 (reverse _%rand154818154855%_)))
                            ((lambda (_%g154803154867%_ _%g154804154868%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call154799%_
                                    _%g154804154868%_
                                    (let ((__tmp161544
                                           (lambda (_%g154885154888%_
                                                    _%g154886154890%_)
                                             (cons _%g154885154888%_
                                                   _%g154886154890%_))))
                                      (declare (not safe))
                                      (__foldr1
                                       __tmp161544
                                       '()
                                       _%g154803154867%_)))
                                   (let* ((_%__stx160981160982%_
                                           _%g154804154868%_)
                                          (_%g154894154906%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx160981160982%_)))))
                                     (let ((_%__kont160983160984%_
                                            (lambda ()
                                              (let ((_%f154943%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self154796%_
                                                        _%g154804154868%_))))
                                                (if (and (let ((__tmp161545
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f154943%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp161545))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f154943%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp154945%_ ((_%rest154948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp161547
                                                (lambda (_%g155065155068%_
                                                         _%g155066155070%_)
                                                  (cons _%g155065155068%_
                                                        _%g155066155070%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp161547
                                            '()
                                            _%g154803154867%_))))
                               (_%bind154950%_ '())
                               (_%args154951%_ '()))
              (let* ((_%rest154952154960%_ _%rest154948%_)
                     (_%else154954154968%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind154950%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f154943%_
                                                      _%args154951%_)
                                                '()))))))
                     (_%K154956155054%_
                      (lambda (_%rest154971%_ _%e154972%_)
                        (let* ((_%__stx160935160936%_ _%e154972%_)
                               (_%g154977154995%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx160935160936%_)))))
                          (let ((_%__kont160937160938%_
                                 (lambda ()
                                   (_%lp154945%_
                                    _%rest154971%_
                                    _%bind154950%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e154972%_))
                                          _%args154951%_))))
                                (_%__kont160939160940%_
                                 (lambda ()
                                   (_%lp154945%_
                                    _%rest154971%_
                                    _%bind154950%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e154972%_))
                                          _%args154951%_))))
                                (_%__kont160941160942%_
                                 (lambda ()
                                   (let ((_%tmp155002%_
                                          (let ((__tmp161546
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp161546))))
                                     (_%lp154945%_
                                      _%rest154971%_
                                      (cons (cons _%tmp155002%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e154972%_))
                                                        '()))
                                            _%bind154950%_)
                                      (cons _%tmp155002%_ _%args154951%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx160935160936%_))
                                (let ((_%e154979155033%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx160935160936%_))))
                                  (let ((_%tl154981155038%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154979155033%_)))
                                        (_%hd154980155036%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154979155033%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd154980155036%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd154980155036%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl154981155038%_))
                                                (let ((_%e154982155041%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl154981155038%_))))
                                                  (let ((_%tl154984155046%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e154982155041%_)))
                                                        (_%hd154983155044%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e154982155041%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl154984155046%_))
                                                        (_%__kont160937160938%_)
                                                        (_%__kont160941160942%_))))
                                                (_%__kont160941160942%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd154980155036%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl154981155038%_))
                                                    (let ((_%e154988155018%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl154981155038%_))))
                                                      (let ((_%tl154990155023%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e154988155018%_)))
                    (_%hd154989155021%_
                     (let () (declare (not safe)) (##car _%e154988155018%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl154990155023%_))
                    (_%__kont160939160940%_)
                    (_%__kont160941160942%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont160941160942%_))
                                                (_%__kont160941160942%_)))
                                        (_%__kont160941160942%_))))
                                (_%__kont160941160942%_)))))))
                (if (pair? _%rest154952154960%_)
                    (let ((_%hd154957155057%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest154952154960%_)))
                          (_%tl154958155059%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest154952154960%_))))
                      (let* ((_%e155062%_ _%hd154957155057%_)
                             (_%rest155064%_ _%tl154958155059%_))
                        (_%K154956155054%_ _%rest155064%_ _%e155062%_)))
                    (_%else154954154968%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call154799%_
                                                     _%g154804154868%_
                                                     (let ((__tmp161548
                                                            (lambda (_%g155072155075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g155073155077%_)
                      (cons _%g155072155075%_ _%g155073155077%_))))
               (declare (not safe))
               (__foldr1 __tmp161548 '() _%g154803154867%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont160985160986%_
                                            (lambda ()
                                              (_%compile-call154799%_
                                               _%g154804154868%_
                                               (let ((__tmp161549
                                                      (lambda (_%g154912154915%_
                                                               _%g154913154917%_)
                                                        (cons _%g154912154915%_
                                                              _%g154913154917%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp161549
                                                  '()
                                                  _%g154803154867%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx160981160982%_))
                                           (let ((_%e154896154925%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx160981160982%_))))
                                             (let ((_%tl154898154930%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e154896154925%_)))
                                                   (_%hd154897154928%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e154896154925%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd154897154928%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd154897154928%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl154898154930%_))
                                                           (let ((_%e154899154933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl154898154930%_))))
                     (let ((_%tl154901154938%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e154899154933%_)))
                           (_%hd154900154936%_
                            (let ()
                              (declare (not safe))
                              (##car _%e154899154933%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl154901154938%_))
                           (_%__kont160983160984%_)
                           (_%__kont160985160986%_))))
                   (_%__kont160985160986%_))
               (_%__kont160985160986%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont160985160986%_))))
                                           (_%__kont160985160986%_))))))
                             _%rand154819154865%_
                             _%hd154809154840%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop154814154850%_
                                                     _%target154811154845%_
                                                     '()))
                                                  (_%g154801154824%_
                                                   _%g154802154827%_)))))
                                        (_%g154801154824%_
                                         _%g154802154827%_))))
                                (_%g154801154824%_ _%g154802154827%_))))
                        (_%g154801154824%_ _%g154802154827%_)))))
            (_%g154800155083%_ _%stx154797%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self154541%_ _%stx154542%_)
        (let* ((_%__stx161053161054%_ _%stx154542%_)
               (_%g154545154574%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx161053161054%_)))))
          (let ((_%__kont161055161056%_
                 (lambda (_%g154547154640%_ _%g154548154641%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self154541%_
                        _%stx154542%_)
                       (let ((_%f154663%_
                              (let ((__tmp161550
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g154548154641%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self154541%_
                                 __tmp161550))))
                         (let _%lp154665%_ ((_%rest154668%_
                                             (reverse (let ((__tmp161552
                                                             (lambda (_%g154785154788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g154786154790%_)
                       (cons _%g154785154788%_ _%g154786154790%_))))
                (declare (not safe))
                (__foldr1 __tmp161552 '() _%g154547154640%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind154670%_ '())
                                            (_%args154671%_ '()))
                           (let* ((_%rest154672154680%_ _%rest154668%_)
                                  (_%else154674154688%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind154670%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f154663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args154671%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K154676154774%_
                                   (lambda (_%rest154691%_ _%e154692%_)
                                     (let* ((_%__stx161007161008%_ _%e154692%_)
                                            (_%g154697154715%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx161007161008%_)))))
                                       (let ((_%__kont161009161010%_
                                              (lambda ()
                                                (_%lp154665%_
                                                 _%rest154691%_
                                                 _%bind154670%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e154692%_))
                                                       _%args154671%_))))
                                             (_%__kont161011161012%_
                                              (lambda ()
                                                (_%lp154665%_
                                                 _%rest154691%_
                                                 _%bind154670%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e154692%_))
                                                       _%args154671%_))))
                                             (_%__kont161013161014%_
                                              (lambda ()
                                                (let ((_%tmp154722%_
                                                       (let ((__tmp161551
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp161551))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp154665%_
                                                   _%rest154691%_
                                                   (cons (cons _%tmp154722%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e154692%_))
                             '()))
                 _%bind154670%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp154722%_
                                                         _%args154671%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx161007161008%_))
                                             (let ((_%e154699154753%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx161007161008%_))))
                                               (let ((_%tl154701154758%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e154699154753%_)))
                                                     (_%hd154700154756%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e154699154753%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd154700154756%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd154700154756%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl154701154758%_))
                     (let ((_%e154702154761%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl154701154758%_))))
                       (let ((_%tl154704154766%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e154702154761%_)))
                             (_%hd154703154764%_
                              (let ()
                                (declare (not safe))
                                (##car _%e154702154761%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl154704154766%_))
                             (_%__kont161009161010%_)
                             (_%__kont161013161014%_))))
                     (_%__kont161013161014%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd154700154756%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl154701154758%_))
                         (let ((_%e154708154738%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl154701154758%_))))
                           (let ((_%tl154710154743%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e154708154738%_)))
                                 (_%hd154709154741%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e154708154738%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl154710154743%_))
                                 (_%__kont161011161012%_)
                                 (_%__kont161013161014%_))))
                         (_%__kont161013161014%_))
                     (_%__kont161013161014%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont161013161014%_))))
                                             (_%__kont161013161014%_)))))))
                             (if (pair? _%rest154672154680%_)
                                 (let ((_%hd154677154777%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest154672154680%_)))
                                       (_%tl154678154779%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest154672154680%_))))
                                   (let* ((_%e154782%_ _%hd154677154777%_)
                                          (_%rest154784%_ _%tl154678154779%_))
                                     (_%K154676154774%_
                                      _%rest154784%_
                                      _%e154782%_)))
                                 (_%else154674154688%_))))))))
                (_%__kont161059161060%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self154541%_ _%stx154542%_))))
            (let ((_%__match161098161099%_
                   (lambda (_%e154549154586%_
                            _%hd154550154589%_
                            _%tl154551154591%_
                            _%e154552154594%_
                            _%hd154553154597%_
                            _%tl154554154599%_
                            _%e154555154602%_
                            _%hd154556154605%_
                            _%tl154557154607%_
                            _%e154558154610%_
                            _%hd154559154613%_
                            _%tl154560154615%_
                            _%__splice161057161058%_
                            _%target154561154618%_
                            _%tl154563154620%_)
                     (letrec ((_%loop154564154623%_
                               (lambda (_%hd154562154626%_
                                        _%rand154568154628%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd154562154626%_))
                                     (let ((_%e154565154630%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd154562154626%_))))
                                       (let ((_%lp-tl154567154635%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e154565154630%_)))
                                             (_%lp-hd154566154633%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e154565154630%_))))
                                         (_%loop154564154623%_
                                          _%lp-tl154567154635%_
                                          (cons _%lp-hd154566154633%_
                                                _%rand154568154628%_))))
                                     (let ((_%rand154569154638%_
                                            (reverse _%rand154568154628%_)))
                                       (_%__kont161055161056%_
                                        _%rand154569154638%_
                                        _%hd154559154613%_))))))
                       (_%loop154564154623%_ _%target154561154618%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx161053161054%_))
                  (let ((_%e154549154586%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx161053161054%_))))
                    (let ((_%tl154551154591%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e154549154586%_)))
                          (_%hd154550154589%_
                           (let ()
                             (declare (not safe))
                             (##car _%e154549154586%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl154551154591%_))
                          (let ((_%e154552154594%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl154551154591%_))))
                            (let ((_%tl154554154599%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e154552154594%_)))
                                  (_%hd154553154597%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e154552154594%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd154553154597%_))
                                  (let ((_%e154555154602%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd154553154597%_))))
                                    (let ((_%tl154557154607%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e154555154602%_)))
                                          (_%hd154556154605%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e154555154602%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd154556154605%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd154556154605%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl154557154607%_))
                                                  (let ((_%e154558154610%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl154557154607%_))))
                                                    (let ((_%tl154560154615%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e154558154610%_)))
                                                          (_%hd154559154613%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e154558154610%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl154560154615%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl154554154599%_))
                      (let ((_%__splice161057161058%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl154554154599%_
                                '0))))
                        (let ((_%tl154563154620%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice161057161058%_ '1)))
                              (_%target154561154618%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice161057161058%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl154563154620%_))
                              (_%__match161098161099%_
                               _%e154549154586%_
                               _%hd154550154589%_
                               _%tl154551154591%_
                               _%e154552154594%_
                               _%hd154553154597%_
                               _%tl154554154599%_
                               _%e154555154602%_
                               _%hd154556154605%_
                               _%tl154557154607%_
                               _%e154558154610%_
                               _%hd154559154613%_
                               _%tl154560154615%_
                               _%__splice161057161058%_
                               _%target154561154618%_
                               _%tl154563154620%_)
                              (_%__kont161059161060%_))))
                      (_%__kont161059161060%_))
                  (_%__kont161059161060%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont161059161060%_))
                                              (_%__kont161059161060%_))
                                          (_%__kont161059161060%_))))
                                  (_%__kont161059161060%_))))
                          (_%__kont161059161060%_))))
                  (_%__kont161059161060%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self154353%_ _%stx154354%_)
        (letrec ((_%simplify154356%_
                  (lambda (_%code154441%_)
                    (let* ((_%code154442154460%_ _%code154441%_)
                           (_%else154444154468%_ (lambda () _%code154441%_))
                           (_%K154446154504%_
                            (lambda (_%expr154471%_ _%test154472%_)
                              (let* ((_%expr154473154481%_ _%expr154471%_)
                                     (_%else154475154489%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test154472%_
                                                    (cons _%expr154471%_
                                                          '())))))
                                     (_%K154477154494%_
                                      (lambda (_%exprs154492%_)
                                        (cons 'and
                                              (cons _%test154472%_
                                                    _%exprs154492%_)))))
                                (if (pair? _%expr154473154481%_)
                                    (let ((_%hd154478154497%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr154473154481%_)))
                                          (_%tl154479154499%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr154473154481%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd154478154497%_ 'and))
                                          (let ((_%exprs154502%_
                                                 _%tl154479154499%_))
                                            (_%K154477154494%_
                                             _%exprs154502%_))
                                          (_%else154475154489%_)))
                                    (_%else154475154489%_))))))
                      (if (pair? _%code154442154460%_)
                          (let ((_%hd154447154507%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code154442154460%_)))
                                (_%tl154448154509%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code154442154460%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd154447154507%_ 'if))
                                (if (pair? _%tl154448154509%_)
                                    (let ((_%hd154449154512%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl154448154509%_)))
                                          (_%tl154450154514%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl154448154509%_))))
                                      (let ((_%test154517%_
                                             _%hd154449154512%_))
                                        (if (pair? _%tl154450154514%_)
                                            (let ((_%hd154451154519%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl154450154514%_)))
                                                  (_%tl154452154521%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl154450154514%_))))
                                              (let ((_%expr154524%_
                                                     _%hd154451154519%_))
                                                (if (pair? _%tl154452154521%_)
                                                    (let ((_%hd154453154526%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl154452154521%_)))
                                                          (_%tl154454154528%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl154452154521%_))))
                                                      (if (pair? _%hd154453154526%_)
                                                          (let ((_%hd154455154531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd154453154526%_)))
                        (_%tl154456154533%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd154453154526%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd154455154531%_ 'quote))
                        (if (pair? _%tl154456154533%_)
                            (let ((_%hd154457154536%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl154456154533%_)))
                                  (_%tl154458154538%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl154456154533%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd154457154536%_ '#f))
                                  (if (null? _%tl154458154538%_)
                                      (if (null? _%tl154454154528%_)
                                          (_%K154446154504%_
                                           _%expr154524%_
                                           _%test154517%_)
                                          (_%else154444154468%_))
                                      (_%else154444154468%_))
                                  (_%else154444154468%_)))
                            (_%else154444154468%_))
                        (_%else154444154468%_)))
                  (_%else154444154468%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else154444154468%_))))
                                            (_%else154444154468%_))))
                                    (_%else154444154468%_))
                                (_%else154444154468%_)))
                          (_%else154444154468%_))))))
          (let* ((_%g154358154379%_
                  (lambda (_%g154359154376%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g154359154376%_))))
                 (_%g154357154438%_
                  (lambda (_%g154359154382%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g154359154382%_))
                        (let ((_%e154363154384%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g154359154382%_))))
                          (let ((_%hd154364154387%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154363154384%_)))
                                (_%tl154365154389%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154363154384%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl154365154389%_))
                                (let ((_%e154366154392%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl154365154389%_))))
                                  (let ((_%hd154367154395%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154366154392%_)))
                                        (_%tl154368154397%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154366154392%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl154368154397%_))
                                        (let ((_%e154369154400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl154368154397%_))))
                                          (let ((_%hd154370154403%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e154369154400%_)))
                                                (_%tl154371154405%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e154369154400%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl154371154405%_))
                                                (let ((_%e154372154408%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl154371154405%_))))
                                                  (let ((_%hd154373154411%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e154372154408%_)))
                                                        (_%tl154374154413%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e154372154408%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl154374154413%_))
                                                        ((lambda (_%g154360154416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g154361154417%_
                          _%g154362154418%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify154356%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self154353%_
                                       _%g154362154418%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self154353%_
                                             _%g154361154417%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self154353%_
                                                   _%g154360154416%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp161553
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self154353%_
                                               _%g154362154418%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp161553
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self154353%_
                                            _%g154361154417%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self154353%_
                                                  _%g154360154416%_))
                                               '()))))))
                 _%hd154373154411%_
                 _%hd154370154403%_
                 _%hd154367154395%_)
                (_%g154358154379%_ _%g154359154382%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g154358154379%_
                                                 _%g154359154382%_))))
                                        (_%g154358154379%_
                                         _%g154359154382%_))))
                                (_%g154358154379%_ _%g154359154382%_))))
                        (_%g154358154379%_ _%g154359154382%_)))))
            (_%g154357154438%_ _%stx154354%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self154301%_ _%stx154302%_)
        (let* ((_%g154304154317%_
                (lambda (_%g154305154314%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154305154314%_))))
               (_%g154303154350%_
                (lambda (_%g154305154320%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154305154320%_))
                      (let ((_%e154307154322%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154305154320%_))))
                        (let ((_%hd154308154325%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154307154322%_)))
                              (_%tl154309154327%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154307154322%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154309154327%_))
                              (let ((_%e154310154330%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154309154327%_))))
                                (let ((_%hd154311154333%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154310154330%_)))
                                      (_%tl154312154335%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154310154330%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154312154335%_))
                                      ((lambda (_%g154306154338%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g154306154338%_)))
                                       _%hd154311154333%_)
                                      (_%g154304154317%_ _%g154305154320%_))))
                              (_%g154304154317%_ _%g154305154320%_))))
                      (_%g154304154317%_ _%g154305154320%_)))))
          (_%g154303154350%_ _%stx154302%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self154233%_ _%stx154234%_)
        (let* ((_%g154236154253%_
                (lambda (_%g154237154250%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154237154250%_))))
               (_%g154235154298%_
                (lambda (_%g154237154256%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154237154256%_))
                      (let ((_%e154240154258%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154237154256%_))))
                        (let ((_%hd154241154261%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154240154258%_)))
                              (_%tl154242154263%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154240154258%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154242154263%_))
                              (let ((_%e154243154266%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154242154263%_))))
                                (let ((_%hd154244154269%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154243154266%_)))
                                      (_%tl154245154271%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154243154266%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154245154271%_))
                                      (let ((_%e154246154274%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154245154271%_))))
                                        (let ((_%hd154247154277%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154246154274%_)))
                                              (_%tl154248154279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154246154274%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154248154279%_))
                                              ((lambda (_%g154238154282%_
                                                        _%g154239154283%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g154239154283%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self154233%_
                              _%g154238154282%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd154247154277%_
                                               _%hd154244154269%_)
                                              (_%g154236154253%_
                                               _%g154237154256%_))))
                                      (_%g154236154253%_ _%g154237154256%_))))
                              (_%g154236154253%_ _%g154237154256%_))))
                      (_%g154236154253%_ _%g154237154256%_)))))
          (_%g154235154298%_ _%stx154234%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self154044%_ _%stx154045%_)
        (let* ((_%g154047154064%_
                (lambda (_%g154048154061%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154048154061%_))))
               (_%g154046154230%_
                (lambda (_%g154048154067%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154048154067%_))
                      (let ((_%e154051154069%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154048154067%_))))
                        (let ((_%hd154052154072%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154051154069%_)))
                              (_%tl154053154074%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154051154069%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154053154074%_))
                              (let ((_%e154054154077%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154053154074%_))))
                                (let ((_%hd154055154080%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154054154077%_)))
                                      (_%tl154056154082%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154054154077%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154056154082%_))
                                      (let ((_%e154057154085%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154056154082%_))))
                                        (let ((_%hd154058154088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154057154085%_)))
                                              (_%tl154059154090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154057154085%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154059154090%_))
                                              ((lambda (_%g154049154093%_
                                                        _%g154050154094%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self154044%_ _%g154049154093%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self154044%_
                                  _%g154050154094%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp154109%_ ((_%rest154112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g154050154094%_
                                       (cons _%g154049154093%_ '())))
                                (_%bind154114%_ '())
                                (_%args154115%_ '()))
               (let* ((_%rest154116154124%_ _%rest154112%_)
                      (_%else154118154132%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind154114%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args154115%_)
                                                 '()))))))
                      (_%K154120154218%_
                       (lambda (_%rest154135%_ _%e154136%_)
                         (let* ((_%__stx161101161102%_ _%e154136%_)
                                (_%g154141154159%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx161101161102%_)))))
                           (let ((_%__kont161103161104%_
                                  (lambda ()
                                    (_%lp154109%_
                                     _%rest154135%_
                                     _%bind154114%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e154136%_))
                                           _%args154115%_))))
                                 (_%__kont161105161106%_
                                  (lambda ()
                                    (_%lp154109%_
                                     _%rest154135%_
                                     _%bind154114%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e154136%_))
                                           _%args154115%_))))
                                 (_%__kont161107161108%_
                                  (lambda ()
                                    (let ((_%tmp154166%_
                                           (let ((__tmp161554
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp161554))))
                                      (_%lp154109%_
                                       _%rest154135%_
                                       (cons (cons _%tmp154166%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e154136%_))
                                                         '()))
                                             _%bind154114%_)
                                       (cons _%tmp154166%_ _%args154115%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx161101161102%_))
                                 (let ((_%e154143154197%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx161101161102%_))))
                                   (let ((_%tl154145154202%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e154143154197%_)))
                                         (_%hd154144154200%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e154143154197%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd154144154200%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd154144154200%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl154145154202%_))
                                                 (let ((_%e154146154205%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl154145154202%_))))
                                                   (let ((_%tl154148154210%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e154146154205%_)))
                                                         (_%hd154147154208%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e154146154205%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl154148154210%_))
                                                         (_%__kont161103161104%_)
                                                         (_%__kont161107161108%_))))
                                                 (_%__kont161107161108%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd154144154200%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl154145154202%_))
                                                     (let ((_%e154152154182%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl154145154202%_))))
                                                       (let ((_%tl154154154187%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e154152154182%_)))
                     (_%hd154153154185%_
                      (let () (declare (not safe)) (##car _%e154152154182%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl154154154187%_))
                     (_%__kont161105161106%_)
                     (_%__kont161107161108%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont161107161108%_))
                                                 (_%__kont161107161108%_)))
                                         (_%__kont161107161108%_))))
                                 (_%__kont161107161108%_)))))))
                 (if (pair? _%rest154116154124%_)
                     (let ((_%hd154121154221%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest154116154124%_)))
                           (_%tl154122154223%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest154116154124%_))))
                       (let* ((_%e154226%_ _%hd154121154221%_)
                              (_%rest154228%_ _%tl154122154223%_))
                         (_%K154120154218%_ _%rest154228%_ _%e154226%_)))
                     (_%else154118154132%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd154058154088%_
                                               _%hd154055154080%_)
                                              (_%g154047154064%_
                                               _%g154048154067%_))))
                                      (_%g154047154064%_ _%g154048154067%_))))
                              (_%g154047154064%_ _%g154048154067%_))))
                      (_%g154047154064%_ _%g154048154067%_)))))
          (_%g154046154230%_ _%stx154045%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self153855%_ _%stx153856%_)
        (let* ((_%g153858153875%_
                (lambda (_%g153859153872%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153859153872%_))))
               (_%g153857154041%_
                (lambda (_%g153859153878%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153859153878%_))
                      (let ((_%e153862153880%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153859153878%_))))
                        (let ((_%hd153863153883%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153862153880%_)))
                              (_%tl153864153885%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153862153880%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153864153885%_))
                              (let ((_%e153865153888%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153864153885%_))))
                                (let ((_%hd153866153891%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153865153888%_)))
                                      (_%tl153867153893%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153865153888%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153867153893%_))
                                      (let ((_%e153868153896%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153867153893%_))))
                                        (let ((_%hd153869153899%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153868153896%_)))
                                              (_%tl153870153901%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153868153896%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153870153901%_))
                                              ((lambda (_%g153860153904%_
                                                        _%g153861153905%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self153855%_ _%g153860153904%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self153855%_
                                  _%g153861153905%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp153920%_ ((_%rest153923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g153861153905%_
                                       (cons _%g153860153904%_ '())))
                                (_%bind153925%_ '())
                                (_%args153926%_ '()))
               (let* ((_%rest153927153935%_ _%rest153923%_)
                      (_%else153929153943%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind153925%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args153926%_)
                                                 '()))))))
                      (_%K153931154029%_
                       (lambda (_%rest153946%_ _%e153947%_)
                         (let* ((_%__stx161147161148%_ _%e153947%_)
                                (_%g153952153970%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx161147161148%_)))))
                           (let ((_%__kont161149161150%_
                                  (lambda ()
                                    (_%lp153920%_
                                     _%rest153946%_
                                     _%bind153925%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e153947%_))
                                           _%args153926%_))))
                                 (_%__kont161151161152%_
                                  (lambda ()
                                    (_%lp153920%_
                                     _%rest153946%_
                                     _%bind153925%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e153947%_))
                                           _%args153926%_))))
                                 (_%__kont161153161154%_
                                  (lambda ()
                                    (let ((_%tmp153977%_
                                           (let ((__tmp161555
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp161555))))
                                      (_%lp153920%_
                                       _%rest153946%_
                                       (cons (cons _%tmp153977%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e153947%_))
                                                         '()))
                                             _%bind153925%_)
                                       (cons _%tmp153977%_ _%args153926%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx161147161148%_))
                                 (let ((_%e153954154008%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx161147161148%_))))
                                   (let ((_%tl153956154013%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e153954154008%_)))
                                         (_%hd153955154011%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e153954154008%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd153955154011%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd153955154011%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl153956154013%_))
                                                 (let ((_%e153957154016%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl153956154013%_))))
                                                   (let ((_%tl153959154021%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e153957154016%_)))
                                                         (_%hd153958154019%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e153957154016%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl153959154021%_))
                                                         (_%__kont161149161150%_)
                                                         (_%__kont161153161154%_))))
                                                 (_%__kont161153161154%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd153955154011%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl153956154013%_))
                                                     (let ((_%e153963153993%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl153956154013%_))))
                                                       (let ((_%tl153965153998%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e153963153993%_)))
                     (_%hd153964153996%_
                      (let () (declare (not safe)) (##car _%e153963153993%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl153965153998%_))
                     (_%__kont161151161152%_)
                     (_%__kont161153161154%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont161153161154%_))
                                                 (_%__kont161153161154%_)))
                                         (_%__kont161153161154%_))))
                                 (_%__kont161153161154%_)))))))
                 (if (pair? _%rest153927153935%_)
                     (let ((_%hd153932154032%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest153927153935%_)))
                           (_%tl153933154034%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest153927153935%_))))
                       (let* ((_%e154037%_ _%hd153932154032%_)
                              (_%rest154039%_ _%tl153933154034%_))
                         (_%K153931154029%_ _%rest154039%_ _%e154037%_)))
                     (_%else153929153943%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd153869153899%_
                                               _%hd153866153891%_)
                                              (_%g153858153875%_
                                               _%g153859153878%_))))
                                      (_%g153858153875%_ _%g153859153878%_))))
                              (_%g153858153875%_ _%g153859153878%_))))
                      (_%g153858153875%_ _%g153859153878%_)))))
          (_%g153857154041%_ _%stx153856%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self153771%_ _%stx153772%_)
        (let* ((_%g153774153795%_
                (lambda (_%g153775153792%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153775153792%_))))
               (_%g153773153852%_
                (lambda (_%g153775153798%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153775153798%_))
                      (let ((_%e153779153800%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153775153798%_))))
                        (let ((_%hd153780153803%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153779153800%_)))
                              (_%tl153781153805%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153779153800%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153781153805%_))
                              (let ((_%e153782153808%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153781153805%_))))
                                (let ((_%hd153783153811%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153782153808%_)))
                                      (_%tl153784153813%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153782153808%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153784153813%_))
                                      (let ((_%e153785153816%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153784153813%_))))
                                        (let ((_%hd153786153819%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153785153816%_)))
                                              (_%tl153787153821%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153785153816%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153787153821%_))
                                              (let ((_%e153788153824%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153787153821%_))))
                                                (let ((_%hd153789153827%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153788153824%_)))
                                                      (_%tl153790153829%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153788153824%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl153790153829%_))
                                                      ((lambda (_%g153776153832%_
                                                                _%g153777153833%_
                                                                _%g153778153834%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self153771%_
                                _%g153776153832%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self153771%_
                                      _%g153777153833%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self153771%_
                                            _%g153778153834%_))
                                         (cons ''#f '()))))))
               _%hd153789153827%_
               _%hd153786153819%_
               _%hd153783153811%_)
              (_%g153774153795%_ _%g153775153798%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g153774153795%_
                                               _%g153775153798%_))))
                                      (_%g153774153795%_ _%g153775153798%_))))
                              (_%g153774153795%_ _%g153775153798%_))))
                      (_%g153774153795%_ _%g153775153798%_)))))
          (_%g153773153852%_ _%stx153772%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self153671%_ _%stx153672%_)
        (let* ((_%g153674153699%_
                (lambda (_%g153675153696%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153675153696%_))))
               (_%g153673153768%_
                (lambda (_%g153675153702%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153675153702%_))
                      (let ((_%e153680153704%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153675153702%_))))
                        (let ((_%hd153681153707%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153680153704%_)))
                              (_%tl153682153709%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153680153704%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153682153709%_))
                              (let ((_%e153683153712%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153682153709%_))))
                                (let ((_%hd153684153715%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153683153712%_)))
                                      (_%tl153685153717%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153683153712%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153685153717%_))
                                      (let ((_%e153686153720%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153685153717%_))))
                                        (let ((_%hd153687153723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153686153720%_)))
                                              (_%tl153688153725%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153686153720%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153688153725%_))
                                              (let ((_%e153689153728%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153688153725%_))))
                                                (let ((_%hd153690153731%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153689153728%_)))
                                                      (_%tl153691153733%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153689153728%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl153691153733%_))
                                                      (let ((_%e153692153736%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl153691153733%_))))
                (let ((_%hd153693153739%_
                       (let () (declare (not safe)) (##car _%e153692153736%_)))
                      (_%tl153694153741%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e153692153736%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl153694153741%_))
                      ((lambda (_%g153676153744%_
                                _%g153677153745%_
                                _%g153678153746%_
                                _%g153679153747%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self153671%_
                                        _%g153677153745%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self153671%_
                                              _%g153676153744%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self153671%_
                                                    _%g153678153746%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self153671%_
                                                          _%g153679153747%_))
                                                       (cons ''#f '())))))))
                       _%hd153693153739%_
                       _%hd153690153731%_
                       _%hd153687153723%_
                       _%hd153684153715%_)
                      (_%g153674153699%_ _%g153675153702%_))))
              (_%g153674153699%_ _%g153675153702%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g153674153699%_
                                               _%g153675153702%_))))
                                      (_%g153674153699%_ _%g153675153702%_))))
                              (_%g153674153699%_ _%g153675153702%_))))
                      (_%g153674153699%_ _%g153675153702%_)))))
          (_%g153673153768%_ _%stx153672%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self153587%_ _%stx153588%_)
        (let* ((_%g153590153611%_
                (lambda (_%g153591153608%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153591153608%_))))
               (_%g153589153668%_
                (lambda (_%g153591153614%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153591153614%_))
                      (let ((_%e153595153616%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153591153614%_))))
                        (let ((_%hd153596153619%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153595153616%_)))
                              (_%tl153597153621%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153595153616%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153597153621%_))
                              (let ((_%e153598153624%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153597153621%_))))
                                (let ((_%hd153599153627%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153598153624%_)))
                                      (_%tl153600153629%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153598153624%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153600153629%_))
                                      (let ((_%e153601153632%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153600153629%_))))
                                        (let ((_%hd153602153635%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153601153632%_)))
                                              (_%tl153603153637%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153601153632%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153603153637%_))
                                              (let ((_%e153604153640%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153603153637%_))))
                                                (let ((_%hd153605153643%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153604153640%_)))
                                                      (_%tl153606153645%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153604153640%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl153606153645%_))
                                                      ((lambda (_%g153592153648%_
                                                                _%g153593153649%_
                                                                _%g153594153650%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self153587%_
                                _%g153592153648%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self153587%_
                                      _%g153593153649%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self153587%_
                                            _%g153594153650%_))
                                         (cons ''#f '()))))))
               _%hd153605153643%_
               _%hd153602153635%_
               _%hd153599153627%_)
              (_%g153590153611%_ _%g153591153614%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g153590153611%_
                                               _%g153591153614%_))))
                                      (_%g153590153611%_ _%g153591153614%_))))
                              (_%g153590153611%_ _%g153591153614%_))))
                      (_%g153590153611%_ _%g153591153614%_)))))
          (_%g153589153668%_ _%stx153588%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self153487%_ _%stx153488%_)
        (let* ((_%g153490153515%_
                (lambda (_%g153491153512%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153491153512%_))))
               (_%g153489153584%_
                (lambda (_%g153491153518%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153491153518%_))
                      (let ((_%e153496153520%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153491153518%_))))
                        (let ((_%hd153497153523%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153496153520%_)))
                              (_%tl153498153525%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153496153520%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153498153525%_))
                              (let ((_%e153499153528%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153498153525%_))))
                                (let ((_%hd153500153531%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153499153528%_)))
                                      (_%tl153501153533%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153499153528%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153501153533%_))
                                      (let ((_%e153502153536%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153501153533%_))))
                                        (let ((_%hd153503153539%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153502153536%_)))
                                              (_%tl153504153541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153502153536%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153504153541%_))
                                              (let ((_%e153505153544%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153504153541%_))))
                                                (let ((_%hd153506153547%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153505153544%_)))
                                                      (_%tl153507153549%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153505153544%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl153507153549%_))
                                                      (let ((_%e153508153552%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl153507153549%_))))
                (let ((_%hd153509153555%_
                       (let () (declare (not safe)) (##car _%e153508153552%_)))
                      (_%tl153510153557%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e153508153552%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl153510153557%_))
                      ((lambda (_%g153492153560%_
                                _%g153493153561%_
                                _%g153494153562%_
                                _%g153495153563%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self153487%_
                                        _%g153493153561%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self153487%_
                                              _%g153492153560%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self153487%_
                                                    _%g153494153562%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self153487%_
                                                          _%g153495153563%_))
                                                       (cons ''#f '())))))))
                       _%hd153509153555%_
                       _%hd153506153547%_
                       _%hd153503153539%_
                       _%hd153500153531%_)
                      (_%g153490153515%_ _%g153491153518%_))))
              (_%g153490153515%_ _%g153491153518%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g153490153515%_
                                               _%g153491153518%_))))
                                      (_%g153490153515%_ _%g153491153518%_))))
                              (_%g153490153515%_ _%g153491153518%_))))
                      (_%g153490153515%_ _%g153491153518%_)))))
          (_%g153489153584%_ _%stx153488%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self153282%_ _%stx153283%_)
        (let* ((_%g153285153306%_
                (lambda (_%g153286153303%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153286153303%_))))
               (_%g153284153484%_
                (lambda (_%g153286153309%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153286153309%_))
                      (let ((_%e153290153311%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153286153309%_))))
                        (let ((_%hd153291153314%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153290153311%_)))
                              (_%tl153292153316%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153290153311%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153292153316%_))
                              (let ((_%e153293153319%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153292153316%_))))
                                (let ((_%hd153294153322%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153293153319%_)))
                                      (_%tl153295153324%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153293153319%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153295153324%_))
                                      (let ((_%e153296153327%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153295153324%_))))
                                        (let ((_%hd153297153330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153296153327%_)))
                                              (_%tl153298153332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153296153327%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153298153332%_))
                                              (let ((_%e153299153335%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153298153332%_))))
                                                (let ((_%hd153300153338%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153299153335%_)))
                                                      (_%tl153301153340%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153299153335%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl153301153340%_))
                                                      ((lambda (_%g153287153343%_
                                                                _%g153288153344%_
                                                                _%g153289153345%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self153282%_
                                    _%g153287153343%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self153282%_
                                          _%g153288153344%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp153363%_ ((_%rest153366%_
                                         (cons _%g153288153344%_
                                               (cons _%g153287153343%_ '())))
                                        (_%bind153368%_ '())
                                        (_%args153369%_ '()))
                       (let* ((_%rest153370153378%_ _%rest153366%_)
                              (_%else153372153386%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind153368%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp161556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp161556 _%args153369%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K153374153472%_
                               (lambda (_%rest153389%_ _%e153390%_)
                                 (let* ((_%__stx161193161194%_ _%e153390%_)
                                        (_%g153395153413%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx161193161194%_)))))
                                   (let ((_%__kont161195161196%_
                                          (lambda ()
                                            (_%lp153363%_
                                             _%rest153389%_
                                             _%bind153368%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e153390%_))
                                                   _%args153369%_))))
                                         (_%__kont161197161198%_
                                          (lambda ()
                                            (_%lp153363%_
                                             _%rest153389%_
                                             _%bind153368%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e153390%_))
                                                   _%args153369%_))))
                                         (_%__kont161199161200%_
                                          (lambda ()
                                            (let ((_%tmp153420%_
                                                   (let ((__tmp161557
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp161557))))
                                              (_%lp153363%_
                                               _%rest153389%_
                                               (cons (cons _%tmp153420%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e153390%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind153368%_)
                                               (cons _%tmp153420%_
                                                     _%args153369%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx161193161194%_))
                                         (let ((_%e153397153451%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx161193161194%_))))
                                           (let ((_%tl153399153456%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e153397153451%_)))
                                                 (_%hd153398153454%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e153397153451%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd153398153454%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd153398153454%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl153399153456%_))
                                                         (let ((_%e153400153459%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl153399153456%_))))
                   (let ((_%tl153402153464%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e153400153459%_)))
                         (_%hd153401153462%_
                          (let ()
                            (declare (not safe))
                            (##car _%e153400153459%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl153402153464%_))
                         (_%__kont161195161196%_)
                         (_%__kont161199161200%_))))
                 (_%__kont161199161200%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd153398153454%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl153399153456%_))
                     (let ((_%e153406153436%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl153399153456%_))))
                       (let ((_%tl153408153441%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e153406153436%_)))
                             (_%hd153407153439%_
                              (let ()
                                (declare (not safe))
                                (##car _%e153406153436%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl153408153441%_))
                             (_%__kont161197161198%_)
                             (_%__kont161199161200%_))))
                     (_%__kont161199161200%_))
                 (_%__kont161199161200%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont161199161200%_))))
                                         (_%__kont161199161200%_)))))))
                         (if (pair? _%rest153370153378%_)
                             (let ((_%hd153375153475%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest153370153378%_)))
                                   (_%tl153376153477%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest153370153378%_))))
                               (let* ((_%e153480%_ _%hd153375153475%_)
                                      (_%rest153482%_ _%tl153376153477%_))
                                 (_%K153374153472%_
                                  _%rest153482%_
                                  _%e153480%_)))
                             (_%else153372153386%_))))))
               _%hd153300153338%_
               _%hd153297153330%_
               _%hd153294153322%_)
              (_%g153285153306%_ _%g153286153309%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g153285153306%_
                                               _%g153286153309%_))))
                                      (_%g153285153306%_ _%g153286153309%_))))
                              (_%g153285153306%_ _%g153286153309%_))))
                      (_%g153285153306%_ _%g153286153309%_)))))
          (_%g153284153484%_ _%stx153283%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self153061%_ _%stx153062%_)
        (let* ((_%g153064153089%_
                (lambda (_%g153065153086%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153065153086%_))))
               (_%g153063153279%_
                (lambda (_%g153065153092%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153065153092%_))
                      (let ((_%e153070153094%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153065153092%_))))
                        (let ((_%hd153071153097%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153070153094%_)))
                              (_%tl153072153099%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153070153094%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153072153099%_))
                              (let ((_%e153073153102%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153072153099%_))))
                                (let ((_%hd153074153105%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153073153102%_)))
                                      (_%tl153075153107%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153073153102%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153075153107%_))
                                      (let ((_%e153076153110%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153075153107%_))))
                                        (let ((_%hd153077153113%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153076153110%_)))
                                              (_%tl153078153115%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153076153110%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153078153115%_))
                                              (let ((_%e153079153118%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153078153115%_))))
                                                (let ((_%hd153080153121%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153079153118%_)))
                                                      (_%tl153081153123%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153079153118%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl153081153123%_))
                                                      (let ((_%e153082153126%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl153081153123%_))))
                (let ((_%hd153083153129%_
                       (let () (declare (not safe)) (##car _%e153082153126%_)))
                      (_%tl153084153131%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e153082153126%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl153084153131%_))
                      ((lambda (_%g153066153134%_
                                _%g153067153135%_
                                _%g153068153136%_
                                _%g153069153137%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self153061%_
                                            _%g153067153135%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self153061%_
                                                  _%g153066153134%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self153061%_
                                                        _%g153068153136%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp153158%_ ((_%rest153161%_
                                                 (cons _%g153068153136%_
                                                       (cons _%g153066153134%_
                                                             (cons _%g153067153135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind153163%_ '())
                                                (_%args153164%_ '()))
                               (let* ((_%rest153165153173%_ _%rest153161%_)
                                      (_%else153167153181%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind153163%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp161558 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp161558 _%args153164%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K153169153267%_
                                       (lambda (_%rest153184%_ _%e153185%_)
                                         (let* ((_%__stx161239161240%_
                                                 _%e153185%_)
                                                (_%g153190153208%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx161239161240%_)))))
                                           (let ((_%__kont161241161242%_
                                                  (lambda ()
                                                    (_%lp153158%_
                                                     _%rest153184%_
                                                     _%bind153163%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e153185%_))
                                                           _%args153164%_))))
                                                 (_%__kont161243161244%_
                                                  (lambda ()
                                                    (_%lp153158%_
                                                     _%rest153184%_
                                                     _%bind153163%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e153185%_))
                                                           _%args153164%_))))
                                                 (_%__kont161245161246%_
                                                  (lambda ()
                                                    (let ((_%tmp153215%_
                                                           (let ((__tmp161559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp161559))))
              (_%lp153158%_
               _%rest153184%_
               (cons (cons _%tmp153215%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e153185%_))
                                 '()))
                     _%bind153163%_)
               (cons _%tmp153215%_ _%args153164%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx161239161240%_))
                                                 (let ((_%e153192153246%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx161239161240%_))))
                                                   (let ((_%tl153194153251%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e153192153246%_)))
                                                         (_%hd153193153249%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e153192153246%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd153193153249%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd153193153249%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl153194153251%_))
                         (let ((_%e153195153254%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl153194153251%_))))
                           (let ((_%tl153197153259%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e153195153254%_)))
                                 (_%hd153196153257%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e153195153254%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl153197153259%_))
                                 (_%__kont161241161242%_)
                                 (_%__kont161245161246%_))))
                         (_%__kont161245161246%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd153193153249%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl153194153251%_))
                             (let ((_%e153201153231%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl153194153251%_))))
                               (let ((_%tl153203153236%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e153201153231%_)))
                                     (_%hd153202153234%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e153201153231%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl153203153236%_))
                                     (_%__kont161243161244%_)
                                     (_%__kont161245161246%_))))
                             (_%__kont161245161246%_))
                         (_%__kont161245161246%_)))
                 (_%__kont161245161246%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont161245161246%_)))))))
                                 (if (pair? _%rest153165153173%_)
                                     (let ((_%hd153170153270%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest153165153173%_)))
                                           (_%tl153171153272%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest153165153173%_))))
                                       (let* ((_%e153275%_ _%hd153170153270%_)
                                              (_%rest153277%_
                                               _%tl153171153272%_))
                                         (_%K153169153267%_
                                          _%rest153277%_
                                          _%e153275%_)))
                                     (_%else153167153181%_))))))
                       _%hd153083153129%_
                       _%hd153080153121%_
                       _%hd153077153113%_
                       _%hd153074153105%_)
                      (_%g153064153089%_ _%g153065153092%_))))
              (_%g153064153089%_ _%g153065153092%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g153064153089%_
                                               _%g153065153092%_))))
                                      (_%g153064153089%_ _%g153065153092%_))))
                              (_%g153064153089%_ _%g153065153092%_))))
                      (_%g153064153089%_ _%g153065153092%_)))))
          (_%g153063153279%_ _%stx153062%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self152900%_ _%stx152901%_)
        (letrec ((_%import-set-template152903%_
                  (lambda (_%in153006%_ _%phi153007%_)
                    (let ((_%iphi153009%_
                           (fx+ _%phi153007%_
                                (##direct-structure-ref
                                 _%in153006%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports153010%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in153006%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp153012%_ ((_%rest153014%_ _%imports153010%_)
                                         (_%r153015%_ '()))
                        (let* ((_%rest153016153024%_ _%rest153014%_)
                               (_%else153018153032%_ (lambda () _%r153015%_))
                               (_%K153020153049%_
                                (lambda (_%rest153035%_ _%in153036%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in153036%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi153009%_))
                                          (_%lp153012%_
                                           _%rest153035%_
                                           (cons _%in153036%_ _%r153015%_))
                                          (_%lp153012%_
                                           _%rest153035%_
                                           _%r153015%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in153036%_
                                             'gx#module-import::t))
                                          (let ((_%iphi153040%_
                                                 (fx+ _%phi153007%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in153036%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi153040%_))
                                                (_%lp153012%_
                                                 _%rest153035%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in153036%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r153015%_))
                                                (_%lp153012%_
                                                 _%rest153035%_
                                                 _%r153015%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in153036%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi153043%_
                                                     (fx+ _%iphi153009%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in153036%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi153043%_))
                                                    (_%lp153012%_
                                                     _%rest153035%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in153036%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r153015%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi153043%_))
                                                        (_%lp153012%_
                                                         _%rest153035%_
                                                         (let ((__tmp161560
                                                                (_%import-set-template152903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in153036%_
                         _%iphi153009%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r153015%_ __tmp161560)))
                (_%lp153012%_ _%rest153035%_ _%r153015%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp153012%_
                                               _%rest153035%_
                                               _%r153015%_)))))))
                          (if (pair? _%rest153016153024%_)
                              (let ((_%hd153021153052%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest153016153024%_)))
                                    (_%tl153022153054%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest153016153024%_))))
                                (let* ((_%in153057%_ _%hd153021153052%_)
                                       (_%rest153059%_ _%tl153022153054%_))
                                  (_%K153020153049%_
                                   _%rest153059%_
                                   _%in153057%_)))
                              (_%else153018153032%_))))))))
          (let* ((_%g152905152915%_
                  (lambda (_%g152906152912%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g152906152912%_))))
                 (_%g152904153003%_
                  (lambda (_%g152906152918%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g152906152918%_))
                        (let ((_%e152908152920%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g152906152918%_))))
                          (let ((_%hd152909152923%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152908152920%_)))
                                (_%tl152910152925%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152908152920%_))))
                            ((lambda (_%g152907152928%_)
                               (let ((_%ht152939%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp152941%_ ((_%rest152943%_
                                                     _%g152907152928%_)
                                                    (_%loads152944%_ '()))
                                   (letrec ((_%K152946%_
                                             (lambda (_%ctx152996%_
                                                      _%rest152997%_)
                                               (let ((_%id152999%_
                                                      (##structure-ref
                                                       _%ctx152996%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht152939%_
                                                        _%id152999%_))
                                                     (_%lp152941%_
                                                      _%rest152997%_
                                                      _%loads152944%_)
                                                     (let ((_%rt153001%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id152999%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht152939%_
                                                          _%id152999%_
                                                          _%rt153001%_))
                                                       (_%lp152941%_
                                                        _%rest152997%_
                                                        (cons _%rt153001%_
                                                              _%loads152944%_))))))))
                                     (let* ((_%rest152947152955%_
                                             _%rest152943%_)
                                            (_%else152949152967%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp161562
                                                            (lambda (_%g152962152964%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g152962152964%_)))
                   (__tmp161561 (reverse _%loads152944%_)))
               (declare (not safe))
               (##map __tmp161562 __tmp161561)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K152951152984%_
                                             (lambda (_%rest152970%_
                                                      _%in152971%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in152971%_
                                                      'gx#module-context::t))
                                                   (_%K152946%_
                                                    _%in152971%_
                                                    _%rest152970%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in152971%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in152971%_
                               '3
                               '#f
                               '#f)))
                   (_%K152946%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in152971%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest152970%_)
                   (_%lp152941%_ _%rest152970%_ _%loads152944%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in152971%_
                      'gx#import-set::t))
                   (let ((_%phi152976%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in152971%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi152976%_)
                         (_%K152946%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in152971%_
                             '1
                             '#f
                             '#f))
                          _%rest152970%_)
                         (if (fxpositive? _%phi152976%_)
                             (let ((_%deps152980%_
                                    (_%import-set-template152903%_
                                     _%in152971%_
                                     '0)))
                               (_%lp152941%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest152970%_
                                   _%deps152980%_))
                                _%loads152944%_))
                             (_%lp152941%_ _%rest152970%_ _%loads152944%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx152901%_
                      _%in152971%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest152947152955%_)
                                           (let ((_%hd152952152987%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest152947152955%_)))
                                                 (_%tl152953152989%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest152947152955%_))))
                                             (let* ((_%in152992%_
                                                     _%hd152952152987%_)
                                                    (_%rest152994%_
                                                     _%tl152953152989%_))
                                               (_%K152951152984%_
                                                _%rest152994%_
                                                _%in152992%_)))
                                           (_%else152949152967%_)))))))
                             _%tl152910152925%_)))
                        (_%g152905152915%_ _%g152906152918%_)))))
            (_%g152904153003%_ _%stx152901%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self152714%_ _%stx152715%_)
        (letrec ((_%add-lift!152717%_
                  (lambda (_%expr152898%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr152898%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote152718%_
                  (lambda (_%id152895%_ _%marks152896%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id152895%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks152896%_
                                                        '()))))))))
                 (_%generate-simple152719%_
                  (lambda (_%stxq152890%_)
                    (let ((_%gid152892%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid152893%_
                           (gxc#generate-runtime-identifier _%stxq152890%_)))
                      (_%add-lift!152717%_
                       (cons 'define
                             (cons _%gid152892%_
                                   (cons (_%generate-syntax-quote152718%_
                                          _%qid152893%_
                                          ''())
                                         '()))))
                      (let ((__tmp161563
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp161563 _%stxq152890%_ _%gid152892%_))
                      _%gid152892%_)))
                 (_%generate-serialized152720%_
                  (lambda (_%stxq152880%_ _%marks152881%_)
                    (let* ((_%mark-refs152883%_
                            (map _%generate-mark152721%_ _%marks152881%_))
                           (_%gid152885%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid152887%_
                            (gxc#generate-runtime-identifier _%stxq152880%_)))
                      (_%add-lift!152717%_
                       (cons 'define
                             (cons _%gid152885%_
                                   (cons (_%generate-syntax-quote152718%_
                                          _%qid152887%_
                                          (cons 'list _%mark-refs152883%_))
                                         '()))))
                      (let ((__tmp161564
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp161564 _%stxq152880%_ _%gid152885%_))
                      _%gid152885%_)))
                 (_%generate-mark152721%_
                  (lambda (_%mark152865%_)
                    (let ((_%$e152867%_
                           (let ((__tmp161565
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp161565 _%mark152865%_))))
                      (if _%$e152867%_
                          _%$e152867%_
                          (let* ((_%gid152871%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr152873%_
                                  (_%serialize-mark152722%_ _%mark152865%_))
                                 (_%ctx152875%_
                                  (let ((__tmp161566
                                         (##structure-ref
                                          _%mark152865%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp161566)))
                                 (_%ctx-ref152877%_
                                  (if (eq? _%ctx152875%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref152723%_
                                                               _%ctx152875%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp161567
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp161567
                               _%mark152865%_
                               _%gid152871%_))
                            (_%add-lift!152717%_
                             (cons 'define
                                   (cons _%gid152871%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr152873%_ '()))
                   (cons _%ctx-ref152877%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid152871%_)))))
                 (_%serialize-mark152722%_
                  (lambda (_%mark152813%_)
                    (letrec ((_%quote-e152815%_
                              (lambda (_%sym152863%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym152863%_))
                                    _%sym152863%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym152863%_))))))
                      (let* ((_%mark152816152825%_ _%mark152813%_)
                             (_%E152818152828%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark152816152825%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K152819152840%_
                              (lambda (_%trace152831%_
                                       _%phi152832%_
                                       _%ctx152833%_
                                       _%subst152834%_)
                                (let ((_%subs152836%_
                                       (if _%subst152834%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst152834%_))
                                           '())))
                                  (cons _%phi152832%_
                                        (let ((__tmp161568
                                               (lambda (_%pair152838%_)
                                                 (cons (_%quote-e152815%_
                                                        (car _%pair152838%_))
                                                       (_%quote-e152815%_
                                                        (cdr _%pair152838%_))))))
                                          (declare (not safe))
                                          (##map __tmp161568
                                                 _%subs152836%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark152816152825%_
                               'gx#expander-mark::t))
                            (let* ((_%e152820152843%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark152816152825%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst152846%_ _%e152820152843%_)
                                   (_%e152821152848%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark152816152825%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx152851%_ _%e152821152848%_)
                                   (_%e152822152853%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark152816152825%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi152856%_ _%e152822152853%_)
                                   (_%e152823152858%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark152816152825%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace152861%_ _%e152823152858%_))
                              (_%K152819152840%_
                               _%trace152861%_
                               _%phi152856%_
                               _%ctx152851%_
                               _%subst152846%_))
                            (_%E152818152828%_))))))
                 (_%context-ref152723%_
                  (lambda (_%ctx152800%_)
                    (if (let ((__tmp161569
                               (##structure-ref
                                _%ctx152800%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp161569
                           'gx#module-context::t))
                        (let ((_%ctx-ref152802%_
                               (_%context-ref-nested152725%_ _%ctx152800%_))
                              (_%ctx-origin152803%_
                               (_%context-ref-origin152724%_ _%ctx152800%_))
                              (_%origin152804%_
                               (_%context-ref-origin152724%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin152804%_ _%ctx-origin152803%_)
                              (let ((_%ref152806%_
                                     (_%context-ref-nested152725%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp152808%_ ((_%ref152810%_
                                                    (cdr _%ref152806%_))
                                                   (_%ctx-ref152811%_
                                                    (cdr _%ctx-ref152802%_)))
                                  (if (and (pair? _%ref152810%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref152810%_))
                                                (car _%ctx-ref152811%_)))
                                      (_%lp152808%_
                                       (cdr _%ref152810%_)
                                       (cdr _%ctx-ref152811%_))
                                      (cons '#f _%ctx-ref152811%_))))
                              _%ctx-ref152802%_))
                        (let ((__tmp161570
                               (##structure-ref
                                _%ctx152800%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp161570)))))
                 (_%context-ref-origin152724%_
                  (lambda (_%ctx152792%_)
                    (let _%lp152794%_ ((_%ctx152796%_ _%ctx152792%_))
                      (let ((_%super152798%_
                             (##structure-ref
                              _%ctx152796%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super152798%_
                               'gx#module-context::t))
                            (_%lp152794%_ _%super152798%_)
                            _%ctx152796%_)))))
                 (_%context-ref-nested152725%_
                  (lambda (_%ctx152783%_)
                    (let _%lp152785%_ ((_%ctx152787%_ _%ctx152783%_)
                                       (_%r152788%_ '()))
                      (let ((_%super152790%_
                             (##structure-ref
                              _%ctx152787%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super152790%_
                               'gx#module-context::t))
                            (_%lp152785%_
                             _%super152790%_
                             (cons (car (##structure-ref
                                         _%ctx152787%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r152788%_))
                            (cons (let ((__tmp161571
                                         (##structure-ref
                                          _%ctx152787%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp161571))
                                  _%r152788%_)))))))
          (let* ((_%g152727152740%_
                  (lambda (_%g152728152737%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g152728152737%_))))
                 (_%g152726152780%_
                  (lambda (_%g152728152743%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g152728152743%_))
                        (let ((_%e152730152745%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g152728152743%_))))
                          (let ((_%hd152731152748%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152730152745%_)))
                                (_%tl152732152750%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152730152745%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl152732152750%_))
                                (let ((_%e152733152753%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl152732152750%_))))
                                  (let ((_%hd152734152756%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e152733152753%_)))
                                        (_%tl152735152758%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e152733152753%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl152735152758%_))
                                        ((lambda (_%g152729152761%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g152729152761%_))
                                               (let ((_%$e152774%_
                                                      (let ((__tmp161572
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp161572 _%g152729152761%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e152774%_
                                                     _%$e152774%_
                                                     (let ((_%marks152778%_
                                                            (##direct-structure-ref
                                                             _%g152729152761%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks152778%_)
                                                           (_%generate-simple152719%_
                                                            _%g152729152761%_)
                                                           (_%generate-serialized152720%_
                                                            _%g152729152761%_
                                                            _%marks152778%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g152729152761%_))))
                                         _%hd152734152756%_)
                                        (_%g152727152740%_
                                         _%g152728152743%_))))
                                (_%g152727152740%_ _%g152728152743%_))))
                        (_%g152727152740%_ _%g152728152743%_)))))
            (_%g152726152780%_ _%stx152715%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self152646%_ _%stx152647%_)
        (let* ((_%g152649152666%_
                (lambda (_%g152650152663%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152650152663%_))))
               (_%g152648152711%_
                (lambda (_%g152650152669%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152650152669%_))
                      (let ((_%e152653152671%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152650152669%_))))
                        (let ((_%hd152654152674%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152653152671%_)))
                              (_%tl152655152676%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152653152671%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152655152676%_))
                              (let ((_%e152656152679%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152655152676%_))))
                                (let ((_%hd152657152682%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152656152679%_)))
                                      (_%tl152658152684%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152656152679%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152658152684%_))
                                      (let ((_%e152659152687%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152658152684%_))))
                                        (let ((_%hd152660152690%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152659152687%_)))
                                              (_%tl152661152692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152659152687%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl152661152692%_))
                                              ((lambda (_%g152651152695%_
                                                        _%g152652152696%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g152652152696%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self152646%_
                              _%g152651152695%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd152660152690%_
                                               _%hd152657152682%_)
                                              (_%g152649152666%_
                                               _%g152650152669%_))))
                                      (_%g152649152666%_ _%g152650152669%_))))
                              (_%g152649152666%_ _%g152650152669%_))))
                      (_%g152649152666%_ _%g152650152669%_)))))
          (_%g152648152711%_ _%stx152647%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self152595%_ _%stx152596%_)
        (let* ((_%g152598152608%_
                (lambda (_%g152599152605%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152599152605%_))))
               (_%g152597152643%_
                (lambda (_%g152599152611%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152599152611%_))
                      (let ((_%e152601152613%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152599152611%_))))
                        (let ((_%hd152602152616%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152601152613%_)))
                              (_%tl152603152618%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152601152613%_))))
                          ((lambda (_%g152600152621%_)
                             (let* ((_%c-body152635%_
                                     (map (lambda (_%g152630152632%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self152595%_
                                               _%g152630152632%_)))
                                          _%g152600152621%_))
                                    (_%c-body152640%_
                                     (let ((__tmp161573
                                            (lambda (_%$obj152637%_)
                                              (not (eq? _%$obj152637%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp161573
                                        _%c-body152635%_))))
                               (cons '%#begin _%c-body152640%_)))
                           _%tl152603152618%_)))
                      (_%g152598152608%_ _%g152599152611%_)))))
          (_%g152597152643%_ _%stx152596%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self152500%_ _%stx152501%_)
        (let* ((_%g152503152513%_
                (lambda (_%g152504152510%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152504152510%_))))
               (_%g152502152592%_
                (lambda (_%g152504152516%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152504152516%_))
                      (let ((_%e152506152518%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152504152516%_))))
                        (let ((_%hd152507152521%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152506152518%_)))
                              (_%tl152508152523%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152506152518%_))))
                          ((lambda (_%g152505152526%_)
                             (let* ((_%phi152536%_
                                     (let ((__tmp161574
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp161574 '1)))
                                    (_%block152538%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self152500%_ 'state))
                                      _%phi152536%_))
                                    (_%compiled152541%_
                                     (let ((__tmp161575
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self152500%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g152505152526%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp161575
                                        gx#current-expander-phi
                                        _%phi152536%_)))
                                    (_%g152544152554%_
                                     (lambda (_%g152545152551%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g152545152551%_))))
                                    (_%g152543152589%_
                                     (lambda (_%g152545152557%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g152545152557%_))
                                           (let ((_%e152547152559%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g152545152557%_))))
                                             (let ((_%hd152548152562%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e152547152559%_)))
                                                   (_%tl152549152564%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e152547152559%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd152548152562%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd152548152562%_))
                                                       ((lambda (_%g152546152567%_)
                                                          (let ((_%c-body152584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj152581%_)
                                   (not (eq? _%$obj152581%_ '#!void)))
                                 _%g152546152567%_)))
                    (if _%block152538%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block152538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body152584%_))
                        (if (null? _%c-body152584%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body152584%_)))))
                _%tl152549152564%_)
               (_%g152544152554%_ _%g152545152557%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g152544152554%_
                                                    _%g152545152557%_))))
                                           (_%g152544152554%_
                                            _%g152545152557%_)))))
                               (_%g152543152589%_ _%compiled152541%_)))
                           _%tl152508152523%_)))
                      (_%g152503152513%_ _%g152504152516%_)))))
          (_%g152502152592%_ _%stx152501%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self152431%_ _%stx152432%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self152431%_ 'state)))
        (let* ((_%g152434152448%_
                (lambda (_%g152435152445%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152435152445%_))))
               (_%g152433152497%_
                (lambda (_%g152435152451%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152435152451%_))
                      (let ((_%e152438152453%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152435152451%_))))
                        (let ((_%hd152439152456%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152438152453%_)))
                              (_%tl152440152458%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152438152453%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152440152458%_))
                              (let ((_%e152441152461%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152440152458%_))))
                                (let ((_%hd152442152464%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152441152461%_)))
                                      (_%tl152443152466%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152441152461%_))))
                                  ((lambda (_%g152436152469%_
                                            _%g152437152470%_)
                                     (let ((_%key152483%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g152437152470%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key152483%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx152432%_
                                              _%g152437152470%_
                                              _%key152483%_)))
                                       (let* ((_%ctx152485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g152437152470%_)))
                                              (_%code152488%_
                                               (let ((__tmp161576
                                                      (lambda ()
                                                        (let ((__tmp161577
                                                               (##structure-ref
                                                                _%ctx152485%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self152431%_
                                                           __tmp161577)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp161576
                                                  gx#current-expander-context
                                                  _%ctx152485%_)))
                                              (_%rt152490%_
                                               (let ((__tmp161578
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp161578
                                                  _%ctx152485%_)))
                                              (_%loader152492%_
                                               (if _%rt152490%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt152490%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid152494%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g152437152470%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self152431%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid152494%_
                                                     (cons _%code152488%_
                                                           _%loader152492%_))))))
                                   _%tl152443152466%_
                                   _%hd152442152464%_)))
                              (_%g152434152448%_ _%g152435152451%_))))
                      (_%g152434152448%_ _%g152435152451%_)))))
          (_%g152433152497%_ _%stx152432%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx152418%_ _%context-chain152419%_)
        (let _%lp152421%_ ((_%ctx152423%_ _%ctx152418%_) (_%path152424%_ '()))
          (let ((_%super152426%_
                 (##structure-ref _%ctx152423%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super152426%_ _%context-chain152419%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx152423%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path152424%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super152426%_
                       'gx#module-context::t))
                    (_%lp152421%_
                     _%super152426%_
                     (cons (car (##structure-ref
                                 _%ctx152423%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path152424%_))
                    (cons (let ((__tmp161579
                                 (##structure-ref
                                  _%ctx152423%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp161579))
                          _%path152424%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp152411%_ ((_%ctx152413%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r152414%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx152413%_ 'gx#module-context::t))
              (_%lp152411%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx152413%_ '3 '#f '#f))
               (cons _%ctx152413%_ _%r152414%_))
              _%r152414%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self152176%_ _%stx152177%_)
        (letrec* ((_%context-chain152179%_ (gxc#current-context-chain))
                  (_%make-import-spec152180%_
                   (lambda (_%in152348%_)
                     (let* ((_%in152349152361%_ _%in152348%_)
                            (_%E152351152364%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in152349152361%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K152352152374%_
                             (lambda (_%phi152367%_
                                      _%name152368%_
                                      _%src-name152369%_
                                      _%src-phi152370%_
                                      _%src-key152371%_
                                      _%src-ctx152372%_)
                               (cons _%phi152367%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name152368%_)
                                           (cons _%src-phi152370%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name152369%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in152349152361%_
                              'gx#module-import::t))
                           (let ((_%e152353152377%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in152349152361%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e152353152377%_
                                    'gx#module-export::t))
                                 (let* ((_%e152356152380%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e152353152377%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx152383%_ _%e152356152380%_)
                                        (_%e152357152385%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e152353152377%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key152388%_ _%e152357152385%_)
                                        (_%e152358152390%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e152353152377%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi152393%_ _%e152358152390%_)
                                        (_%e152359152395%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e152353152377%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name152398%_ _%e152359152395%_)
                                        (_%e152354152400%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in152349152361%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name152403%_ _%e152354152400%_)
                                        (_%e152355152405%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in152349152361%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi152408%_ _%e152355152405%_))
                                   (_%K152352152374%_
                                    _%phi152408%_
                                    _%name152403%_
                                    _%src-name152398%_
                                    _%src-phi152393%_
                                    _%src-key152388%_
                                    _%src-ctx152383%_))
                                 (_%E152351152364%_)))
                           (_%E152351152364%_)))))
                  (_%make-import-path152181%_
                   (lambda (_%ctx152346%_)
                     (gxc#generate-meta-import-path
                      _%ctx152346%_
                      _%context-chain152179%_)))
                  (_%make-import-spec-in152182%_
                   (lambda (_%ctx152343%_ _%in152344%_)
                     (cons 'spec:
                           (cons (_%make-import-path152181%_ _%ctx152343%_)
                                 (reverse _%in152344%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self152176%_ 'state)))
          (let* ((_%g152184152194%_
                  (lambda (_%g152185152191%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g152185152191%_))))
                 (_%g152183152340%_
                  (lambda (_%g152185152197%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g152185152197%_))
                        (let ((_%e152187152199%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g152185152197%_))))
                          (let ((_%hd152188152202%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152187152199%_)))
                                (_%tl152189152204%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152187152199%_))))
                            ((lambda (_%g152186152207%_)
                               (let _%lp152218%_ ((_%rest152220%_
                                                   _%g152186152207%_)
                                                  (_%current-src152221%_ '#f)
                                                  (_%current-in152222%_ '())
                                                  (_%r152223%_ '()))
                                 (let* ((_%rest152224152232%_ _%rest152220%_)
                                        (_%else152226152242%_
                                         (lambda ()
                                           (let ((_%r152240%_
                                                  (if _%current-src152221%_
                                                      (cons (_%make-import-spec-in152182%_
                                                             _%current-src152221%_
                                                             _%current-in152222%_)
                                                            _%r152223%_)
                                                      _%r152223%_)))
                                             (cons '%#import
                                                   (reverse _%r152240%_)))))
                                        (_%K152228152328%_
                                         (lambda (_%rest152245%_ _%in152246%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in152246%_
                                                  'gx#module-import::t))
                                               (let* ((_%in152248152255%_
                                                       _%in152246%_)
                                                      (_%E152250152258%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in152248152255%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K152251152266%_
               (lambda (_%src-ctx152261%_)
                 (if (eq? _%current-src152221%_ _%src-ctx152261%_)
                     (_%lp152218%_
                      _%rest152245%_
                      _%current-src152221%_
                      (cons (_%make-import-spec152180%_ _%in152246%_)
                            _%current-in152222%_)
                      _%r152223%_)
                     (if _%current-src152221%_
                         (_%lp152218%_
                          _%rest152245%_
                          _%src-ctx152261%_
                          (cons (_%make-import-spec152180%_ _%in152246%_) '())
                          (cons (_%make-import-spec-in152182%_
                                 _%current-src152221%_
                                 _%current-in152222%_)
                                _%r152223%_))
                         (_%lp152218%_
                          _%rest152245%_
                          _%src-ctx152261%_
                          (cons (_%make-import-spec152180%_ _%in152246%_) '())
                          _%r152223%_)))))
              (_%e152252152269%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in152248152255%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e152252152269%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e152253152272%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e152252152269%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx152275%_ _%e152253152272%_))
               (_%K152251152266%_ _%src-ctx152275%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E152250152258%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in152246%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi152278%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in152246%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src152280%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in152246%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in152320%_
                                                           (let* ((_%g152281152290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path152181%_ _%src152280%_))
                          (_%E152284152294%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g152281152290%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K152286152310%_
                            (lambda (_%path152308%_) _%path152308%_))
                           (_%K152285152300%_
                            (lambda (_%path152298%_)
                              (cons 'in: _%path152298%_))))
                       (if (pair? _%g152281152290%_)
                           (let ((_%tl152288152315%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g152281152290%_)))
                                 (_%hd152287152313%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g152281152290%_))))
                             (if (null? _%tl152288152315%_)
                                 (let ((_%path152318%_ _%hd152287152313%_))
                                   (_%K152286152310%_ _%path152318%_))
                                 (let ((_%path152303%_ _%g152281152290%_))
                                   (_%K152285152300%_ _%path152303%_))))
                           (let ((_%path152303%_ _%g152281152290%_))
                             (_%K152285152300%_ _%path152303%_))))))
                  (_%r152322%_
                   (if _%current-src152221%_
                       (cons (_%make-import-spec-in152182%_
                              _%current-src152221%_
                              _%current-in152222%_)
                             _%r152223%_)
                       _%r152223%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp152218%_
                                                      _%rest152245%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi152278%_)
                                                                _%src-in152320%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi152278%_
                                    (cons _%src-in152320%_ '()))))
                    _%r152322%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in152246%_
                                                          'gx#module-context::t))
                                                       (let ((_%r152326%_
                                                              (if _%current-src152221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in152182%_
                                 _%current-src152221%_
                                 _%current-in152222%_)
                                _%r152223%_)
                          _%r152223%_)))
                 (_%lp152218%_
                  _%rest152245%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path152181%_ _%in152246%_))
                        _%r152326%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest152224152232%_)
                                       (let ((_%hd152229152331%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest152224152232%_)))
                                             (_%tl152230152333%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest152224152232%_))))
                                         (let* ((_%in152336%_
                                                 _%hd152229152331%_)
                                                (_%rest152338%_
                                                 _%tl152230152333%_))
                                           (_%K152228152328%_
                                            _%rest152338%_
                                            _%in152336%_)))
                                       (_%else152226152242%_)))))
                             _%tl152189152204%_)))
                        (_%g152184152194%_ _%g152185152197%_)))))
            (_%g152183152340%_ _%stx152177%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self151986%_ _%stx151987%_)
        (letrec* ((_%context-chain151989%_ (gxc#current-context-chain))
                  (_%make-import-path151990%_
                   (lambda (_%ctx152174%_)
                     (gxc#generate-meta-import-path
                      _%ctx152174%_
                      _%context-chain151989%_))))
          (let* ((_%g151992152002%_
                  (lambda (_%g151993151999%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151993151999%_))))
                 (_%g151991152171%_
                  (lambda (_%g151993152005%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151993152005%_))
                        (let ((_%e151995152007%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151993152005%_))))
                          (let ((_%hd151996152010%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151995152007%_)))
                                (_%tl151997152012%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151995152007%_))))
                            ((lambda (_%g151994152015%_)
                               (let _%lp152026%_ ((_%rest152028%_
                                                   _%g151994152015%_)
                                                  (_%r152029%_ '()))
                                 (let* ((_%rest152030152038%_ _%rest152028%_)
                                        (_%else152032152046%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r152029%_))))
                                        (_%K152034152159%_
                                         (lambda (_%rest152049%_ _%out152050%_)
                                           (let* ((_%out152051152064%_
                                                   _%out152050%_)
                                                  (_%E152054152068%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out152051152064%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K152058152138%_
                                                    (lambda (_%name152134%_
                                                             _%phi152135%_
                                                             _%key152136%_)
                                                      (_%lp152026%_
                                                       _%rest152049%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi152135%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key152136%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name152134%_)
                                             '()))))
                     _%r152029%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K152055152118%_
                                                    (lambda (_%phi152072%_
                                                             _%src152073%_)
                                                      (let* ((_%out152113%_
                                                              (if _%src152073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g152074152083%_
                                              (_%make-import-path151990%_
                                               _%src152073%_))
                                             (_%E152077152087%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g152074152083%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K152079152103%_
                                               (lambda (_%path152101%_)
                                                 _%path152101%_))
                                              (_%K152078152093%_
                                               (lambda (_%path152091%_)
                                                 (cons 'in: _%path152091%_))))
                                          (if (pair? _%g152074152083%_)
                                              (let ((_%tl152081152108%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g152074152083%_)))
                                                    (_%hd152080152106%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g152074152083%_))))
                                                (if (null? _%tl152081152108%_)
                                                    (let ((_%path152111%_
                                                           _%hd152080152106%_))
                                                      (_%K152079152103%_
                                                       _%path152111%_))
                                                    (let ((_%path152096%_
                                                           _%g152074152083%_))
                                                      (_%K152078152093%_
                                                       _%path152096%_))))
                                              (let ((_%path152096%_
                                                     _%g152074152083%_))
                                                (_%K152078152093%_
                                                 _%path152096%_)))))
                                      '()))
                          '#t))
                     (_%out152115%_
                      (if (fxzero? _%phi152072%_)
                          _%out152113%_
                          (cons 'phi:
                                (cons _%phi152072%_
                                      (cons _%out152113%_ '()))))))
                (_%lp152026%_
                 _%rest152049%_
                 (cons _%out152115%_ _%r152029%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match152053152131%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out152051152064%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e152056152121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out152051152064%_
                               '1
                               '#f
                               '#f)))
                           (_%e152057152126%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out152051152064%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src152124%_ _%e152056152121%_)
                            (_%phi152129%_ _%e152057152126%_))
                        (_%K152055152118%_ _%phi152129%_ _%src152124%_)))
                    (_%E152054152068%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out152051152064%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e152059152141%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out152051152064%_
                        '1
                        '#f
                        '#f)))
                    (_%e152060152144%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out152051152064%_
                        '2
                        '#f
                        '#f)))
                    (_%e152061152149%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out152051152064%_
                        '3
                        '#f
                        '#f)))
                    (_%e152062152154%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out152051152064%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key152147%_ _%e152060152144%_)
                     (_%phi152152%_ _%e152061152149%_)
                     (_%name152157%_ _%e152062152154%_))
                 (_%K152058152138%_
                  _%name152157%_
                  _%phi152152%_
                  _%key152147%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match152053152131%_))))))))
                                   (if (pair? _%rest152030152038%_)
                                       (let ((_%hd152035152162%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest152030152038%_)))
                                             (_%tl152036152164%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest152030152038%_))))
                                         (let* ((_%out152167%_
                                                 _%hd152035152162%_)
                                                (_%rest152169%_
                                                 _%tl152036152164%_))
                                           (_%K152034152159%_
                                            _%rest152169%_
                                            _%out152167%_)))
                                       (_%else152032152046%_)))))
                             _%tl151997152012%_)))
                        (_%g151992152002%_ _%g151993152005%_)))))
            (_%g151991152171%_ _%stx151987%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self151947%_ _%stx151948%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self151947%_ 'state)))
        (let* ((_%g151950151960%_
                (lambda (_%g151951151957%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151951151957%_))))
               (_%g151949151983%_
                (lambda (_%g151951151963%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151951151963%_))
                      (let ((_%e151953151965%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151951151963%_))))
                        (let ((_%hd151954151968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151953151965%_)))
                              (_%tl151955151970%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151953151965%_))))
                          ((lambda (_%g151952151973%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g151952151973%_)))
                           _%tl151955151970%_)))
                      (_%g151950151960%_ _%g151951151963%_)))))
          (_%g151949151983%_ _%stx151948%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self151822%_ _%stx151823%_)
        (letrec ((_%generate1151825%_
                  (lambda (_%id151942%_ _%eid151943%_)
                    (let ((_%eid151945%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid151943%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid151945%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx151823%_
                             _%eid151945%_)))
                      (cons (gxc#generate-runtime-identifier _%id151942%_)
                            (cons _%eid151945%_ '()))))))
          (let* ((_%g151827151855%_
                  (lambda (_%g151828151852%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151828151852%_))))
                 (_%g151826151939%_
                  (lambda (_%g151828151858%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151828151858%_))
                        (let ((_%e151831151860%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151828151858%_))))
                          (let ((_%hd151832151863%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151831151860%_)))
                                (_%tl151833151865%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151831151860%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl151833151865%_))
                                (let ((_g161580_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl151833151865%_
                                          '0))))
                                  (begin
                                    (let ((_g161581_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g161580_)
                                                 (##values-length _g161580_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g161581_ 2)))
                                          (error "Context expects 2 values"
                                                 _g161581_)))
                                    (let ((_%target151834151868%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g161580_ 0)))
                                          (_%tl151836151870%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g161580_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl151836151870%_))
                                          (letrec ((_%loop151837151873%_
                                                    (lambda (_%hd151835151876%_
                                                             _%eid151841151878%_
                                                             _%id151842151879%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd151835151876%_))
                                                          (let ((_%e151838151881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd151835151876%_))))
                    (let ((_%lp-hd151839151884%_
                           (let ()
                             (declare (not safe))
                             (##car _%e151838151881%_)))
                          (_%lp-tl151840151886%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e151838151881%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd151839151884%_))
                          (let ((_%e151845151889%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd151839151884%_))))
                            (let ((_%hd151846151892%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e151845151889%_)))
                                  (_%tl151847151894%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e151845151889%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl151847151894%_))
                                  (let ((_%e151848151897%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl151847151894%_))))
                                    (let ((_%hd151849151900%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e151848151897%_)))
                                          (_%tl151850151902%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e151848151897%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl151850151902%_))
                                          (_%loop151837151873%_
                                           _%lp-tl151840151886%_
                                           (cons _%hd151849151900%_
                                                 _%eid151841151878%_)
                                           (cons _%hd151846151892%_
                                                 _%id151842151879%_))
                                          (_%g151827151855%_
                                           _%g151828151858%_))))
                                  (_%g151827151855%_ _%g151828151858%_))))
                          (_%g151827151855%_ _%g151828151858%_))))
                  (let ((_%eid151843151905%_ (reverse _%eid151841151878%_))
                        (_%id151844151906%_ (reverse _%id151842151879%_)))
                    ((lambda (_%g151829151908%_ _%g151830151909%_)
                       (cons '%#extern
                             (map _%generate1151825%_
                                  (let ((__tmp161582
                                         (lambda (_%g151924151927%_
                                                  _%g151925151929%_)
                                           (cons _%g151924151927%_
                                                 _%g151925151929%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp161582
                                     '()
                                     _%g151830151909%_))
                                  (let ((__tmp161583
                                         (lambda (_%g151931151934%_
                                                  _%g151932151936%_)
                                           (cons _%g151931151934%_
                                                 _%g151932151936%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp161583
                                     '()
                                     _%g151829151908%_)))))
                     _%eid151843151905%_
                     _%id151844151906%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop151837151873%_
                                             _%target151834151868%_
                                             '()
                                             '()))
                                          (_%g151827151855%_
                                           _%g151828151858%_)))))
                                (_%g151827151855%_ _%g151828151858%_))))
                        (_%g151827151855%_ _%g151828151858%_)))))
            (_%g151826151939%_ _%stx151823%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self151612%_ _%stx151613%_)
        (letrec ((_%generate1151615%_
                  (lambda (_%id151817%_)
                    (let ((_%eid151819%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id151817%_)))
                          (_%ident151820%_
                           (gxc#generate-runtime-identifier _%id151817%_)))
                      (cons '%#define-runtime
                            (cons _%ident151820%_ (cons _%eid151819%_ '()))))))
                 (_%generate*151616%_
                  (lambda (_%all151785%_)
                    (let* ((_%all151786151794%_ _%all151785%_)
                           (_%else151788151802%_
                            (lambda () (cons '%#begin _%all151785%_)))
                           (_%K151790151807%_
                            (lambda (_%one151805%_) _%one151805%_)))
                      (if (pair? _%all151786151794%_)
                          (let ((_%hd151791151810%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all151786151794%_)))
                                (_%tl151792151812%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all151786151794%_))))
                            (let ((_%one151815%_ _%hd151791151810%_))
                              (if (null? _%tl151792151812%_)
                                  (_%K151790151807%_ _%one151815%_)
                                  (_%else151788151802%_))))
                          (_%else151788151802%_))))))
          (let* ((_%g151618151635%_
                  (lambda (_%g151619151632%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151619151632%_))))
                 (_%g151617151782%_
                  (lambda (_%g151619151638%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151619151638%_))
                        (let ((_%e151622151640%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151619151638%_))))
                          (let ((_%hd151623151643%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151622151640%_)))
                                (_%tl151624151645%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151622151640%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl151624151645%_))
                                (let ((_%e151625151648%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl151624151645%_))))
                                  (let ((_%hd151626151651%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151625151648%_)))
                                        (_%tl151627151653%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151625151648%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl151627151653%_))
                                        (let ((_%e151628151656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl151627151653%_))))
                                          (let ((_%hd151629151659%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151628151656%_)))
                                                (_%tl151630151661%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151628151656%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl151630151661%_))
                                                ((lambda (_%g151620151664%_
                                                          _%g151621151665%_)
                                                   (let _%lp151681%_ ((_%rest151683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g151621151665%_)
                              (_%r151684%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx161318161319%_
                                                             _%rest151683%_)
                                                            (_%g151689151706%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx161318161319%_)))))
               (let ((_%__kont161320161321%_
                      (lambda (_%g151691151769%_)
                        (_%lp151681%_ _%g151691151769%_ _%r151684%_)))
                     (_%__kont161322161323%_
                      (lambda (_%g151696151742%_ _%g151697151743%_)
                        (_%lp151681%_
                         _%g151696151742%_
                         (cons (_%generate1151615%_ _%g151697151743%_)
                               _%r151684%_))))
                     (_%__kont161324161325%_
                      (lambda (_%g151701151718%_)
                        (_%generate*151616%_
                         (let ((__tmp161584
                                (cons (_%generate1151615%_ _%g151701151718%_)
                                      '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp161584 _%r151684%_)))))
                     (_%__kont161326161327%_
                      (lambda () (_%generate*151616%_ (reverse _%r151684%_)))))
                 (let ((_%g151687151729%_
                        (lambda ()
                          (let ((_%g151701151718%_ _%__stx161318161319%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g151701151718%_))
                                (_%__kont161324161325%_ _%g151701151718%_)
                                (_%__kont161326161327%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx161318161319%_))
                       (let ((_%e151692151758%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx161318161319%_))))
                         (let ((_%tl151694151763%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e151692151758%_)))
                               (_%hd151693151761%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e151692151758%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd151693151761%_))
                               (let ((_%e151695151766%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd151693151761%_))))
                                 (if (equal? _%e151695151766%_ '#f)
                                     (_%__kont161320161321%_
                                      _%tl151694151763%_)
                                     (_%__kont161322161323%_
                                      _%tl151694151763%_
                                      _%hd151693151761%_)))
                               (_%__kont161322161323%_
                                _%tl151694151763%_
                                _%hd151693151761%_))))
                       (let () (declare (not safe)) (_%g151687151729%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd151629151659%_
                                                 _%hd151626151651%_)
                                                (_%g151618151635%_
                                                 _%g151619151638%_))))
                                        (_%g151618151635%_
                                         _%g151619151638%_))))
                                (_%g151618151635%_ _%g151619151638%_))))
                        (_%g151618151635%_ _%g151619151638%_)))))
            (_%g151617151782%_ _%stx151613%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self151509%_ _%stx151510%_)
        (let* ((_%g151512151529%_
                (lambda (_%g151513151526%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151513151526%_))))
               (_%g151511151609%_
                (lambda (_%g151513151532%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151513151532%_))
                      (let ((_%e151516151534%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151513151532%_))))
                        (let ((_%hd151517151537%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151516151534%_)))
                              (_%tl151518151539%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151516151534%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151518151539%_))
                              (let ((_%e151519151542%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151518151539%_))))
                                (let ((_%hd151520151545%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151519151542%_)))
                                      (_%tl151521151547%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151519151542%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151521151547%_))
                                      (let ((_%e151522151550%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151521151547%_))))
                                        (let ((_%hd151523151553%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151522151550%_)))
                                              (_%tl151524151555%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151522151550%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151524151555%_))
                                              ((lambda (_%g151514151558%_
                                                        _%g151515151559%_)
                                                 (let* ((_%eid151574%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g151515151559%_)))
                                                        (_%phi151576%_
                                                         (let ((__tmp161585
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp161585 '1)))
                (_%block151578%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self151509%_ 'state))
                  _%phi151576%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g151581151588%_
                                                           (lambda (_%g151582151585%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g151582151585%_))))
                  (_%g151580151606%_
                   (lambda (_%g151582151591%_)
                     ((lambda (_%g151583151593%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self151509%_ 'state))
                         _%phi151576%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g151583151593%_
                                     (cons _%g151514151558%_ '())))))
                      _%g151582151591%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g151580151606%_
                                                      _%eid151574%_))
                                                   (if _%block151578%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block151578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%g151515151559%_)
                                             (cons _%eid151574%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%g151515151559%_)
                           (cons _%eid151574%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd151523151553%_
                                               _%hd151520151545%_)
                                              (_%g151512151529%_
                                               _%g151513151532%_))))
                                      (_%g151512151529%_ _%g151513151532%_))))
                              (_%g151512151529%_ _%g151513151532%_))))
                      (_%g151512151529%_ _%g151513151532%_)))))
          (_%g151511151609%_ _%stx151510%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self151441%_ _%stx151442%_)
        (let* ((_%g151444151461%_
                (lambda (_%g151445151458%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151445151458%_))))
               (_%g151443151506%_
                (lambda (_%g151445151464%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151445151464%_))
                      (let ((_%e151448151466%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151445151464%_))))
                        (let ((_%hd151449151469%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151448151466%_)))
                              (_%tl151450151471%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151448151466%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151450151471%_))
                              (let ((_%e151451151474%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151450151471%_))))
                                (let ((_%hd151452151477%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151451151474%_)))
                                      (_%tl151453151479%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151451151474%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151453151479%_))
                                      (let ((_%e151454151482%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151453151479%_))))
                                        (let ((_%hd151455151485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151454151482%_)))
                                              (_%tl151456151487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151454151482%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151456151487%_))
                                              ((lambda (_%g151446151490%_
                                                        _%g151447151491%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%g151447151491%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g151446151490%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd151455151485%_
                                               _%hd151452151477%_)
                                              (_%g151444151461%_
                                               _%g151445151464%_))))
                                      (_%g151444151461%_ _%g151445151464%_))))
                              (_%g151444151461%_ _%g151445151464%_))))
                      (_%g151444151461%_ _%g151445151464%_)))))
          (_%g151443151506%_ _%stx151442%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self151438%_ _%stx151439%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self151438%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx151439%_)
        (gxc#generate-meta-define-values% _%self151438%_ _%stx151439%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self151435%_ _%stx151436%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self151435%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx151436%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp161587 (list)) (__tmp161586 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp161587
         '(src n open blocks)
         __tmp161586
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args151432%_
        (apply make-instance gxc#meta-state::t _%$args151432%_)))
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
      (lambda (_%self151418%_ _%ctx151419%_)
        (let ((_%self151422%_ _%self151418%_))
          (if (let ((__tmp161588
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self151422%_))))
                (declare (not safe))
                (##fx< '4 __tmp161588))
              (begin
                (let ((__tmp161589
                       (let ((__tmp161590
                              (##structure-ref
                               _%ctx151419%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp161590))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self151422%_
                   __tmp161589
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self151422%_ '1 '2 '#f '#f))
                (let ((__tmp161591
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self151422%_
                   __tmp161591
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self151422%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp161592
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self151422%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self151422%_
                       '4
                       __tmp161592))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp161594 (list)) (__tmp161593 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp161594
         '(ctx phi n code)
         __tmp161593
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args151293%_
        (apply make-instance gxc#meta-state-block::t _%$args151293%_)))
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
      (lambda (_%state151253%_ _%phi151254%_)
        (let* ((_%state151255151263%_ _%state151253%_)
               (_%E151257151266%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state151255151263%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K151258151275%_
                (lambda (_%open151269%_ _%n151270%_ _%src151271%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open151269%_ _%phi151254%_))
                      '#f
                      (let ((_%block-ref151273%_
                             (let ((__tmp161595 (number->string _%n151270%_)))
                               (declare (not safe))
                               (##string-append
                                _%src151271%_
                                '"~"
                                __tmp161595))))
                        (##structure-set!
                         _%state151253%_
                         (let () (declare (not safe)) (##fx+ _%n151270%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp161596
                               (let ((__tmp161597
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp161597
                                  _%phi151254%_
                                  _%n151270%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open151269%_ _%phi151254%_ __tmp161596))
                        _%block-ref151273%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state151255151263%_
                 'gxc#meta-state::t))
              (let* ((_%e151259151278%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state151255151263%_
                         '1
                         '#f
                         '#f)))
                     (_%src151281%_ _%e151259151278%_)
                     (_%e151260151283%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state151255151263%_
                         '2
                         '#f
                         '#f)))
                     (_%n151286%_ _%e151260151283%_)
                     (_%e151261151288%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state151255151263%_
                         '3
                         '#f
                         '#f)))
                     (_%open151291%_ _%e151261151288%_))
                (_%K151258151275%_ _%open151291%_ _%n151286%_ _%src151281%_))
              (_%E151257151266%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state151247%_ _%phi151248%_ _%stx151249%_)
        (let ((_%block151251%_
               (let ((__tmp161598
                      (##structure-ref
                       _%state151247%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp161598 _%phi151248%_))))
          (##structure-set!
           _%block151251%_
           (cons _%stx151249%_
                 (##structure-ref
                  _%block151251%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state151241%_)
        (##structure-set!
         _%state151241%_
         (let ((__tmp161601
                (lambda (_%_151243%_ _%block151244%_ _%r151245%_)
                  (cons _%block151244%_ _%r151245%_)))
               (__tmp161600
                (##structure-ref _%state151241%_ '4 gxc#meta-state::t '#f))
               (__tmp161599
                (##structure-ref _%state151241%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp161601 __tmp161600 __tmp161599))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state151241%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state151194%_)
        (gxc#meta-state-end-phi! _%state151194%_)
        (let ((__tmp161603
               (lambda (_%block151196%_ _%r151197%_)
                 (let* ((_%block151198151207%_ _%block151196%_)
                        (_%E151200151210%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block151198151207%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K151201151218%_
                         (lambda (_%code151213%_
                                  _%n151214%_
                                  _%phi151215%_
                                  _%ctx151216%_)
                           (if (null? _%code151213%_)
                               _%r151197%_
                               (cons (cons _%ctx151216%_
                                           (cons _%phi151215%_
                                                 (cons _%n151214%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code151213%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r151197%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block151198151207%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e151202151221%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block151198151207%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx151224%_ _%e151202151221%_)
                              (_%e151203151226%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block151198151207%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi151229%_ _%e151203151226%_)
                              (_%e151204151231%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block151198151207%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n151234%_ _%e151204151231%_)
                              (_%e151205151236%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block151198151207%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code151239%_ _%e151205151236%_))
                         (_%K151201151218%_
                          _%code151239%_
                          _%n151234%_
                          _%phi151229%_
                          _%ctx151224%_))
                       (_%E151200151210%_)))))
              (__tmp161602
               (##structure-ref _%state151194%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp161603 '() __tmp161602))))
    (define gxc#collect-expression-refs
      (lambda (_%stx151190%_)
        (let ((_%ht151192%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht151192%_ _%stx151190%_)
          _%ht151192%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self151133%_ _%stx151134%_)
        (let* ((_%g151136151149%_
                (lambda (_%g151137151146%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151137151146%_))))
               (_%g151135151187%_
                (lambda (_%g151137151152%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151137151152%_))
                      (let ((_%e151139151154%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151137151152%_))))
                        (let ((_%hd151140151157%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151139151154%_)))
                              (_%tl151141151159%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151139151154%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151141151159%_))
                              (let ((_%e151142151162%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151141151159%_))))
                                (let ((_%hd151143151165%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151142151162%_)))
                                      (_%tl151144151167%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151142151162%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151144151167%_))
                                      ((lambda (_%g151138151170%_)
                                         (let* ((_%bind151182%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g151138151170%_)))
                                                (_%eid151184%_
                                                 (if _%bind151182%_
                                                     (##structure-ref
                                                      _%bind151182%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g151138151170%_))))
                                                (__tmp161604
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self151133%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp161604
                                            _%eid151184%_
                                            _%eid151184%_)))
                                       _%hd151143151165%_)
                                      (_%g151136151149%_ _%g151137151152%_))))
                              (_%g151136151149%_ _%g151137151152%_))))
                      (_%g151136151149%_ _%g151137151152%_)))))
          (_%g151135151187%_ _%stx151134%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self151060%_ _%stx151061%_)
        (let* ((_%g151063151080%_
                (lambda (_%g151064151077%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151064151077%_))))
               (_%g151062151130%_
                (lambda (_%g151064151083%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151064151083%_))
                      (let ((_%e151067151085%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151064151083%_))))
                        (let ((_%hd151068151088%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151067151085%_)))
                              (_%tl151069151090%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151067151085%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151069151090%_))
                              (let ((_%e151070151093%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151069151090%_))))
                                (let ((_%hd151071151096%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151070151093%_)))
                                      (_%tl151072151098%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151070151093%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151072151098%_))
                                      (let ((_%e151073151101%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151072151098%_))))
                                        (let ((_%hd151074151104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151073151101%_)))
                                              (_%tl151075151106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151073151101%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151075151106%_))
                                              ((lambda (_%g151065151109%_
                                                        _%g151066151110%_)
                                                 (let* ((_%bind151125%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g151066151110%_)))
                                                        (_%eid151127%_
                                                         (if _%bind151125%_
                                                             (##structure-ref
                                                              _%bind151125%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g151066151110%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp161605
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self151060%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp161605
                                                      _%eid151127%_
                                                      _%eid151127%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self151060%_
                                                      _%g151065151109%_))))
                                               _%hd151074151104%_
                                               _%hd151071151096%_)
                                              (_%g151063151080%_
                                               _%g151064151083%_))))
                                      (_%g151063151080%_ _%g151064151083%_))))
                              (_%g151063151080%_ _%g151064151083%_))))
                      (_%g151063151080%_ _%g151064151083%_)))))
          (_%g151062151130%_ _%stx151061%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self151017%_ _%stx151018%_)
        (let* ((_%g151020151030%_
                (lambda (_%g151021151027%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151021151027%_))))
               (_%g151019151057%_
                (lambda (_%g151021151033%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151021151033%_))
                      (let ((_%e151023151035%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151021151033%_))))
                        (let ((_%hd151024151038%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151023151035%_)))
                              (_%tl151025151040%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151023151035%_))))
                          ((lambda (_%g151022151043%_)
                             (let ((__tmp161606
                                    (lambda (_%g151052151054%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self151017%_
                                         _%g151052151054%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp161606 _%g151022151043%_)))
                           _%tl151025151040%_)))
                      (_%g151020151030%_ _%g151021151033%_)))))
          (_%g151019151057%_ _%stx151018%_))))
    (define gxc#count-values-single%
      (lambda (_%self151014%_ _%stx151015%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self150882%_ _%stx150883%_)
        (let* ((_%__stx161348161349%_ _%stx150883%_)
               (_%g150886150915%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx161348161349%_)))))
          (let ((_%__kont161350161351%_
                 (lambda (_%g150888150981%_ _%g150889150982%_)
                   (length (let ((__tmp161607
                                  (lambda (_%g151003151006%_ _%g151004151008%_)
                                    (cons _%g151003151006%_
                                          _%g151004151008%_))))
                             (declare (not safe))
                             (__foldr1 __tmp161607 '() _%g150888150981%_)))))
                (_%__kont161354161355%_ (lambda () '#f)))
            (let ((_%__match161393161394%_
                   (lambda (_%e150890150927%_
                            _%hd150891150930%_
                            _%tl150892150932%_
                            _%e150893150935%_
                            _%hd150894150938%_
                            _%tl150895150940%_
                            _%e150896150943%_
                            _%hd150897150946%_
                            _%tl150898150948%_
                            _%e150899150951%_
                            _%hd150900150954%_
                            _%tl150901150956%_
                            _%__splice161352161353%_
                            _%target150902150959%_
                            _%tl150904150961%_)
                     (letrec ((_%loop150905150964%_
                               (lambda (_%hd150903150967%_
                                        _%rand150909150969%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd150903150967%_))
                                     (let ((_%e150906150971%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd150903150967%_))))
                                       (let ((_%lp-tl150908150976%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e150906150971%_)))
                                             (_%lp-hd150907150974%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e150906150971%_))))
                                         (_%loop150905150964%_
                                          _%lp-tl150908150976%_
                                          (cons _%lp-hd150907150974%_
                                                _%rand150909150969%_))))
                                     (let ((_%rand150910150979%_
                                            (reverse _%rand150909150969%_)))
                                       (let ((_%g150888150981%_
                                              _%rand150910150979%_)
                                             (_%g150889150982%_
                                              _%hd150900150954%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g150889150982%_
                                                'values))
                                             (_%__kont161350161351%_
                                              _%g150888150981%_
                                              _%g150889150982%_)
                                             (_%__kont161354161355%_))))))))
                       (_%loop150905150964%_ _%target150902150959%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx161348161349%_))
                  (let ((_%e150890150927%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx161348161349%_))))
                    (let ((_%tl150892150932%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150890150927%_)))
                          (_%hd150891150930%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150890150927%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl150892150932%_))
                          (let ((_%e150893150935%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl150892150932%_))))
                            (let ((_%tl150895150940%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150893150935%_)))
                                  (_%hd150894150938%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150893150935%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd150894150938%_))
                                  (let ((_%e150896150943%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd150894150938%_))))
                                    (let ((_%tl150898150948%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e150896150943%_)))
                                          (_%hd150897150946%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e150896150943%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd150897150946%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd150897150946%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl150898150948%_))
                                                  (let ((_%e150899150951%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl150898150948%_))))
                                                    (let ((_%tl150901150956%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e150899150951%_)))
                                                          (_%hd150900150954%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e150899150951%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl150901150956%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl150895150940%_))
                      (let ((_%__splice161352161353%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl150895150940%_
                                '0))))
                        (let ((_%tl150904150961%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice161352161353%_ '1)))
                              (_%target150902150959%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice161352161353%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl150904150961%_))
                              (_%__match161393161394%_
                               _%e150890150927%_
                               _%hd150891150930%_
                               _%tl150892150932%_
                               _%e150893150935%_
                               _%hd150894150938%_
                               _%tl150895150940%_
                               _%e150896150943%_
                               _%hd150897150946%_
                               _%tl150898150948%_
                               _%e150899150951%_
                               _%hd150900150954%_
                               _%tl150901150956%_
                               _%__splice161352161353%_
                               _%target150902150959%_
                               _%tl150904150961%_)
                              (_%__kont161354161355%_))))
                      (_%__kont161354161355%_))
                  (_%__kont161354161355%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont161354161355%_))
                                              (_%__kont161354161355%_))
                                          (_%__kont161354161355%_))))
                                  (_%__kont161354161355%_))))
                          (_%__kont161354161355%_))))
                  (_%__kont161354161355%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self150787%_ _%stx150788%_)
        (let* ((_%g150790150811%_
                (lambda (_%g150791150808%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150791150808%_))))
               (_%g150789150879%_
                (lambda (_%g150791150814%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150791150814%_))
                      (let ((_%e150795150816%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150791150814%_))))
                        (let ((_%hd150796150819%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150795150816%_)))
                              (_%tl150797150821%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150795150816%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150797150821%_))
                              (let ((_%e150798150824%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150797150821%_))))
                                (let ((_%hd150799150827%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150798150824%_)))
                                      (_%tl150800150829%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150798150824%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150800150829%_))
                                      (let ((_%e150801150832%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150800150829%_))))
                                        (let ((_%hd150802150835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150801150832%_)))
                                              (_%tl150803150837%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150801150832%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl150803150837%_))
                                              (let ((_%e150804150840%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl150803150837%_))))
                                                (let ((_%hd150805150843%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e150804150840%_)))
                                                      (_%tl150806150845%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e150804150840%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl150806150845%_))
                                                      ((lambda (_%g150792150848%_
                                                                _%g150793150849%_
                                                                _%g150794150850%_)
                                                         (let ((_%c1150867150869%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self150787%_
                           _%g150793150849%_))))
                   (if _%c1150867150869%_
                       (let* ((_%c1150871%_ _%c1150867150869%_)
                              (_%c2150872150874%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self150787%_
                                  _%g150792150848%_))))
                         (if _%c2150872150874%_
                             (let ((_%c2150876%_ _%c2150872150874%_))
                               (if (fx= _%c1150871%_ _%c2150876%_)
                                   _%c1150871%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd150805150843%_
               _%hd150802150835%_
               _%hd150799150827%_)
              (_%g150790150811%_ _%g150791150814%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g150790150811%_
                                               _%g150791150814%_))))
                                      (_%g150790150811%_ _%g150791150814%_))))
                              (_%g150790150811%_ _%g150791150814%_))))
                      (_%g150790150811%_ _%g150791150814%_)))))
          (_%g150789150879%_ _%stx150788%_))))))
