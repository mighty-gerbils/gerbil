(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1713001408)
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
        (letrec ((_%hash-e146004%_
                  (lambda (_%id146006%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id146006%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e146004%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp147391 (list gxc#::void::t))
            (__tmp147390 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp147391
         '()
         __tmp147390
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args146000%_
        (apply make-instance gxc#::collect-bindings::t _%$args146000%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp147392
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
        (__make-promise __tmp147392)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx145992%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self145995%_
                (let ((__obj147366
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj147366))
               (__tmp147393
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145995%_ _%stx145992%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147393
           gxc#current-compile-method
           _%self145995%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp147395 (list gxc#::void::t))
            (__tmp147394 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp147395
         '(modules)
         __tmp147394
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args145989%_
        (apply make-instance gxc#::lift-modules::t _%$args145989%_)))
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
      (let ((__tmp147396
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
        (__make-promise __tmp147396)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords145963%_ _%modules145960145964%_ _%stx145966%_)
        (let ((_%modules145969%_
               (if (eq? _%modules145960145964%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules145960145964%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self145971%_
                  (let ((__obj147368
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147368
                       _%modules145969%_
                       '1
                       '#f
                       '#f))
                    __obj147368))
                 (__tmp147397
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145971%_ _%stx145966%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147397
             gxc#current-compile-method
             _%self145971%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords145978%_ . _%args145979%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords145978%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145978%_
                  'modules:
                  absent-value))
               _%args145979%_)))
    (define gxc#apply-lift-modules
      (lambda _%args145961145985%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args145961145985%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp147399 (list)) (__tmp147398 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp147399
         '()
         __tmp147398
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args145956%_
        (apply make-instance gxc#::find-runtime-code::t _%$args145956%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp147400
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
        (__make-promise __tmp147400)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx145948%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self145951%_
                (let ((__obj147370
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj147370))
               (__tmp147401
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145951%_ _%stx145948%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147401
           gxc#current-compile-method
           _%self145951%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp147403 (list gxc#::false::t))
            (__tmp147402 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp147403
         '()
         __tmp147402
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args145945%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args145945%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp147404
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
        (__make-promise __tmp147404)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx145937%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self145940%_
                (let ((__obj147372
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj147372))
               (__tmp147405
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145940%_ _%stx145937%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147405
           gxc#current-compile-method
           _%self145940%_))))
    (define gxc#::count-values::t
      (let ((__tmp147407 (list gxc#::false-expression::t))
            (__tmp147406 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp147407
         '()
         __tmp147406
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args145934%_
        (apply make-instance gxc#::count-values::t _%$args145934%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp147408
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
        (__make-promise __tmp147408)))
    (define gxc#apply-count-values
      (lambda (_%stx145926%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self145929%_
                (let ((__obj147374
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj147374))
               (__tmp147409
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145929%_ _%stx145926%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147409
           gxc#current-compile-method
           _%self145929%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp147410 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp147410
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args145923%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args145923%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp147411
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
        (__make-promise __tmp147411)))
    (define gxc#::generate-loader::t
      (let ((__tmp147413 (list gxc#::generate-runtime-empty::t))
            (__tmp147412 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp147413
         '()
         __tmp147412
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args145919%_
        (apply make-instance gxc#::generate-loader::t _%$args145919%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp147414
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
        (__make-promise __tmp147414)))
    (define gxc#apply-generate-loader
      (lambda (_%stx145911%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self145914%_
                (let ((__obj147377
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj147377))
               (__tmp147415
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145914%_ _%stx145911%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147415
           gxc#current-compile-method
           _%self145914%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp147416 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp147416
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args145908%_
        (apply make-instance gxc#::generate-runtime::t _%$args145908%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp147417
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
        (__make-promise __tmp147417)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx145900%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self145903%_
                (let ((__obj147379
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj147379))
               (__tmp147418
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145903%_ _%stx145900%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147418
           gxc#current-compile-method
           _%self145903%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp147420 (list gxc#::generate-runtime::t))
            (__tmp147419 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp147420
         '()
         __tmp147419
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args145897%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args145897%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp147421
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
        (__make-promise __tmp147421)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx145889%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self145892%_
                (let ((__obj147381
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj147381))
               (__tmp147422
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145892%_ _%stx145889%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147422
           gxc#current-compile-method
           _%self145892%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp147423 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp147423
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args145886%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args145886%_)))
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
      (let ((__tmp147424
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
        (__make-promise __tmp147424)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords145860%_ _%table145857145861%_ _%stx145863%_)
        (let ((_%table145866%_
               (if (eq? _%table145857145861%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table145857145861%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self145868%_
                  (let ((__obj147383
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147383
                       _%table145866%_
                       '1
                       '#f
                       '#f))
                    __obj147383))
                 (__tmp147425
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145868%_ _%stx145863%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147425
             gxc#current-compile-method
             _%self145868%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords145875%_ . _%args145876%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords145875%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145875%_
                  'table:
                  absent-value))
               _%args145876%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args145858145882%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args145858145882%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp147427 (list gxc#::void-expression::t))
            (__tmp147426 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp147427
         '(state)
         __tmp147426
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args145853%_
        (apply make-instance gxc#::generate-meta::t _%$args145853%_)))
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
      (let ((__tmp147428
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
        (__make-promise __tmp147428)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords145827%_ _%state145824145828%_ _%stx145830%_)
        (let ((_%state145833%_
               (if (eq? _%state145824145828%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state145824145828%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self145835%_
                  (let ((__obj147385
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147385
                       _%state145833%_
                       '1
                       '#f
                       '#f))
                    __obj147385))
                 (__tmp147429
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145835%_ _%stx145830%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147429
             gxc#current-compile-method
             _%self145835%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords145842%_ . _%args145843%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords145842%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145842%_
                  'state:
                  absent-value))
               _%args145843%_)))
    (define gxc#apply-generate-meta
      (lambda _%args145825145849%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args145825145849%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp147431 (list)) (__tmp147430 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp147431
         '(state)
         __tmp147430
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args145820%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args145820%_)))
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
      (let ((__tmp147432
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
        (__make-promise __tmp147432)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords145794%_ _%state145791145795%_ _%stx145797%_)
        (let ((_%state145800%_
               (if (eq? _%state145791145795%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state145791145795%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self145802%_
                  (let ((__obj147387
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147387
                       _%state145800%_
                       '1
                       '#f
                       '#f))
                    __obj147387))
                 (__tmp147433
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145802%_ _%stx145797%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147433
             gxc#current-compile-method
             _%self145802%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords145809%_ . _%args145810%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords145809%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145809%_
                  'state:
                  absent-value))
               _%args145810%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args145792145816%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args145792145816%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self145720%_ _%stx145721%_)
        (let* ((_%g145723145740%_
                (lambda (_%g145724145737%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145724145737%_))))
               (_%g145722145787%_
                (lambda (_%g145724145743%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145724145743%_))
                      (let ((_%e145727145745%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145724145743%_))))
                        (let ((_%hd145728145748%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145727145745%_)))
                              (_%tl145729145750%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145727145745%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145729145750%_))
                              (let ((_%e145730145753%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145729145750%_))))
                                (let ((_%hd145731145756%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145730145753%_)))
                                      (_%tl145732145758%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145730145753%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145732145758%_))
                                      (let ((_%e145733145761%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145732145758%_))))
                                        (let ((_%hd145734145764%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145733145761%_)))
                                              (_%tl145735145766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145733145761%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145735145766%_))
                                              ((lambda (_%L145769%_
                                                        _%L145770%_)
                                                 (let ((__tmp147434
                                                        (lambda (_%bind145785%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind145785%_))
                      (gxc#add-module-binding! _%bind145785%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp147434
                                                    _%L145770%_)))
                                               _%hd145734145764%_
                                               _%hd145731145756%_)
                                              (_%g145723145740%_
                                               _%g145724145743%_))))
                                      (_%g145723145740%_ _%g145724145743%_))))
                              (_%g145723145740%_ _%g145724145743%_))))
                      (_%g145723145740%_ _%g145724145743%_)))))
          (_%g145722145787%_ _%stx145721%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self145652%_ _%stx145653%_)
        (let* ((_%g145655145672%_
                (lambda (_%g145656145669%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145656145669%_))))
               (_%g145654145717%_
                (lambda (_%g145656145675%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145656145675%_))
                      (let ((_%e145659145677%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145656145675%_))))
                        (let ((_%hd145660145680%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145659145677%_)))
                              (_%tl145661145682%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145659145677%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145661145682%_))
                              (let ((_%e145662145685%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145661145682%_))))
                                (let ((_%hd145663145688%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145662145685%_)))
                                      (_%tl145664145690%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145662145685%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145664145690%_))
                                      (let ((_%e145665145693%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145664145690%_))))
                                        (let ((_%hd145666145696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145665145693%_)))
                                              (_%tl145667145698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145665145693%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145667145698%_))
                                              ((lambda (_%L145701%_
                                                        _%L145702%_)
                                                 (gxc#add-module-binding!
                                                  _%L145702%_
                                                  '#t))
                                               _%hd145666145696%_
                                               _%hd145663145688%_)
                                              (_%g145655145672%_
                                               _%g145656145675%_))))
                                      (_%g145655145672%_ _%g145656145675%_))))
                              (_%g145655145672%_ _%g145656145675%_))))
                      (_%g145655145672%_ _%g145656145675%_)))))
          (_%g145654145717%_ _%stx145653%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self145594%_ _%stx145595%_)
        (let* ((_%g145597145611%_
                (lambda (_%g145598145608%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145598145608%_))))
               (_%g145596145649%_
                (lambda (_%g145598145614%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145598145614%_))
                      (let ((_%e145601145616%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145598145614%_))))
                        (let ((_%hd145602145619%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145601145616%_)))
                              (_%tl145603145621%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145601145616%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145603145621%_))
                              (let ((_%e145604145624%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145603145621%_))))
                                (let ((_%hd145605145627%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145604145624%_)))
                                      (_%tl145606145629%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145604145624%_))))
                                  ((lambda (_%L145632%_ _%L145633%_)
                                     (let ((_%ctx145646%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L145633%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self145594%_
                                           'modules))
                                        (cons _%ctx145646%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self145594%_
                                                        'modules)))))
                                       (let ((__tmp147435
                                              (lambda ()
                                                (let ((__tmp147436
                                                       (##structure-ref
                                                        _%ctx145646%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self145594%_
                                                   __tmp147436)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp147435
                                          gx#current-expander-context
                                          _%ctx145646%_))))
                                   _%tl145606145629%_
                                   _%hd145605145627%_)))
                              (_%g145597145611%_ _%g145598145614%_))))
                      (_%g145597145611%_ _%g145598145614%_)))))
          (_%g145596145649%_ _%stx145595%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls145547145549%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls145547145549%_
              (let ((_%decls145552%_ _%decls145547145549%_))
                (let _%lp145554%_ ((_%rest145556%_ _%decls145552%_))
                  (let* ((_%rest145557145565%_ _%rest145556%_)
                         (_%else145559145573%_ (lambda () '#f))
                         (_%K145561145582%_
                          (lambda (_%decls145576%_ _%decl145577%_)
                            (if (equal? _%decl145577%_ '(not safe))
                                '#t
                                (if (equal? _%decl145577%_ '(safe))
                                    '#f
                                    (_%lp145554%_ _%decls145576%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest145557145565%_))
                        (let ((_%hd145562145585%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest145557145565%_)))
                              (_%tl145563145587%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest145557145565%_))))
                          (let* ((_%decl145590%_ _%hd145562145585%_)
                                 (_%decls145592%_ _%tl145563145587%_))
                            (_%K145561145582%_
                             _%decls145592%_
                             _%decl145590%_)))
                        (_%else145559145573%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id145541%_ _%syntax?145542%_)
        (let ((_%eid145544%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id145541%_))
                '1
                gx#binding::t
                '#f))
              (_%ht145545%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid145544%_))
              '#!void
              (let ((__tmp147437
                     (let ((__tmp147438
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid145544%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp147438 _%syntax?145542%_))))
                (declare (not safe))
                (hash-put! _%ht145545%_ _%eid145544%_ __tmp147437))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id145539%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id145539%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key145494%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key145494%_))
            _%key145494%_
            (if (uninterned-symbol? _%key145494%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key145494%_))
                (let* ((_%key145498145505%_ _%key145494%_)
                       (_%E145500145509%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key145498145505%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K145501145527%_
                        (lambda (_%mark145512%_ _%eid145513%_)
                          (let ((_%$e145515%_
                                 (##structure-ref
                                  _%mark145512%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e145515%_
                                ((lambda (_%ht145518%_)
                                   (let ((_%$e145520%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht145518%_
                                             _%eid145513%_))))
                                     (if _%$e145520%_
                                         ((lambda (_%id145523%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id145523%_))
                                                _%id145523%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id145523%_))))
                                          _%$e145520%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid145513%_))))
                                 _%$e145515%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid145513%_))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%key145498145505%_))
                      (let ((_%hd145502145530%_
                             (let ()
                               (declare (not safe))
                               (##car _%key145498145505%_)))
                            (_%tl145503145532%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key145498145505%_))))
                        (let* ((_%eid145535%_ _%hd145502145530%_)
                               (_%mark145537%_ _%tl145503145532%_))
                          (_%K145501145527%_ _%mark145537%_ _%eid145535%_)))
                      (_%E145500145509%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self145491%_ _%stx145492%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self145338%_ _%stx145339%_)
        (letrec ((_%simplify145341%_
                  (lambda (_%body145389%_)
                    (let _%lp145391%_ ((_%rest145393%_ _%body145389%_)
                                       (_%r145394%_ '()))
                      (let* ((_%rest145395145403%_ _%rest145393%_)
                             (_%else145397145411%_
                              (lambda () (reverse _%r145394%_)))
                             (_%K145399145479%_
                              (lambda (_%rest145414%_ _%hd145415%_)
                                (let* ((_%hd145416145432%_ _%hd145415%_)
                                       (_%else145420145440%_
                                        (lambda ()
                                          (_%lp145391%_
                                           _%rest145414%_
                                           (cons _%hd145415%_ _%r145394%_)))))
                                  (let ((_%K145428145469%_
                                         (lambda (_%exprs145467%_)
                                           (_%lp145391%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest145414%_
                                               _%exprs145467%_))
                                            _%r145394%_)))
                                        (_%K145423145453%_
                                         (lambda ()
                                           (if (null? _%rest145414%_)
                                               (_%lp145391%_
                                                _%rest145414%_
                                                (cons _%hd145415%_
                                                      _%r145394%_))
                                               (_%lp145391%_
                                                _%rest145414%_
                                                _%r145394%_))))
                                        (_%K145422145445%_
                                         (lambda ()
                                           (if (null? _%rest145414%_)
                                               (_%lp145391%_
                                                _%rest145414%_
                                                (cons _%hd145415%_
                                                      _%r145394%_))
                                               (_%lp145391%_
                                                _%rest145414%_
                                                _%r145394%_)))))
                                    (let ((_%try-match145419145448%_
                                           (lambda ()
                                             (if (symbol? _%hd145416145432%_)
                                                 (_%K145422145445%_)
                                                 (_%else145420145440%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd145416145432%_))
                                          (let ((_%tl145430145474%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd145416145432%_)))
                                                (_%hd145429145472%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd145416145432%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd145429145472%_
                                                         'begin))
                                                (let ((_%exprs145477%_
                                                       _%tl145430145474%_))
                                                  (_%K145428145469%_
                                                   _%exprs145477%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd145429145472%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl145430145474%_))
                                                        (let ((_%tl145427145461%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl145430145474%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl145427145461%_))
                      (_%K145423145453%_)
                      (_%try-match145419145448%_)))
                (_%try-match145419145448%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match145419145448%_))))
                                          (_%try-match145419145448%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest145395145403%_))
                            (let ((_%hd145400145482%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest145395145403%_)))
                                  (_%tl145401145484%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest145395145403%_))))
                              (let* ((_%hd145487%_ _%hd145400145482%_)
                                     (_%rest145489%_ _%tl145401145484%_))
                                (_%K145399145479%_
                                 _%rest145489%_
                                 _%hd145487%_)))
                            (_%else145397145411%_)))))))
          (let* ((_%g145343145353%_
                  (lambda (_%g145344145350%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g145344145350%_))))
                 (_%g145342145386%_
                  (lambda (_%g145344145356%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g145344145356%_))
                        (let ((_%e145346145358%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g145344145356%_))))
                          (let ((_%hd145347145361%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145346145358%_)))
                                (_%tl145348145363%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145346145358%_))))
                            ((lambda (_%L145366%_)
                               (let* ((_%body145381%_
                                       (map (lambda (_%g145376145378%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self145338%_
                                                 _%g145376145378%_)))
                                            _%L145366%_))
                                      (_%body145383%_
                                       (_%simplify145341%_ _%body145381%_)))
                                 (if (let ((__tmp147439
                                            (length _%body145383%_)))
                                       (declare (not safe))
                                       (##fx= __tmp147439 '1))
                                     (car _%body145383%_)
                                     (cons 'begin _%body145383%_))))
                             _%tl145348145363%_)))
                        (_%g145343145353%_ _%g145344145356%_)))))
            (_%g145342145386%_ _%stx145339%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self145299%_ _%stx145300%_)
        (let* ((_%g145302145312%_
                (lambda (_%g145303145309%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145303145309%_))))
               (_%g145301145335%_
                (lambda (_%g145303145315%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145303145315%_))
                      (let ((_%e145305145317%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145303145315%_))))
                        (let ((_%hd145306145320%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145305145317%_)))
                              (_%tl145307145322%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145305145317%_))))
                          ((lambda (_%L145325%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L145325%_))))
                           _%tl145307145322%_)))
                      (_%g145302145312%_ _%g145303145315%_)))))
          (_%g145301145335%_ _%stx145300%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self145063%_ _%stx145064%_)
        (let* ((_%__stx146029146030%_ _%stx145064%_)
               (_%g145068145120%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx146029146030%_)))))
          (let ((_%__kont146031146032%_
                 (lambda (_%L145281%_ _%L145282%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self145063%_ _%L145281%_))))
                (_%__kont146033146034%_
                 (lambda (_%L145229%_ _%L145230%_ _%L145231%_)
                   (if (let ((__tmp147440
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L145231%_))))
                         (declare (not safe))
                         (##memq __tmp147440 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self145063%_ _%L145229%_)))))
                (_%__kont146037146038%_
                 (lambda (_%L145149%_ _%L145150%_)
                   (let ((_%decls145165%_ (map gx#syntax->datum _%L145150%_)))
                     (let ((__tmp147443
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls145165%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self145063%_
                                                   _%L145149%_))
                                                '())))))
                           (__tmp147441
                            (let ((__tmp147442
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp147442 _%decls145165%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp147443
                        gxc#current-compile-decls
                        __tmp147441))))))
            (let* ((_%__match146084146085%_
                    (lambda (_%e145084145173%_
                             _%hd145085145176%_
                             _%tl145086145178%_
                             _%e145087145181%_
                             _%hd145088145184%_
                             _%tl145089145186%_
                             _%e145090145189%_
                             _%hd145091145192%_
                             _%tl145092145194%_
                             _%__splice146035146036%_
                             _%target145093145197%_
                             _%tl145095145199%_)
                      (letrec ((_%loop145096145202%_
                                (lambda (_%hd145094145205%_
                                         _%param145100145207%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd145094145205%_))
                                      (let ((_%e145097145210%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd145094145205%_))))
                                        (let ((_%lp-tl145099145215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145097145210%_)))
                                              (_%lp-hd145098145213%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145097145210%_))))
                                          (_%loop145096145202%_
                                           _%lp-tl145099145215%_
                                           (cons _%lp-hd145098145213%_
                                                 _%param145100145207%_))))
                                      (let ((_%param145101145218%_
                                             (reverse _%param145100145207%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl145089145186%_))
                                            (let ((_%e145102145221%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl145089145186%_))))
                                              (let ((_%tl145104145226%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145102145221%_)))
                                                    (_%hd145103145224%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145102145221%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl145104145226%_))
                                                    (let ((_%L145229%_
                                                           _%hd145103145224%_)
                                                          (_%L145230%_
                                                           _%param145101145218%_)
                                                          (_%L145231%_
                                                           _%hd145091145192%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L145231%_))
                       (not (let ((__tmp147444
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L145231%_))))
                              (declare (not safe))
                              (##memq __tmp147444 gxc#gambit-annotations))))
                  (_%__kont146033146034%_ _%L145229%_ _%L145230%_ _%L145231%_)
                  (_%__kont146037146038%_
                   _%hd145103145224%_
                   _%hd145088145184%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g145068145120%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g145068145120%_))))))))
                        (_%loop145096145202%_ _%target145093145197%_ '()))))
                   (_%__match146058146059%_
                    (lambda (_%e145072145257%_
                             _%hd145073145260%_
                             _%tl145074145262%_
                             _%e145075145265%_
                             _%hd145076145268%_
                             _%tl145077145270%_
                             _%e145078145273%_
                             _%hd145079145276%_
                             _%tl145080145278%_)
                      (let ((_%L145281%_ _%hd145079145276%_)
                            (_%L145282%_ _%hd145076145268%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L145282%_))
                            (_%__kont146031146032%_ _%L145281%_ _%L145282%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd145076145268%_))
                                (let ((_%e145090145189%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd145076145268%_))))
                                  (let ((_%tl145092145194%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e145090145189%_)))
                                        (_%hd145091145192%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e145090145189%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl145092145194%_))
                                        (let ((_%__splice146035146036%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl145092145194%_
                                                  '0))))
                                          (let ((_%tl145095145199%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice146035146036%_
                                                    '1)))
                                                (_%target145093145197%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice146035146036%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145095145199%_))
                                                (_%__match146084146085%_
                                                 _%e145072145257%_
                                                 _%hd145073145260%_
                                                 _%tl145074145262%_
                                                 _%e145075145265%_
                                                 _%hd145076145268%_
                                                 _%tl145077145270%_
                                                 _%e145090145189%_
                                                 _%hd145091145192%_
                                                 _%tl145092145194%_
                                                 _%__splice146035146036%_
                                                 _%target145093145197%_
                                                 _%tl145095145199%_)
                                                (_%__kont146037146038%_
                                                 _%hd145079145276%_
                                                 _%hd145076145268%_))))
                                        (_%__kont146037146038%_
                                         _%hd145079145276%_
                                         _%hd145076145268%_))))
                                (_%__kont146037146038%_
                                 _%hd145079145276%_
                                 _%hd145076145268%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx146029146030%_))
                  (let ((_%e145072145257%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx146029146030%_))))
                    (let ((_%tl145074145262%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e145072145257%_)))
                          (_%hd145073145260%_
                           (let ()
                             (declare (not safe))
                             (##car _%e145072145257%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl145074145262%_))
                          (let ((_%e145075145265%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl145074145262%_))))
                            (let ((_%tl145077145270%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145075145265%_)))
                                  (_%hd145076145268%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145075145265%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl145077145270%_))
                                  (let ((_%e145078145273%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl145077145270%_))))
                                    (let ((_%tl145080145278%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e145078145273%_)))
                                          (_%hd145079145276%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e145078145273%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl145080145278%_))
                                          (_%__match146058146059%_
                                           _%e145072145257%_
                                           _%hd145073145260%_
                                           _%tl145074145262%_
                                           _%e145075145265%_
                                           _%hd145076145268%_
                                           _%tl145077145270%_
                                           _%e145078145273%_
                                           _%hd145079145276%_
                                           _%tl145080145278%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd145076145268%_))
                                              (let ((_%e145090145189%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd145076145268%_))))
                                                (let ((_%tl145092145194%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145090145189%_)))
                                                      (_%hd145091145192%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145090145189%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl145092145194%_))
                                                      (let ((_%__splice146035146036%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl145092145194%_ '0))))
                (let ((_%tl145095145199%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice146035146036%_ '1)))
                      (_%target145093145197%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice146035146036%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl145095145199%_))
                      (_%__match146084146085%_
                       _%e145072145257%_
                       _%hd145073145260%_
                       _%tl145074145262%_
                       _%e145075145265%_
                       _%hd145076145268%_
                       _%tl145077145270%_
                       _%e145090145189%_
                       _%hd145091145192%_
                       _%tl145092145194%_
                       _%__splice146035146036%_
                       _%target145093145197%_
                       _%tl145095145199%_)
                      (let () (declare (not safe)) (_%g145068145120%_)))))
              (let () (declare (not safe)) (_%g145068145120%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g145068145120%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd145076145268%_))
                                      (let ((_%e145090145189%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd145076145268%_))))
                                        (let ((_%tl145092145194%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145090145189%_)))
                                              (_%hd145091145192%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145090145189%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl145092145194%_))
                                              (let ((_%__splice146035146036%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl145092145194%_
                                                        '0))))
                                                (let ((_%tl145095145199%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice146035146036%_
                                                          '1)))
                                                      (_%target145093145197%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice146035146036%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl145095145199%_))
                                                      (_%__match146084146085%_
                                                       _%e145072145257%_
                                                       _%hd145073145260%_
                                                       _%tl145074145262%_
                                                       _%e145075145265%_
                                                       _%hd145076145268%_
                                                       _%tl145077145270%_
                                                       _%e145090145189%_
                                                       _%hd145091145192%_
                                                       _%tl145092145194%_
                                                       _%__splice146035146036%_
                                                       _%target145093145197%_
                                                       _%tl145095145199%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g145068145120%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g145068145120%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g145068145120%_))))))
                          (let () (declare (not safe)) (_%g145068145120%_)))))
                  (let () (declare (not safe)) (_%g145068145120%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self145022%_ _%stx145023%_)
        (let* ((_%g145025145035%_
                (lambda (_%g145026145032%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145026145032%_))))
               (_%g145024145060%_
                (lambda (_%g145026145038%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145026145038%_))
                      (let ((_%e145028145040%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145026145038%_))))
                        (let ((_%hd145029145043%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145028145040%_)))
                              (_%tl145030145045%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145028145040%_))))
                          ((lambda (_%L145048%_)
                             (let ((_%decls145058%_
                                    (map gx#syntax->datum _%L145048%_)))
                               (let ((__tmp147445
                                      (let ((__tmp147446
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp147446
                                         _%decls145058%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp147445))
                               (cons 'declare _%decls145058%_)))
                           _%tl145030145045%_)))
                      (_%g145025145035%_ _%g145026145038%_)))))
          (_%g145024145060%_ _%stx145023%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self144768%_ _%stx144769%_)
        (let* ((_%g144771144788%_
                (lambda (_%g144772144785%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144772144785%_))))
               (_%g144770145019%_
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
                                                 (let* ((_%__stx146137146138%_
                                                         _%L144818%_)
                                                        (_%g144835144849%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx146137146138%_)))))
                                                   (let ((_%__kont146139146140%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self144768%_
                                                               _%L144817%_))))
                                                         (_%__kont146141146142%_
                                                          (lambda (_%L144981%_)
                                                            (let ((_%eid144990%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L144981%_))))
                      (let ((_%lambda-expr144991144993%_
                             (gxc#apply-find-lambda-expression _%L144817%_)))
                        (if _%lambda-expr144991144993%_
                            (let* ((_%lambda-expr144996%_
                                    _%lambda-expr144991144993%_)
                                   (__tmp147447
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp147447
                               _%lambda-expr144996%_
                               _%eid144990%_))
                            '#f))
                      (cons 'define
                            (cons _%eid144990%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self144768%_
                                           _%L144817%_))
                                        '()))))))
                 (_%__kont146143146144%_
                  (lambda ()
                    (let* ((_%tmp144856%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body144965%_
                            (let _%lp144858%_ ((_%rest144860%_ _%L144818%_)
                                               (_%k144861%_ '0)
                                               (_%r144862%_ '()))
                              (let* ((_%__stx146107146108%_ _%rest144860%_)
                                     (_%g144867144884%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx146107146108%_)))))
                                (let ((_%__kont146109146110%_
                                       (lambda (_%L144952%_)
                                         (_%lp144858%_
                                          _%L144952%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k144861%_ '1))
                                          _%r144862%_)))
                                      (_%__kont146111146112%_
                                       (lambda (_%L144925%_ _%L144926%_)
                                         (_%lp144858%_
                                          _%L144925%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k144861%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L144926%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp144856%_
                           _%k144861%_
                           _%L144925%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r144862%_))))
                                      (_%__kont146113146114%_
                                       (lambda (_%L144896%_)
                                         (let ((__tmp147448
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L144896%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp144856%_
                                 _%k144861%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp147448
                                            _%r144862%_))))
                                      (_%__kont146115146116%_
                                       (lambda () (reverse _%r144862%_))))
                                  (let ((_%g144865144912%_
                                         (lambda ()
                                           (let ((_%L144896%_
                                                  _%__stx146107146108%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L144896%_))
                                                 (_%__kont146113146114%_
                                                  _%L144896%_)
                                                 (_%__kont146115146116%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx146107146108%_))
                                        (let ((_%e144870144941%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx146107146108%_))))
                                          (let ((_%tl144872144946%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144870144941%_)))
                                                (_%hd144871144944%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144870144941%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd144871144944%_))
                                                (let ((_%e144873144949%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd144871144944%_))))
                                                  (if (equal? _%e144873144949%_
                                                              '#f)
                                                      (_%__kont146109146110%_
                                                       _%tl144872144946%_)
                                                      (_%__kont146111146112%_
                                                       _%tl144872144946%_
                                                       _%hd144871144944%_)))
                                                (_%__kont146111146112%_
                                                 _%tl144872144946%_
                                                 _%hd144871144944%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g144865144912%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp144856%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self144768%_
                                                       _%L144817%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp144856%_
                                         _%L144818%_
                                         _%L144817%_)
                                        _%body144965%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx146137146138%_))
                                                         (let ((_%e144837145003%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx146137146138%_))))
                   (let ((_%tl144839145008%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e144837145003%_)))
                         (_%hd144838145006%_
                          (let ()
                            (declare (not safe))
                            (##car _%e144837145003%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd144838145006%_))
                         (let ((_%e144840145011%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd144838145006%_))))
                           (if (equal? _%e144840145011%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl144839145008%_))
                                   (_%__kont146139146140%_)
                                   (_%__kont146143146144%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl144839145008%_))
                                   (_%__kont146141146142%_ _%hd144838145006%_)
                                   (_%__kont146143146144%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144839145008%_))
                             (_%__kont146141146142%_ _%hd144838145006%_)
                             (_%__kont146143146144%_)))))
                 (_%__kont146143146144%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd144782144812%_
                                               _%hd144779144804%_)
                                              (_%g144771144788%_
                                               _%g144772144791%_))))
                                      (_%g144771144788%_ _%g144772144791%_))))
                              (_%g144771144788%_ _%g144772144791%_))))
                      (_%g144771144788%_ _%g144772144791%_)))))
          (_%g144770145019%_ _%stx144769%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals144743%_ _%hd144744%_ _%expr144745%_)
        (let ((_%$e144747%_ (gxc#apply-count-values _%expr144745%_)))
          (if _%$e144747%_
              ((lambda (_%count144750%_)
                 (let ((_%len144752%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd144744%_)))
                       (_%cmp144753%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd144744%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len144752%_ '0))
                           (_%cmp144753%_ _%count144750%_ _%len144752%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr144745%_
                          _%hd144744%_)))))
               _%$e144747%_)
              (let* ((_%len144759%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd144744%_)))
                     (_%cmp144761%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd144744%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg144763%_
                      (let ((__tmp147450
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd144744%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp147449 (number->string _%len144759%_)))
                        (declare (not safe))
                        (##string-append __tmp147450 __tmp147449 '" values")))
                     (_%count144765%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd144744%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len144759%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count144765%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals144743%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp144761%_
                                (cons _%count144765%_
                                      (cons _%len144759%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp144761%_
                                                        (cons _%count144765%_
                                                              (cons _%len144759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg144763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count144765%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var144738%_)
        (letrec ((_%generate-inline144740%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var144738%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var144738%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline144740%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline144740%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var144731%_ _%i144732%_ _%rest144733%_)
        (letrec ((_%generate-inline144735%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i144732%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest144733%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var144731%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var144731%_
                                                      (cons '0 '())))
                                          (cons _%var144731%_ '()))))
                        (cons '##vector-ref
                              (cons _%var144731%_ (cons _%i144732%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline144735%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline144735%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var144725%_ _%i144726%_)
        (if (let () (declare (not safe)) (##fx= _%i144726%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var144725%_ '()))
                            (cons (cons '##vector->list
                                        (cons _%var144725%_ '()))
                                  (cons (cons 'list (cons _%var144725%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var144725%_
                                                                '()))
                                                    (cons (cons '##vector->list
                                                                (cons _%var144725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var144725%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i144726%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var144725%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##vector->list
                                                        (cons _%var144725%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var144725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##vector->list
                                        (cons _%var144725%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##vector->list (cons _%var144725%_ '()))
                                (cons _%i144726%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##vector->list
                                                              (cons _%var144725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i144726%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self144657%_ _%stx144658%_)
        (let* ((_%g144660144677%_
                (lambda (_%g144661144674%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144661144674%_))))
               (_%g144659144722%_
                (lambda (_%g144661144680%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144661144680%_))
                      (let ((_%e144664144682%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144661144680%_))))
                        (let ((_%hd144665144685%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144664144682%_)))
                              (_%tl144666144687%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144664144682%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144666144687%_))
                              (let ((_%e144667144690%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144666144687%_))))
                                (let ((_%hd144668144693%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144667144690%_)))
                                      (_%tl144669144695%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144667144690%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144669144695%_))
                                      (let ((_%e144670144698%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144669144695%_))))
                                        (let ((_%hd144671144701%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144670144698%_)))
                                              (_%tl144672144703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144670144698%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144672144703%_))
                                              ((lambda (_%L144706%_
                                                        _%L144707%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self144657%_
                                                  _%L144707%_
                                                  _%L144706%_))
                                               _%hd144671144701%_
                                               _%hd144668144693%_)
                                              (_%g144660144677%_
                                               _%g144661144680%_))))
                                      (_%g144660144677%_ _%g144661144680%_))))
                              (_%g144660144677%_ _%g144661144680%_))))
                      (_%g144660144677%_ _%g144661144680%_)))))
          (_%g144659144722%_ _%stx144658%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self144616%_ _%hd144617%_ _%body144618%_)
        (let* ((_%hd144620%_ (gxc#generate-runtime-lambda-head _%hd144617%_))
               (_%body144622%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self144616%_ _%body144618%_)))
               (_%body144654%_
                (let* ((_%body144623144631%_ _%body144622%_)
                       (_%else144625144639%_
                        (lambda () (cons _%body144622%_ '())))
                       (_%K144627144644%_
                        (lambda (_%exprs144642%_) _%exprs144642%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body144623144631%_))
                      (let ((_%hd144628144647%_
                             (let ()
                               (declare (not safe))
                               (##car _%body144623144631%_)))
                            (_%tl144629144649%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body144623144631%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd144628144647%_ 'begin))
                            (let ((_%exprs144652%_ _%tl144629144649%_))
                              (_%K144627144644%_ _%exprs144652%_))
                            (_%else144625144639%_)))
                      (_%else144625144639%_)))))
          (cons 'lambda (cons _%hd144620%_ _%body144654%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd144614%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd144614%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self143153%_ _%stx143154%_)
        (letrec ((_%dispatch-case?143156%_
                  (lambda (_%hd143844%_ _%body143845%_)
                    (let* ((_%form143847%_
                            (cons _%hd143844%_ (cons _%body143845%_ '())))
                           (_%__stx146169146170%_ _%form143847%_)
                           (_%g143852144009%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx146169146170%_)))))
                      (let ((_%__kont146171146172%_
                             (lambda (_%L144534%_ _%L144535%_ _%L144536%_)
                               '#t))
                            (_%__kont146177146178%_
                             (lambda (_%L144322%_
                                      _%L144323%_
                                      _%L144324%_
                                      _%L144325%_
                                      _%L144326%_
                                      _%L144327%_)
                               '#t))
                            (_%__kont146183146184%_
                             (lambda (_%L144117%_
                                      _%L144118%_
                                      _%L144119%_
                                      _%L144120%_)
                               '#t))
                            (_%__kont146185146186%_ (lambda () '#f)))
                        (let* ((_%__match146310146311%_
                                (lambda (_%e143969144021%_
                                         _%hd143970144024%_
                                         _%tl143971144026%_
                                         _%e143972144029%_
                                         _%hd143973144032%_
                                         _%tl143974144034%_
                                         _%e143975144037%_
                                         _%hd143976144040%_
                                         _%tl143977144042%_
                                         _%e143978144045%_
                                         _%hd143979144048%_
                                         _%tl143980144050%_
                                         _%e143981144053%_
                                         _%hd143982144056%_
                                         _%tl143983144058%_
                                         _%e143984144061%_
                                         _%hd143985144064%_
                                         _%tl143986144066%_
                                         _%e143987144069%_
                                         _%hd143988144072%_
                                         _%tl143989144074%_
                                         _%e143990144077%_
                                         _%hd143991144080%_
                                         _%tl143992144082%_
                                         _%e143993144085%_
                                         _%hd143994144088%_
                                         _%tl143995144090%_
                                         _%e143996144093%_
                                         _%hd143997144096%_
                                         _%tl143998144098%_
                                         _%e143999144101%_
                                         _%hd144000144104%_
                                         _%tl144001144106%_
                                         _%e144002144109%_
                                         _%hd144003144112%_
                                         _%tl144004144114%_)
                                  (let ((_%L144117%_ _%hd144003144112%_)
                                        (_%L144118%_ _%hd143994144088%_)
                                        (_%L144119%_ _%hd143985144064%_)
                                        (_%L144120%_ _%hd143970144024%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L144120%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L144119%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L144120%_
                                                _%L144117%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L144118%_
                                                     _%L144120%_))))
                                        (_%__kont146183146184%_
                                         _%L144117%_
                                         _%L144118%_
                                         _%L144119%_
                                         _%L144120%_)
                                        (_%__kont146185146186%_)))))
                               (_%__match146282146283%_
                                (lambda (_%e143969144021%_
                                         _%hd143970144024%_
                                         _%tl143971144026%_
                                         _%e143972144029%_
                                         _%hd143973144032%_
                                         _%tl143974144034%_
                                         _%e143975144037%_
                                         _%hd143976144040%_
                                         _%tl143977144042%_
                                         _%e143978144045%_
                                         _%hd143979144048%_
                                         _%tl143980144050%_
                                         _%e143981144053%_
                                         _%hd143982144056%_
                                         _%tl143983144058%_
                                         _%e143984144061%_
                                         _%hd143985144064%_
                                         _%tl143986144066%_
                                         _%e143987144069%_
                                         _%hd143988144072%_
                                         _%tl143989144074%_
                                         _%e143990144077%_
                                         _%hd143991144080%_
                                         _%tl143992144082%_
                                         _%e143993144085%_
                                         _%hd143994144088%_
                                         _%tl143995144090%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143989144074%_))
                                      (let ((_%e143996144093%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143989144074%_))))
                                        (let ((_%tl143998144098%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143996144093%_)))
                                              (_%hd143997144096%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143996144093%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd143997144096%_))
                                              (let ((_%e143999144101%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd143997144096%_))))
                                                (let ((_%tl144001144106%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143999144101%_)))
                                                      (_%hd144000144104%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143999144101%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd144000144104%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd144000144104%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl144001144106%_))
                      (let ((_%e144002144109%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl144001144106%_))))
                        (let ((_%tl144004144114%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144002144109%_)))
                              (_%hd144003144112%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144002144109%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl144004144114%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl143998144098%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl143974144034%_))
                                      (_%__match146310146311%_
                                       _%e143969144021%_
                                       _%hd143970144024%_
                                       _%tl143971144026%_
                                       _%e143972144029%_
                                       _%hd143973144032%_
                                       _%tl143974144034%_
                                       _%e143975144037%_
                                       _%hd143976144040%_
                                       _%tl143977144042%_
                                       _%e143978144045%_
                                       _%hd143979144048%_
                                       _%tl143980144050%_
                                       _%e143981144053%_
                                       _%hd143982144056%_
                                       _%tl143983144058%_
                                       _%e143984144061%_
                                       _%hd143985144064%_
                                       _%tl143986144066%_
                                       _%e143987144069%_
                                       _%hd143988144072%_
                                       _%tl143989144074%_
                                       _%e143990144077%_
                                       _%hd143991144080%_
                                       _%tl143992144082%_
                                       _%e143993144085%_
                                       _%hd143994144088%_
                                       _%tl143995144090%_
                                       _%e143996144093%_
                                       _%hd143997144096%_
                                       _%tl143998144098%_
                                       _%e143999144101%_
                                       _%hd144000144104%_
                                       _%tl144001144106%_
                                       _%e144002144109%_
                                       _%hd144003144112%_
                                       _%tl144004144114%_)
                                      (_%__kont146185146186%_))
                                  (_%__kont146185146186%_))
                              (_%__kont146185146186%_))))
                      (_%__kont146185146186%_))
                  (_%__kont146185146186%_))
              (_%__kont146185146186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont146185146186%_))))
                                      (_%__kont146185146186%_))))
                               (_%__match146212146213%_
                                (lambda (_%e143905144162%_
                                         _%hd143906144165%_
                                         _%tl143907144167%_
                                         _%__splice146179146180%_
                                         _%target143908144170%_
                                         _%tl143910144172%_)
                                  (letrec ((_%loop143911144175%_
                                            (lambda (_%hd143909144178%_
                                                     _%arg143915144180%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143909144178%_))
                                                  (let ((_%e143912144183%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143909144178%_))))
                                                    (let ((_%lp-tl143914144188%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143912144183%_)))
                                                          (_%lp-hd143913144186%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143912144183%_))))
                                                      (_%loop143911144175%_
                                                       _%lp-tl143914144188%_
                                                       (cons _%lp-hd143913144186%_
                                                             _%arg143915144180%_))))
                                                  (let ((_%arg143916144191%_
                                                         (reverse _%arg143915144180%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143907144167%_))
                                                        (let ((_%e143917144194%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143907144167%_))))
                  (let ((_%tl143919144199%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143917144194%_)))
                        (_%hd143918144197%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143917144194%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143918144197%_))
                        (let ((_%e143920144202%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143918144197%_))))
                          (let ((_%tl143922144207%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143920144202%_)))
                                (_%hd143921144205%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143920144202%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143921144205%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143921144205%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143922144207%_))
                                        (let ((_%e143923144210%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143922144207%_))))
                                          (let ((_%tl143925144215%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143923144210%_)))
                                                (_%hd143924144213%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143923144210%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143924144213%_))
                                                (let ((_%e143926144218%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143924144213%_))))
                                                  (let ((_%tl143928144223%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143926144218%_)))
                                                        (_%hd143927144221%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143926144218%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143927144221%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143927144221%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143928144223%_))
                        (let ((_%e143929144226%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143928144223%_))))
                          (let ((_%tl143931144231%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143929144226%_)))
                                (_%hd143930144229%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143929144226%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143931144231%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl143925144215%_))
                                    (let ((_%e143932144234%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl143925144215%_))))
                                      (let ((_%tl143934144239%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e143932144234%_)))
                                            (_%hd143933144237%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e143932144234%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd143933144237%_))
                                            (let ((_%e143935144242%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd143933144237%_))))
                                              (let ((_%tl143937144247%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143935144242%_)))
                                                    (_%hd143936144245%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143935144242%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd143936144245%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd143936144245%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl143937144247%_))
                                                            (let ((_%e143938144250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl143937144247%_))))
                      (let ((_%tl143940144255%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143938144250%_)))
                            (_%hd143939144253%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143938144250%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl143940144255%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl143934144239%_))
                                (if (let ((__tmp147451
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl143934144239%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp147451 '1))
                                    (let ((_%__splice146181146182%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl143934144239%_
                                              '1))))
                                      (let ((_%tl143943144260%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146181146182%_
                                                '1)))
                                            (_%target143941144258%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146181146182%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143943144260%_))
                                            (let ((_%e143950144263%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143943144260%_))))
                                              (let ((_%tl143952144268%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143950144263%_)))
                                                    (_%hd143951144266%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143950144263%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd143951144266%_))
                                                    (let ((_%e143953144271%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd143951144266%_))))
                                                      (let ((_%tl143955144276%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e143953144271%_)))
                    (_%hd143954144274%_
                     (let () (declare (not safe)) (##car _%e143953144271%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd143954144274%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd143954144274%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl143955144276%_))
                            (let ((_%e143956144279%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl143955144276%_))))
                              (let ((_%tl143958144284%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e143956144279%_)))
                                    (_%hd143957144282%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e143956144279%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl143958144284%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl143952144268%_))
                                        (letrec ((_%loop143944144287%_
                                                  (lambda (_%hd143942144290%_
                                                           _%xarg143948144292%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd143942144290%_))
                                                        (let ((_%e143945144295%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd143942144290%_))))
                  (let ((_%lp-tl143947144300%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143945144295%_)))
                        (_%lp-hd143946144298%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143945144295%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd143946144298%_))
                        (let ((_%e143959144303%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd143946144298%_))))
                          (let ((_%tl143961144308%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143959144303%_)))
                                (_%hd143960144306%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143959144303%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143960144306%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd143960144306%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143961144308%_))
                                        (let ((_%e143962144311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143961144308%_))))
                                          (let ((_%tl143964144316%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143962144311%_)))
                                                (_%hd143963144314%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143962144311%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143964144316%_))
                                                (_%loop143944144287%_
                                                 _%lp-tl143947144300%_
                                                 (cons _%hd143963144314%_
                                                       _%xarg143948144292%_))
                                                (_%__match146282146283%_
                                                 _%e143905144162%_
                                                 _%hd143906144165%_
                                                 _%tl143907144167%_
                                                 _%e143917144194%_
                                                 _%hd143918144197%_
                                                 _%tl143919144199%_
                                                 _%e143920144202%_
                                                 _%hd143921144205%_
                                                 _%tl143922144207%_
                                                 _%e143923144210%_
                                                 _%hd143924144213%_
                                                 _%tl143925144215%_
                                                 _%e143926144218%_
                                                 _%hd143927144221%_
                                                 _%tl143928144223%_
                                                 _%e143929144226%_
                                                 _%hd143930144229%_
                                                 _%tl143931144231%_
                                                 _%e143932144234%_
                                                 _%hd143933144237%_
                                                 _%tl143934144239%_
                                                 _%e143935144242%_
                                                 _%hd143936144245%_
                                                 _%tl143937144247%_
                                                 _%e143938144250%_
                                                 _%hd143939144253%_
                                                 _%tl143940144255%_))))
                                        (_%__match146282146283%_
                                         _%e143905144162%_
                                         _%hd143906144165%_
                                         _%tl143907144167%_
                                         _%e143917144194%_
                                         _%hd143918144197%_
                                         _%tl143919144199%_
                                         _%e143920144202%_
                                         _%hd143921144205%_
                                         _%tl143922144207%_
                                         _%e143923144210%_
                                         _%hd143924144213%_
                                         _%tl143925144215%_
                                         _%e143926144218%_
                                         _%hd143927144221%_
                                         _%tl143928144223%_
                                         _%e143929144226%_
                                         _%hd143930144229%_
                                         _%tl143931144231%_
                                         _%e143932144234%_
                                         _%hd143933144237%_
                                         _%tl143934144239%_
                                         _%e143935144242%_
                                         _%hd143936144245%_
                                         _%tl143937144247%_
                                         _%e143938144250%_
                                         _%hd143939144253%_
                                         _%tl143940144255%_))
                                    (_%__match146282146283%_
                                     _%e143905144162%_
                                     _%hd143906144165%_
                                     _%tl143907144167%_
                                     _%e143917144194%_
                                     _%hd143918144197%_
                                     _%tl143919144199%_
                                     _%e143920144202%_
                                     _%hd143921144205%_
                                     _%tl143922144207%_
                                     _%e143923144210%_
                                     _%hd143924144213%_
                                     _%tl143925144215%_
                                     _%e143926144218%_
                                     _%hd143927144221%_
                                     _%tl143928144223%_
                                     _%e143929144226%_
                                     _%hd143930144229%_
                                     _%tl143931144231%_
                                     _%e143932144234%_
                                     _%hd143933144237%_
                                     _%tl143934144239%_
                                     _%e143935144242%_
                                     _%hd143936144245%_
                                     _%tl143937144247%_
                                     _%e143938144250%_
                                     _%hd143939144253%_
                                     _%tl143940144255%_))
                                (_%__match146282146283%_
                                 _%e143905144162%_
                                 _%hd143906144165%_
                                 _%tl143907144167%_
                                 _%e143917144194%_
                                 _%hd143918144197%_
                                 _%tl143919144199%_
                                 _%e143920144202%_
                                 _%hd143921144205%_
                                 _%tl143922144207%_
                                 _%e143923144210%_
                                 _%hd143924144213%_
                                 _%tl143925144215%_
                                 _%e143926144218%_
                                 _%hd143927144221%_
                                 _%tl143928144223%_
                                 _%e143929144226%_
                                 _%hd143930144229%_
                                 _%tl143931144231%_
                                 _%e143932144234%_
                                 _%hd143933144237%_
                                 _%tl143934144239%_
                                 _%e143935144242%_
                                 _%hd143936144245%_
                                 _%tl143937144247%_
                                 _%e143938144250%_
                                 _%hd143939144253%_
                                 _%tl143940144255%_))))
                        (_%__match146282146283%_
                         _%e143905144162%_
                         _%hd143906144165%_
                         _%tl143907144167%_
                         _%e143917144194%_
                         _%hd143918144197%_
                         _%tl143919144199%_
                         _%e143920144202%_
                         _%hd143921144205%_
                         _%tl143922144207%_
                         _%e143923144210%_
                         _%hd143924144213%_
                         _%tl143925144215%_
                         _%e143926144218%_
                         _%hd143927144221%_
                         _%tl143928144223%_
                         _%e143929144226%_
                         _%hd143930144229%_
                         _%tl143931144231%_
                         _%e143932144234%_
                         _%hd143933144237%_
                         _%tl143934144239%_
                         _%e143935144242%_
                         _%hd143936144245%_
                         _%tl143937144247%_
                         _%e143938144250%_
                         _%hd143939144253%_
                         _%tl143940144255%_))))
                (let ((_%xarg143949144319%_ (reverse _%xarg143948144292%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl143919144199%_))
                      (let ((_%L144322%_ _%hd143957144282%_)
                            (_%L144323%_ _%xarg143949144319%_)
                            (_%L144324%_ _%hd143939144253%_)
                            (_%L144325%_ _%hd143930144229%_)
                            (_%L144326%_ _%tl143910144172%_)
                            (_%L144327%_ _%arg143916144191%_))
                        (if (and (let ((__tmp147452
                                        (let ((__tmp147453
                                               (lambda (_%g144370144373%_
                                                        _%g144371144375%_)
                                                 (cons _%g144370144373%_
                                                       _%g144371144375%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp147453
                                           '()
                                           _%L144327%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp147452))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L144326%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L144325%_
                                    'apply))
                                 (let ((__tmp147456
                                        (length (let ((__tmp147457
                                                       (lambda (_%g144377144380%_
                                                                _%g144378144382%_)
                                                         (cons _%g144377144380%_
                                                               _%g144378144382%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp147457
                                                   '()
                                                   _%L144327%_))))
                                       (__tmp147454
                                        (length (let ((__tmp147455
                                                       (lambda (_%g144384144387%_
                                                                _%g144385144389%_)
                                                         (cons _%g144384144387%_
                                                               _%g144385144389%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp147455
                                                   '()
                                                   _%L144323%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp147456 __tmp147454))
                                 (let ((__tmp147460
                                        (let ((__tmp147461
                                               (lambda (_%g144391144394%_
                                                        _%g144392144396%_)
                                                 (cons _%g144391144394%_
                                                       _%g144392144396%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp147461
                                           '()
                                           _%L144327%_)))
                                       (__tmp147458
                                        (let ((__tmp147459
                                               (lambda (_%g144398144401%_
                                                        _%g144399144403%_)
                                                 (cons _%g144398144401%_
                                                       _%g144399144403%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp147459
                                           '()
                                           _%L144323%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp147460
                                    __tmp147458))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L144326%_
                                    _%L144322%_))
                                 (not (let ((__tmp147465
                                             (lambda (_%g144405144407%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g144405144407%_
                                                  _%L144324%_))))
                                            (__tmp147462
                                             (let ((__tmp147464
                                                    (lambda (_%g144409144412%_
                                                             _%g144410144414%_)
                                                      (cons _%g144409144412%_
                                                            _%g144410144414%_)))
                                                   (__tmp147463
                                                    (cons _%L144326%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp147464
                                                __tmp147463
                                                _%L144327%_))))
                                        (declare (not safe))
                                        (__find __tmp147465 __tmp147462))))
                            (_%__kont146177146178%_
                             _%L144322%_
                             _%L144323%_
                             _%L144324%_
                             _%L144325%_
                             _%L144326%_
                             _%L144327%_)
                            (_%__match146282146283%_
                             _%e143905144162%_
                             _%hd143906144165%_
                             _%tl143907144167%_
                             _%e143917144194%_
                             _%hd143918144197%_
                             _%tl143919144199%_
                             _%e143920144202%_
                             _%hd143921144205%_
                             _%tl143922144207%_
                             _%e143923144210%_
                             _%hd143924144213%_
                             _%tl143925144215%_
                             _%e143926144218%_
                             _%hd143927144221%_
                             _%tl143928144223%_
                             _%e143929144226%_
                             _%hd143930144229%_
                             _%tl143931144231%_
                             _%e143932144234%_
                             _%hd143933144237%_
                             _%tl143934144239%_
                             _%e143935144242%_
                             _%hd143936144245%_
                             _%tl143937144247%_
                             _%e143938144250%_
                             _%hd143939144253%_
                             _%tl143940144255%_)))
                      (_%__match146282146283%_
                       _%e143905144162%_
                       _%hd143906144165%_
                       _%tl143907144167%_
                       _%e143917144194%_
                       _%hd143918144197%_
                       _%tl143919144199%_
                       _%e143920144202%_
                       _%hd143921144205%_
                       _%tl143922144207%_
                       _%e143923144210%_
                       _%hd143924144213%_
                       _%tl143925144215%_
                       _%e143926144218%_
                       _%hd143927144221%_
                       _%tl143928144223%_
                       _%e143929144226%_
                       _%hd143930144229%_
                       _%tl143931144231%_
                       _%e143932144234%_
                       _%hd143933144237%_
                       _%tl143934144239%_
                       _%e143935144242%_
                       _%hd143936144245%_
                       _%tl143937144247%_
                       _%e143938144250%_
                       _%hd143939144253%_
                       _%tl143940144255%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop143944144287%_
                                           _%target143941144258%_
                                           '()))
                                        (_%__match146282146283%_
                                         _%e143905144162%_
                                         _%hd143906144165%_
                                         _%tl143907144167%_
                                         _%e143917144194%_
                                         _%hd143918144197%_
                                         _%tl143919144199%_
                                         _%e143920144202%_
                                         _%hd143921144205%_
                                         _%tl143922144207%_
                                         _%e143923144210%_
                                         _%hd143924144213%_
                                         _%tl143925144215%_
                                         _%e143926144218%_
                                         _%hd143927144221%_
                                         _%tl143928144223%_
                                         _%e143929144226%_
                                         _%hd143930144229%_
                                         _%tl143931144231%_
                                         _%e143932144234%_
                                         _%hd143933144237%_
                                         _%tl143934144239%_
                                         _%e143935144242%_
                                         _%hd143936144245%_
                                         _%tl143937144247%_
                                         _%e143938144250%_
                                         _%hd143939144253%_
                                         _%tl143940144255%_))
                                    (_%__match146282146283%_
                                     _%e143905144162%_
                                     _%hd143906144165%_
                                     _%tl143907144167%_
                                     _%e143917144194%_
                                     _%hd143918144197%_
                                     _%tl143919144199%_
                                     _%e143920144202%_
                                     _%hd143921144205%_
                                     _%tl143922144207%_
                                     _%e143923144210%_
                                     _%hd143924144213%_
                                     _%tl143925144215%_
                                     _%e143926144218%_
                                     _%hd143927144221%_
                                     _%tl143928144223%_
                                     _%e143929144226%_
                                     _%hd143930144229%_
                                     _%tl143931144231%_
                                     _%e143932144234%_
                                     _%hd143933144237%_
                                     _%tl143934144239%_
                                     _%e143935144242%_
                                     _%hd143936144245%_
                                     _%tl143937144247%_
                                     _%e143938144250%_
                                     _%hd143939144253%_
                                     _%tl143940144255%_))))
                            (_%__match146282146283%_
                             _%e143905144162%_
                             _%hd143906144165%_
                             _%tl143907144167%_
                             _%e143917144194%_
                             _%hd143918144197%_
                             _%tl143919144199%_
                             _%e143920144202%_
                             _%hd143921144205%_
                             _%tl143922144207%_
                             _%e143923144210%_
                             _%hd143924144213%_
                             _%tl143925144215%_
                             _%e143926144218%_
                             _%hd143927144221%_
                             _%tl143928144223%_
                             _%e143929144226%_
                             _%hd143930144229%_
                             _%tl143931144231%_
                             _%e143932144234%_
                             _%hd143933144237%_
                             _%tl143934144239%_
                             _%e143935144242%_
                             _%hd143936144245%_
                             _%tl143937144247%_
                             _%e143938144250%_
                             _%hd143939144253%_
                             _%tl143940144255%_))
                        (_%__match146282146283%_
                         _%e143905144162%_
                         _%hd143906144165%_
                         _%tl143907144167%_
                         _%e143917144194%_
                         _%hd143918144197%_
                         _%tl143919144199%_
                         _%e143920144202%_
                         _%hd143921144205%_
                         _%tl143922144207%_
                         _%e143923144210%_
                         _%hd143924144213%_
                         _%tl143925144215%_
                         _%e143926144218%_
                         _%hd143927144221%_
                         _%tl143928144223%_
                         _%e143929144226%_
                         _%hd143930144229%_
                         _%tl143931144231%_
                         _%e143932144234%_
                         _%hd143933144237%_
                         _%tl143934144239%_
                         _%e143935144242%_
                         _%hd143936144245%_
                         _%tl143937144247%_
                         _%e143938144250%_
                         _%hd143939144253%_
                         _%tl143940144255%_))
                    (_%__match146282146283%_
                     _%e143905144162%_
                     _%hd143906144165%_
                     _%tl143907144167%_
                     _%e143917144194%_
                     _%hd143918144197%_
                     _%tl143919144199%_
                     _%e143920144202%_
                     _%hd143921144205%_
                     _%tl143922144207%_
                     _%e143923144210%_
                     _%hd143924144213%_
                     _%tl143925144215%_
                     _%e143926144218%_
                     _%hd143927144221%_
                     _%tl143928144223%_
                     _%e143929144226%_
                     _%hd143930144229%_
                     _%tl143931144231%_
                     _%e143932144234%_
                     _%hd143933144237%_
                     _%tl143934144239%_
                     _%e143935144242%_
                     _%hd143936144245%_
                     _%tl143937144247%_
                     _%e143938144250%_
                     _%hd143939144253%_
                     _%tl143940144255%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match146282146283%_
                                                     _%e143905144162%_
                                                     _%hd143906144165%_
                                                     _%tl143907144167%_
                                                     _%e143917144194%_
                                                     _%hd143918144197%_
                                                     _%tl143919144199%_
                                                     _%e143920144202%_
                                                     _%hd143921144205%_
                                                     _%tl143922144207%_
                                                     _%e143923144210%_
                                                     _%hd143924144213%_
                                                     _%tl143925144215%_
                                                     _%e143926144218%_
                                                     _%hd143927144221%_
                                                     _%tl143928144223%_
                                                     _%e143929144226%_
                                                     _%hd143930144229%_
                                                     _%tl143931144231%_
                                                     _%e143932144234%_
                                                     _%hd143933144237%_
                                                     _%tl143934144239%_
                                                     _%e143935144242%_
                                                     _%hd143936144245%_
                                                     _%tl143937144247%_
                                                     _%e143938144250%_
                                                     _%hd143939144253%_
                                                     _%tl143940144255%_))))
                                            (_%__match146282146283%_
                                             _%e143905144162%_
                                             _%hd143906144165%_
                                             _%tl143907144167%_
                                             _%e143917144194%_
                                             _%hd143918144197%_
                                             _%tl143919144199%_
                                             _%e143920144202%_
                                             _%hd143921144205%_
                                             _%tl143922144207%_
                                             _%e143923144210%_
                                             _%hd143924144213%_
                                             _%tl143925144215%_
                                             _%e143926144218%_
                                             _%hd143927144221%_
                                             _%tl143928144223%_
                                             _%e143929144226%_
                                             _%hd143930144229%_
                                             _%tl143931144231%_
                                             _%e143932144234%_
                                             _%hd143933144237%_
                                             _%tl143934144239%_
                                             _%e143935144242%_
                                             _%hd143936144245%_
                                             _%tl143937144247%_
                                             _%e143938144250%_
                                             _%hd143939144253%_
                                             _%tl143940144255%_))))
                                    (_%__match146282146283%_
                                     _%e143905144162%_
                                     _%hd143906144165%_
                                     _%tl143907144167%_
                                     _%e143917144194%_
                                     _%hd143918144197%_
                                     _%tl143919144199%_
                                     _%e143920144202%_
                                     _%hd143921144205%_
                                     _%tl143922144207%_
                                     _%e143923144210%_
                                     _%hd143924144213%_
                                     _%tl143925144215%_
                                     _%e143926144218%_
                                     _%hd143927144221%_
                                     _%tl143928144223%_
                                     _%e143929144226%_
                                     _%hd143930144229%_
                                     _%tl143931144231%_
                                     _%e143932144234%_
                                     _%hd143933144237%_
                                     _%tl143934144239%_
                                     _%e143935144242%_
                                     _%hd143936144245%_
                                     _%tl143937144247%_
                                     _%e143938144250%_
                                     _%hd143939144253%_
                                     _%tl143940144255%_))
                                (_%__match146282146283%_
                                 _%e143905144162%_
                                 _%hd143906144165%_
                                 _%tl143907144167%_
                                 _%e143917144194%_
                                 _%hd143918144197%_
                                 _%tl143919144199%_
                                 _%e143920144202%_
                                 _%hd143921144205%_
                                 _%tl143922144207%_
                                 _%e143923144210%_
                                 _%hd143924144213%_
                                 _%tl143925144215%_
                                 _%e143926144218%_
                                 _%hd143927144221%_
                                 _%tl143928144223%_
                                 _%e143929144226%_
                                 _%hd143930144229%_
                                 _%tl143931144231%_
                                 _%e143932144234%_
                                 _%hd143933144237%_
                                 _%tl143934144239%_
                                 _%e143935144242%_
                                 _%hd143936144245%_
                                 _%tl143937144247%_
                                 _%e143938144250%_
                                 _%hd143939144253%_
                                 _%tl143940144255%_))
                            (_%__kont146185146186%_))))
                    (_%__kont146185146186%_))
                (_%__kont146185146186%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont146185146186%_))))
                                            (_%__kont146185146186%_))))
                                    (_%__kont146185146186%_))
                                (_%__kont146185146186%_))))
                        (_%__kont146185146186%_))
                    (_%__kont146185146186%_))
                (_%__kont146185146186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont146185146186%_))))
                                        (_%__kont146185146186%_))
                                    (_%__kont146185146186%_))
                                (_%__kont146185146186%_))))
                        (_%__kont146185146186%_))))
                (_%__kont146185146186%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143911144175%_
                                     _%target143908144170%_
                                     '()))))
                               (_%__match146200146201%_
                                (lambda (_%e143857144422%_
                                         _%hd143858144425%_
                                         _%tl143859144427%_
                                         _%__splice146173146174%_
                                         _%target143860144430%_
                                         _%tl143862144432%_)
                                  (letrec ((_%loop143863144435%_
                                            (lambda (_%hd143861144438%_
                                                     _%arg143867144440%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143861144438%_))
                                                  (let ((_%e143864144443%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143861144438%_))))
                                                    (let ((_%lp-tl143866144448%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143864144443%_)))
                                                          (_%lp-hd143865144446%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143864144443%_))))
                                                      (_%loop143863144435%_
                                                       _%lp-tl143866144448%_
                                                       (cons _%lp-hd143865144446%_
                                                             _%arg143867144440%_))))
                                                  (let ((_%arg143868144451%_
                                                         (reverse _%arg143867144440%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143859144427%_))
                                                        (let ((_%e143869144454%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143859144427%_))))
                  (let ((_%tl143871144459%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143869144454%_)))
                        (_%hd143870144457%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143869144454%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143870144457%_))
                        (let ((_%e143872144462%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143870144457%_))))
                          (let ((_%tl143874144467%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143872144462%_)))
                                (_%hd143873144465%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143872144462%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143873144465%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143873144465%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143874144467%_))
                                        (let ((_%e143875144470%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143874144467%_))))
                                          (let ((_%tl143877144475%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143875144470%_)))
                                                (_%hd143876144473%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143875144470%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143876144473%_))
                                                (let ((_%e143878144478%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143876144473%_))))
                                                  (let ((_%tl143880144483%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143878144478%_)))
                                                        (_%hd143879144481%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143878144478%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143879144481%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143879144481%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143880144483%_))
                        (let ((_%e143881144486%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143880144483%_))))
                          (let ((_%tl143883144491%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143881144486%_)))
                                (_%hd143882144489%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143881144486%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143883144491%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl143877144475%_))
                                    (let ((_%__splice146175146176%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl143877144475%_
                                              '0))))
                                      (let ((_%tl143886144496%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146175146176%_
                                                '1)))
                                            (_%target143884144494%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146175146176%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl143886144496%_))
                                            (letrec ((_%loop143887144499%_
                                                      (lambda (_%hd143885144502%_
                                                               _%xarg143891144504%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd143885144502%_))
                                                            (let ((_%e143888144507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd143885144502%_))))
                      (let ((_%lp-tl143890144512%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143888144507%_)))
                            (_%lp-hd143889144510%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143888144507%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd143889144510%_))
                            (let ((_%e143893144515%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd143889144510%_))))
                              (let ((_%tl143895144520%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e143893144515%_)))
                                    (_%hd143894144518%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e143893144515%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd143894144518%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd143894144518%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143895144520%_))
                                            (let ((_%e143896144523%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143895144520%_))))
                                              (let ((_%tl143898144528%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143896144523%_)))
                                                    (_%hd143897144526%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143896144523%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl143898144528%_))
                                                    (_%loop143887144499%_
                                                     _%lp-tl143890144512%_
                                                     (cons _%hd143897144526%_
                                                           _%xarg143891144504%_))
                                                    (_%__match146212146213%_
                                                     _%e143857144422%_
                                                     _%hd143858144425%_
                                                     _%tl143859144427%_
                                                     _%__splice146173146174%_
                                                     _%target143860144430%_
                                                     _%tl143862144432%_))))
                                            (_%__match146212146213%_
                                             _%e143857144422%_
                                             _%hd143858144425%_
                                             _%tl143859144427%_
                                             _%__splice146173146174%_
                                             _%target143860144430%_
                                             _%tl143862144432%_))
                                        (_%__match146212146213%_
                                         _%e143857144422%_
                                         _%hd143858144425%_
                                         _%tl143859144427%_
                                         _%__splice146173146174%_
                                         _%target143860144430%_
                                         _%tl143862144432%_))
                                    (_%__match146212146213%_
                                     _%e143857144422%_
                                     _%hd143858144425%_
                                     _%tl143859144427%_
                                     _%__splice146173146174%_
                                     _%target143860144430%_
                                     _%tl143862144432%_))))
                            (_%__match146212146213%_
                             _%e143857144422%_
                             _%hd143858144425%_
                             _%tl143859144427%_
                             _%__splice146173146174%_
                             _%target143860144430%_
                             _%tl143862144432%_))))
                    (let ((_%xarg143892144531%_
                           (reverse _%xarg143891144504%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl143871144459%_))
                          (let ((_%L144534%_ _%xarg143892144531%_)
                                (_%L144535%_ _%hd143882144489%_)
                                (_%L144536%_ _%arg143868144451%_))
                            (if (and (let ((__tmp147466
                                            (let ((__tmp147467
                                                   (lambda (_%g144564144567%_
                                                            _%g144565144569%_)
                                                     (cons _%g144564144567%_
                                                           _%g144565144569%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147467
                                               '()
                                               _%L144536%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp147466))
                                     (let ((__tmp147470
                                            (length (let ((__tmp147471
                                                           (lambda (_%g144571144574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g144572144576%_)
                     (cons _%g144571144574%_ _%g144572144576%_))))
              (declare (not safe))
              (__foldr1 __tmp147471 '() _%L144536%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp147468
                                            (length (let ((__tmp147469
                                                           (lambda (_%g144578144581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g144579144583%_)
                     (cons _%g144578144581%_ _%g144579144583%_))))
              (declare (not safe))
              (__foldr1 __tmp147469 '() _%L144534%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp147470 __tmp147468))
                                     (let ((__tmp147474
                                            (let ((__tmp147475
                                                   (lambda (_%g144585144588%_
                                                            _%g144586144590%_)
                                                     (cons _%g144585144588%_
                                                           _%g144586144590%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147475
                                               '()
                                               _%L144536%_)))
                                           (__tmp147472
                                            (let ((__tmp147473
                                                   (lambda (_%g144592144595%_
                                                            _%g144593144597%_)
                                                     (cons _%g144592144595%_
                                                           _%g144593144597%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147473
                                               '()
                                               _%L144534%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp147474
                                        __tmp147472))
                                     (not (let ((__tmp147478
                                                 (lambda (_%g144599144601%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g144599144601%_
                                                      _%L144535%_))))
                                                (__tmp147476
                                                 (let ((__tmp147477
                                                        (lambda (_%g144603144606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g144604144608%_)
                  (cons _%g144603144606%_ _%g144604144608%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp147477
                                                    '()
                                                    _%L144536%_))))
                                            (declare (not safe))
                                            (__find __tmp147478 __tmp147476))))
                                (_%__kont146171146172%_
                                 _%L144534%_
                                 _%L144535%_
                                 _%L144536%_)
                                (_%__match146212146213%_
                                 _%e143857144422%_
                                 _%hd143858144425%_
                                 _%tl143859144427%_
                                 _%__splice146173146174%_
                                 _%target143860144430%_
                                 _%tl143862144432%_)))
                          (_%__match146212146213%_
                           _%e143857144422%_
                           _%hd143858144425%_
                           _%tl143859144427%_
                           _%__splice146173146174%_
                           _%target143860144430%_
                           _%tl143862144432%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop143887144499%_
                                               _%target143884144494%_
                                               '()))
                                            (_%__match146212146213%_
                                             _%e143857144422%_
                                             _%hd143858144425%_
                                             _%tl143859144427%_
                                             _%__splice146173146174%_
                                             _%target143860144430%_
                                             _%tl143862144432%_))))
                                    (_%__match146212146213%_
                                     _%e143857144422%_
                                     _%hd143858144425%_
                                     _%tl143859144427%_
                                     _%__splice146173146174%_
                                     _%target143860144430%_
                                     _%tl143862144432%_))
                                (_%__match146212146213%_
                                 _%e143857144422%_
                                 _%hd143858144425%_
                                 _%tl143859144427%_
                                 _%__splice146173146174%_
                                 _%target143860144430%_
                                 _%tl143862144432%_))))
                        (_%__match146212146213%_
                         _%e143857144422%_
                         _%hd143858144425%_
                         _%tl143859144427%_
                         _%__splice146173146174%_
                         _%target143860144430%_
                         _%tl143862144432%_))
                    (_%__match146212146213%_
                     _%e143857144422%_
                     _%hd143858144425%_
                     _%tl143859144427%_
                     _%__splice146173146174%_
                     _%target143860144430%_
                     _%tl143862144432%_))
                (_%__match146212146213%_
                 _%e143857144422%_
                 _%hd143858144425%_
                 _%tl143859144427%_
                 _%__splice146173146174%_
                 _%target143860144430%_
                 _%tl143862144432%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match146212146213%_
                                                 _%e143857144422%_
                                                 _%hd143858144425%_
                                                 _%tl143859144427%_
                                                 _%__splice146173146174%_
                                                 _%target143860144430%_
                                                 _%tl143862144432%_))))
                                        (_%__match146212146213%_
                                         _%e143857144422%_
                                         _%hd143858144425%_
                                         _%tl143859144427%_
                                         _%__splice146173146174%_
                                         _%target143860144430%_
                                         _%tl143862144432%_))
                                    (_%__match146212146213%_
                                     _%e143857144422%_
                                     _%hd143858144425%_
                                     _%tl143859144427%_
                                     _%__splice146173146174%_
                                     _%target143860144430%_
                                     _%tl143862144432%_))
                                (_%__match146212146213%_
                                 _%e143857144422%_
                                 _%hd143858144425%_
                                 _%tl143859144427%_
                                 _%__splice146173146174%_
                                 _%target143860144430%_
                                 _%tl143862144432%_))))
                        (_%__match146212146213%_
                         _%e143857144422%_
                         _%hd143858144425%_
                         _%tl143859144427%_
                         _%__splice146173146174%_
                         _%target143860144430%_
                         _%tl143862144432%_))))
                (_%__match146212146213%_
                 _%e143857144422%_
                 _%hd143858144425%_
                 _%tl143859144427%_
                 _%__splice146173146174%_
                 _%target143860144430%_
                 _%tl143862144432%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143863144435%_
                                     _%target143860144430%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx146169146170%_))
                              (let ((_%e143857144422%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx146169146170%_))))
                                (let ((_%tl143859144427%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143857144422%_)))
                                      (_%hd143858144425%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143857144422%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd143858144425%_))
                                      (let ((_%__splice146173146174%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd143858144425%_
                                                '0))))
                                        (let ((_%tl143862144432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice146173146174%_
                                                  '1)))
                                              (_%target143860144430%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice146173146174%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143862144432%_))
                                              (_%__match146200146201%_
                                               _%e143857144422%_
                                               _%hd143858144425%_
                                               _%tl143859144427%_
                                               _%__splice146173146174%_
                                               _%target143860144430%_
                                               _%tl143862144432%_)
                                              (_%__match146212146213%_
                                               _%e143857144422%_
                                               _%hd143858144425%_
                                               _%tl143859144427%_
                                               _%__splice146173146174%_
                                               _%target143860144430%_
                                               _%tl143862144432%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl143859144427%_))
                                          (let ((_%e143972144029%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl143859144427%_))))
                                            (let ((_%tl143974144034%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e143972144029%_)))
                                                  (_%hd143973144032%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e143972144029%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143973144032%_))
                                                  (let ((_%e143975144037%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143973144032%_))))
                                                    (let ((_%tl143977144042%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143975144037%_)))
                                                          (_%hd143976144040%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143975144037%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd143976144040%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd143976144040%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143977144042%_))
                          (let ((_%e143978144045%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143977144042%_))))
                            (let ((_%tl143980144050%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143978144045%_)))
                                  (_%hd143979144048%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143978144045%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd143979144048%_))
                                  (let ((_%e143981144053%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd143979144048%_))))
                                    (let ((_%tl143983144058%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143981144053%_)))
                                          (_%hd143982144056%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143981144053%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd143982144056%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd143982144056%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl143983144058%_))
                                                  (let ((_%e143984144061%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl143983144058%_))))
                                                    (let ((_%tl143986144066%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143984144061%_)))
                                                          (_%hd143985144064%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143984144061%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl143986144066%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl143980144050%_))
                      (let ((_%e143987144069%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl143980144050%_))))
                        (let ((_%tl143989144074%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143987144069%_)))
                              (_%hd143988144072%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143987144069%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd143988144072%_))
                              (let ((_%e143990144077%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd143988144072%_))))
                                (let ((_%tl143992144082%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143990144077%_)))
                                      (_%hd143991144080%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143990144077%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd143991144080%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd143991144080%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl143992144082%_))
                                              (let ((_%e143993144085%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl143992144082%_))))
                                                (let ((_%tl143995144090%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143993144085%_)))
                                                      (_%hd143994144088%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143993144085%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143995144090%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl143989144074%_))
                                                          (let ((_%e143996144093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl143989144074%_))))
                    (let ((_%tl143998144098%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143996144093%_)))
                          (_%hd143997144096%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143996144093%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd143997144096%_))
                          (let ((_%e143999144101%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd143997144096%_))))
                            (let ((_%tl144001144106%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143999144101%_)))
                                  (_%hd144000144104%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143999144101%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd144000144104%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd144000144104%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl144001144106%_))
                                          (let ((_%e144002144109%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl144001144106%_))))
                                            (let ((_%tl144004144114%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e144002144109%_)))
                                                  (_%hd144003144112%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e144002144109%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl144004144114%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143998144098%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl143974144034%_))
                                                          (_%__match146310146311%_
                                                           _%e143857144422%_
                                                           _%hd143858144425%_
                                                           _%tl143859144427%_
                                                           _%e143972144029%_
                                                           _%hd143973144032%_
                                                           _%tl143974144034%_
                                                           _%e143975144037%_
                                                           _%hd143976144040%_
                                                           _%tl143977144042%_
                                                           _%e143978144045%_
                                                           _%hd143979144048%_
                                                           _%tl143980144050%_
                                                           _%e143981144053%_
                                                           _%hd143982144056%_
                                                           _%tl143983144058%_
                                                           _%e143984144061%_
                                                           _%hd143985144064%_
                                                           _%tl143986144066%_
                                                           _%e143987144069%_
                                                           _%hd143988144072%_
                                                           _%tl143989144074%_
                                                           _%e143990144077%_
                                                           _%hd143991144080%_
                                                           _%tl143992144082%_
                                                           _%e143993144085%_
                                                           _%hd143994144088%_
                                                           _%tl143995144090%_
                                                           _%e143996144093%_
                                                           _%hd143997144096%_
                                                           _%tl143998144098%_
                                                           _%e143999144101%_
                                                           _%hd144000144104%_
                                                           _%tl144001144106%_
                                                           _%e144002144109%_
                                                           _%hd144003144112%_
                                                           _%tl144004144114%_)
                                                          (_%__kont146185146186%_))
                                                      (_%__kont146185146186%_))
                                                  (_%__kont146185146186%_))))
                                          (_%__kont146185146186%_))
                                      (_%__kont146185146186%_))
                                  (_%__kont146185146186%_))))
                          (_%__kont146185146186%_))))
                  (_%__kont146185146186%_))
              (_%__kont146185146186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont146185146186%_))
                                          (_%__kont146185146186%_))
                                      (_%__kont146185146186%_))))
                              (_%__kont146185146186%_))))
                      (_%__kont146185146186%_))
                  (_%__kont146185146186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont146185146186%_))
                                              (_%__kont146185146186%_))
                                          (_%__kont146185146186%_))))
                                  (_%__kont146185146186%_))))
                          (_%__kont146185146186%_))
                      (_%__kont146185146186%_))
                  (_%__kont146185146186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont146185146186%_))))
                                          (_%__kont146185146186%_)))))
                              (_%__kont146185146186%_)))))))
                 (_%dispatch-case-e143157%_
                  (lambda (_%hd143308%_ _%body143309%_)
                    (let* ((_%form143311%_
                            (cons _%hd143308%_ (cons _%body143309%_ '())))
                           (_%__stx146313146314%_ _%form143311%_)
                           (_%g143315143439%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx146313146314%_)))))
                      (let ((_%__kont146315146316%_
                             (lambda (_%L143810%_ _%L143811%_ _%L143812%_)
                               (let ((__tmp147479
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L143811%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self143153%_
                                  __tmp147479))))
                            (_%__kont146321146322%_
                             (lambda (_%L143658%_
                                      _%L143659%_
                                      _%L143660%_
                                      _%L143661%_)
                               (let ((__tmp147480
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L143658%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self143153%_
                                  __tmp147480))))
                            (_%__kont146325146326%_
                             (lambda (_%L143524%_ _%L143525%_ _%L143526%_)
                               (let ((__tmp147481
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L143524%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self143153%_
                                  __tmp147481)))))
                        (let* ((_%__match146422146423%_
                                (lambda (_%e143405143444%_
                                         _%hd143406143447%_
                                         _%tl143407143449%_
                                         _%e143408143452%_
                                         _%hd143409143455%_
                                         _%tl143410143457%_
                                         _%e143411143460%_
                                         _%hd143412143463%_
                                         _%tl143413143465%_
                                         _%e143414143468%_
                                         _%hd143415143471%_
                                         _%tl143416143473%_
                                         _%e143417143476%_
                                         _%hd143418143479%_
                                         _%tl143419143481%_
                                         _%e143420143484%_
                                         _%hd143421143487%_
                                         _%tl143422143489%_
                                         _%e143423143492%_
                                         _%hd143424143495%_
                                         _%tl143425143497%_
                                         _%e143426143500%_
                                         _%hd143427143503%_
                                         _%tl143428143505%_
                                         _%e143429143508%_
                                         _%hd143430143511%_
                                         _%tl143431143513%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143425143497%_))
                                      (let ((_%e143432143516%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143425143497%_))))
                                        (let ((_%tl143434143521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143432143516%_)))
                                              (_%hd143433143519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143432143516%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143434143521%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl143410143457%_))
                                                  (_%__kont146325146326%_
                                                   _%hd143430143511%_
                                                   _%hd143421143487%_
                                                   _%hd143406143447%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g143315143439%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g143315143439%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143315143439%_)))))
                               (_%__match146352146353%_
                                (lambda (_%e143366143562%_
                                         _%hd143367143565%_
                                         _%tl143368143567%_
                                         _%__splice146323146324%_
                                         _%target143369143570%_
                                         _%tl143371143572%_)
                                  (letrec ((_%loop143372143575%_
                                            (lambda (_%hd143370143578%_
                                                     _%arg143376143580%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143370143578%_))
                                                  (let ((_%e143373143583%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143370143578%_))))
                                                    (let ((_%lp-tl143375143588%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143373143583%_)))
                                                          (_%lp-hd143374143586%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143373143583%_))))
                                                      (_%loop143372143575%_
                                                       _%lp-tl143375143588%_
                                                       (cons _%lp-hd143374143586%_
                                                             _%arg143376143580%_))))
                                                  (let ((_%arg143377143591%_
                                                         (reverse _%arg143376143580%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143368143567%_))
                                                        (let ((_%e143378143594%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143368143567%_))))
                  (let ((_%tl143380143599%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143378143594%_)))
                        (_%hd143379143597%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143378143594%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143379143597%_))
                        (let ((_%e143381143602%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143379143597%_))))
                          (let ((_%tl143383143607%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143381143602%_)))
                                (_%hd143382143605%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143381143602%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143382143605%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143382143605%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143383143607%_))
                                        (let ((_%e143384143610%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143383143607%_))))
                                          (let ((_%tl143386143615%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143384143610%_)))
                                                (_%hd143385143613%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143384143610%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143385143613%_))
                                                (let ((_%e143387143618%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143385143613%_))))
                                                  (let ((_%tl143389143623%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143387143618%_)))
                                                        (_%hd143388143621%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143387143618%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143388143621%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143388143621%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143389143623%_))
                        (let ((_%e143390143626%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143389143623%_))))
                          (let ((_%tl143392143631%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143390143626%_)))
                                (_%hd143391143629%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143390143626%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143392143631%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl143386143615%_))
                                    (let ((_%e143393143634%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl143386143615%_))))
                                      (let ((_%tl143395143639%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e143393143634%_)))
                                            (_%hd143394143637%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e143393143634%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd143394143637%_))
                                            (let ((_%e143396143642%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd143394143637%_))))
                                              (let ((_%tl143398143647%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143396143642%_)))
                                                    (_%hd143397143645%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143396143642%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd143397143645%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd143397143645%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl143398143647%_))
                                                            (let ((_%e143399143650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl143398143647%_))))
                      (let ((_%tl143401143655%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143399143650%_)))
                            (_%hd143400143653%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143399143650%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl143401143655%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143380143599%_))
                                (_%__kont146321146322%_
                                 _%hd143400143653%_
                                 _%hd143391143629%_
                                 _%tl143371143572%_
                                 _%arg143377143591%_)
                                (_%__match146422146423%_
                                 _%e143366143562%_
                                 _%hd143367143565%_
                                 _%tl143368143567%_
                                 _%e143378143594%_
                                 _%hd143379143597%_
                                 _%tl143380143599%_
                                 _%e143381143602%_
                                 _%hd143382143605%_
                                 _%tl143383143607%_
                                 _%e143384143610%_
                                 _%hd143385143613%_
                                 _%tl143386143615%_
                                 _%e143387143618%_
                                 _%hd143388143621%_
                                 _%tl143389143623%_
                                 _%e143390143626%_
                                 _%hd143391143629%_
                                 _%tl143392143631%_
                                 _%e143393143634%_
                                 _%hd143394143637%_
                                 _%tl143395143639%_
                                 _%e143396143642%_
                                 _%hd143397143645%_
                                 _%tl143398143647%_
                                 _%e143399143650%_
                                 _%hd143400143653%_
                                 _%tl143401143655%_))
                            (let ()
                              (declare (not safe))
                              (_%g143315143439%_)))))
                    (let () (declare (not safe)) (_%g143315143439%_)))
                (let () (declare (not safe)) (_%g143315143439%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g143315143439%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g143315143439%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g143315143439%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g143315143439%_)))))
                        (let () (declare (not safe)) (_%g143315143439%_)))
                    (let () (declare (not safe)) (_%g143315143439%_)))
                (let () (declare (not safe)) (_%g143315143439%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g143315143439%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g143315143439%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g143315143439%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g143315143439%_)))))
                        (let () (declare (not safe)) (_%g143315143439%_)))))
                (let () (declare (not safe)) (_%g143315143439%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143372143575%_
                                     _%target143369143570%_
                                     '()))))
                               (_%__match146340146341%_
                                (lambda (_%e143320143698%_
                                         _%hd143321143701%_
                                         _%tl143322143703%_
                                         _%__splice146317146318%_
                                         _%target143323143706%_
                                         _%tl143325143708%_)
                                  (letrec ((_%loop143326143711%_
                                            (lambda (_%hd143324143714%_
                                                     _%arg143330143716%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143324143714%_))
                                                  (let ((_%e143327143719%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143324143714%_))))
                                                    (let ((_%lp-tl143329143724%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143327143719%_)))
                                                          (_%lp-hd143328143722%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143327143719%_))))
                                                      (_%loop143326143711%_
                                                       _%lp-tl143329143724%_
                                                       (cons _%lp-hd143328143722%_
                                                             _%arg143330143716%_))))
                                                  (let ((_%arg143331143727%_
                                                         (reverse _%arg143330143716%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143322143703%_))
                                                        (let ((_%e143332143730%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143322143703%_))))
                  (let ((_%tl143334143735%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143332143730%_)))
                        (_%hd143333143733%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143332143730%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143333143733%_))
                        (let ((_%e143335143738%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143333143733%_))))
                          (let ((_%tl143337143743%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143335143738%_)))
                                (_%hd143336143741%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143335143738%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143336143741%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143336143741%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143337143743%_))
                                        (let ((_%e143338143746%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143337143743%_))))
                                          (let ((_%tl143340143751%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143338143746%_)))
                                                (_%hd143339143749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143338143746%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143339143749%_))
                                                (let ((_%e143341143754%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143339143749%_))))
                                                  (let ((_%tl143343143759%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143341143754%_)))
                                                        (_%hd143342143757%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143341143754%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143342143757%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143342143757%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143343143759%_))
                        (let ((_%e143344143762%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143343143759%_))))
                          (let ((_%tl143346143767%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143344143762%_)))
                                (_%hd143345143765%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143344143762%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143346143767%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl143340143751%_))
                                    (let ((_%__splice146319146320%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl143340143751%_
                                              '0))))
                                      (let ((_%tl143349143772%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146319146320%_
                                                '1)))
                                            (_%target143347143770%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146319146320%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl143349143772%_))
                                            (letrec ((_%loop143350143775%_
                                                      (lambda (_%hd143348143778%_
                                                               _%xarg143354143780%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd143348143778%_))
                                                            (let ((_%e143351143783%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd143348143778%_))))
                      (let ((_%lp-tl143353143788%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143351143783%_)))
                            (_%lp-hd143352143786%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143351143783%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd143352143786%_))
                            (let ((_%e143356143791%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd143352143786%_))))
                              (let ((_%tl143358143796%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e143356143791%_)))
                                    (_%hd143357143794%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e143356143791%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd143357143794%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd143357143794%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143358143796%_))
                                            (let ((_%e143359143799%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143358143796%_))))
                                              (let ((_%tl143361143804%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143359143799%_)))
                                                    (_%hd143360143802%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143359143799%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl143361143804%_))
                                                    (_%loop143350143775%_
                                                     _%lp-tl143353143788%_
                                                     (cons _%hd143360143802%_
                                                           _%xarg143354143780%_))
                                                    (_%__match146352146353%_
                                                     _%e143320143698%_
                                                     _%hd143321143701%_
                                                     _%tl143322143703%_
                                                     _%__splice146317146318%_
                                                     _%target143323143706%_
                                                     _%tl143325143708%_))))
                                            (_%__match146352146353%_
                                             _%e143320143698%_
                                             _%hd143321143701%_
                                             _%tl143322143703%_
                                             _%__splice146317146318%_
                                             _%target143323143706%_
                                             _%tl143325143708%_))
                                        (_%__match146352146353%_
                                         _%e143320143698%_
                                         _%hd143321143701%_
                                         _%tl143322143703%_
                                         _%__splice146317146318%_
                                         _%target143323143706%_
                                         _%tl143325143708%_))
                                    (_%__match146352146353%_
                                     _%e143320143698%_
                                     _%hd143321143701%_
                                     _%tl143322143703%_
                                     _%__splice146317146318%_
                                     _%target143323143706%_
                                     _%tl143325143708%_))))
                            (_%__match146352146353%_
                             _%e143320143698%_
                             _%hd143321143701%_
                             _%tl143322143703%_
                             _%__splice146317146318%_
                             _%target143323143706%_
                             _%tl143325143708%_))))
                    (let ((_%xarg143355143807%_
                           (reverse _%xarg143354143780%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl143334143735%_))
                          (_%__kont146315146316%_
                           _%xarg143355143807%_
                           _%hd143345143765%_
                           _%arg143331143727%_)
                          (_%__match146352146353%_
                           _%e143320143698%_
                           _%hd143321143701%_
                           _%tl143322143703%_
                           _%__splice146317146318%_
                           _%target143323143706%_
                           _%tl143325143708%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop143350143775%_
                                               _%target143347143770%_
                                               '()))
                                            (_%__match146352146353%_
                                             _%e143320143698%_
                                             _%hd143321143701%_
                                             _%tl143322143703%_
                                             _%__splice146317146318%_
                                             _%target143323143706%_
                                             _%tl143325143708%_))))
                                    (_%__match146352146353%_
                                     _%e143320143698%_
                                     _%hd143321143701%_
                                     _%tl143322143703%_
                                     _%__splice146317146318%_
                                     _%target143323143706%_
                                     _%tl143325143708%_))
                                (_%__match146352146353%_
                                 _%e143320143698%_
                                 _%hd143321143701%_
                                 _%tl143322143703%_
                                 _%__splice146317146318%_
                                 _%target143323143706%_
                                 _%tl143325143708%_))))
                        (_%__match146352146353%_
                         _%e143320143698%_
                         _%hd143321143701%_
                         _%tl143322143703%_
                         _%__splice146317146318%_
                         _%target143323143706%_
                         _%tl143325143708%_))
                    (_%__match146352146353%_
                     _%e143320143698%_
                     _%hd143321143701%_
                     _%tl143322143703%_
                     _%__splice146317146318%_
                     _%target143323143706%_
                     _%tl143325143708%_))
                (_%__match146352146353%_
                 _%e143320143698%_
                 _%hd143321143701%_
                 _%tl143322143703%_
                 _%__splice146317146318%_
                 _%target143323143706%_
                 _%tl143325143708%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match146352146353%_
                                                 _%e143320143698%_
                                                 _%hd143321143701%_
                                                 _%tl143322143703%_
                                                 _%__splice146317146318%_
                                                 _%target143323143706%_
                                                 _%tl143325143708%_))))
                                        (_%__match146352146353%_
                                         _%e143320143698%_
                                         _%hd143321143701%_
                                         _%tl143322143703%_
                                         _%__splice146317146318%_
                                         _%target143323143706%_
                                         _%tl143325143708%_))
                                    (_%__match146352146353%_
                                     _%e143320143698%_
                                     _%hd143321143701%_
                                     _%tl143322143703%_
                                     _%__splice146317146318%_
                                     _%target143323143706%_
                                     _%tl143325143708%_))
                                (_%__match146352146353%_
                                 _%e143320143698%_
                                 _%hd143321143701%_
                                 _%tl143322143703%_
                                 _%__splice146317146318%_
                                 _%target143323143706%_
                                 _%tl143325143708%_))))
                        (_%__match146352146353%_
                         _%e143320143698%_
                         _%hd143321143701%_
                         _%tl143322143703%_
                         _%__splice146317146318%_
                         _%target143323143706%_
                         _%tl143325143708%_))))
                (_%__match146352146353%_
                 _%e143320143698%_
                 _%hd143321143701%_
                 _%tl143322143703%_
                 _%__splice146317146318%_
                 _%target143323143706%_
                 _%tl143325143708%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143326143711%_
                                     _%target143323143706%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx146313146314%_))
                              (let ((_%e143320143698%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx146313146314%_))))
                                (let ((_%tl143322143703%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143320143698%_)))
                                      (_%hd143321143701%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143320143698%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd143321143701%_))
                                      (let ((_%__splice146317146318%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd143321143701%_
                                                '0))))
                                        (let ((_%tl143325143708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice146317146318%_
                                                  '1)))
                                              (_%target143323143706%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice146317146318%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143325143708%_))
                                              (_%__match146340146341%_
                                               _%e143320143698%_
                                               _%hd143321143701%_
                                               _%tl143322143703%_
                                               _%__splice146317146318%_
                                               _%target143323143706%_
                                               _%tl143325143708%_)
                                              (_%__match146352146353%_
                                               _%e143320143698%_
                                               _%hd143321143701%_
                                               _%tl143322143703%_
                                               _%__splice146317146318%_
                                               _%target143323143706%_
                                               _%tl143325143708%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl143322143703%_))
                                          (let ((_%e143408143452%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl143322143703%_))))
                                            (let ((_%tl143410143457%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e143408143452%_)))
                                                  (_%hd143409143455%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e143408143452%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143409143455%_))
                                                  (let ((_%e143411143460%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143409143455%_))))
                                                    (let ((_%tl143413143465%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143411143460%_)))
                                                          (_%hd143412143463%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143411143460%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd143412143463%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd143412143463%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143413143465%_))
                          (let ((_%e143414143468%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143413143465%_))))
                            (let ((_%tl143416143473%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143414143468%_)))
                                  (_%hd143415143471%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143414143468%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd143415143471%_))
                                  (let ((_%e143417143476%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd143415143471%_))))
                                    (let ((_%tl143419143481%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143417143476%_)))
                                          (_%hd143418143479%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143417143476%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd143418143479%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd143418143479%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl143419143481%_))
                                                  (let ((_%e143420143484%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl143419143481%_))))
                                                    (let ((_%tl143422143489%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143420143484%_)))
                                                          (_%hd143421143487%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143420143484%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl143422143489%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl143416143473%_))
                      (let ((_%e143423143492%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl143416143473%_))))
                        (let ((_%tl143425143497%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143423143492%_)))
                              (_%hd143424143495%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143423143492%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd143424143495%_))
                              (let ((_%e143426143500%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd143424143495%_))))
                                (let ((_%tl143428143505%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143426143500%_)))
                                      (_%hd143427143503%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143426143500%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd143427143503%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd143427143503%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl143428143505%_))
                                              (let ((_%e143429143508%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl143428143505%_))))
                                                (let ((_%tl143431143513%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143429143508%_)))
                                                      (_%hd143430143511%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143429143508%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143431143513%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl143425143497%_))
                                                          (let ((_%e143432143516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl143425143497%_))))
                    (let ((_%tl143434143521%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143432143516%_)))
                          (_%hd143433143519%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143432143516%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl143434143521%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl143410143457%_))
                              (_%__kont146325146326%_
                               _%hd143430143511%_
                               _%hd143421143487%_
                               _%hd143321143701%_)
                              (let ()
                                (declare (not safe))
                                (_%g143315143439%_)))
                          (let () (declare (not safe)) (_%g143315143439%_)))))
                  (let () (declare (not safe)) (_%g143315143439%_)))
              (let () (declare (not safe)) (_%g143315143439%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g143315143439%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g143315143439%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143315143439%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143315143439%_)))))
                      (let () (declare (not safe)) (_%g143315143439%_)))
                  (let () (declare (not safe)) (_%g143315143439%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g143315143439%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g143315143439%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g143315143439%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g143315143439%_)))))
                          (let () (declare (not safe)) (_%g143315143439%_)))
                      (let () (declare (not safe)) (_%g143315143439%_)))
                  (let () (declare (not safe)) (_%g143315143439%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g143315143439%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g143315143439%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g143315143439%_))))))))
                 (_%generate1143158%_
                  (lambda (_%args143293%_
                           _%arglen143294%_
                           _%hd143295%_
                           _%body143296%_)
                    (let* ((_%len143298%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd143295%_)))
                           (_%condition143303%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd143295%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen143294%_
                                                (cons _%len143298%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen143294%_ (cons _%len143298%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len143298%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen143294%_
                                                    (cons _%len143298%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen143294%_ (cons _%len143298%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch143305%_
                            (if (_%dispatch-case?143156%_
                                 _%hd143295%_
                                 _%body143296%_)
                                (_%dispatch-case-e143157%_
                                 _%hd143295%_
                                 _%body143296%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self143153%_
                                 _%hd143295%_
                                 _%body143296%_))))
                      (cons _%condition143303%_
                            (cons (cons 'apply
                                        (cons _%dispatch143305%_
                                              (cons _%args143293%_ '())))
                                  '()))))))
          (let* ((_%g143160143188%_
                  (lambda (_%g143161143185%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143161143185%_))))
                 (_%g143159143290%_
                  (lambda (_%g143161143191%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143161143191%_))
                        (let ((_%e143164143193%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143161143191%_))))
                          (let ((_%hd143165143196%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143164143193%_)))
                                (_%tl143166143198%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143164143193%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl143166143198%_))
                                (let ((_g147482_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl143166143198%_
                                          '0))))
                                  (begin
                                    (let ((_g147483_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g147482_)
                                                 (##vector-length _g147482_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g147483_ 2)))
                                          (error "Context expects 2 values"
                                                 _g147483_)))
                                    (let ((_%target143167143201%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147482_ 0)))
                                          (_%tl143169143203%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147482_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl143169143203%_))
                                          (letrec ((_%loop143170143206%_
                                                    (lambda (_%hd143168143209%_
                                                             _%body143174143211%_
                                                             _%hd143175143213%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd143168143209%_))
                                                          (let ((_%e143171143216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd143168143209%_))))
                    (let ((_%lp-hd143172143219%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143171143216%_)))
                          (_%lp-tl143173143221%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143171143216%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd143172143219%_))
                          (let ((_%e143178143224%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd143172143219%_))))
                            (let ((_%hd143179143227%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143178143224%_)))
                                  (_%tl143180143229%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143178143224%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl143180143229%_))
                                  (let ((_%e143181143232%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl143180143229%_))))
                                    (let ((_%hd143182143235%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143181143232%_)))
                                          (_%tl143183143237%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143181143232%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl143183143237%_))
                                          (_%loop143170143206%_
                                           _%lp-tl143173143221%_
                                           (cons _%hd143182143235%_
                                                 _%body143174143211%_)
                                           (cons _%hd143179143227%_
                                                 _%hd143175143213%_))
                                          (_%g143160143188%_
                                           _%g143161143191%_))))
                                  (_%g143160143188%_ _%g143161143191%_))))
                          (_%g143160143188%_ _%g143161143191%_))))
                  (let ((_%body143176143240%_ (reverse _%body143174143211%_))
                        (_%hd143177143242%_ (reverse _%hd143175143213%_)))
                    ((lambda (_%L143245%_ _%L143246%_)
                       (let ((_%args143265%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen143266%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name143267%_
                              (let ((_%$e143262%_
                                     (let ((__tmp147484
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp147484 _%stx143154%_))))
                                (if _%$e143262%_
                                    _%$e143262%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args143265%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen143266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args143265%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args143265%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp147488
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name143267%_
                                                                (cons _%args143265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp147485
                                  (map (lambda (_%g143268143271%_
                                                _%g143269143273%_)
                                         (_%generate1143158%_
                                          _%args143265%_
                                          _%arglen143266%_
                                          _%g143268143271%_
                                          _%g143269143273%_))
                                       (let ((__tmp147486
                                              (lambda (_%g143275143278%_
                                                       _%g143276143280%_)
                                                (cons _%g143275143278%_
                                                      _%g143276143280%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp147486
                                          '()
                                          _%L143246%_))
                                       (let ((__tmp147487
                                              (lambda (_%g143282143285%_
                                                       _%g143283143287%_)
                                                (cons _%g143282143285%_
                                                      _%g143283143287%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp147487
                                          '()
                                          _%L143245%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp147488 __tmp147485)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body143176143240%_
                     _%hd143177143242%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop143170143206%_
                                             _%target143167143201%_
                                             '()
                                             '()))
                                          (_%g143160143188%_
                                           _%g143161143191%_)))))
                                (_%g143160143188%_ _%g143161143191%_))))
                        (_%g143160143188%_ _%g143161143191%_)))))
            (_%g143159143290%_ _%stx143154%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self142390%_ _%stx142391%_ _%compiled-body?142392%_)
        (letrec ((_%generate-simple142394%_
                  (lambda (_%hd143138%_ _%body143139%_)
                    (_%coalesce-boolean142395%_
                     (_%simplify-let142396%_
                      (gxc#generate-runtime-simple-let
                       _%self142390%_
                       'let
                       _%hd143138%_
                       _%body143139%_
                       _%compiled-body?142392%_)))))
                 (_%coalesce-boolean142395%_
                  (lambda (_%code142999%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code143000143026%_ _%code142999%_)
                               (_%else143002143034%_
                                (lambda () _%code142999%_))
                               (_%K143004143071%_
                                (lambda (_%expr2143037%_
                                         _%expr1143038%_
                                         _%id143039%_)
                                  (let* ((_%expr2143040143048%_
                                          _%expr2143037%_)
                                         (_%else143042143056%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1143038%_
                                                        (cons _%expr2143037%_
                                                              '())))))
                                         (_%K143044143061%_
                                          (lambda (_%exprs143059%_)
                                            (cons 'or
                                                  (cons _%expr1143038%_
                                                        _%exprs143059%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2143040143048%_))
                                        (let ((_%hd143045143064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2143040143048%_)))
                                              (_%tl143046143066%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2143040143048%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd143045143064%_ 'or))
                                              (let ((_%exprs143069%_
                                                     _%tl143046143066%_))
                                                (_%K143044143061%_
                                                 _%exprs143069%_))
                                              (_%else143042143056%_)))
                                        (_%else143042143056%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code143000143026%_))
                              (let ((_%hd143005143074%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code143000143026%_)))
                                    (_%tl143006143076%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code143000143026%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd143005143074%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl143006143076%_))
                                        (let ((_%hd143007143079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl143006143076%_)))
                                              (_%tl143008143081%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl143006143076%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd143007143079%_))
                                              (let ((_%hd143019143084%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd143007143079%_)))
                                                    (_%tl143020143086%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd143007143079%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd143019143084%_))
                                                    (let ((_%hd143021143089%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd143019143084%_)))
                                                          (_%tl143022143091%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd143019143084%_))))
                                                      (let ((_%id143094%_
                                                             _%hd143021143089%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl143022143091%_))
                                                            (let ((_%hd143023143096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl143022143091%_)))
                          (_%tl143024143098%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl143022143091%_))))
                      (let ((_%expr1143101%_ _%hd143023143096%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl143024143098%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl143020143086%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl143008143081%_))
                                    (let ((_%hd143009143103%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl143008143081%_)))
                                          (_%tl143010143105%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl143008143081%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd143009143103%_))
                                          (let ((_%hd143011143108%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd143009143103%_)))
                                                (_%tl143012143110%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd143009143103%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd143011143108%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl143012143110%_))
                                                    (let ((_%hd143013143113%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl143012143110%_)))
                                                          (_%tl143014143115%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl143012143110%_))))
                                                      (if ((lambda (_%g143117143119%_)
                                                             (eq? _%g143117143119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id143094%_))
                   _%hd143013143113%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl143014143115%_))
                      (let ((_%hd143015143122%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl143014143115%_)))
                            (_%tl143016143124%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl143014143115%_))))
                        (if ((lambda (_%g143126143128%_)
                               (eq? _%g143126143128%_ _%id143094%_))
                             _%hd143015143122%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl143016143124%_))
                                (let ((_%hd143017143131%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl143016143124%_)))
                                      (_%tl143018143133%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl143016143124%_))))
                                  (let ((_%expr2143136%_ _%hd143017143131%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl143018143133%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl143010143105%_))
                                            (_%K143004143071%_
                                             _%expr2143136%_
                                             _%expr1143101%_
                                             _%id143094%_)
                                            (_%else143002143034%_))
                                        (_%else143002143034%_))))
                                (_%else143002143034%_))
                            (_%else143002143034%_)))
                      (_%else143002143034%_))
                  (_%else143002143034%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else143002143034%_))
                                                (_%else143002143034%_)))
                                          (_%else143002143034%_)))
                                    (_%else143002143034%_))
                                (_%else143002143034%_))
                            (_%else143002143034%_))))
                    (_%else143002143034%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else143002143034%_)))
                                              (_%else143002143034%_)))
                                        (_%else143002143034%_))
                                    (_%else143002143034%_)))
                              (_%else143002143034%_)))
                        _%code142999%_)))
                 (_%simplify-let142396%_
                  (lambda (_%code142698%_)
                    (let* ((_%code142699142771%_ _%code142698%_)
                           (_%else142704142779%_ (lambda () _%code142698%_)))
                      (let ((_%K142763142979%_
                             (lambda (_%expr142977%_) _%expr142977%_))
                            (_%K142746142925%_
                             (lambda (_%body142921%_
                                      _%expr142922%_
                                      _%id142923%_)
                               (cons 'let
                                     (cons (cons (cons _%id142923%_
                                                       (cons _%expr142922%_
                                                             '()))
                                                 '())
                                           _%body142921%_))))
                            (_%K142723142849%_
                             (lambda (_%body142843%_
                                      _%expr2142844%_
                                      _%id2142845%_
                                      _%expr1142846%_
                                      _%id1142847%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1142847%_
                                                       (cons _%expr1142846%_
                                                             '()))
                                                 (cons (cons _%id2142845%_
                                                             (cons _%expr2142844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body142843%_))))
                            (_%K142706142788%_
                             (lambda (_%body142783%_
                                      _%bind142784%_
                                      _%expr1142785%_
                                      _%id1142786%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1142786%_
                                                       (cons _%expr1142785%_
                                                             '()))
                                                 _%bind142784%_)
                                           _%body142783%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code142699142771%_))
                            (let ((_%tl142765142984%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code142699142771%_)))
                                  (_%hd142764142982%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code142699142771%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd142764142982%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl142765142984%_))
                                      (let ((_%tl142767142989%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl142765142984%_)))
                                            (_%hd142766142987%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl142765142984%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%hd142766142987%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tl142767142989%_))
                                                (let ((_%tl142769142994%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl142767142989%_)))
                                                      (_%hd142768142992%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl142767142989%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _%tl142769142994%_))
                                                      (let ((_%expr142997%_
                                                             _%hd142768142992%_))
                                                        (_%K142763142979%_
                                                         _%expr142997%_))
                                                      (_%else142704142779%_)))
                                                (_%else142704142779%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd142766142987%_))
                                                (let ((_%tl142758142940%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd142766142987%_)))
                                                      (_%hd142757142938%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd142766142987%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd142757142938%_))
                                                      (let ((_%tl142760142945%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd142757142938%_)))
                    (_%hd142759142943%_
                     (let () (declare (not safe)) (##car _%hd142757142938%_))))
                (if (let () (declare (not safe)) (##pair? _%tl142760142945%_))
                    (let ((_%tl142762142952%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl142760142945%_)))
                          (_%hd142761142950%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl142760142945%_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl142762142952%_))
                          (if (let ()
                                (declare (not safe))
                                (##null? _%tl142758142940%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl142767142989%_))
                                  (let ((_%tl142752142959%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl142767142989%_)))
                                        (_%hd142751142957%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl142767142989%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%hd142751142957%_))
                                        (let ((_%tl142754142964%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd142751142957%_)))
                                              (_%hd142753142962%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd142751142957%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd142753142962%_
                                                       'let))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl142754142964%_))
                                                  (let ((_%tl142756142969%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl142754142964%_)))
                                                        (_%hd142755142967%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl142754142964%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%hd142755142967%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##null? _%tl142752142959%_))
                                                            (let ((_%id142948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd142759142943%_)
                          (_%expr142955%_ _%hd142761142950%_)
                          (_%body142972%_ _%tl142756142969%_))
                      (_%K142746142925%_
                       _%body142972%_
                       _%expr142955%_
                       _%id142948%_))
                    (_%else142704142779%_))
                (if (let () (declare (not safe)) (##pair? _%hd142755142967%_))
                    (let ((_%tl142735142898%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd142755142967%_)))
                          (_%hd142734142896%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd142755142967%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd142734142896%_))
                          (let ((_%tl142737142903%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd142734142896%_)))
                                (_%hd142736142901%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd142734142896%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl142737142903%_))
                                (let ((_%tl142739142910%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl142737142903%_)))
                                      (_%hd142738142908%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl142737142903%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl142739142910%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl142735142898%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl142752142959%_))
                                              (let ((_%id1142872%_
                                                     _%hd142759142943%_)
                                                    (_%expr1142879%_
                                                     _%hd142761142950%_)
                                                    (_%id2142906%_
                                                     _%hd142736142901%_)
                                                    (_%expr2142913%_
                                                     _%hd142738142908%_)
                                                    (_%body142915%_
                                                     _%tl142756142969%_))
                                                (_%K142723142849%_
                                                 _%body142915%_
                                                 _%expr2142913%_
                                                 _%id2142906%_
                                                 _%expr1142879%_
                                                 _%id1142872%_))
                                              (_%else142704142779%_))
                                          (_%else142704142779%_))
                                      (_%else142704142779%_)))
                                (_%else142704142779%_)))
                          (_%else142704142779%_)))
                    (_%else142704142779%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else142704142779%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd142753142962%_
                                                           'let*))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%tl142754142964%_))
                                                      (let ((_%tl142716142832%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl142754142964%_)))
                    (_%hd142715142830%_
                     (let () (declare (not safe)) (##car _%tl142754142964%_))))
                (if (let () (declare (not safe)) (##null? _%tl142752142959%_))
                    (let ((_%id1142811%_ _%hd142759142943%_)
                          (_%expr1142818%_ _%hd142761142950%_)
                          (_%bind142835%_ _%hd142715142830%_)
                          (_%body142837%_ _%tl142716142832%_))
                      (_%K142706142788%_
                       _%body142837%_
                       _%bind142835%_
                       _%expr1142818%_
                       _%id1142811%_))
                    (_%else142704142779%_)))
              (_%else142704142779%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else142704142779%_))))
                                        (_%else142704142779%_)))
                                  (_%else142704142779%_))
                              (_%else142704142779%_))
                          (_%else142704142779%_)))
                    (_%else142704142779%_)))
              (_%else142704142779%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else142704142779%_))))
                                      (_%else142704142779%_))
                                  (_%else142704142779%_)))
                            (_%else142704142779%_))))))
                 (_%generate-values142397%_
                  (lambda (_%hd142511%_ _%body142512%_)
                    (let _%lp142514%_ ((_%rest142516%_ _%hd142511%_)
                                       (_%bind142517%_ '())
                                       (_%check142518%_ '())
                                       (_%post142519%_ '()))
                      (let* ((_%__stx146642146643%_ _%rest142516%_)
                             (_%g142522142533%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx146642146643%_)))))
                        (let ((_%__kont146644146645%_
                               (lambda (_%L142560%_ _%L142561%_)
                                 (let* ((_%__stx146598146599%_ _%L142561%_)
                                        (_%g142576142601%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx146598146599%_)))))
                                   (let ((_%__kont146600146601%_
                                          (lambda (_%L142674%_ _%L142675%_)
                                            (let ((_%eid142689%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L142675%_)))
                                                  (_%expr142690%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self142390%_
                                                      _%L142674%_))))
                                              (_%lp142514%_
                                               _%L142560%_
                                               (cons (cons _%eid142689%_
                                                           (cons _%expr142690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind142517%_)
                                               _%check142518%_
                                               _%post142519%_))))
                                         (_%__kont146602146603%_
                                          (lambda (_%L142622%_ _%L142623%_)
                                            (let* ((_%vals142636%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values142638%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals142636%_
                                                     _%L142623%_
                                                     _%L142622%_))
                                                   (_%refs142640%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals142636%_
                                                     _%L142623%_))
                                                   (_%expr142642%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self142390%_
                                                       _%L142622%_))))
                                              (_%lp142514%_
                                               _%L142560%_
                                               (cons (cons _%vals142636%_
                                                           (cons _%expr142642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind142517%_)
                                               (cons _%check-values142638%_
                                                     _%check142518%_)
                                               (cons _%refs142640%_
                                                     _%post142519%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx146598146599%_))
                                         (let ((_%e142580142650%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx146598146599%_))))
                                           (let ((_%tl142582142655%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e142580142650%_)))
                                                 (_%hd142581142653%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e142580142650%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd142581142653%_))
                                                 (let ((_%e142583142658%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd142581142653%_))))
                                                   (let ((_%tl142585142663%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e142583142658%_)))
                                                         (_%hd142584142661%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e142583142658%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl142585142663%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl142582142655%_))
                     (let ((_%e142586142666%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142582142655%_))))
                       (let ((_%tl142588142671%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142586142666%_)))
                             (_%hd142587142669%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142586142666%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142588142671%_))
                             (_%__kont146600146601%_
                              _%hd142587142669%_
                              _%hd142584142661%_)
                             (let ()
                               (declare (not safe))
                               (_%g142576142601%_)))))
                     (let () (declare (not safe)) (_%g142576142601%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl142582142655%_))
                     (let ((_%e142594142614%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142582142655%_))))
                       (let ((_%tl142596142619%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142594142614%_)))
                             (_%hd142595142617%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142594142614%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142596142619%_))
                             (_%__kont146602146603%_
                              _%hd142595142617%_
                              _%hd142581142653%_)
                             (let ()
                               (declare (not safe))
                               (_%g142576142601%_)))))
                     (let () (declare (not safe)) (_%g142576142601%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl142582142655%_))
                                                     (let ((_%e142594142614%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl142582142655%_))))
                                                       (let ((_%tl142596142619%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e142594142614%_)))
                     (_%hd142595142617%_
                      (let () (declare (not safe)) (##car _%e142594142614%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl142596142619%_))
                     (_%__kont146602146603%_
                      _%hd142595142617%_
                      _%hd142581142653%_)
                     (let () (declare (not safe)) (_%g142576142601%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g142576142601%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g142576142601%_)))))))
                              (_%__kont146646146647%_
                               (lambda ()
                                 (let* ((_%body142540%_
                                         (if _%compiled-body?142392%_
                                             _%body142512%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self142390%_
                                                _%body142512%_))))
                                        (_%body142542%_
                                         (_%generate-values-post142398%_
                                          _%post142519%_
                                          _%body142540%_))
                                        (_%body142544%_
                                         (_%generate-values-check142399%_
                                          _%check142518%_
                                          _%body142542%_)))
                                   (cons 'let
                                         (cons (reverse _%bind142517%_)
                                               (cons _%body142544%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx146642146643%_))
                              (let ((_%e142526142552%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx146642146643%_))))
                                (let ((_%tl142528142557%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142526142552%_)))
                                      (_%hd142527142555%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142526142552%_))))
                                  (_%__kont146644146645%_
                                   _%tl142528142557%_
                                   _%hd142527142555%_)))
                              (_%__kont146646146647%_)))))))
                 (_%generate-values-post142398%_
                  (lambda (_%post142470%_ _%body142471%_)
                    (let _%lp142473%_ ((_%rest142475%_ _%post142470%_)
                                       (_%body142476%_ _%body142471%_))
                      (let* ((_%rest142477142485%_ _%rest142475%_)
                             (_%else142479142493%_ (lambda () _%body142476%_))
                             (_%K142481142499%_
                              (lambda (_%rest142496%_ _%bind142497%_)
                                (_%lp142473%_
                                 _%rest142496%_
                                 (cons 'let
                                       (cons _%bind142497%_
                                             (cons _%body142476%_ '())))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest142477142485%_))
                            (let ((_%hd142482142502%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest142477142485%_)))
                                  (_%tl142483142504%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest142477142485%_))))
                              (let* ((_%bind142507%_ _%hd142482142502%_)
                                     (_%rest142509%_ _%tl142483142504%_))
                                (_%K142481142499%_
                                 _%rest142509%_
                                 _%bind142507%_)))
                            (_%else142479142493%_))))))
                 (_%generate-values-check142399%_
                  (lambda (_%check142467%_ _%body142468%_)
                    (cons 'begin
                          (let ((__tmp147490 (cons _%body142468%_ '()))
                                (__tmp147489 (reverse _%check142467%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp147490 __tmp147489))))))
          (let* ((_%g142401142418%_
                  (lambda (_%g142402142415%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142402142415%_))))
                 (_%g142400142464%_
                  (lambda (_%g142402142421%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142402142421%_))
                        (let ((_%e142405142423%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142402142421%_))))
                          (let ((_%hd142406142426%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142405142423%_)))
                                (_%tl142407142428%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142405142423%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142407142428%_))
                                (let ((_%e142408142431%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142407142428%_))))
                                  (let ((_%hd142409142434%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142408142431%_)))
                                        (_%tl142410142436%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142408142431%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142410142436%_))
                                        (let ((_%e142411142439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142410142436%_))))
                                          (let ((_%hd142412142442%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142411142439%_)))
                                                (_%tl142413142444%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142411142439%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142413142444%_))
                                                ((lambda (_%L142447%_
                                                          _%L142448%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L142448%_)
                                                       (_%generate-simple142394%_
                                                        _%L142448%_
                                                        _%L142447%_)
                                                       (_%generate-values142397%_
                                                        _%L142448%_
                                                        _%L142447%_)))
                                                 _%hd142412142442%_
                                                 _%hd142409142434%_)
                                                (_%g142401142418%_
                                                 _%g142402142421%_))))
                                        (_%g142401142418%_
                                         _%g142402142421%_))))
                                (_%g142401142418%_ _%g142402142421%_))))
                        (_%g142401142418%_ _%g142402142421%_)))))
            (_%g142400142464%_ _%stx142391%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self143144%_ _%stx143145%_)
        (let ((_%compiled-body?143147%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self143144%_
           _%stx143145%_
           _%compiled-body?143147%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g147492_
        (let ((_g147491_ (let () (declare (not safe)) (##length _g147492_))))
          (cond ((let () (declare (not safe)) (##fx= _g147491_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g147492_))
                ((let () (declare (not safe)) (##fx= _g147491_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g147492_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g147492_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals142284%_ _%hd142285%_)
        (let _%lp142287%_ ((_%rest142289%_ _%hd142285%_)
                           (_%k142290%_ '0)
                           (_%r142291%_ '()))
          (let* ((_%__stx146656146657%_ _%rest142289%_)
                 (_%g142296142313%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx146656146657%_)))))
            (let ((_%__kont146658146659%_
                   (lambda (_%L142376%_)
                     (_%lp142287%_
                      _%L142376%_
                      (let () (declare (not safe)) (##fx+ _%k142290%_ '1))
                      _%r142291%_)))
                  (_%__kont146660146661%_
                   (lambda (_%L142349%_ _%L142350%_)
                     (_%lp142287%_
                      _%L142349%_
                      (let () (declare (not safe)) (##fx+ _%k142290%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L142350%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals142284%_
                                         _%k142290%_
                                         _%L142349%_)
                                        '()))
                            _%r142291%_))))
                  (_%__kont146662146663%_
                   (lambda (_%L142325%_)
                     (let ((__tmp147493
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L142325%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals142284%_
                                               _%k142290%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp147493 _%r142291%_))))
                  (_%__kont146664146665%_ (lambda () (reverse _%r142291%_))))
              (let ((_%g142294142336%_
                     (lambda ()
                       (let ((_%L142325%_ _%__stx146656146657%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L142325%_))
                             (_%__kont146662146663%_ _%L142325%_)
                             (_%__kont146664146665%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx146656146657%_))
                    (let ((_%e142299142365%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx146656146657%_))))
                      (let ((_%tl142301142370%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142299142365%_)))
                            (_%hd142300142368%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142299142365%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd142300142368%_))
                            (let ((_%e142302142373%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd142300142368%_))))
                              (if (equal? _%e142302142373%_ '#f)
                                  (_%__kont146658146659%_ _%tl142301142370%_)
                                  (_%__kont146660146661%_
                                   _%tl142301142370%_
                                   _%hd142300142368%_)))
                            (_%__kont146660146661%_
                             _%tl142301142370%_
                             _%hd142300142368%_))))
                    (let () (declare (not safe)) (_%g142294142336%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self141963%_ _%stx141964%_ _%compiled-body?141965%_)
        (letrec ((_%generate-simple141967%_
                  (lambda (_%hd142269%_ _%body142270%_)
                    (gxc#generate-runtime-simple-let
                     _%self141963%_
                     'letrec
                     _%hd142269%_
                     _%body142270%_
                     _%compiled-body?141965%_)))
                 (_%generate-values141968%_
                  (lambda (_%hd142048%_ _%body142049%_)
                    (let _%lp142051%_ ((_%rest142053%_ _%hd142048%_)
                                       (_%bind142054%_ '())
                                       (_%check142055%_ '())
                                       (_%post142056%_ '()))
                      (let* ((_%__stx146730146731%_ _%rest142053%_)
                             (_%g142059142070%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx146730146731%_)))))
                        (let ((_%__kont146732146733%_
                               (lambda (_%L142097%_ _%L142098%_)
                                 (let* ((_%__stx146686146687%_ _%L142098%_)
                                        (_%g142113142138%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx146686146687%_)))))
                                   (let ((_%__kont146688146689%_
                                          (lambda (_%L142245%_ _%L142246%_)
                                            (let ((_%eid142260%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L142246%_)))
                                                  (_%expr142261%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self141963%_
                                                      _%L142245%_))))
                                              (_%lp142051%_
                                               _%L142097%_
                                               (cons (cons _%eid142260%_
                                                           (cons _%expr142261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind142054%_)
                                               _%check142055%_
                                               _%post142056%_))))
                                         (_%__kont146690146691%_
                                          (lambda (_%L142159%_ _%L142160%_)
                                            (let* ((_%vals142173%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values142175%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals142173%_
                                                     _%L142160%_
                                                     _%L142159%_))
                                                   (_%refs142177%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals142173%_
                                                     _%L142160%_))
                                                   (_%expr142179%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self141963%_
                                                       _%L142159%_))))
                                              (_%lp142051%_
                                               _%L142097%_
                                               (let ((__tmp147495
                                                      (cons (cons _%vals142173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr142179%_ '()))
                    _%bind142054%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp147494
                                                      (map (lambda (_%e142181142183%_)
                                                             (let* ((_%g142185142194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e142181142183%_)
                            (_%E142187142198%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g142185142194%_
                                        '([eid _])))
                               '#!void))
                            (_%K142188142203%_
                             (lambda (_%eid142201%_)
                               (cons _%eid142201%_ (cons '#!void '())))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g142185142194%_))
                           (let ((_%hd142189142206%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g142185142194%_)))
                                 (_%tl142190142208%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g142185142194%_))))
                             (let ((_%eid142211%_ _%hd142189142206%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _%tl142190142208%_))
                                   (let ((_%tl142192142213%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl142190142208%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _%tl142192142213%_))
                                         (_%K142188142203%_ _%eid142211%_)
                                         (_%E142187142198%_)))
                                   (_%E142187142198%_))))
                           (_%E142187142198%_))))
                   _%refs142177%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp147495
                                                  __tmp147494))
                                               (cons _%check-values142175%_
                                                     _%check142055%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs142177%_
                                                  _%post142056%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx146686146687%_))
                                         (let ((_%e142117142221%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx146686146687%_))))
                                           (let ((_%tl142119142226%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e142117142221%_)))
                                                 (_%hd142118142224%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e142117142221%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd142118142224%_))
                                                 (let ((_%e142120142229%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd142118142224%_))))
                                                   (let ((_%tl142122142234%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e142120142229%_)))
                                                         (_%hd142121142232%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e142120142229%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl142122142234%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl142119142226%_))
                     (let ((_%e142123142237%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142119142226%_))))
                       (let ((_%tl142125142242%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142123142237%_)))
                             (_%hd142124142240%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142123142237%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142125142242%_))
                             (_%__kont146688146689%_
                              _%hd142124142240%_
                              _%hd142121142232%_)
                             (let ()
                               (declare (not safe))
                               (_%g142113142138%_)))))
                     (let () (declare (not safe)) (_%g142113142138%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl142119142226%_))
                     (let ((_%e142131142151%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142119142226%_))))
                       (let ((_%tl142133142156%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142131142151%_)))
                             (_%hd142132142154%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142131142151%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142133142156%_))
                             (_%__kont146690146691%_
                              _%hd142132142154%_
                              _%hd142118142224%_)
                             (let ()
                               (declare (not safe))
                               (_%g142113142138%_)))))
                     (let () (declare (not safe)) (_%g142113142138%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl142119142226%_))
                                                     (let ((_%e142131142151%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl142119142226%_))))
                                                       (let ((_%tl142133142156%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e142131142151%_)))
                     (_%hd142132142154%_
                      (let () (declare (not safe)) (##car _%e142131142151%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl142133142156%_))
                     (_%__kont146690146691%_
                      _%hd142132142154%_
                      _%hd142118142224%_)
                     (let () (declare (not safe)) (_%g142113142138%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g142113142138%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g142113142138%_)))))))
                              (_%__kont146734146735%_
                               (lambda ()
                                 (let* ((_%body142077%_
                                         (if _%compiled-body?141965%_
                                             _%body142049%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self141963%_
                                                _%body142049%_))))
                                        (_%body142079%_
                                         (_%generate-values-post141970%_
                                          _%post142056%_
                                          _%body142077%_))
                                        (_%body142081%_
                                         (_%generate-values-check141969%_
                                          _%check142055%_
                                          _%body142079%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind142054%_)
                                               (cons _%body142081%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx146730146731%_))
                              (let ((_%e142063142089%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx146730146731%_))))
                                (let ((_%tl142065142094%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142063142089%_)))
                                      (_%hd142064142092%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142063142089%_))))
                                  (_%__kont146732146733%_
                                   _%tl142065142094%_
                                   _%hd142064142092%_)))
                              (_%__kont146734146735%_)))))))
                 (_%generate-values-check141969%_
                  (lambda (_%check142045%_ _%body142046%_)
                    (cons 'begin
                          (let ((__tmp147497 (cons _%body142046%_ '()))
                                (__tmp147496 (reverse _%check142045%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp147497 __tmp147496)))))
                 (_%generate-values-post141970%_
                  (lambda (_%post142038%_ _%body142039%_)
                    (cons 'begin
                          (let ((__tmp147501 (cons _%body142039%_ '()))
                                (__tmp147498
                                 (let ((__tmp147500
                                        (lambda (_%g142040142042%_)
                                          (cons 'set! _%g142040142042%_)))
                                       (__tmp147499 (reverse _%post142038%_)))
                                   (declare (not safe))
                                   (##map __tmp147500 __tmp147499))))
                            (declare (not safe))
                            (__foldr1 cons __tmp147501 __tmp147498))))))
          (let* ((_%g141972141989%_
                  (lambda (_%g141973141986%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141973141986%_))))
                 (_%g141971142035%_
                  (lambda (_%g141973141992%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141973141992%_))
                        (let ((_%e141976141994%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141973141992%_))))
                          (let ((_%hd141977141997%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141976141994%_)))
                                (_%tl141978141999%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141976141994%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141978141999%_))
                                (let ((_%e141979142002%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141978141999%_))))
                                  (let ((_%hd141980142005%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141979142002%_)))
                                        (_%tl141981142007%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141979142002%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141981142007%_))
                                        (let ((_%e141982142010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141981142007%_))))
                                          (let ((_%hd141983142013%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141982142010%_)))
                                                (_%tl141984142015%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141982142010%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141984142015%_))
                                                ((lambda (_%L142018%_
                                                          _%L142019%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L142019%_)
                                                       (_%generate-simple141967%_
                                                        _%L142019%_
                                                        _%L142018%_)
                                                       (_%generate-values141968%_
                                                        _%L142019%_
                                                        _%L142018%_)))
                                                 _%hd141983142013%_
                                                 _%hd141980142005%_)
                                                (_%g141972141989%_
                                                 _%g141973141992%_))))
                                        (_%g141972141989%_
                                         _%g141973141992%_))))
                                (_%g141972141989%_ _%g141973141992%_))))
                        (_%g141972141989%_ _%g141973141992%_)))))
            (_%g141971142035%_ _%stx141964%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self142275%_ _%stx142276%_)
        (let ((_%compiled-body?142278%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self142275%_
           _%stx142276%_
           _%compiled-body?142278%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g147503_
        (let ((_g147502_ (let () (declare (not safe)) (##length _g147503_))))
          (cond ((let () (declare (not safe)) (##fx= _g147502_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g147503_))
                ((let () (declare (not safe)) (##fx= _g147502_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g147503_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g147503_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self141544%_ _%stx141545%_)
        (letrec ((_%generate-values141547%_
                  (lambda (_%hd141790%_ _%body141791%_)
                    (let _%lp141793%_ ((_%rest141795%_ _%hd141790%_)
                                       (_%bind141796%_ '()))
                      (let* ((_%rest141797141805%_ _%rest141795%_)
                             (_%else141799141816%_
                              (lambda ()
                                (let ((_%bind141813%_ (reverse _%bind141796%_))
                                      (_%body141814%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self141544%_
                                          _%body141791%_))))
                                  (cons 'letrec*
                                        (cons _%bind141813%_
                                              (cons _%body141814%_ '()))))))
                             (_%K141801141950%_
                              (lambda (_%rest141819%_ _%hd-bind141820%_)
                                (let* ((_%__stx146744146745%_
                                        _%hd-bind141820%_)
                                       (_%g141823141848%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx146744146745%_)))))
                                  (let ((_%__kont146746146747%_
                                         (lambda (_%L141929%_ _%L141930%_)
                                           (let ((_%eid141944%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L141930%_)))
                                                 (_%expr141945%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self141544%_
                                                     _%L141929%_))))
                                             (_%lp141793%_
                                              _%rest141819%_
                                              (cons (cons _%eid141944%_
                                                          (cons _%expr141945%_
                                                                '()))
                                                    _%bind141796%_)))))
                                        (_%__kont146748146749%_
                                         (lambda (_%L141869%_ _%L141870%_)
                                           (let* ((_%vals141889%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp141891%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values141893%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp141891%_
                                                    _%L141870%_
                                                    _%L141869%_))
                                                  (_%refs141895%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals141889%_
                                                    _%L141870%_))
                                                  (_%expr141897%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self141544%_
                                                      _%L141869%_))))
                                             (_%lp141793%_
                                              _%rest141819%_
                                              (let ((__tmp147504
                                                     (cons (cons _%vals141889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp141891%_
                                                       (cons _%expr141897%_
                                                             '()))
                                                 '())
                                           (cons _%check-values141893%_
                                                 (cons _%tmp141891%_ '()))))
                               '()))
                   _%bind141796%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp147504
                                                 _%refs141895%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx146744146745%_))
                                        (let ((_%e141827141905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx146744146745%_))))
                                          (let ((_%tl141829141910%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141827141905%_)))
                                                (_%hd141828141908%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141827141905%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141828141908%_))
                                                (let ((_%e141830141913%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141828141908%_))))
                                                  (let ((_%tl141832141918%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141830141913%_)))
                                                        (_%hd141831141916%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141830141913%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl141832141918%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141829141910%_))
                                                            (let ((_%e141833141921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141829141910%_))))
                      (let ((_%tl141835141926%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141833141921%_)))
                            (_%hd141834141924%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141833141921%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141835141926%_))
                            (_%__kont146746146747%_
                             _%hd141834141924%_
                             _%hd141831141916%_)
                            (let ()
                              (declare (not safe))
                              (_%g141823141848%_)))))
                    (let () (declare (not safe)) (_%g141823141848%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl141829141910%_))
                    (let ((_%e141841141861%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141829141910%_))))
                      (let ((_%tl141843141866%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141841141861%_)))
                            (_%hd141842141864%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141841141861%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141843141866%_))
                            (_%__kont146748146749%_
                             _%hd141842141864%_
                             _%hd141828141908%_)
                            (let ()
                              (declare (not safe))
                              (_%g141823141848%_)))))
                    (let () (declare (not safe)) (_%g141823141848%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl141829141910%_))
                                                    (let ((_%e141841141861%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl141829141910%_))))
                                                      (let ((_%tl141843141866%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e141841141861%_)))
                    (_%hd141842141864%_
                     (let () (declare (not safe)) (##car _%e141841141861%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl141843141866%_))
                    (_%__kont146748146749%_
                     _%hd141842141864%_
                     _%hd141828141908%_)
                    (let () (declare (not safe)) (_%g141823141848%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g141823141848%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g141823141848%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest141797141805%_))
                            (let ((_%hd141802141953%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest141797141805%_)))
                                  (_%tl141803141955%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest141797141805%_))))
                              (let* ((_%hd-bind141958%_ _%hd141802141953%_)
                                     (_%rest141960%_ _%tl141803141955%_))
                                (_%K141801141950%_
                                 _%rest141960%_
                                 _%hd-bind141958%_)))
                            (_%else141799141816%_))))))
                 (_%generate-letrec?141548%_
                  (lambda (_%hd141680%_)
                    (let _%lp141682%_ ((_%rest141684%_ _%hd141680%_))
                      (let* ((_%rest141685141693%_ _%rest141684%_)
                             (_%else141687141701%_ (lambda () '#t))
                             (_%K141689141778%_
                              (lambda (_%rest141704%_ _%hd-bind141705%_)
                                (let* ((_%g141707141724%_
                                        (lambda (_%g141708141721%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g141708141721%_))))
                                       (_%g141706141775%_
                                        (lambda (_%g141708141727%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g141708141727%_))
                                              (let ((_%e141711141729%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g141708141727%_))))
                                                (let ((_%hd141712141732%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141711141729%_)))
                                                      (_%tl141713141734%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141711141729%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd141712141732%_))
                                                      (let ((_%e141714141737%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd141712141732%_))))
                (let ((_%hd141715141740%_
                       (let () (declare (not safe)) (##car _%e141714141737%_)))
                      (_%tl141716141742%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e141714141737%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141716141742%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141713141734%_))
                          (let ((_%e141717141745%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141713141734%_))))
                            (let ((_%hd141718141748%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141717141745%_)))
                                  (_%tl141719141750%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141717141745%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl141719141750%_))
                                  ((lambda (_%L141753%_ _%L141754%_)
                                     (if (_%is-lambda-expr?141549%_
                                          _%L141753%_)
                                         (_%lp141682%_ _%rest141704%_)
                                         '#f))
                                   _%hd141718141748%_
                                   _%hd141715141740%_)
                                  (_%g141707141724%_ _%g141708141727%_))))
                          (_%g141707141724%_ _%g141708141727%_))
                      (_%g141707141724%_ _%g141708141727%_))))
              (_%g141707141724%_ _%g141708141727%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141707141724%_
                                               _%g141708141727%_)))))
                                  (_%g141706141775%_ _%hd-bind141705%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest141685141693%_))
                            (let ((_%hd141690141781%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest141685141693%_)))
                                  (_%tl141691141783%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest141685141693%_))))
                              (let* ((_%hd-bind141786%_ _%hd141690141781%_)
                                     (_%rest141788%_ _%tl141691141783%_))
                                (_%K141689141778%_
                                 _%rest141788%_
                                 _%hd-bind141786%_)))
                            (_%else141687141701%_))))))
                 (_%is-lambda-expr?141549%_
                  (lambda (_%expr141617%_)
                    (let* ((_%__stx146788146789%_ _%expr141617%_)
                           (_%g141620141634%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx146788146789%_)))))
                      (let ((_%__kont146790146791%_
                             (lambda (_%L141662%_ _%L141663%_) '#t))
                            (_%__kont146792146793%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx146788146789%_))
                            (let ((_%e141624141646%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx146788146789%_))))
                              (let ((_%tl141626141651%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141624141646%_)))
                                    (_%hd141625141649%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141624141646%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141625141649%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd141625141649%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141626141651%_))
                                            (let ((_%e141627141654%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141626141651%_))))
                                              (let ((_%tl141629141659%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141627141654%_)))
                                                    (_%hd141628141657%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141627141654%_))))
                                                (_%__kont146790146791%_
                                                 _%tl141629141659%_
                                                 _%hd141628141657%_)))
                                            (_%__kont146792146793%_))
                                        (_%__kont146792146793%_))
                                    (_%__kont146792146793%_))))
                            (_%__kont146792146793%_)))))))
          (let* ((_%g141551141568%_
                  (lambda (_%g141552141565%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141552141565%_))))
                 (_%g141550141614%_
                  (lambda (_%g141552141571%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141552141571%_))
                        (let ((_%e141555141573%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141552141571%_))))
                          (let ((_%hd141556141576%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141555141573%_)))
                                (_%tl141557141578%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141555141573%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141557141578%_))
                                (let ((_%e141558141581%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141557141578%_))))
                                  (let ((_%hd141559141584%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141558141581%_)))
                                        (_%tl141560141586%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141558141581%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141560141586%_))
                                        (let ((_%e141561141589%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141560141586%_))))
                                          (let ((_%hd141562141592%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141561141589%_)))
                                                (_%tl141563141594%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141561141589%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141563141594%_))
                                                ((lambda (_%L141597%_
                                                          _%L141598%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L141598%_)
                                                       (if (_%generate-letrec?141548%_
                                                            _%L141598%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self141544%_
                                                            'letrec
                                                            _%L141598%_
                                                            _%L141597%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self141544%_
                                                            'letrec*
                                                            _%L141598%_
                                                            _%L141597%_
                                                            '#f))
                                                       (_%generate-values141547%_
                                                        _%L141598%_
                                                        _%L141597%_)))
                                                 _%hd141562141592%_
                                                 _%hd141559141584%_)
                                                (_%g141551141568%_
                                                 _%g141552141571%_))))
                                        (_%g141551141568%_
                                         _%g141552141571%_))))
                                (_%g141551141568%_ _%g141552141571%_))))
                        (_%g141551141568%_ _%g141552141571%_)))))
            (_%g141550141614%_ _%stx141545%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd141481%_)
        (let _%lp141483%_ ((_%rest141485%_ _%hd141481%_))
          (let* ((_%rest141486141502%_ _%rest141485%_)
                 (_%else141489141510%_ (lambda () '#f)))
            (let ((_%K141492141523%_
                   (lambda (_%rest141521%_) (_%lp141483%_ _%rest141521%_)))
                  (_%K141491141515%_ (lambda () '#t)))
              (let ((_%try-match141488141518%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest141486141502%_))
                           (_%K141491141515%_)
                           (_%else141489141510%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest141486141502%_))
                    (let ((_%tl141494141528%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest141486141502%_)))
                          (_%hd141493141526%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest141486141502%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd141493141526%_))
                          (let ((_%tl141496141533%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd141493141526%_)))
                                (_%hd141495141531%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd141493141526%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd141495141531%_))
                                (let ((_%tl141500141536%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd141495141531%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl141500141536%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl141496141533%_))
                                          (let ((_%tl141498141539%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl141496141533%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl141498141539%_))
                                                (let ((_%rest141542%_
                                                       _%tl141494141528%_))
                                                  (_%lp141483%_
                                                   _%rest141542%_))
                                                (_%else141489141510%_)))
                                          (_%else141489141510%_))
                                      (_%else141489141510%_)))
                                (_%else141489141510%_)))
                          (_%else141489141510%_)))
                    (_%try-match141488141518%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self141392%_
               _%form141393%_
               _%hd141394%_
               _%body141395%_
               _%compiled-body?141396%_)
        (letrec ((_%generate1141398%_
                  (lambda (_%bind141437%_)
                    (let* ((_%bind141438141449%_ _%bind141437%_)
                           (_%E141440141453%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind141438141449%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K141441141459%_
                            (lambda (_%expr141456%_ _%id141457%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id141457%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self141392%_
                                             _%expr141456%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind141438141449%_))
                          (let ((_%hd141442141462%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind141438141449%_)))
                                (_%tl141443141464%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind141438141449%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd141442141462%_))
                                (let ((_%hd141446141467%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd141442141462%_)))
                                      (_%tl141447141469%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd141442141462%_))))
                                  (let ((_%id141472%_ _%hd141446141467%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl141447141469%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl141443141464%_))
                                            (let ((_%hd141444141474%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl141443141464%_)))
                                                  (_%tl141445141476%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl141443141464%_))))
                                              (let ((_%expr141479%_
                                                     _%hd141444141474%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl141445141476%_))
                                                    (_%K141441141459%_
                                                     _%expr141479%_
                                                     _%id141472%_)
                                                    (_%E141440141453%_))))
                                            (_%E141440141453%_))
                                        (_%E141440141453%_))))
                                (_%E141440141453%_)))
                          (_%E141440141453%_))))))
          (let* ((_%bind141400%_ (map _%generate1141398%_ _%hd141394%_))
                 (_%body141402%_
                  (if _%compiled-body?141396%_
                      _%body141395%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self141392%_ _%body141395%_))))
                 (_%body141434%_
                  (let* ((_%body141403141411%_ _%body141402%_)
                         (_%else141405141419%_
                          (lambda () (cons _%body141402%_ '())))
                         (_%K141407141424%_
                          (lambda (_%exprs141422%_) _%exprs141422%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body141403141411%_))
                        (let ((_%hd141408141427%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body141403141411%_)))
                              (_%tl141409141429%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body141403141411%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd141408141427%_ 'begin))
                              (let ((_%exprs141432%_ _%tl141409141429%_))
                                (_%K141407141424%_ _%exprs141432%_))
                              (_%else141405141419%_)))
                        (_%else141405141419%_)))))
            (cons _%form141393%_ (cons _%bind141400%_ _%body141434%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self141292%_ _%stx141293%_)
        (letrec ((_%generate1141295%_
                  (lambda (_%datum141347%_)
                    (if (or (null? _%datum141347%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum141347%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum141347%_))
                            (eof-object? _%datum141347%_))
                        _%datum141347%_
                        (if (uninterned-symbol? _%datum141347%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum141347%_
                               '#t))
                            (if (pair? _%datum141347%_)
                                (cons (_%generate1141295%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum141347%_)))
                                      (_%generate1141295%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum141347%_))))
                                (if (box? _%datum141347%_)
                                    (box (_%generate1141295%_
                                          (unbox _%datum141347%_)))
                                    (if (vector? _%datum141347%_)
                                        (vector-map
                                         _%generate1141295%_
                                         _%datum141347%_)
                                        (if (or (s8vector? _%datum141347%_)
                                                (u8vector? _%datum141347%_)
                                                (s16vector? _%datum141347%_)
                                                (u16vector? _%datum141347%_)
                                                (s32vector? _%datum141347%_)
                                                (u32vector? _%datum141347%_)
                                                (s64vector? _%datum141347%_)
                                                (u64vector? _%datum141347%_)
                                                (f32vector? _%datum141347%_)
                                                (f64vector? _%datum141347%_))
                                            _%datum141347%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx141293%_)))))))))))
          (let* ((_%g141297141310%_
                  (lambda (_%g141298141307%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141298141307%_))))
                 (_%g141296141344%_
                  (lambda (_%g141298141313%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141298141313%_))
                        (let ((_%e141300141315%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141298141313%_))))
                          (let ((_%hd141301141318%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141300141315%_)))
                                (_%tl141302141320%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141300141315%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141302141320%_))
                                (let ((_%e141303141323%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141302141320%_))))
                                  (let ((_%hd141304141326%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141303141323%_)))
                                        (_%tl141305141328%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141303141323%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl141305141328%_))
                                        ((lambda (_%L141331%_)
                                           (cons 'quote
                                                 (cons (_%generate1141295%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L141331%_)))
                                                       '())))
                                         _%hd141304141326%_)
                                        (_%g141297141310%_
                                         _%g141298141313%_))))
                                (_%g141297141310%_ _%g141298141313%_))))
                        (_%g141297141310%_ _%g141298141313%_)))))
            (_%g141296141344%_ _%stx141293%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self140733%_ _%stx140734%_)
        (letrec ((_%compile-call140736%_
                  (lambda (_%rator141025%_ _%rands141026%_)
                    (let ((_%rator141032%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self140733%_
                              _%rator141025%_)))
                          (_%rands141033%_
                           (map (lambda (_%g141027141029%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self140733%_
                                     _%g141027141029%_)))
                                _%rands141026%_)))
                      (let* ((_%__stx146835146836%_ _%rator141032%_)
                             (_%g141036141088%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx146835146836%_)))))
                        (let ((_%__kont146837146838%_
                               (lambda (_%L141212%_
                                        _%L141213%_
                                        _%L141214%_
                                        _%L141215%_)
                                 (if (let ((__tmp147507
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands141033%_)))
                                           (__tmp147505
                                            (length (let ((__tmp147506
                                                           (lambda (_%g141251141254%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g141252141256%_)
                     (cons _%g141251141254%_ _%g141252141256%_))))
              (declare (not safe))
              (__foldr1 __tmp147506 '() _%L141214%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp147507 __tmp147505))
                                     (let* ((_%id141259%_ _%L141215%_)
                                            (_%args141268%_
                                             (let ((__tmp147508
                                                    (lambda (_%g141260141263%_
                                                             _%g141261141265%_)
                                                      (cons _%g141260141263%_
                                                            _%g141261141265%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp147508
                                                '()
                                                _%L141214%_)))
                                            (_%body141277%_
                                             (let ((__tmp147509
                                                    (lambda (_%g141269141272%_
                                                             _%g141270141274%_)
                                                      (cons _%g141269141272%_
                                                            _%g141270141274%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp147509
                                                '()
                                                _%L141213%_)))
                                            (_%init141279%_
                                             (map list
                                                  _%args141268%_
                                                  _%rands141033%_)))
                                       (cons 'let
                                             (cons _%id141259%_
                                                   (cons _%init141279%_
                                                         _%body141277%_))))
                                     (let ((__tmp147510
                                            (let ((__tmp147511
                                                   (lambda (_%g141281141284%_
                                                            _%g141282141286%_)
                                                     (cons _%g141281141284%_
                                                           _%g141282141286%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147511
                                               '()
                                               _%L141214%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx140734%_
                                        __tmp147510
                                        _%rands141033%_)))))
                              (_%__kont146843146844%_
                               (lambda ()
                                 (cons _%rator141032%_ _%rands141033%_))))
                          (let ((_%__match146902146903%_
                                 (lambda (_%e141042141100%_
                                          _%hd141043141103%_
                                          _%tl141044141105%_
                                          _%e141045141108%_
                                          _%hd141046141111%_
                                          _%tl141047141113%_
                                          _%e141048141116%_
                                          _%hd141049141119%_
                                          _%tl141050141121%_
                                          _%e141051141124%_
                                          _%hd141052141127%_
                                          _%tl141053141129%_
                                          _%e141054141132%_
                                          _%hd141055141135%_
                                          _%tl141056141137%_
                                          _%e141057141140%_
                                          _%hd141058141143%_
                                          _%tl141059141145%_
                                          _%e141060141148%_
                                          _%hd141061141151%_
                                          _%tl141062141153%_
                                          _%__splice146839146840%_
                                          _%target141063141156%_
                                          _%tl141065141158%_)
                                   (letrec ((_%loop141066141161%_
                                             (lambda (_%hd141064141164%_
                                                      _%arg141070141166%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd141064141164%_))
                                                   (let ((_%e141067141169%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd141064141164%_))))
                                                     (let ((_%lp-tl141069141174%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e141067141169%_)))
                                                           (_%lp-hd141068141172%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e141067141169%_))))
                                                       (_%loop141066141161%_
                                                        _%lp-tl141069141174%_
                                                        (cons _%lp-hd141068141172%_
                                                              _%arg141070141166%_))))
                                                   (let ((_%arg141071141177%_
                                                          (reverse _%arg141070141166%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl141062141153%_))
                                                         (let ((_%__splice146841146842%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl141062141153%_ '0))))
                   (let ((_%tl141074141182%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice146841146842%_ '1)))
                         (_%target141072141180%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice146841146842%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl141074141182%_))
                         (letrec ((_%loop141075141185%_
                                   (lambda (_%hd141073141188%_
                                            _%body141079141190%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd141073141188%_))
                                         (let ((_%e141076141193%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd141073141188%_))))
                                           (let ((_%lp-tl141078141198%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e141076141193%_)))
                                                 (_%lp-hd141077141196%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e141076141193%_))))
                                             (_%loop141075141185%_
                                              _%lp-tl141078141198%_
                                              (cons _%lp-hd141077141196%_
                                                    _%body141079141190%_))))
                                         (let ((_%body141080141201%_
                                                (reverse _%body141079141190%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl141056141137%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl141050141121%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl141047141113%_))
                                                       (let ((_%e141081141204%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl141047141113%_))))
                 (let ((_%tl141083141209%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e141081141204%_)))
                       (_%hd141082141207%_
                        (let ()
                          (declare (not safe))
                          (##car _%e141081141204%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl141083141209%_))
                       (let ((_%L141212%_ _%hd141082141207%_)
                             (_%L141213%_ _%body141080141201%_)
                             (_%L141214%_ _%arg141071141177%_)
                             (_%L141215%_ _%hd141052141127%_))
                         (if (eq? _%L141215%_ _%L141212%_)
                             (_%__kont146837146838%_
                              _%L141212%_
                              _%L141213%_
                              _%L141214%_
                              _%L141215%_)
                             (_%__kont146843146844%_)))
                       (_%__kont146843146844%_))))
               (_%__kont146843146844%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont146843146844%_))
                                               (_%__kont146843146844%_)))))))
                           (_%loop141075141185%_ _%target141072141180%_ '()))
                         (_%__kont146843146844%_))))
                 (_%__kont146843146844%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop141066141161%_
                                      _%target141063141156%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx146835146836%_))
                                (let ((_%e141042141100%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx146835146836%_))))
                                  (let ((_%tl141044141105%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141042141100%_)))
                                        (_%hd141043141103%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141042141100%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd141043141103%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd141043141103%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl141044141105%_))
                                                (let ((_%e141045141108%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl141044141105%_))))
                                                  (let ((_%tl141047141113%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141045141108%_)))
                                                        (_%hd141046141111%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141045141108%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd141046141111%_))
                                                        (let ((_%e141048141116%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd141046141111%_))))
                  (let ((_%tl141050141121%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141048141116%_)))
                        (_%hd141049141119%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141048141116%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141049141119%_))
                        (let ((_%e141051141124%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141049141119%_))))
                          (let ((_%tl141053141129%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141051141124%_)))
                                (_%hd141052141127%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141051141124%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141053141129%_))
                                (let ((_%e141054141132%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141053141129%_))))
                                  (let ((_%tl141056141137%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141054141132%_)))
                                        (_%hd141055141135%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141054141132%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd141055141135%_))
                                        (let ((_%e141057141140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd141055141135%_))))
                                          (let ((_%tl141059141145%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141057141140%_)))
                                                (_%hd141058141143%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141057141140%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd141058141143%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd141058141143%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141059141145%_))
                                                        (let ((_%e141060141148%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141059141145%_))))
                  (let ((_%tl141062141153%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141060141148%_)))
                        (_%hd141061141151%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141060141148%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd141061141151%_))
                        (let ((_%__splice146839146840%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd141061141151%_
                                  '0))))
                          (let ((_%tl141065141158%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice146839146840%_ '1)))
                                (_%target141063141156%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice146839146840%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141065141158%_))
                                (_%__match146902146903%_
                                 _%e141042141100%_
                                 _%hd141043141103%_
                                 _%tl141044141105%_
                                 _%e141045141108%_
                                 _%hd141046141111%_
                                 _%tl141047141113%_
                                 _%e141048141116%_
                                 _%hd141049141119%_
                                 _%tl141050141121%_
                                 _%e141051141124%_
                                 _%hd141052141127%_
                                 _%tl141053141129%_
                                 _%e141054141132%_
                                 _%hd141055141135%_
                                 _%tl141056141137%_
                                 _%e141057141140%_
                                 _%hd141058141143%_
                                 _%tl141059141145%_
                                 _%e141060141148%_
                                 _%hd141061141151%_
                                 _%tl141062141153%_
                                 _%__splice146839146840%_
                                 _%target141063141156%_
                                 _%tl141065141158%_)
                                (_%__kont146843146844%_))))
                        (_%__kont146843146844%_))))
                (_%__kont146843146844%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont146843146844%_))
                                                (_%__kont146843146844%_))))
                                        (_%__kont146843146844%_))))
                                (_%__kont146843146844%_))))
                        (_%__kont146843146844%_))))
                (_%__kont146843146844%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont146843146844%_))
                                            (_%__kont146843146844%_))
                                        (_%__kont146843146844%_))))
                                (_%__kont146843146844%_)))))))))
          (let* ((_%g140738140761%_
                  (lambda (_%g140739140758%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140739140758%_))))
                 (_%g140737141022%_
                  (lambda (_%g140739140764%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140739140764%_))
                        (let ((_%e140742140766%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140739140764%_))))
                          (let ((_%hd140743140769%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140742140766%_)))
                                (_%tl140744140771%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140742140766%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140744140771%_))
                                (let ((_%e140745140774%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140744140771%_))))
                                  (let ((_%hd140746140777%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140745140774%_)))
                                        (_%tl140747140779%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140745140774%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl140747140779%_))
                                        (let ((_g147512_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl140747140779%_
                                                  '0))))
                                          (begin
                                            (let ((_g147513_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g147512_)
                                                         (##vector-length
                                                          _g147512_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g147513_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g147513_)))
                                            (let ((_%target140748140782%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g147512_
                                                      0)))
                                                  (_%tl140750140784%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g147512_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl140750140784%_))
                                                  (letrec ((_%loop140751140787%_
                                                            (lambda (_%hd140749140790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand140755140792%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd140749140790%_))
                          (let ((_%e140752140795%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd140749140790%_))))
                            (let ((_%lp-hd140753140798%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140752140795%_)))
                                  (_%lp-tl140754140800%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140752140795%_))))
                              (_%loop140751140787%_
                               _%lp-tl140754140800%_
                               (cons _%lp-hd140753140798%_
                                     _%rand140755140792%_))))
                          (let ((_%rand140756140803%_
                                 (reverse _%rand140755140792%_)))
                            ((lambda (_%L140806%_ _%L140807%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call140736%_
                                    _%L140807%_
                                    (let ((__tmp147514
                                           (lambda (_%g140824140827%_
                                                    _%g140825140829%_)
                                             (cons _%g140824140827%_
                                                   _%g140825140829%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp147514 '() _%L140806%_)))
                                   (let* ((_%__stx146951146952%_ _%L140807%_)
                                          (_%g140833140845%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx146951146952%_)))))
                                     (let ((_%__kont146953146954%_
                                            (lambda ()
                                              (let ((_%f140882%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self140733%_
                                                        _%L140807%_))))
                                                (if (and (let ((__tmp147515
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f140882%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp147515))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f140882%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp140884%_ ((_%rest140887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp147517
                                                (lambda (_%g141004141007%_
                                                         _%g141005141009%_)
                                                  (cons _%g141004141007%_
                                                        _%g141005141009%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp147517
                                            '()
                                            _%L140806%_))))
                               (_%bind140889%_ '())
                               (_%args140890%_ '()))
              (let* ((_%rest140891140899%_ _%rest140887%_)
                     (_%else140893140907%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind140889%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f140882%_
                                                      _%args140890%_)
                                                '()))))))
                     (_%K140895140993%_
                      (lambda (_%rest140910%_ _%e140911%_)
                        (let* ((_%__stx146905146906%_ _%e140911%_)
                               (_%g140916140934%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx146905146906%_)))))
                          (let ((_%__kont146907146908%_
                                 (lambda ()
                                   (_%lp140884%_
                                    _%rest140910%_
                                    _%bind140889%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e140911%_))
                                          _%args140890%_))))
                                (_%__kont146909146910%_
                                 (lambda ()
                                   (_%lp140884%_
                                    _%rest140910%_
                                    _%bind140889%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e140911%_))
                                          _%args140890%_))))
                                (_%__kont146911146912%_
                                 (lambda ()
                                   (let ((_%tmp140941%_
                                          (let ((__tmp147516
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp147516))))
                                     (_%lp140884%_
                                      _%rest140910%_
                                      (cons (cons _%tmp140941%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e140911%_))
                                                        '()))
                                            _%bind140889%_)
                                      (cons _%tmp140941%_ _%args140890%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx146905146906%_))
                                (let ((_%e140918140972%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx146905146906%_))))
                                  (let ((_%tl140920140977%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140918140972%_)))
                                        (_%hd140919140975%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140918140972%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd140919140975%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd140919140975%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl140920140977%_))
                                                (let ((_%e140921140980%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl140920140977%_))))
                                                  (let ((_%tl140923140985%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140921140980%_)))
                                                        (_%hd140922140983%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140921140980%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl140923140985%_))
                                                        (_%__kont146907146908%_)
                                                        (_%__kont146911146912%_))))
                                                (_%__kont146911146912%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd140919140975%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl140920140977%_))
                                                    (let ((_%e140927140957%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl140920140977%_))))
                                                      (let ((_%tl140929140962%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e140927140957%_)))
                    (_%hd140928140960%_
                     (let () (declare (not safe)) (##car _%e140927140957%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl140929140962%_))
                    (_%__kont146909146910%_)
                    (_%__kont146911146912%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont146911146912%_))
                                                (_%__kont146911146912%_)))
                                        (_%__kont146911146912%_))))
                                (_%__kont146911146912%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest140891140899%_))
                    (let ((_%hd140896140996%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest140891140899%_)))
                          (_%tl140897140998%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest140891140899%_))))
                      (let* ((_%e141001%_ _%hd140896140996%_)
                             (_%rest141003%_ _%tl140897140998%_))
                        (_%K140895140993%_ _%rest141003%_ _%e141001%_)))
                    (_%else140893140907%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call140736%_
                                                     _%L140807%_
                                                     (let ((__tmp147518
                                                            (lambda (_%g141011141014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g141012141016%_)
                      (cons _%g141011141014%_ _%g141012141016%_))))
               (declare (not safe))
               (__foldr1 __tmp147518 '() _%L140806%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont146955146956%_
                                            (lambda ()
                                              (_%compile-call140736%_
                                               _%L140807%_
                                               (let ((__tmp147519
                                                      (lambda (_%g140851140854%_
                                                               _%g140852140856%_)
                                                        (cons _%g140851140854%_
                                                              _%g140852140856%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp147519
                                                  '()
                                                  _%L140806%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx146951146952%_))
                                           (let ((_%e140835140864%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx146951146952%_))))
                                             (let ((_%tl140837140869%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e140835140864%_)))
                                                   (_%hd140836140867%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e140835140864%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd140836140867%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd140836140867%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl140837140869%_))
                                                           (let ((_%e140838140872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl140837140869%_))))
                     (let ((_%tl140840140877%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e140838140872%_)))
                           (_%hd140839140875%_
                            (let ()
                              (declare (not safe))
                              (##car _%e140838140872%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl140840140877%_))
                           (_%__kont146953146954%_)
                           (_%__kont146955146956%_))))
                   (_%__kont146955146956%_))
               (_%__kont146955146956%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont146955146956%_))))
                                           (_%__kont146955146956%_))))))
                             _%rand140756140803%_
                             _%hd140746140777%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop140751140787%_
                                                     _%target140748140782%_
                                                     '()))
                                                  (_%g140738140761%_
                                                   _%g140739140764%_)))))
                                        (_%g140738140761%_
                                         _%g140739140764%_))))
                                (_%g140738140761%_ _%g140739140764%_))))
                        (_%g140738140761%_ _%g140739140764%_)))))
            (_%g140737141022%_ _%stx140734%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self140476%_ _%stx140477%_)
        (let* ((_%__stx147023147024%_ _%stx140477%_)
               (_%g140480140509%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx147023147024%_)))))
          (let ((_%__kont147025147026%_
                 (lambda (_%L140577%_ _%L140578%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self140476%_
                        _%stx140477%_)
                       (let ((_%f140600%_
                              (let ((__tmp147520
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L140578%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self140476%_
                                 __tmp147520))))
                         (let _%lp140602%_ ((_%rest140605%_
                                             (reverse (let ((__tmp147522
                                                             (lambda (_%g140722140725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g140723140727%_)
                       (cons _%g140722140725%_ _%g140723140727%_))))
                (declare (not safe))
                (__foldr1 __tmp147522 '() _%L140577%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind140607%_ '())
                                            (_%args140608%_ '()))
                           (let* ((_%rest140609140617%_ _%rest140605%_)
                                  (_%else140611140625%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind140607%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f140600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args140608%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K140613140711%_
                                   (lambda (_%rest140628%_ _%e140629%_)
                                     (let* ((_%__stx146977146978%_ _%e140629%_)
                                            (_%g140634140652%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx146977146978%_)))))
                                       (let ((_%__kont146979146980%_
                                              (lambda ()
                                                (_%lp140602%_
                                                 _%rest140628%_
                                                 _%bind140607%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e140629%_))
                                                       _%args140608%_))))
                                             (_%__kont146981146982%_
                                              (lambda ()
                                                (_%lp140602%_
                                                 _%rest140628%_
                                                 _%bind140607%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e140629%_))
                                                       _%args140608%_))))
                                             (_%__kont146983146984%_
                                              (lambda ()
                                                (let ((_%tmp140659%_
                                                       (let ((__tmp147521
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp147521))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp140602%_
                                                   _%rest140628%_
                                                   (cons (cons _%tmp140659%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e140629%_))
                             '()))
                 _%bind140607%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp140659%_
                                                         _%args140608%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx146977146978%_))
                                             (let ((_%e140636140690%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx146977146978%_))))
                                               (let ((_%tl140638140695%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e140636140690%_)))
                                                     (_%hd140637140693%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e140636140690%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd140637140693%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd140637140693%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140638140695%_))
                     (let ((_%e140639140698%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140638140695%_))))
                       (let ((_%tl140641140703%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140639140698%_)))
                             (_%hd140640140701%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140639140698%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140641140703%_))
                             (_%__kont146979146980%_)
                             (_%__kont146983146984%_))))
                     (_%__kont146983146984%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd140637140693%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl140638140695%_))
                         (let ((_%e140645140675%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl140638140695%_))))
                           (let ((_%tl140647140680%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e140645140675%_)))
                                 (_%hd140646140678%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e140645140675%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl140647140680%_))
                                 (_%__kont146981146982%_)
                                 (_%__kont146983146984%_))))
                         (_%__kont146983146984%_))
                     (_%__kont146983146984%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont146983146984%_))))
                                             (_%__kont146983146984%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest140609140617%_))
                                 (let ((_%hd140614140714%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest140609140617%_)))
                                       (_%tl140615140716%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest140609140617%_))))
                                   (let* ((_%e140719%_ _%hd140614140714%_)
                                          (_%rest140721%_ _%tl140615140716%_))
                                     (_%K140613140711%_
                                      _%rest140721%_
                                      _%e140719%_)))
                                 (_%else140611140625%_))))))))
                (_%__kont147029147030%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self140476%_ _%stx140477%_))))
            (let ((_%__match147068147069%_
                   (lambda (_%e140484140521%_
                            _%hd140485140524%_
                            _%tl140486140526%_
                            _%e140487140529%_
                            _%hd140488140532%_
                            _%tl140489140534%_
                            _%e140490140537%_
                            _%hd140491140540%_
                            _%tl140492140542%_
                            _%e140493140545%_
                            _%hd140494140548%_
                            _%tl140495140550%_
                            _%__splice147027147028%_
                            _%target140496140553%_
                            _%tl140498140555%_)
                     (letrec ((_%loop140499140558%_
                               (lambda (_%hd140497140561%_
                                        _%rand140503140563%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd140497140561%_))
                                     (let ((_%e140500140566%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd140497140561%_))))
                                       (let ((_%lp-tl140502140571%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e140500140566%_)))
                                             (_%lp-hd140501140569%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e140500140566%_))))
                                         (_%loop140499140558%_
                                          _%lp-tl140502140571%_
                                          (cons _%lp-hd140501140569%_
                                                _%rand140503140563%_))))
                                     (let ((_%rand140504140574%_
                                            (reverse _%rand140503140563%_)))
                                       (_%__kont147025147026%_
                                        _%rand140504140574%_
                                        _%hd140494140548%_))))))
                       (_%loop140499140558%_ _%target140496140553%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx147023147024%_))
                  (let ((_%e140484140521%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx147023147024%_))))
                    (let ((_%tl140486140526%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140484140521%_)))
                          (_%hd140485140524%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140484140521%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl140486140526%_))
                          (let ((_%e140487140529%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl140486140526%_))))
                            (let ((_%tl140489140534%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140487140529%_)))
                                  (_%hd140488140532%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140487140529%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd140488140532%_))
                                  (let ((_%e140490140537%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd140488140532%_))))
                                    (let ((_%tl140492140542%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140490140537%_)))
                                          (_%hd140491140540%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140490140537%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd140491140540%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd140491140540%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl140492140542%_))
                                                  (let ((_%e140493140545%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl140492140542%_))))
                                                    (let ((_%tl140495140550%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140493140545%_)))
                                                          (_%hd140494140548%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140493140545%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl140495140550%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl140489140534%_))
                      (let ((_%__splice147027147028%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl140489140534%_
                                '0))))
                        (let ((_%tl140498140555%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice147027147028%_ '1)))
                              (_%target140496140553%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice147027147028%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl140498140555%_))
                              (_%__match147068147069%_
                               _%e140484140521%_
                               _%hd140485140524%_
                               _%tl140486140526%_
                               _%e140487140529%_
                               _%hd140488140532%_
                               _%tl140489140534%_
                               _%e140490140537%_
                               _%hd140491140540%_
                               _%tl140492140542%_
                               _%e140493140545%_
                               _%hd140494140548%_
                               _%tl140495140550%_
                               _%__splice147027147028%_
                               _%target140496140553%_
                               _%tl140498140555%_)
                              (_%__kont147029147030%_))))
                      (_%__kont147029147030%_))
                  (_%__kont147029147030%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont147029147030%_))
                                              (_%__kont147029147030%_))
                                          (_%__kont147029147030%_))))
                                  (_%__kont147029147030%_))))
                          (_%__kont147029147030%_))))
                  (_%__kont147029147030%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self140288%_ _%stx140289%_)
        (letrec ((_%simplify140291%_
                  (lambda (_%code140376%_)
                    (let* ((_%code140377140395%_ _%code140376%_)
                           (_%else140379140403%_ (lambda () _%code140376%_))
                           (_%K140381140439%_
                            (lambda (_%expr140406%_ _%test140407%_)
                              (let* ((_%expr140408140416%_ _%expr140406%_)
                                     (_%else140410140424%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test140407%_
                                                    (cons _%expr140406%_
                                                          '())))))
                                     (_%K140412140429%_
                                      (lambda (_%exprs140427%_)
                                        (cons 'and
                                              (cons _%test140407%_
                                                    _%exprs140427%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr140408140416%_))
                                    (let ((_%hd140413140432%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr140408140416%_)))
                                          (_%tl140414140434%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr140408140416%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd140413140432%_ 'and))
                                          (let ((_%exprs140437%_
                                                 _%tl140414140434%_))
                                            (_%K140412140429%_
                                             _%exprs140437%_))
                                          (_%else140410140424%_)))
                                    (_%else140410140424%_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code140377140395%_))
                          (let ((_%hd140382140442%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code140377140395%_)))
                                (_%tl140383140444%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code140377140395%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd140382140442%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl140383140444%_))
                                    (let ((_%hd140384140447%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl140383140444%_)))
                                          (_%tl140385140449%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl140383140444%_))))
                                      (let ((_%test140452%_
                                             _%hd140384140447%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl140385140449%_))
                                            (let ((_%hd140386140454%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl140385140449%_)))
                                                  (_%tl140387140456%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl140385140449%_))))
                                              (let ((_%expr140459%_
                                                     _%hd140386140454%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl140387140456%_))
                                                    (let ((_%hd140388140461%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl140387140456%_)))
                                                          (_%tl140389140463%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl140387140456%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd140388140461%_))
                                                          (let ((_%hd140390140466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd140388140461%_)))
                        (_%tl140391140468%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd140388140461%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd140390140466%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl140391140468%_))
                            (let ((_%hd140392140471%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl140391140468%_)))
                                  (_%tl140393140473%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl140391140468%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd140392140471%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl140393140473%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl140389140463%_))
                                          (_%K140381140439%_
                                           _%expr140459%_
                                           _%test140452%_)
                                          (_%else140379140403%_))
                                      (_%else140379140403%_))
                                  (_%else140379140403%_)))
                            (_%else140379140403%_))
                        (_%else140379140403%_)))
                  (_%else140379140403%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else140379140403%_))))
                                            (_%else140379140403%_))))
                                    (_%else140379140403%_))
                                (_%else140379140403%_)))
                          (_%else140379140403%_))))))
          (let* ((_%g140293140314%_
                  (lambda (_%g140294140311%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140294140311%_))))
                 (_%g140292140373%_
                  (lambda (_%g140294140317%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140294140317%_))
                        (let ((_%e140298140319%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140294140317%_))))
                          (let ((_%hd140299140322%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140298140319%_)))
                                (_%tl140300140324%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140298140319%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140300140324%_))
                                (let ((_%e140301140327%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140300140324%_))))
                                  (let ((_%hd140302140330%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140301140327%_)))
                                        (_%tl140303140332%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140301140327%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140303140332%_))
                                        (let ((_%e140304140335%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140303140332%_))))
                                          (let ((_%hd140305140338%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140304140335%_)))
                                                (_%tl140306140340%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140304140335%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl140306140340%_))
                                                (let ((_%e140307140343%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl140306140340%_))))
                                                  (let ((_%hd140308140346%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140307140343%_)))
                                                        (_%tl140309140348%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140307140343%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl140309140348%_))
                                                        ((lambda (_%L140351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L140352%_
                          _%L140353%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify140291%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self140288%_
                                       _%L140353%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self140288%_
                                             _%L140352%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self140288%_
                                                   _%L140351%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp147523
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self140288%_
                                               _%L140353%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp147523
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self140288%_
                                            _%L140352%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self140288%_
                                                  _%L140351%_))
                                               '()))))))
                 _%hd140308140346%_
                 _%hd140305140338%_
                 _%hd140302140330%_)
                (_%g140293140314%_ _%g140294140317%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g140293140314%_
                                                 _%g140294140317%_))))
                                        (_%g140293140314%_
                                         _%g140294140317%_))))
                                (_%g140293140314%_ _%g140294140317%_))))
                        (_%g140293140314%_ _%g140294140317%_)))))
            (_%g140292140373%_ _%stx140289%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self140236%_ _%stx140237%_)
        (let* ((_%g140239140252%_
                (lambda (_%g140240140249%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140240140249%_))))
               (_%g140238140285%_
                (lambda (_%g140240140255%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140240140255%_))
                      (let ((_%e140242140257%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140240140255%_))))
                        (let ((_%hd140243140260%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140242140257%_)))
                              (_%tl140244140262%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140242140257%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140244140262%_))
                              (let ((_%e140245140265%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140244140262%_))))
                                (let ((_%hd140246140268%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140245140265%_)))
                                      (_%tl140247140270%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140245140265%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl140247140270%_))
                                      ((lambda (_%L140273%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L140273%_)))
                                       _%hd140246140268%_)
                                      (_%g140239140252%_ _%g140240140255%_))))
                              (_%g140239140252%_ _%g140240140255%_))))
                      (_%g140239140252%_ _%g140240140255%_)))))
          (_%g140238140285%_ _%stx140237%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self140168%_ _%stx140169%_)
        (let* ((_%g140171140188%_
                (lambda (_%g140172140185%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140172140185%_))))
               (_%g140170140233%_
                (lambda (_%g140172140191%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140172140191%_))
                      (let ((_%e140175140193%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140172140191%_))))
                        (let ((_%hd140176140196%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140175140193%_)))
                              (_%tl140177140198%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140175140193%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140177140198%_))
                              (let ((_%e140178140201%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140177140198%_))))
                                (let ((_%hd140179140204%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140178140201%_)))
                                      (_%tl140180140206%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140178140201%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140180140206%_))
                                      (let ((_%e140181140209%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140180140206%_))))
                                        (let ((_%hd140182140212%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140181140209%_)))
                                              (_%tl140183140214%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140181140209%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140183140214%_))
                                              ((lambda (_%L140217%_
                                                        _%L140218%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L140218%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self140168%_ _%L140217%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140182140212%_
                                               _%hd140179140204%_)
                                              (_%g140171140188%_
                                               _%g140172140191%_))))
                                      (_%g140171140188%_ _%g140172140191%_))))
                              (_%g140171140188%_ _%g140172140191%_))))
                      (_%g140171140188%_ _%g140172140191%_)))))
          (_%g140170140233%_ _%stx140169%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self139979%_ _%stx139980%_)
        (let* ((_%g139982139999%_
                (lambda (_%g139983139996%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139983139996%_))))
               (_%g139981140165%_
                (lambda (_%g139983140002%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139983140002%_))
                      (let ((_%e139986140004%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139983140002%_))))
                        (let ((_%hd139987140007%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139986140004%_)))
                              (_%tl139988140009%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139986140004%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139988140009%_))
                              (let ((_%e139989140012%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139988140009%_))))
                                (let ((_%hd139990140015%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139989140012%_)))
                                      (_%tl139991140017%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139989140012%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139991140017%_))
                                      (let ((_%e139992140020%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139991140017%_))))
                                        (let ((_%hd139993140023%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139992140020%_)))
                                              (_%tl139994140025%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139992140020%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139994140025%_))
                                              ((lambda (_%L140028%_
                                                        _%L140029%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self139979%_ _%L140028%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self139979%_ _%L140029%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp140044%_ ((_%rest140047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L140029%_ (cons _%L140028%_ '())))
                                (_%bind140049%_ '())
                                (_%args140050%_ '()))
               (let* ((_%rest140051140059%_ _%rest140047%_)
                      (_%else140053140067%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind140049%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args140050%_)
                                                 '()))))))
                      (_%K140055140153%_
                       (lambda (_%rest140070%_ _%e140071%_)
                         (let* ((_%__stx147071147072%_ _%e140071%_)
                                (_%g140076140094%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx147071147072%_)))))
                           (let ((_%__kont147073147074%_
                                  (lambda ()
                                    (_%lp140044%_
                                     _%rest140070%_
                                     _%bind140049%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e140071%_))
                                           _%args140050%_))))
                                 (_%__kont147075147076%_
                                  (lambda ()
                                    (_%lp140044%_
                                     _%rest140070%_
                                     _%bind140049%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e140071%_))
                                           _%args140050%_))))
                                 (_%__kont147077147078%_
                                  (lambda ()
                                    (let ((_%tmp140101%_
                                           (let ((__tmp147524
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp147524))))
                                      (_%lp140044%_
                                       _%rest140070%_
                                       (cons (cons _%tmp140101%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e140071%_))
                                                         '()))
                                             _%bind140049%_)
                                       (cons _%tmp140101%_ _%args140050%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx147071147072%_))
                                 (let ((_%e140078140132%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx147071147072%_))))
                                   (let ((_%tl140080140137%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e140078140132%_)))
                                         (_%hd140079140135%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e140078140132%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd140079140135%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd140079140135%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl140080140137%_))
                                                 (let ((_%e140081140140%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl140080140137%_))))
                                                   (let ((_%tl140083140145%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140081140140%_)))
                                                         (_%hd140082140143%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140081140140%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140083140145%_))
                                                         (_%__kont147073147074%_)
                                                         (_%__kont147077147078%_))))
                                                 (_%__kont147077147078%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd140079140135%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140080140137%_))
                                                     (let ((_%e140087140117%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140080140137%_))))
                                                       (let ((_%tl140089140122%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140087140117%_)))
                     (_%hd140088140120%_
                      (let () (declare (not safe)) (##car _%e140087140117%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140089140122%_))
                     (_%__kont147075147076%_)
                     (_%__kont147077147078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont147077147078%_))
                                                 (_%__kont147077147078%_)))
                                         (_%__kont147077147078%_))))
                                 (_%__kont147077147078%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest140051140059%_))
                     (let ((_%hd140056140156%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest140051140059%_)))
                           (_%tl140057140158%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest140051140059%_))))
                       (let* ((_%e140161%_ _%hd140056140156%_)
                              (_%rest140163%_ _%tl140057140158%_))
                         (_%K140055140153%_ _%rest140163%_ _%e140161%_)))
                     (_%else140053140067%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139993140023%_
                                               _%hd139990140015%_)
                                              (_%g139982139999%_
                                               _%g139983140002%_))))
                                      (_%g139982139999%_ _%g139983140002%_))))
                              (_%g139982139999%_ _%g139983140002%_))))
                      (_%g139982139999%_ _%g139983140002%_)))))
          (_%g139981140165%_ _%stx139980%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self139790%_ _%stx139791%_)
        (let* ((_%g139793139810%_
                (lambda (_%g139794139807%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139794139807%_))))
               (_%g139792139976%_
                (lambda (_%g139794139813%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139794139813%_))
                      (let ((_%e139797139815%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139794139813%_))))
                        (let ((_%hd139798139818%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139797139815%_)))
                              (_%tl139799139820%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139797139815%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139799139820%_))
                              (let ((_%e139800139823%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139799139820%_))))
                                (let ((_%hd139801139826%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139800139823%_)))
                                      (_%tl139802139828%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139800139823%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139802139828%_))
                                      (let ((_%e139803139831%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139802139828%_))))
                                        (let ((_%hd139804139834%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139803139831%_)))
                                              (_%tl139805139836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139803139831%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139805139836%_))
                                              ((lambda (_%L139839%_
                                                        _%L139840%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self139790%_ _%L139839%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self139790%_ _%L139840%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp139855%_ ((_%rest139858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L139840%_ (cons _%L139839%_ '())))
                                (_%bind139860%_ '())
                                (_%args139861%_ '()))
               (let* ((_%rest139862139870%_ _%rest139858%_)
                      (_%else139864139878%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind139860%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args139861%_)
                                                 '()))))))
                      (_%K139866139964%_
                       (lambda (_%rest139881%_ _%e139882%_)
                         (let* ((_%__stx147117147118%_ _%e139882%_)
                                (_%g139887139905%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx147117147118%_)))))
                           (let ((_%__kont147119147120%_
                                  (lambda ()
                                    (_%lp139855%_
                                     _%rest139881%_
                                     _%bind139860%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e139882%_))
                                           _%args139861%_))))
                                 (_%__kont147121147122%_
                                  (lambda ()
                                    (_%lp139855%_
                                     _%rest139881%_
                                     _%bind139860%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e139882%_))
                                           _%args139861%_))))
                                 (_%__kont147123147124%_
                                  (lambda ()
                                    (let ((_%tmp139912%_
                                           (let ((__tmp147525
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp147525))))
                                      (_%lp139855%_
                                       _%rest139881%_
                                       (cons (cons _%tmp139912%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e139882%_))
                                                         '()))
                                             _%bind139860%_)
                                       (cons _%tmp139912%_ _%args139861%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx147117147118%_))
                                 (let ((_%e139889139943%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx147117147118%_))))
                                   (let ((_%tl139891139948%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e139889139943%_)))
                                         (_%hd139890139946%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e139889139943%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd139890139946%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd139890139946%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl139891139948%_))
                                                 (let ((_%e139892139951%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl139891139948%_))))
                                                   (let ((_%tl139894139956%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139892139951%_)))
                                                         (_%hd139893139954%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139892139951%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl139894139956%_))
                                                         (_%__kont147119147120%_)
                                                         (_%__kont147123147124%_))))
                                                 (_%__kont147123147124%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd139890139946%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl139891139948%_))
                                                     (let ((_%e139898139928%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl139891139948%_))))
                                                       (let ((_%tl139900139933%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e139898139928%_)))
                     (_%hd139899139931%_
                      (let () (declare (not safe)) (##car _%e139898139928%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl139900139933%_))
                     (_%__kont147121147122%_)
                     (_%__kont147123147124%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont147123147124%_))
                                                 (_%__kont147123147124%_)))
                                         (_%__kont147123147124%_))))
                                 (_%__kont147123147124%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest139862139870%_))
                     (let ((_%hd139867139967%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest139862139870%_)))
                           (_%tl139868139969%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest139862139870%_))))
                       (let* ((_%e139972%_ _%hd139867139967%_)
                              (_%rest139974%_ _%tl139868139969%_))
                         (_%K139866139964%_ _%rest139974%_ _%e139972%_)))
                     (_%else139864139878%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139804139834%_
                                               _%hd139801139826%_)
                                              (_%g139793139810%_
                                               _%g139794139813%_))))
                                      (_%g139793139810%_ _%g139794139813%_))))
                              (_%g139793139810%_ _%g139794139813%_))))
                      (_%g139793139810%_ _%g139794139813%_)))))
          (_%g139792139976%_ _%stx139791%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self139706%_ _%stx139707%_)
        (let* ((_%g139709139730%_
                (lambda (_%g139710139727%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139710139727%_))))
               (_%g139708139787%_
                (lambda (_%g139710139733%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139710139733%_))
                      (let ((_%e139714139735%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139710139733%_))))
                        (let ((_%hd139715139738%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139714139735%_)))
                              (_%tl139716139740%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139714139735%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139716139740%_))
                              (let ((_%e139717139743%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139716139740%_))))
                                (let ((_%hd139718139746%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139717139743%_)))
                                      (_%tl139719139748%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139717139743%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139719139748%_))
                                      (let ((_%e139720139751%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139719139748%_))))
                                        (let ((_%hd139721139754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139720139751%_)))
                                              (_%tl139722139756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139720139751%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139722139756%_))
                                              (let ((_%e139723139759%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139722139756%_))))
                                                (let ((_%hd139724139762%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139723139759%_)))
                                                      (_%tl139725139764%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139723139759%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl139725139764%_))
                                                      ((lambda (_%L139767%_
                                                                _%L139768%_
                                                                _%L139769%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self139706%_ _%L139767%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self139706%_
                                      _%L139768%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self139706%_
                                            _%L139769%_))
                                         (cons ''#f '()))))))
               _%hd139724139762%_
               _%hd139721139754%_
               _%hd139718139746%_)
              (_%g139709139730%_ _%g139710139733%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139709139730%_
                                               _%g139710139733%_))))
                                      (_%g139709139730%_ _%g139710139733%_))))
                              (_%g139709139730%_ _%g139710139733%_))))
                      (_%g139709139730%_ _%g139710139733%_)))))
          (_%g139708139787%_ _%stx139707%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self139606%_ _%stx139607%_)
        (let* ((_%g139609139634%_
                (lambda (_%g139610139631%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139610139631%_))))
               (_%g139608139703%_
                (lambda (_%g139610139637%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139610139637%_))
                      (let ((_%e139615139639%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139610139637%_))))
                        (let ((_%hd139616139642%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139615139639%_)))
                              (_%tl139617139644%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139615139639%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139617139644%_))
                              (let ((_%e139618139647%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139617139644%_))))
                                (let ((_%hd139619139650%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139618139647%_)))
                                      (_%tl139620139652%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139618139647%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139620139652%_))
                                      (let ((_%e139621139655%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139620139652%_))))
                                        (let ((_%hd139622139658%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139621139655%_)))
                                              (_%tl139623139660%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139621139655%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139623139660%_))
                                              (let ((_%e139624139663%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139623139660%_))))
                                                (let ((_%hd139625139666%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139624139663%_)))
                                                      (_%tl139626139668%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139624139663%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl139626139668%_))
                                                      (let ((_%e139627139671%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl139626139668%_))))
                (let ((_%hd139628139674%_
                       (let () (declare (not safe)) (##car _%e139627139671%_)))
                      (_%tl139629139676%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139627139671%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139629139676%_))
                      ((lambda (_%L139679%_
                                _%L139680%_
                                _%L139681%_
                                _%L139682%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self139606%_
                                        _%L139680%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self139606%_
                                              _%L139679%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self139606%_
                                                    _%L139681%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self139606%_
                                                          _%L139682%_))
                                                       (cons ''#f '())))))))
                       _%hd139628139674%_
                       _%hd139625139666%_
                       _%hd139622139658%_
                       _%hd139619139650%_)
                      (_%g139609139634%_ _%g139610139637%_))))
              (_%g139609139634%_ _%g139610139637%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139609139634%_
                                               _%g139610139637%_))))
                                      (_%g139609139634%_ _%g139610139637%_))))
                              (_%g139609139634%_ _%g139610139637%_))))
                      (_%g139609139634%_ _%g139610139637%_)))))
          (_%g139608139703%_ _%stx139607%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self139522%_ _%stx139523%_)
        (let* ((_%g139525139546%_
                (lambda (_%g139526139543%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139526139543%_))))
               (_%g139524139603%_
                (lambda (_%g139526139549%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139526139549%_))
                      (let ((_%e139530139551%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139526139549%_))))
                        (let ((_%hd139531139554%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139530139551%_)))
                              (_%tl139532139556%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139530139551%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139532139556%_))
                              (let ((_%e139533139559%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139532139556%_))))
                                (let ((_%hd139534139562%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139533139559%_)))
                                      (_%tl139535139564%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139533139559%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139535139564%_))
                                      (let ((_%e139536139567%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139535139564%_))))
                                        (let ((_%hd139537139570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139536139567%_)))
                                              (_%tl139538139572%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139536139567%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139538139572%_))
                                              (let ((_%e139539139575%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139538139572%_))))
                                                (let ((_%hd139540139578%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139539139575%_)))
                                                      (_%tl139541139580%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139539139575%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl139541139580%_))
                                                      ((lambda (_%L139583%_
                                                                _%L139584%_
                                                                _%L139585%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self139522%_ _%L139583%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self139522%_
                                      _%L139584%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self139522%_
                                            _%L139585%_))
                                         (cons ''#f '()))))))
               _%hd139540139578%_
               _%hd139537139570%_
               _%hd139534139562%_)
              (_%g139525139546%_ _%g139526139549%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139525139546%_
                                               _%g139526139549%_))))
                                      (_%g139525139546%_ _%g139526139549%_))))
                              (_%g139525139546%_ _%g139526139549%_))))
                      (_%g139525139546%_ _%g139526139549%_)))))
          (_%g139524139603%_ _%stx139523%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self139422%_ _%stx139423%_)
        (let* ((_%g139425139450%_
                (lambda (_%g139426139447%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139426139447%_))))
               (_%g139424139519%_
                (lambda (_%g139426139453%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139426139453%_))
                      (let ((_%e139431139455%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139426139453%_))))
                        (let ((_%hd139432139458%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139431139455%_)))
                              (_%tl139433139460%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139431139455%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139433139460%_))
                              (let ((_%e139434139463%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139433139460%_))))
                                (let ((_%hd139435139466%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139434139463%_)))
                                      (_%tl139436139468%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139434139463%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139436139468%_))
                                      (let ((_%e139437139471%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139436139468%_))))
                                        (let ((_%hd139438139474%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139437139471%_)))
                                              (_%tl139439139476%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139437139471%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139439139476%_))
                                              (let ((_%e139440139479%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139439139476%_))))
                                                (let ((_%hd139441139482%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139440139479%_)))
                                                      (_%tl139442139484%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139440139479%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl139442139484%_))
                                                      (let ((_%e139443139487%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl139442139484%_))))
                (let ((_%hd139444139490%_
                       (let () (declare (not safe)) (##car _%e139443139487%_)))
                      (_%tl139445139492%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139443139487%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139445139492%_))
                      ((lambda (_%L139495%_
                                _%L139496%_
                                _%L139497%_
                                _%L139498%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self139422%_
                                        _%L139496%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self139422%_
                                              _%L139495%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self139422%_
                                                    _%L139497%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self139422%_
                                                          _%L139498%_))
                                                       (cons ''#f '())))))))
                       _%hd139444139490%_
                       _%hd139441139482%_
                       _%hd139438139474%_
                       _%hd139435139466%_)
                      (_%g139425139450%_ _%g139426139453%_))))
              (_%g139425139450%_ _%g139426139453%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139425139450%_
                                               _%g139426139453%_))))
                                      (_%g139425139450%_ _%g139426139453%_))))
                              (_%g139425139450%_ _%g139426139453%_))))
                      (_%g139425139450%_ _%g139426139453%_)))))
          (_%g139424139519%_ _%stx139423%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self139217%_ _%stx139218%_)
        (let* ((_%g139220139241%_
                (lambda (_%g139221139238%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139221139238%_))))
               (_%g139219139419%_
                (lambda (_%g139221139244%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139221139244%_))
                      (let ((_%e139225139246%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139221139244%_))))
                        (let ((_%hd139226139249%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139225139246%_)))
                              (_%tl139227139251%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139225139246%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139227139251%_))
                              (let ((_%e139228139254%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139227139251%_))))
                                (let ((_%hd139229139257%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139228139254%_)))
                                      (_%tl139230139259%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139228139254%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139230139259%_))
                                      (let ((_%e139231139262%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139230139259%_))))
                                        (let ((_%hd139232139265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139231139262%_)))
                                              (_%tl139233139267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139231139262%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139233139267%_))
                                              (let ((_%e139234139270%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139233139267%_))))
                                                (let ((_%hd139235139273%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139234139270%_)))
                                                      (_%tl139236139275%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139234139270%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl139236139275%_))
                                                      ((lambda (_%L139278%_
                                                                _%L139279%_
                                                                _%L139280%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self139217%_
                                    _%L139278%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self139217%_
                                          _%L139279%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp139298%_ ((_%rest139301%_
                                         (cons _%L139279%_
                                               (cons _%L139278%_ '())))
                                        (_%bind139303%_ '())
                                        (_%args139304%_ '()))
                       (let* ((_%rest139305139313%_ _%rest139301%_)
                              (_%else139307139321%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind139303%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp147526
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp147526 _%args139304%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K139309139407%_
                               (lambda (_%rest139324%_ _%e139325%_)
                                 (let* ((_%__stx147163147164%_ _%e139325%_)
                                        (_%g139330139348%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx147163147164%_)))))
                                   (let ((_%__kont147165147166%_
                                          (lambda ()
                                            (_%lp139298%_
                                             _%rest139324%_
                                             _%bind139303%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e139325%_))
                                                   _%args139304%_))))
                                         (_%__kont147167147168%_
                                          (lambda ()
                                            (_%lp139298%_
                                             _%rest139324%_
                                             _%bind139303%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e139325%_))
                                                   _%args139304%_))))
                                         (_%__kont147169147170%_
                                          (lambda ()
                                            (let ((_%tmp139355%_
                                                   (let ((__tmp147527
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp147527))))
                                              (_%lp139298%_
                                               _%rest139324%_
                                               (cons (cons _%tmp139355%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e139325%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind139303%_)
                                               (cons _%tmp139355%_
                                                     _%args139304%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx147163147164%_))
                                         (let ((_%e139332139386%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx147163147164%_))))
                                           (let ((_%tl139334139391%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e139332139386%_)))
                                                 (_%hd139333139389%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e139332139386%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd139333139389%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd139333139389%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl139334139391%_))
                                                         (let ((_%e139335139394%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl139334139391%_))))
                   (let ((_%tl139337139399%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e139335139394%_)))
                         (_%hd139336139397%_
                          (let ()
                            (declare (not safe))
                            (##car _%e139335139394%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl139337139399%_))
                         (_%__kont147165147166%_)
                         (_%__kont147169147170%_))))
                 (_%__kont147169147170%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd139333139389%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl139334139391%_))
                     (let ((_%e139341139371%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139334139391%_))))
                       (let ((_%tl139343139376%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139341139371%_)))
                             (_%hd139342139374%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139341139371%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139343139376%_))
                             (_%__kont147167147168%_)
                             (_%__kont147169147170%_))))
                     (_%__kont147169147170%_))
                 (_%__kont147169147170%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont147169147170%_))))
                                         (_%__kont147169147170%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest139305139313%_))
                             (let ((_%hd139310139410%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest139305139313%_)))
                                   (_%tl139311139412%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest139305139313%_))))
                               (let* ((_%e139415%_ _%hd139310139410%_)
                                      (_%rest139417%_ _%tl139311139412%_))
                                 (_%K139309139407%_
                                  _%rest139417%_
                                  _%e139415%_)))
                             (_%else139307139321%_))))))
               _%hd139235139273%_
               _%hd139232139265%_
               _%hd139229139257%_)
              (_%g139220139241%_ _%g139221139244%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139220139241%_
                                               _%g139221139244%_))))
                                      (_%g139220139241%_ _%g139221139244%_))))
                              (_%g139220139241%_ _%g139221139244%_))))
                      (_%g139220139241%_ _%g139221139244%_)))))
          (_%g139219139419%_ _%stx139218%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self138996%_ _%stx138997%_)
        (let* ((_%g138999139024%_
                (lambda (_%g139000139021%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139000139021%_))))
               (_%g138998139214%_
                (lambda (_%g139000139027%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139000139027%_))
                      (let ((_%e139005139029%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139000139027%_))))
                        (let ((_%hd139006139032%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139005139029%_)))
                              (_%tl139007139034%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139005139029%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139007139034%_))
                              (let ((_%e139008139037%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139007139034%_))))
                                (let ((_%hd139009139040%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139008139037%_)))
                                      (_%tl139010139042%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139008139037%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139010139042%_))
                                      (let ((_%e139011139045%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139010139042%_))))
                                        (let ((_%hd139012139048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139011139045%_)))
                                              (_%tl139013139050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139011139045%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139013139050%_))
                                              (let ((_%e139014139053%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139013139050%_))))
                                                (let ((_%hd139015139056%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139014139053%_)))
                                                      (_%tl139016139058%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139014139053%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl139016139058%_))
                                                      (let ((_%e139017139061%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl139016139058%_))))
                (let ((_%hd139018139064%_
                       (let () (declare (not safe)) (##car _%e139017139061%_)))
                      (_%tl139019139066%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139017139061%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139019139066%_))
                      ((lambda (_%L139069%_
                                _%L139070%_
                                _%L139071%_
                                _%L139072%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self138996%_
                                            _%L139070%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self138996%_
                                                  _%L139069%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self138996%_
                                                        _%L139071%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp139093%_ ((_%rest139096%_
                                                 (cons _%L139071%_
                                                       (cons _%L139069%_
                                                             (cons _%L139070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind139098%_ '())
                                                (_%args139099%_ '()))
                               (let* ((_%rest139100139108%_ _%rest139096%_)
                                      (_%else139102139116%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind139098%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp147528 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp147528 _%args139099%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K139104139202%_
                                       (lambda (_%rest139119%_ _%e139120%_)
                                         (let* ((_%__stx147209147210%_
                                                 _%e139120%_)
                                                (_%g139125139143%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx147209147210%_)))))
                                           (let ((_%__kont147211147212%_
                                                  (lambda ()
                                                    (_%lp139093%_
                                                     _%rest139119%_
                                                     _%bind139098%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e139120%_))
                                                           _%args139099%_))))
                                                 (_%__kont147213147214%_
                                                  (lambda ()
                                                    (_%lp139093%_
                                                     _%rest139119%_
                                                     _%bind139098%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e139120%_))
                                                           _%args139099%_))))
                                                 (_%__kont147215147216%_
                                                  (lambda ()
                                                    (let ((_%tmp139150%_
                                                           (let ((__tmp147529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp147529))))
              (_%lp139093%_
               _%rest139119%_
               (cons (cons _%tmp139150%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e139120%_))
                                 '()))
                     _%bind139098%_)
               (cons _%tmp139150%_ _%args139099%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx147209147210%_))
                                                 (let ((_%e139127139181%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx147209147210%_))))
                                                   (let ((_%tl139129139186%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139127139181%_)))
                                                         (_%hd139128139184%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139127139181%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd139128139184%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd139128139184%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl139129139186%_))
                         (let ((_%e139130139189%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl139129139186%_))))
                           (let ((_%tl139132139194%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e139130139189%_)))
                                 (_%hd139131139192%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e139130139189%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl139132139194%_))
                                 (_%__kont147211147212%_)
                                 (_%__kont147215147216%_))))
                         (_%__kont147215147216%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd139128139184%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl139129139186%_))
                             (let ((_%e139136139166%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl139129139186%_))))
                               (let ((_%tl139138139171%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e139136139166%_)))
                                     (_%hd139137139169%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e139136139166%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl139138139171%_))
                                     (_%__kont147213147214%_)
                                     (_%__kont147215147216%_))))
                             (_%__kont147215147216%_))
                         (_%__kont147215147216%_)))
                 (_%__kont147215147216%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont147215147216%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest139100139108%_))
                                     (let ((_%hd139105139205%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest139100139108%_)))
                                           (_%tl139106139207%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest139100139108%_))))
                                       (let* ((_%e139210%_ _%hd139105139205%_)
                                              (_%rest139212%_
                                               _%tl139106139207%_))
                                         (_%K139104139202%_
                                          _%rest139212%_
                                          _%e139210%_)))
                                     (_%else139102139116%_))))))
                       _%hd139018139064%_
                       _%hd139015139056%_
                       _%hd139012139048%_
                       _%hd139009139040%_)
                      (_%g138999139024%_ _%g139000139027%_))))
              (_%g138999139024%_ _%g139000139027%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g138999139024%_
                                               _%g139000139027%_))))
                                      (_%g138999139024%_ _%g139000139027%_))))
                              (_%g138999139024%_ _%g139000139027%_))))
                      (_%g138999139024%_ _%g139000139027%_)))))
          (_%g138998139214%_ _%stx138997%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self138835%_ _%stx138836%_)
        (letrec ((_%import-set-template138838%_
                  (lambda (_%in138941%_ _%phi138942%_)
                    (let ((_%iphi138944%_
                           (fx+ _%phi138942%_
                                (##direct-structure-ref
                                 _%in138941%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports138945%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in138941%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp138947%_ ((_%rest138949%_ _%imports138945%_)
                                         (_%r138950%_ '()))
                        (let* ((_%rest138951138959%_ _%rest138949%_)
                               (_%else138953138967%_ (lambda () _%r138950%_))
                               (_%K138955138984%_
                                (lambda (_%rest138970%_ _%in138971%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in138971%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi138944%_))
                                          (_%lp138947%_
                                           _%rest138970%_
                                           (cons _%in138971%_ _%r138950%_))
                                          (_%lp138947%_
                                           _%rest138970%_
                                           _%r138950%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in138971%_
                                             'gx#module-import::t))
                                          (let ((_%iphi138975%_
                                                 (fx+ _%phi138942%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in138971%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi138975%_))
                                                (_%lp138947%_
                                                 _%rest138970%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in138971%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r138950%_))
                                                (_%lp138947%_
                                                 _%rest138970%_
                                                 _%r138950%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in138971%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi138978%_
                                                     (fx+ _%iphi138944%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in138971%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi138978%_))
                                                    (_%lp138947%_
                                                     _%rest138970%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in138971%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r138950%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi138978%_))
                                                        (_%lp138947%_
                                                         _%rest138970%_
                                                         (let ((__tmp147530
                                                                (_%import-set-template138838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in138971%_
                         _%iphi138944%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r138950%_ __tmp147530)))
                (_%lp138947%_ _%rest138970%_ _%r138950%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp138947%_
                                               _%rest138970%_
                                               _%r138950%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest138951138959%_))
                              (let ((_%hd138956138987%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest138951138959%_)))
                                    (_%tl138957138989%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest138951138959%_))))
                                (let* ((_%in138992%_ _%hd138956138987%_)
                                       (_%rest138994%_ _%tl138957138989%_))
                                  (_%K138955138984%_
                                   _%rest138994%_
                                   _%in138992%_)))
                              (_%else138953138967%_))))))))
          (let* ((_%g138840138850%_
                  (lambda (_%g138841138847%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138841138847%_))))
                 (_%g138839138938%_
                  (lambda (_%g138841138853%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138841138853%_))
                        (let ((_%e138843138855%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138841138853%_))))
                          (let ((_%hd138844138858%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138843138855%_)))
                                (_%tl138845138860%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138843138855%_))))
                            ((lambda (_%L138863%_)
                               (let ((_%ht138874%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp138876%_ ((_%rest138878%_
                                                     _%L138863%_)
                                                    (_%loads138879%_ '()))
                                   (letrec ((_%K138881%_
                                             (lambda (_%ctx138931%_
                                                      _%rest138932%_)
                                               (let ((_%id138934%_
                                                      (##structure-ref
                                                       _%ctx138931%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht138874%_
                                                        _%id138934%_))
                                                     (_%lp138876%_
                                                      _%rest138932%_
                                                      _%loads138879%_)
                                                     (let ((_%rt138936%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id138934%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht138874%_
                                                          _%id138934%_
                                                          _%rt138936%_))
                                                       (_%lp138876%_
                                                        _%rest138932%_
                                                        (cons _%rt138936%_
                                                              _%loads138879%_))))))))
                                     (let* ((_%rest138882138890%_
                                             _%rest138878%_)
                                            (_%else138884138902%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp147532
                                                            (lambda (_%g138897138899%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g138897138899%_)))
                   (__tmp147531 (reverse _%loads138879%_)))
               (declare (not safe))
               (##map __tmp147532 __tmp147531)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K138886138919%_
                                             (lambda (_%rest138905%_
                                                      _%in138906%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in138906%_
                                                      'gx#module-context::t))
                                                   (_%K138881%_
                                                    _%in138906%_
                                                    _%rest138905%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in138906%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in138906%_
                               '3
                               '#f
                               '#f)))
                   (_%K138881%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in138906%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest138905%_)
                   (_%lp138876%_ _%rest138905%_ _%loads138879%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in138906%_
                      'gx#import-set::t))
                   (let ((_%phi138911%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in138906%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi138911%_)
                         (_%K138881%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in138906%_
                             '1
                             '#f
                             '#f))
                          _%rest138905%_)
                         (if (fxpositive? _%phi138911%_)
                             (let ((_%deps138915%_
                                    (_%import-set-template138838%_
                                     _%in138906%_
                                     '0)))
                               (_%lp138876%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest138905%_
                                   _%deps138915%_))
                                _%loads138879%_))
                             (_%lp138876%_ _%rest138905%_ _%loads138879%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx138836%_
                      _%in138906%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest138882138890%_))
                                           (let ((_%hd138887138922%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest138882138890%_)))
                                                 (_%tl138888138924%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest138882138890%_))))
                                             (let* ((_%in138927%_
                                                     _%hd138887138922%_)
                                                    (_%rest138929%_
                                                     _%tl138888138924%_))
                                               (_%K138886138919%_
                                                _%rest138929%_
                                                _%in138927%_)))
                                           (_%else138884138902%_)))))))
                             _%tl138845138860%_)))
                        (_%g138840138850%_ _%g138841138853%_)))))
            (_%g138839138938%_ _%stx138836%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self138648%_ _%stx138649%_)
        (letrec ((_%add-lift!138651%_
                  (lambda (_%expr138833%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr138833%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote138652%_
                  (lambda (_%id138830%_ _%marks138831%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id138830%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks138831%_
                                                        '()))))))))
                 (_%generate-simple138653%_
                  (lambda (_%stxq138825%_)
                    (let ((_%gid138827%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid138828%_
                           (gxc#generate-runtime-identifier _%stxq138825%_)))
                      (_%add-lift!138651%_
                       (cons 'define
                             (cons _%gid138827%_
                                   (cons (_%generate-syntax-quote138652%_
                                          _%qid138828%_
                                          ''())
                                         '()))))
                      (let ((__tmp147533
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp147533 _%stxq138825%_ _%gid138827%_))
                      _%gid138827%_)))
                 (_%generate-serialized138654%_
                  (lambda (_%stxq138815%_ _%marks138816%_)
                    (let* ((_%mark-refs138818%_
                            (map _%generate-mark138655%_ _%marks138816%_))
                           (_%gid138820%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid138822%_
                            (gxc#generate-runtime-identifier _%stxq138815%_)))
                      (_%add-lift!138651%_
                       (cons 'define
                             (cons _%gid138820%_
                                   (cons (_%generate-syntax-quote138652%_
                                          _%qid138822%_
                                          (cons 'list _%mark-refs138818%_))
                                         '()))))
                      (let ((__tmp147534
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp147534 _%stxq138815%_ _%gid138820%_))
                      _%gid138820%_)))
                 (_%generate-mark138655%_
                  (lambda (_%mark138800%_)
                    (let ((_%$e138802%_
                           (let ((__tmp147535
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp147535 _%mark138800%_))))
                      (if _%$e138802%_
                          _%$e138802%_
                          (let* ((_%gid138806%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr138808%_
                                  (_%serialize-mark138656%_ _%mark138800%_))
                                 (_%ctx138810%_
                                  (let ((__tmp147536
                                         (##structure-ref
                                          _%mark138800%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp147536)))
                                 (_%ctx-ref138812%_
                                  (if (eq? _%ctx138810%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref138657%_
                                                               _%ctx138810%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp147537
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp147537
                               _%mark138800%_
                               _%gid138806%_))
                            (_%add-lift!138651%_
                             (cons 'define
                                   (cons _%gid138806%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr138808%_ '()))
                   (cons _%ctx-ref138812%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid138806%_)))))
                 (_%serialize-mark138656%_
                  (lambda (_%mark138747%_)
                    (letrec ((_%quote-e138749%_
                              (lambda (_%sym138798%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym138798%_))
                                    _%sym138798%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym138798%_))))))
                      (let* ((_%mark138750138759%_ _%mark138747%_)
                             (_%E138752138763%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark138750138759%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K138753138775%_
                              (lambda (_%trace138766%_
                                       _%phi138767%_
                                       _%ctx138768%_
                                       _%subst138769%_)
                                (let ((_%subs138771%_
                                       (if _%subst138769%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst138769%_))
                                           '())))
                                  (cons _%phi138767%_
                                        (map (lambda (_%pair138773%_)
                                               (cons (_%quote-e138749%_
                                                      (car _%pair138773%_))
                                                     (_%quote-e138749%_
                                                      (cdr _%pair138773%_))))
                                             _%subs138771%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark138750138759%_
                               'gx#expander-mark::t))
                            (let* ((_%e138754138778%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138750138759%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst138781%_ _%e138754138778%_)
                                   (_%e138755138783%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138750138759%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx138786%_ _%e138755138783%_)
                                   (_%e138756138788%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138750138759%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi138791%_ _%e138756138788%_)
                                   (_%e138757138793%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138750138759%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace138796%_ _%e138757138793%_))
                              (_%K138753138775%_
                               _%trace138796%_
                               _%phi138791%_
                               _%ctx138786%_
                               _%subst138781%_))
                            (_%E138752138763%_))))))
                 (_%context-ref138657%_
                  (lambda (_%ctx138734%_)
                    (if (let ((__tmp147538
                               (##structure-ref
                                _%ctx138734%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp147538
                           'gx#module-context::t))
                        (let ((_%ctx-ref138736%_
                               (_%context-ref-nested138659%_ _%ctx138734%_))
                              (_%ctx-origin138737%_
                               (_%context-ref-origin138658%_ _%ctx138734%_))
                              (_%origin138738%_
                               (_%context-ref-origin138658%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin138738%_ _%ctx-origin138737%_)
                              (let ((_%ref138740%_
                                     (_%context-ref-nested138659%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp138742%_ ((_%ref138744%_
                                                    (cdr _%ref138740%_))
                                                   (_%ctx-ref138745%_
                                                    (cdr _%ctx-ref138736%_)))
                                  (if (and (pair? _%ref138744%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref138744%_))
                                                (car _%ctx-ref138745%_)))
                                      (_%lp138742%_
                                       (cdr _%ref138744%_)
                                       (cdr _%ctx-ref138745%_))
                                      (cons '#f _%ctx-ref138745%_))))
                              _%ctx-ref138736%_))
                        (let ((__tmp147539
                               (##structure-ref
                                _%ctx138734%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp147539)))))
                 (_%context-ref-origin138658%_
                  (lambda (_%ctx138726%_)
                    (let _%lp138728%_ ((_%ctx138730%_ _%ctx138726%_))
                      (let ((_%super138732%_
                             (##structure-ref
                              _%ctx138730%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super138732%_
                               'gx#module-context::t))
                            (_%lp138728%_ _%super138732%_)
                            _%ctx138730%_)))))
                 (_%context-ref-nested138659%_
                  (lambda (_%ctx138717%_)
                    (let _%lp138719%_ ((_%ctx138721%_ _%ctx138717%_)
                                       (_%r138722%_ '()))
                      (let ((_%super138724%_
                             (##structure-ref
                              _%ctx138721%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super138724%_
                               'gx#module-context::t))
                            (_%lp138719%_
                             _%super138724%_
                             (cons (car (##structure-ref
                                         _%ctx138721%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r138722%_))
                            (cons (let ((__tmp147540
                                         (##structure-ref
                                          _%ctx138721%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp147540))
                                  _%r138722%_)))))))
          (let* ((_%g138661138674%_
                  (lambda (_%g138662138671%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138662138671%_))))
                 (_%g138660138714%_
                  (lambda (_%g138662138677%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138662138677%_))
                        (let ((_%e138664138679%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138662138677%_))))
                          (let ((_%hd138665138682%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138664138679%_)))
                                (_%tl138666138684%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138664138679%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138666138684%_))
                                (let ((_%e138667138687%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138666138684%_))))
                                  (let ((_%hd138668138690%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138667138687%_)))
                                        (_%tl138669138692%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138667138687%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138669138692%_))
                                        ((lambda (_%L138695%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L138695%_))
                                               (let ((_%$e138708%_
                                                      (let ((__tmp147541
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp147541 _%L138695%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e138708%_
                                                     _%$e138708%_
                                                     (let ((_%marks138712%_
                                                            (##direct-structure-ref
                                                             _%L138695%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks138712%_)
                                                           (_%generate-simple138653%_
                                                            _%L138695%_)
                                                           (_%generate-serialized138654%_
                                                            _%L138695%_
                                                            _%marks138712%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L138695%_))))
                                         _%hd138668138690%_)
                                        (_%g138661138674%_
                                         _%g138662138677%_))))
                                (_%g138661138674%_ _%g138662138677%_))))
                        (_%g138661138674%_ _%g138662138677%_)))))
            (_%g138660138714%_ _%stx138649%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self138580%_ _%stx138581%_)
        (let* ((_%g138583138600%_
                (lambda (_%g138584138597%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138584138597%_))))
               (_%g138582138645%_
                (lambda (_%g138584138603%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138584138603%_))
                      (let ((_%e138587138605%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138584138603%_))))
                        (let ((_%hd138588138608%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138587138605%_)))
                              (_%tl138589138610%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138587138605%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138589138610%_))
                              (let ((_%e138590138613%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138589138610%_))))
                                (let ((_%hd138591138616%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138590138613%_)))
                                      (_%tl138592138618%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138590138613%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138592138618%_))
                                      (let ((_%e138593138621%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138592138618%_))))
                                        (let ((_%hd138594138624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138593138621%_)))
                                              (_%tl138595138626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138593138621%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138595138626%_))
                                              ((lambda (_%L138629%_
                                                        _%L138630%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L138630%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self138580%_ _%L138629%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138594138624%_
                                               _%hd138591138616%_)
                                              (_%g138583138600%_
                                               _%g138584138603%_))))
                                      (_%g138583138600%_ _%g138584138603%_))))
                              (_%g138583138600%_ _%g138584138603%_))))
                      (_%g138583138600%_ _%g138584138603%_)))))
          (_%g138582138645%_ _%stx138581%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self138529%_ _%stx138530%_)
        (let* ((_%g138532138542%_
                (lambda (_%g138533138539%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138533138539%_))))
               (_%g138531138577%_
                (lambda (_%g138533138545%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138533138545%_))
                      (let ((_%e138535138547%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138533138545%_))))
                        (let ((_%hd138536138550%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138535138547%_)))
                              (_%tl138537138552%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138535138547%_))))
                          ((lambda (_%L138555%_)
                             (let* ((_%c-body138569%_
                                     (map (lambda (_%g138564138566%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self138529%_
                                               _%g138564138566%_)))
                                          _%L138555%_))
                                    (_%c-body138574%_
                                     (let ((__tmp147542
                                            (lambda (_%$obj138571%_)
                                              (not (eq? _%$obj138571%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp147542
                                        _%c-body138569%_))))
                               (cons '%#begin _%c-body138574%_)))
                           _%tl138537138552%_)))
                      (_%g138532138542%_ _%g138533138545%_)))))
          (_%g138531138577%_ _%stx138530%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self138434%_ _%stx138435%_)
        (let* ((_%g138437138447%_
                (lambda (_%g138438138444%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138438138444%_))))
               (_%g138436138526%_
                (lambda (_%g138438138450%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138438138450%_))
                      (let ((_%e138440138452%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138438138450%_))))
                        (let ((_%hd138441138455%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138440138452%_)))
                              (_%tl138442138457%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138440138452%_))))
                          ((lambda (_%L138460%_)
                             (let* ((_%phi138470%_
                                     (let ((__tmp147543
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp147543 '1)))
                                    (_%block138472%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self138434%_ 'state))
                                      _%phi138470%_))
                                    (_%compiled138475%_
                                     (let ((__tmp147544
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self138434%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L138460%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp147544
                                        gx#current-expander-phi
                                        _%phi138470%_)))
                                    (_%g138478138488%_
                                     (lambda (_%g138479138485%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g138479138485%_))))
                                    (_%g138477138523%_
                                     (lambda (_%g138479138491%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g138479138491%_))
                                           (let ((_%e138481138493%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g138479138491%_))))
                                             (let ((_%hd138482138496%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e138481138493%_)))
                                                   (_%tl138483138498%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e138481138493%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd138482138496%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd138482138496%_))
                                                       ((lambda (_%L138501%_)
                                                          (let ((_%c-body138518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj138515%_)
                                   (not (eq? _%$obj138515%_ '#!void)))
                                 _%L138501%_)))
                    (if _%block138472%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block138472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body138518%_))
                        (if (null? _%c-body138518%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body138518%_)))))
                _%tl138483138498%_)
               (_%g138478138488%_ _%g138479138491%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g138478138488%_
                                                    _%g138479138491%_))))
                                           (_%g138478138488%_
                                            _%g138479138491%_)))))
                               (_%g138477138523%_ _%compiled138475%_)))
                           _%tl138442138457%_)))
                      (_%g138437138447%_ _%g138438138450%_)))))
          (_%g138436138526%_ _%stx138435%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self138365%_ _%stx138366%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self138365%_ 'state)))
        (let* ((_%g138368138382%_
                (lambda (_%g138369138379%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138369138379%_))))
               (_%g138367138431%_
                (lambda (_%g138369138385%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138369138385%_))
                      (let ((_%e138372138387%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138369138385%_))))
                        (let ((_%hd138373138390%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138372138387%_)))
                              (_%tl138374138392%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138372138387%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138374138392%_))
                              (let ((_%e138375138395%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138374138392%_))))
                                (let ((_%hd138376138398%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138375138395%_)))
                                      (_%tl138377138400%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138375138395%_))))
                                  ((lambda (_%L138403%_ _%L138404%_)
                                     (let ((_%key138417%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L138404%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key138417%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx138366%_
                                              _%L138404%_
                                              _%key138417%_)))
                                       (let* ((_%ctx138419%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L138404%_)))
                                              (_%code138422%_
                                               (let ((__tmp147545
                                                      (lambda ()
                                                        (let ((__tmp147546
                                                               (##structure-ref
                                                                _%ctx138419%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self138365%_
                                                           __tmp147546)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp147545
                                                  gx#current-expander-context
                                                  _%ctx138419%_)))
                                              (_%rt138424%_
                                               (let ((__tmp147547
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp147547
                                                  _%ctx138419%_)))
                                              (_%loader138426%_
                                               (if _%rt138424%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt138424%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid138428%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L138404%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self138365%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid138428%_
                                                     (cons _%code138422%_
                                                           _%loader138426%_))))))
                                   _%tl138377138400%_
                                   _%hd138376138398%_)))
                              (_%g138368138382%_ _%g138369138385%_))))
                      (_%g138368138382%_ _%g138369138385%_)))))
          (_%g138367138431%_ _%stx138366%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx138352%_ _%context-chain138353%_)
        (let _%lp138355%_ ((_%ctx138357%_ _%ctx138352%_) (_%path138358%_ '()))
          (let ((_%super138360%_
                 (##structure-ref _%ctx138357%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super138360%_ _%context-chain138353%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx138357%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path138358%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super138360%_
                       'gx#module-context::t))
                    (_%lp138355%_
                     _%super138360%_
                     (cons (car (##structure-ref
                                 _%ctx138357%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path138358%_))
                    (cons (let ((__tmp147548
                                 (##structure-ref
                                  _%ctx138357%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp147548))
                          _%path138358%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp138345%_ ((_%ctx138347%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r138348%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx138347%_ 'gx#module-context::t))
              (_%lp138345%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx138347%_ '3 '#f '#f))
               (cons _%ctx138347%_ _%r138348%_))
              _%r138348%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self138108%_ _%stx138109%_)
        (letrec* ((_%context-chain138111%_ (gxc#current-context-chain))
                  (_%make-import-spec138112%_
                   (lambda (_%in138281%_)
                     (let* ((_%in138282138294%_ _%in138281%_)
                            (_%E138284138298%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in138282138294%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K138285138308%_
                             (lambda (_%phi138301%_
                                      _%name138302%_
                                      _%src-name138303%_
                                      _%src-phi138304%_
                                      _%src-key138305%_
                                      _%src-ctx138306%_)
                               (cons _%phi138301%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name138302%_)
                                           (cons _%src-phi138304%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name138303%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in138282138294%_
                              'gx#module-import::t))
                           (let ((_%e138286138311%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in138282138294%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e138286138311%_
                                    'gx#module-export::t))
                                 (let* ((_%e138289138314%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e138286138311%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx138317%_ _%e138289138314%_)
                                        (_%e138290138319%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e138286138311%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key138322%_ _%e138290138319%_)
                                        (_%e138291138324%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e138286138311%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi138327%_ _%e138291138324%_)
                                        (_%e138292138329%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e138286138311%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name138332%_ _%e138292138329%_)
                                        (_%e138287138334%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in138282138294%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name138337%_ _%e138287138334%_)
                                        (_%e138288138339%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in138282138294%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi138342%_ _%e138288138339%_))
                                   (_%K138285138308%_
                                    _%phi138342%_
                                    _%name138337%_
                                    _%src-name138332%_
                                    _%src-phi138327%_
                                    _%src-key138322%_
                                    _%src-ctx138317%_))
                                 (_%E138284138298%_)))
                           (_%E138284138298%_)))))
                  (_%make-import-path138113%_
                   (lambda (_%ctx138279%_)
                     (gxc#generate-meta-import-path
                      _%ctx138279%_
                      _%context-chain138111%_)))
                  (_%make-import-spec-in138114%_
                   (lambda (_%ctx138276%_ _%in138277%_)
                     (cons 'spec:
                           (cons (_%make-import-path138113%_ _%ctx138276%_)
                                 (reverse _%in138277%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self138108%_ 'state)))
          (let* ((_%g138116138126%_
                  (lambda (_%g138117138123%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138117138123%_))))
                 (_%g138115138273%_
                  (lambda (_%g138117138129%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138117138129%_))
                        (let ((_%e138119138131%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138117138129%_))))
                          (let ((_%hd138120138134%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138119138131%_)))
                                (_%tl138121138136%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138119138131%_))))
                            ((lambda (_%L138139%_)
                               (let _%lp138150%_ ((_%rest138152%_ _%L138139%_)
                                                  (_%current-src138153%_ '#f)
                                                  (_%current-in138154%_ '())
                                                  (_%r138155%_ '()))
                                 (let* ((_%rest138156138164%_ _%rest138152%_)
                                        (_%else138158138174%_
                                         (lambda ()
                                           (let ((_%r138172%_
                                                  (if _%current-src138153%_
                                                      (cons (_%make-import-spec-in138114%_
                                                             _%current-src138153%_
                                                             _%current-in138154%_)
                                                            _%r138155%_)
                                                      _%r138155%_)))
                                             (cons '%#import
                                                   (reverse _%r138172%_)))))
                                        (_%K138160138261%_
                                         (lambda (_%rest138177%_ _%in138178%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in138178%_
                                                  'gx#module-import::t))
                                               (let* ((_%in138180138187%_
                                                       _%in138178%_)
                                                      (_%E138182138191%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in138180138187%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K138183138199%_
               (lambda (_%src-ctx138194%_)
                 (if (eq? _%current-src138153%_ _%src-ctx138194%_)
                     (_%lp138150%_
                      _%rest138177%_
                      _%current-src138153%_
                      (cons (_%make-import-spec138112%_ _%in138178%_)
                            _%current-in138154%_)
                      _%r138155%_)
                     (if _%current-src138153%_
                         (_%lp138150%_
                          _%rest138177%_
                          _%src-ctx138194%_
                          (cons (_%make-import-spec138112%_ _%in138178%_) '())
                          (cons (_%make-import-spec-in138114%_
                                 _%current-src138153%_
                                 _%current-in138154%_)
                                _%r138155%_))
                         (_%lp138150%_
                          _%rest138177%_
                          _%src-ctx138194%_
                          (cons (_%make-import-spec138112%_ _%in138178%_) '())
                          _%r138155%_)))))
              (_%e138184138202%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in138180138187%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e138184138202%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e138185138205%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e138184138202%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx138208%_ _%e138185138205%_))
               (_%K138183138199%_ _%src-ctx138208%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E138182138191%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in138178%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi138211%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in138178%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src138213%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in138178%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in138253%_
                                                           (let* ((_%g138214138223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path138113%_ _%src138213%_))
                          (_%E138217138227%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g138214138223%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K138219138243%_
                            (lambda (_%path138241%_) _%path138241%_))
                           (_%K138218138233%_
                            (lambda (_%path138231%_)
                              (cons 'in: _%path138231%_))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g138214138223%_))
                           (let ((_%tl138221138248%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g138214138223%_)))
                                 (_%hd138220138246%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g138214138223%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tl138221138248%_))
                                 (let ((_%path138251%_ _%hd138220138246%_))
                                   (_%K138219138243%_ _%path138251%_))
                                 (let ((_%path138236%_ _%g138214138223%_))
                                   (_%K138218138233%_ _%path138236%_))))
                           (let ((_%path138236%_ _%g138214138223%_))
                             (_%K138218138233%_ _%path138236%_))))))
                  (_%r138255%_
                   (if _%current-src138153%_
                       (cons (_%make-import-spec-in138114%_
                              _%current-src138153%_
                              _%current-in138154%_)
                             _%r138155%_)
                       _%r138155%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp138150%_
                                                      _%rest138177%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi138211%_)
                                                                _%src-in138253%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi138211%_
                                    (cons _%src-in138253%_ '()))))
                    _%r138255%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in138178%_
                                                          'gx#module-context::t))
                                                       (let ((_%r138259%_
                                                              (if _%current-src138153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in138114%_
                                 _%current-src138153%_
                                 _%current-in138154%_)
                                _%r138155%_)
                          _%r138155%_)))
                 (_%lp138150%_
                  _%rest138177%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path138113%_ _%in138178%_))
                        _%r138259%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest138156138164%_))
                                       (let ((_%hd138161138264%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest138156138164%_)))
                                             (_%tl138162138266%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest138156138164%_))))
                                         (let* ((_%in138269%_
                                                 _%hd138161138264%_)
                                                (_%rest138271%_
                                                 _%tl138162138266%_))
                                           (_%K138160138261%_
                                            _%rest138271%_
                                            _%in138269%_)))
                                       (_%else138158138174%_)))))
                             _%tl138121138136%_)))
                        (_%g138116138126%_ _%g138117138129%_)))))
            (_%g138115138273%_ _%stx138109%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self137918%_ _%stx137919%_)
        (letrec* ((_%context-chain137921%_ (gxc#current-context-chain))
                  (_%make-import-path137922%_
                   (lambda (_%ctx138106%_)
                     (gxc#generate-meta-import-path
                      _%ctx138106%_
                      _%context-chain137921%_))))
          (let* ((_%g137924137934%_
                  (lambda (_%g137925137931%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137925137931%_))))
                 (_%g137923138103%_
                  (lambda (_%g137925137937%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137925137937%_))
                        (let ((_%e137927137939%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137925137937%_))))
                          (let ((_%hd137928137942%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137927137939%_)))
                                (_%tl137929137944%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137927137939%_))))
                            ((lambda (_%L137947%_)
                               (let _%lp137958%_ ((_%rest137960%_ _%L137947%_)
                                                  (_%r137961%_ '()))
                                 (let* ((_%rest137962137970%_ _%rest137960%_)
                                        (_%else137964137978%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r137961%_))))
                                        (_%K137966138091%_
                                         (lambda (_%rest137981%_ _%out137982%_)
                                           (let* ((_%out137983137996%_
                                                   _%out137982%_)
                                                  (_%E137986138000%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out137983137996%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K137990138070%_
                                                    (lambda (_%name138066%_
                                                             _%phi138067%_
                                                             _%key138068%_)
                                                      (_%lp137958%_
                                                       _%rest137981%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi138067%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key138068%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name138066%_)
                                             '()))))
                     _%r137961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K137987138050%_
                                                    (lambda (_%phi138004%_
                                                             _%src138005%_)
                                                      (let* ((_%out138045%_
                                                              (if _%src138005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g138006138015%_
                                              (_%make-import-path137922%_
                                               _%src138005%_))
                                             (_%E138009138019%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g138006138015%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K138011138035%_
                                               (lambda (_%path138033%_)
                                                 _%path138033%_))
                                              (_%K138010138025%_
                                               (lambda (_%path138023%_)
                                                 (cons 'in: _%path138023%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g138006138015%_))
                                              (let ((_%tl138013138040%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g138006138015%_)))
                                                    (_%hd138012138038%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g138006138015%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl138013138040%_))
                                                    (let ((_%path138043%_
                                                           _%hd138012138038%_))
                                                      (_%K138011138035%_
                                                       _%path138043%_))
                                                    (let ((_%path138028%_
                                                           _%g138006138015%_))
                                                      (_%K138010138025%_
                                                       _%path138028%_))))
                                              (let ((_%path138028%_
                                                     _%g138006138015%_))
                                                (_%K138010138025%_
                                                 _%path138028%_)))))
                                      '()))
                          '#t))
                     (_%out138047%_
                      (if (fxzero? _%phi138004%_)
                          _%out138045%_
                          (cons 'phi:
                                (cons _%phi138004%_
                                      (cons _%out138045%_ '()))))))
                (_%lp137958%_
                 _%rest137981%_
                 (cons _%out138047%_ _%r137961%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match137985138063%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out137983137996%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e137988138053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out137983137996%_
                               '1
                               '#f
                               '#f)))
                           (_%e137989138058%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out137983137996%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src138056%_ _%e137988138053%_)
                            (_%phi138061%_ _%e137989138058%_))
                        (_%K137987138050%_ _%phi138061%_ _%src138056%_)))
                    (_%E137986138000%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out137983137996%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e137991138073%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out137983137996%_
                        '1
                        '#f
                        '#f)))
                    (_%e137992138076%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out137983137996%_
                        '2
                        '#f
                        '#f)))
                    (_%e137993138081%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out137983137996%_
                        '3
                        '#f
                        '#f)))
                    (_%e137994138086%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out137983137996%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key138079%_ _%e137992138076%_)
                     (_%phi138084%_ _%e137993138081%_)
                     (_%name138089%_ _%e137994138086%_))
                 (_%K137990138070%_
                  _%name138089%_
                  _%phi138084%_
                  _%key138079%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match137985138063%_))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest137962137970%_))
                                       (let ((_%hd137967138094%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest137962137970%_)))
                                             (_%tl137968138096%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest137962137970%_))))
                                         (let* ((_%out138099%_
                                                 _%hd137967138094%_)
                                                (_%rest138101%_
                                                 _%tl137968138096%_))
                                           (_%K137966138091%_
                                            _%rest138101%_
                                            _%out138099%_)))
                                       (_%else137964137978%_)))))
                             _%tl137929137944%_)))
                        (_%g137924137934%_ _%g137925137937%_)))))
            (_%g137923138103%_ _%stx137919%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self137879%_ _%stx137880%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self137879%_ 'state)))
        (let* ((_%g137882137892%_
                (lambda (_%g137883137889%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137883137889%_))))
               (_%g137881137915%_
                (lambda (_%g137883137895%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137883137895%_))
                      (let ((_%e137885137897%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137883137895%_))))
                        (let ((_%hd137886137900%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137885137897%_)))
                              (_%tl137887137902%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137885137897%_))))
                          ((lambda (_%L137905%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L137905%_)))
                           _%tl137887137902%_)))
                      (_%g137882137892%_ _%g137883137895%_)))))
          (_%g137881137915%_ _%stx137880%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self137750%_ _%stx137751%_)
        (letrec ((_%generate1137753%_
                  (lambda (_%id137874%_ _%eid137875%_)
                    (let ((_%eid137877%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid137875%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid137877%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx137751%_
                             _%eid137877%_)))
                      (cons (gxc#generate-runtime-identifier _%id137874%_)
                            (cons _%eid137877%_ '()))))))
          (let* ((_%g137755137783%_
                  (lambda (_%g137756137780%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137756137780%_))))
                 (_%g137754137871%_
                  (lambda (_%g137756137786%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137756137786%_))
                        (let ((_%e137759137788%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137756137786%_))))
                          (let ((_%hd137760137791%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137759137788%_)))
                                (_%tl137761137793%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137759137788%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl137761137793%_))
                                (let ((_g147549_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl137761137793%_
                                          '0))))
                                  (begin
                                    (let ((_g147550_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g147549_)
                                                 (##vector-length _g147549_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g147550_ 2)))
                                          (error "Context expects 2 values"
                                                 _g147550_)))
                                    (let ((_%target137762137796%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147549_ 0)))
                                          (_%tl137764137798%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147549_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl137764137798%_))
                                          (letrec ((_%loop137765137801%_
                                                    (lambda (_%hd137763137804%_
                                                             _%eid137769137806%_
                                                             _%id137770137808%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd137763137804%_))
                                                          (let ((_%e137766137811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd137763137804%_))))
                    (let ((_%lp-hd137767137814%_
                           (let ()
                             (declare (not safe))
                             (##car _%e137766137811%_)))
                          (_%lp-tl137768137816%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e137766137811%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd137767137814%_))
                          (let ((_%e137773137819%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd137767137814%_))))
                            (let ((_%hd137774137822%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e137773137819%_)))
                                  (_%tl137775137824%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e137773137819%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl137775137824%_))
                                  (let ((_%e137776137827%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl137775137824%_))))
                                    (let ((_%hd137777137830%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e137776137827%_)))
                                          (_%tl137778137832%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e137776137827%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl137778137832%_))
                                          (_%loop137765137801%_
                                           _%lp-tl137768137816%_
                                           (cons _%hd137777137830%_
                                                 _%eid137769137806%_)
                                           (cons _%hd137774137822%_
                                                 _%id137770137808%_))
                                          (_%g137755137783%_
                                           _%g137756137786%_))))
                                  (_%g137755137783%_ _%g137756137786%_))))
                          (_%g137755137783%_ _%g137756137786%_))))
                  (let ((_%eid137771137835%_ (reverse _%eid137769137806%_))
                        (_%id137772137837%_ (reverse _%id137770137808%_)))
                    ((lambda (_%L137840%_ _%L137841%_)
                       (cons '%#extern
                             (map _%generate1137753%_
                                  (let ((__tmp147551
                                         (lambda (_%g137856137859%_
                                                  _%g137857137861%_)
                                           (cons _%g137856137859%_
                                                 _%g137857137861%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp147551 '() _%L137841%_))
                                  (let ((__tmp147552
                                         (lambda (_%g137863137866%_
                                                  _%g137864137868%_)
                                           (cons _%g137863137866%_
                                                 _%g137864137868%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp147552 '() _%L137840%_)))))
                     _%eid137771137835%_
                     _%id137772137837%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop137765137801%_
                                             _%target137762137796%_
                                             '()
                                             '()))
                                          (_%g137755137783%_
                                           _%g137756137786%_)))))
                                (_%g137755137783%_ _%g137756137786%_))))
                        (_%g137755137783%_ _%g137756137786%_)))))
            (_%g137754137871%_ _%stx137751%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self137540%_ _%stx137541%_)
        (letrec ((_%generate1137543%_
                  (lambda (_%id137745%_)
                    (let ((_%eid137747%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id137745%_)))
                          (_%ident137748%_
                           (gxc#generate-runtime-identifier _%id137745%_)))
                      (cons '%#define-runtime
                            (cons _%ident137748%_ (cons _%eid137747%_ '()))))))
                 (_%generate*137544%_
                  (lambda (_%all137713%_)
                    (let* ((_%all137714137722%_ _%all137713%_)
                           (_%else137716137730%_
                            (lambda () (cons '%#begin _%all137713%_)))
                           (_%K137718137735%_
                            (lambda (_%one137733%_) _%one137733%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all137714137722%_))
                          (let ((_%hd137719137738%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all137714137722%_)))
                                (_%tl137720137740%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all137714137722%_))))
                            (let ((_%one137743%_ _%hd137719137738%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl137720137740%_))
                                  (_%K137718137735%_ _%one137743%_)
                                  (_%else137716137730%_))))
                          (_%else137716137730%_))))))
          (let* ((_%g137546137563%_
                  (lambda (_%g137547137560%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137547137560%_))))
                 (_%g137545137710%_
                  (lambda (_%g137547137566%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137547137566%_))
                        (let ((_%e137550137568%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137547137566%_))))
                          (let ((_%hd137551137571%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137550137568%_)))
                                (_%tl137552137573%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137550137568%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl137552137573%_))
                                (let ((_%e137553137576%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl137552137573%_))))
                                  (let ((_%hd137554137579%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137553137576%_)))
                                        (_%tl137555137581%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137553137576%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl137555137581%_))
                                        (let ((_%e137556137584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl137555137581%_))))
                                          (let ((_%hd137557137587%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e137556137584%_)))
                                                (_%tl137558137589%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e137556137584%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137558137589%_))
                                                ((lambda (_%L137592%_
                                                          _%L137593%_)
                                                   (let _%lp137609%_ ((_%rest137611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L137593%_)
                              (_%r137612%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx147288147289%_
                                                             _%rest137611%_)
                                                            (_%g137617137634%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx147288147289%_)))))
               (let ((_%__kont147290147291%_
                      (lambda (_%L137697%_)
                        (_%lp137609%_ _%L137697%_ _%r137612%_)))
                     (_%__kont147292147293%_
                      (lambda (_%L137670%_ _%L137671%_)
                        (_%lp137609%_
                         _%L137670%_
                         (cons (_%generate1137543%_ _%L137671%_)
                               _%r137612%_))))
                     (_%__kont147294147295%_
                      (lambda (_%L137646%_)
                        (_%generate*137544%_
                         (let ((__tmp147553
                                (cons (_%generate1137543%_ _%L137646%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp147553 _%r137612%_)))))
                     (_%__kont147296147297%_
                      (lambda () (_%generate*137544%_ (reverse _%r137612%_)))))
                 (let ((_%g137615137657%_
                        (lambda ()
                          (let ((_%L137646%_ _%__stx147288147289%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L137646%_))
                                (_%__kont147294147295%_ _%L137646%_)
                                (_%__kont147296147297%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx147288147289%_))
                       (let ((_%e137620137686%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx147288147289%_))))
                         (let ((_%tl137622137691%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e137620137686%_)))
                               (_%hd137621137689%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e137620137686%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd137621137689%_))
                               (let ((_%e137623137694%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd137621137689%_))))
                                 (if (equal? _%e137623137694%_ '#f)
                                     (_%__kont147290147291%_
                                      _%tl137622137691%_)
                                     (_%__kont147292147293%_
                                      _%tl137622137691%_
                                      _%hd137621137689%_)))
                               (_%__kont147292147293%_
                                _%tl137622137691%_
                                _%hd137621137689%_))))
                       (let () (declare (not safe)) (_%g137615137657%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd137557137587%_
                                                 _%hd137554137579%_)
                                                (_%g137546137563%_
                                                 _%g137547137566%_))))
                                        (_%g137546137563%_
                                         _%g137547137566%_))))
                                (_%g137546137563%_ _%g137547137566%_))))
                        (_%g137546137563%_ _%g137547137566%_)))))
            (_%g137545137710%_ _%stx137541%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self137437%_ _%stx137438%_)
        (let* ((_%g137440137457%_
                (lambda (_%g137441137454%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137441137454%_))))
               (_%g137439137537%_
                (lambda (_%g137441137460%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137441137460%_))
                      (let ((_%e137444137462%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137441137460%_))))
                        (let ((_%hd137445137465%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137444137462%_)))
                              (_%tl137446137467%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137444137462%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137446137467%_))
                              (let ((_%e137447137470%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137446137467%_))))
                                (let ((_%hd137448137473%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137447137470%_)))
                                      (_%tl137449137475%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137447137470%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137449137475%_))
                                      (let ((_%e137450137478%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137449137475%_))))
                                        (let ((_%hd137451137481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137450137478%_)))
                                              (_%tl137452137483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137450137478%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137452137483%_))
                                              ((lambda (_%L137486%_
                                                        _%L137487%_)
                                                 (let* ((_%eid137502%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L137487%_)))
                                                        (_%phi137504%_
                                                         (let ((__tmp147554
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp147554 '1)))
                (_%block137506%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self137437%_ 'state))
                  _%phi137504%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g137509137516%_
                                                           (lambda (_%g137510137513%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g137510137513%_))))
                  (_%g137508137534%_
                   (lambda (_%g137510137519%_)
                     ((lambda (_%L137521%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self137437%_ 'state))
                         _%phi137504%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L137521%_ (cons _%L137486%_ '())))))
                      _%g137510137519%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g137508137534%_
                                                      _%eid137502%_))
                                                   (if _%block137506%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block137506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L137487%_)
                                             (cons _%eid137502%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L137487%_)
                           (cons _%eid137502%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137451137481%_
                                               _%hd137448137473%_)
                                              (_%g137440137457%_
                                               _%g137441137460%_))))
                                      (_%g137440137457%_ _%g137441137460%_))))
                              (_%g137440137457%_ _%g137441137460%_))))
                      (_%g137440137457%_ _%g137441137460%_)))))
          (_%g137439137537%_ _%stx137438%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self137369%_ _%stx137370%_)
        (let* ((_%g137372137389%_
                (lambda (_%g137373137386%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137373137386%_))))
               (_%g137371137434%_
                (lambda (_%g137373137392%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137373137392%_))
                      (let ((_%e137376137394%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137373137392%_))))
                        (let ((_%hd137377137397%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137376137394%_)))
                              (_%tl137378137399%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137376137394%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137378137399%_))
                              (let ((_%e137379137402%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137378137399%_))))
                                (let ((_%hd137380137405%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137379137402%_)))
                                      (_%tl137381137407%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137379137402%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137381137407%_))
                                      (let ((_%e137382137410%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137381137407%_))))
                                        (let ((_%hd137383137413%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137382137410%_)))
                                              (_%tl137384137415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137382137410%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137384137415%_))
                                              ((lambda (_%L137418%_
                                                        _%L137419%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L137419%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L137418%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137383137413%_
                                               _%hd137380137405%_)
                                              (_%g137372137389%_
                                               _%g137373137392%_))))
                                      (_%g137372137389%_ _%g137373137392%_))))
                              (_%g137372137389%_ _%g137373137392%_))))
                      (_%g137372137389%_ _%g137373137392%_)))))
          (_%g137371137434%_ _%stx137370%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self137366%_ _%stx137367%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self137366%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx137367%_)
        (gxc#generate-meta-define-values% _%self137366%_ _%stx137367%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self137363%_ _%stx137364%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self137363%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx137364%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp147556 (list)) (__tmp147555 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp147556
         '(src n open blocks)
         __tmp147555
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args137360%_
        (apply make-instance gxc#meta-state::t _%$args137360%_)))
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
      (lambda (_%self136705137344%_ _%ctx137346%_)
        (let* ((_%self137348%_ _%self136705137344%_)
               (_%self137350%_ _%self137348%_))
          (if (let ((__tmp147557
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self137350%_))))
                (declare (not safe))
                (##fx< '4 __tmp147557))
              (begin
                (let ((__tmp147558
                       (let ((__tmp147559
                              (##structure-ref
                               _%ctx137346%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp147559))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self137350%_
                   __tmp147558
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self137350%_ '1 '2 '#f '#f))
                (let ((__tmp147560
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self137350%_
                   __tmp147560
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self137350%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp147561
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self137350%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self137350%_
                       '4
                       __tmp147561))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp147563 (list)) (__tmp147562 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp147563
         '(ctx phi n code)
         __tmp147562
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args137219%_
        (apply make-instance gxc#meta-state-block::t _%$args137219%_)))
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
      (lambda (_%state137178%_ _%phi137179%_)
        (let* ((_%state137180137188%_ _%state137178%_)
               (_%E137182137192%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state137180137188%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K137183137201%_
                (lambda (_%open137195%_ _%n137196%_ _%src137197%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open137195%_ _%phi137179%_))
                      '#f
                      (let ((_%block-ref137199%_
                             (let ((__tmp147564 (number->string _%n137196%_)))
                               (declare (not safe))
                               (##string-append
                                _%src137197%_
                                '"~"
                                __tmp147564))))
                        (##structure-set!
                         _%state137178%_
                         (let () (declare (not safe)) (##fx+ _%n137196%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp147565
                               (let ((__tmp147566
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp147566
                                  _%phi137179%_
                                  _%n137196%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open137195%_ _%phi137179%_ __tmp147565))
                        _%block-ref137199%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state137180137188%_
                 'gxc#meta-state::t))
              (let* ((_%e137184137204%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state137180137188%_
                         '1
                         '#f
                         '#f)))
                     (_%src137207%_ _%e137184137204%_)
                     (_%e137185137209%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state137180137188%_
                         '2
                         '#f
                         '#f)))
                     (_%n137212%_ _%e137185137209%_)
                     (_%e137186137214%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state137180137188%_
                         '3
                         '#f
                         '#f)))
                     (_%open137217%_ _%e137186137214%_))
                (_%K137183137201%_ _%open137217%_ _%n137212%_ _%src137207%_))
              (_%E137182137192%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state137172%_ _%phi137173%_ _%stx137174%_)
        (let ((_%block137176%_
               (let ((__tmp147567
                      (##structure-ref
                       _%state137172%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp147567 _%phi137173%_))))
          (##structure-set!
           _%block137176%_
           (cons _%stx137174%_
                 (##structure-ref
                  _%block137176%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state137166%_)
        (##structure-set!
         _%state137166%_
         (let ((__tmp147570
                (lambda (_%_137168%_ _%block137169%_ _%r137170%_)
                  (cons _%block137169%_ _%r137170%_)))
               (__tmp147569
                (##structure-ref _%state137166%_ '4 gxc#meta-state::t '#f))
               (__tmp147568
                (##structure-ref _%state137166%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp147570 __tmp147569 __tmp147568))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state137166%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state137118%_)
        (gxc#meta-state-end-phi! _%state137118%_)
        (let ((__tmp147572
               (lambda (_%block137120%_ _%r137121%_)
                 (let* ((_%block137122137131%_ _%block137120%_)
                        (_%E137124137135%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block137122137131%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K137125137143%_
                         (lambda (_%code137138%_
                                  _%n137139%_
                                  _%phi137140%_
                                  _%ctx137141%_)
                           (if (null? _%code137138%_)
                               _%r137121%_
                               (cons (cons _%ctx137141%_
                                           (cons _%phi137140%_
                                                 (cons _%n137139%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code137138%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r137121%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block137122137131%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e137126137146%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block137122137131%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx137149%_ _%e137126137146%_)
                              (_%e137127137151%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block137122137131%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi137154%_ _%e137127137151%_)
                              (_%e137128137156%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block137122137131%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n137159%_ _%e137128137156%_)
                              (_%e137129137161%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block137122137131%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code137164%_ _%e137129137161%_))
                         (_%K137125137143%_
                          _%code137164%_
                          _%n137159%_
                          _%phi137154%_
                          _%ctx137149%_))
                       (_%E137124137135%_)))))
              (__tmp147571
               (##structure-ref _%state137118%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp147572 '() __tmp147571))))
    (define gxc#collect-expression-refs
      (lambda (_%stx137114%_)
        (let ((_%ht137116%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht137116%_ _%stx137114%_)
          _%ht137116%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self137057%_ _%stx137058%_)
        (let* ((_%g137060137073%_
                (lambda (_%g137061137070%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137061137070%_))))
               (_%g137059137111%_
                (lambda (_%g137061137076%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137061137076%_))
                      (let ((_%e137063137078%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137061137076%_))))
                        (let ((_%hd137064137081%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137063137078%_)))
                              (_%tl137065137083%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137063137078%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137065137083%_))
                              (let ((_%e137066137086%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137065137083%_))))
                                (let ((_%hd137067137089%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137066137086%_)))
                                      (_%tl137068137091%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137066137086%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl137068137091%_))
                                      ((lambda (_%L137094%_)
                                         (let* ((_%bind137106%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L137094%_)))
                                                (_%eid137108%_
                                                 (if _%bind137106%_
                                                     (##structure-ref
                                                      _%bind137106%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L137094%_))))
                                                (__tmp147573
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self137057%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp147573
                                            _%eid137108%_
                                            _%eid137108%_)))
                                       _%hd137067137089%_)
                                      (_%g137060137073%_ _%g137061137076%_))))
                              (_%g137060137073%_ _%g137061137076%_))))
                      (_%g137060137073%_ _%g137061137076%_)))))
          (_%g137059137111%_ _%stx137058%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self136984%_ _%stx136985%_)
        (let* ((_%g136987137004%_
                (lambda (_%g136988137001%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136988137001%_))))
               (_%g136986137054%_
                (lambda (_%g136988137007%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136988137007%_))
                      (let ((_%e136991137009%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136988137007%_))))
                        (let ((_%hd136992137012%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136991137009%_)))
                              (_%tl136993137014%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136991137009%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136993137014%_))
                              (let ((_%e136994137017%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136993137014%_))))
                                (let ((_%hd136995137020%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136994137017%_)))
                                      (_%tl136996137022%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136994137017%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136996137022%_))
                                      (let ((_%e136997137025%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136996137022%_))))
                                        (let ((_%hd136998137028%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136997137025%_)))
                                              (_%tl136999137030%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136997137025%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136999137030%_))
                                              ((lambda (_%L137033%_
                                                        _%L137034%_)
                                                 (let* ((_%bind137049%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L137034%_)))
                                                        (_%eid137051%_
                                                         (if _%bind137049%_
                                                             (##structure-ref
                                                              _%bind137049%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L137034%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp147574
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self136984%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp147574
                                                      _%eid137051%_
                                                      _%eid137051%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self136984%_
                                                      _%L137033%_))))
                                               _%hd136998137028%_
                                               _%hd136995137020%_)
                                              (_%g136987137004%_
                                               _%g136988137007%_))))
                                      (_%g136987137004%_ _%g136988137007%_))))
                              (_%g136987137004%_ _%g136988137007%_))))
                      (_%g136987137004%_ _%g136988137007%_)))))
          (_%g136986137054%_ _%stx136985%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self136941%_ _%stx136942%_)
        (let* ((_%g136944136954%_
                (lambda (_%g136945136951%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136945136951%_))))
               (_%g136943136981%_
                (lambda (_%g136945136957%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136945136957%_))
                      (let ((_%e136947136959%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136945136957%_))))
                        (let ((_%hd136948136962%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136947136959%_)))
                              (_%tl136949136964%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136947136959%_))))
                          ((lambda (_%L136967%_)
                             (let ((__tmp147575
                                    (lambda (_%g136976136978%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self136941%_
                                         _%g136976136978%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp147575 _%L136967%_)))
                           _%tl136949136964%_)))
                      (_%g136944136954%_ _%g136945136957%_)))))
          (_%g136943136981%_ _%stx136942%_))))
    (define gxc#count-values-single%
      (lambda (_%self136938%_ _%stx136939%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self136804%_ _%stx136805%_)
        (let* ((_%__stx147318147319%_ _%stx136805%_)
               (_%g136808136837%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx147318147319%_)))))
          (let ((_%__kont147320147321%_
                 (lambda (_%L136905%_ _%L136906%_)
                   (length (let ((__tmp147576
                                  (lambda (_%g136927136930%_ _%g136928136932%_)
                                    (cons _%g136927136930%_
                                          _%g136928136932%_))))
                             (declare (not safe))
                             (__foldr1 __tmp147576 '() _%L136905%_)))))
                (_%__kont147324147325%_ (lambda () '#f)))
            (let ((_%__match147363147364%_
                   (lambda (_%e136812136849%_
                            _%hd136813136852%_
                            _%tl136814136854%_
                            _%e136815136857%_
                            _%hd136816136860%_
                            _%tl136817136862%_
                            _%e136818136865%_
                            _%hd136819136868%_
                            _%tl136820136870%_
                            _%e136821136873%_
                            _%hd136822136876%_
                            _%tl136823136878%_
                            _%__splice147322147323%_
                            _%target136824136881%_
                            _%tl136826136883%_)
                     (letrec ((_%loop136827136886%_
                               (lambda (_%hd136825136889%_
                                        _%rand136831136891%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd136825136889%_))
                                     (let ((_%e136828136894%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd136825136889%_))))
                                       (let ((_%lp-tl136830136899%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e136828136894%_)))
                                             (_%lp-hd136829136897%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e136828136894%_))))
                                         (_%loop136827136886%_
                                          _%lp-tl136830136899%_
                                          (cons _%lp-hd136829136897%_
                                                _%rand136831136891%_))))
                                     (let ((_%rand136832136902%_
                                            (reverse _%rand136831136891%_)))
                                       (let ((_%L136905%_ _%rand136832136902%_)
                                             (_%L136906%_ _%hd136822136876%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L136906%_
                                                'values))
                                             (_%__kont147320147321%_
                                              _%L136905%_
                                              _%L136906%_)
                                             (_%__kont147324147325%_))))))))
                       (_%loop136827136886%_ _%target136824136881%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx147318147319%_))
                  (let ((_%e136812136849%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx147318147319%_))))
                    (let ((_%tl136814136854%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e136812136849%_)))
                          (_%hd136813136852%_
                           (let ()
                             (declare (not safe))
                             (##car _%e136812136849%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl136814136854%_))
                          (let ((_%e136815136857%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl136814136854%_))))
                            (let ((_%tl136817136862%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e136815136857%_)))
                                  (_%hd136816136860%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e136815136857%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd136816136860%_))
                                  (let ((_%e136818136865%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd136816136860%_))))
                                    (let ((_%tl136820136870%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e136818136865%_)))
                                          (_%hd136819136868%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e136818136865%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd136819136868%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd136819136868%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl136820136870%_))
                                                  (let ((_%e136821136873%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl136820136870%_))))
                                                    (let ((_%tl136823136878%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e136821136873%_)))
                                                          (_%hd136822136876%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e136821136873%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl136823136878%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl136817136862%_))
                      (let ((_%__splice147322147323%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl136817136862%_
                                '0))))
                        (let ((_%tl136826136883%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice147322147323%_ '1)))
                              (_%target136824136881%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice147322147323%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl136826136883%_))
                              (_%__match147363147364%_
                               _%e136812136849%_
                               _%hd136813136852%_
                               _%tl136814136854%_
                               _%e136815136857%_
                               _%hd136816136860%_
                               _%tl136817136862%_
                               _%e136818136865%_
                               _%hd136819136868%_
                               _%tl136820136870%_
                               _%e136821136873%_
                               _%hd136822136876%_
                               _%tl136823136878%_
                               _%__splice147322147323%_
                               _%target136824136881%_
                               _%tl136826136883%_)
                              (_%__kont147324147325%_))))
                      (_%__kont147324147325%_))
                  (_%__kont147324147325%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont147324147325%_))
                                              (_%__kont147324147325%_))
                                          (_%__kont147324147325%_))))
                                  (_%__kont147324147325%_))))
                          (_%__kont147324147325%_))))
                  (_%__kont147324147325%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self136707%_ _%stx136708%_)
        (let* ((_%g136710136731%_
                (lambda (_%g136711136728%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136711136728%_))))
               (_%g136709136801%_
                (lambda (_%g136711136734%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136711136734%_))
                      (let ((_%e136715136736%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136711136734%_))))
                        (let ((_%hd136716136739%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136715136736%_)))
                              (_%tl136717136741%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136715136736%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136717136741%_))
                              (let ((_%e136718136744%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136717136741%_))))
                                (let ((_%hd136719136747%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136718136744%_)))
                                      (_%tl136720136749%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136718136744%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136720136749%_))
                                      (let ((_%e136721136752%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136720136749%_))))
                                        (let ((_%hd136722136755%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136721136752%_)))
                                              (_%tl136723136757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136721136752%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136723136757%_))
                                              (let ((_%e136724136760%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136723136757%_))))
                                                (let ((_%hd136725136763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136724136760%_)))
                                                      (_%tl136726136765%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136724136760%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl136726136765%_))
                                                      ((lambda (_%L136768%_
                                                                _%L136769%_
                                                                _%L136770%_)
                                                         (let ((_%c1136787136789%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self136707%_ _%L136769%_))))
                   (if _%c1136787136789%_
                       (let* ((_%c1136792%_ _%c1136787136789%_)
                              (_%c2136793136795%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self136707%_
                                  _%L136768%_))))
                         (if _%c2136793136795%_
                             (let ((_%c2136798%_ _%c2136793136795%_))
                               (if (fx= _%c1136792%_ _%c2136798%_)
                                   _%c1136792%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd136725136763%_
               _%hd136722136755%_
               _%hd136719136747%_)
              (_%g136710136731%_ _%g136711136734%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g136710136731%_
                                               _%g136711136734%_))))
                                      (_%g136710136731%_ _%g136711136734%_))))
                              (_%g136710136731%_ _%g136711136734%_))))
                      (_%g136710136731%_ _%g136711136734%_)))))
          (_%g136709136801%_ _%stx136708%_))))))
