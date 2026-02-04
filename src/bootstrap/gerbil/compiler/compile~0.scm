(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1770243151)
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
        (letrec ((_%hash-e170021%_
                  (lambda (_%id170023%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id170023%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e170021%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp171408 (list gxc#::void::t))
            (__tmp171407 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp171408
         '()
         __tmp171407
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args170017%_
        (apply make-instance gxc#::collect-bindings::t _%$args170017%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp171409
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
        (__make-atomic-promise __tmp171409)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx170009%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self170012%_
                (let ((__obj171383
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj171383))
               (__tmp171410
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self170012%_ _%stx170009%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp171410
           gxc#current-compile-method
           _%self170012%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp171412 (list gxc#::void::t))
            (__tmp171411 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp171412
         '(modules)
         __tmp171411
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args170006%_
        (apply make-instance gxc#::lift-modules::t _%$args170006%_)))
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
      (let ((__tmp171413
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
        (__make-atomic-promise __tmp171413)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords169981%_ _%modules169978169982%_ _%stx169983%_)
        (let ((_%modules169986%_
               (if (eq? _%modules169978169982%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules169978169982%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self169988%_
                  (let ((__obj171385
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171385
                       _%modules169986%_
                       '1
                       '#f
                       '#f))
                    __obj171385))
                 (__tmp171414
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self169988%_ _%stx169983%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp171414
             gxc#current-compile-method
             _%self169988%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords169995%_ . _%args169996%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords169995%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169995%_
                  'modules:
                  absent-value))
               _%args169996%_)))
    (define gxc#apply-lift-modules
      (lambda _%args169979170002%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args169979170002%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp171416 (list)) (__tmp171415 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp171416
         '()
         __tmp171415
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args169974%_
        (apply make-instance gxc#::find-runtime-code::t _%$args169974%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp171417
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
        (__make-atomic-promise __tmp171417)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx169966%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self169969%_
                (let ((__obj171387
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj171387))
               (__tmp171418
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self169969%_ _%stx169966%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp171418
           gxc#current-compile-method
           _%self169969%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp171420 (list gxc#::false::t))
            (__tmp171419 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp171420
         '()
         __tmp171419
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args169963%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args169963%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp171421
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
        (__make-atomic-promise __tmp171421)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx169955%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self169958%_
                (let ((__obj171389
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj171389))
               (__tmp171422
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self169958%_ _%stx169955%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp171422
           gxc#current-compile-method
           _%self169958%_))))
    (define gxc#::count-values::t
      (let ((__tmp171424 (list gxc#::false-expression::t))
            (__tmp171423 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp171424
         '()
         __tmp171423
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args169952%_
        (apply make-instance gxc#::count-values::t _%$args169952%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp171425
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
        (__make-atomic-promise __tmp171425)))
    (define gxc#apply-count-values
      (lambda (_%stx169944%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self169947%_
                (let ((__obj171391
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj171391))
               (__tmp171426
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self169947%_ _%stx169944%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp171426
           gxc#current-compile-method
           _%self169947%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp171427 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp171427
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args169941%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args169941%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp171428
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
        (__make-atomic-promise __tmp171428)))
    (define gxc#::generate-loader::t
      (let ((__tmp171430 (list gxc#::generate-runtime-empty::t))
            (__tmp171429 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp171430
         '()
         __tmp171429
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args169937%_
        (apply make-instance gxc#::generate-loader::t _%$args169937%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp171431
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
        (__make-atomic-promise __tmp171431)))
    (define gxc#apply-generate-loader
      (lambda (_%stx169929%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self169932%_
                (let ((__obj171394
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj171394))
               (__tmp171432
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self169932%_ _%stx169929%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp171432
           gxc#current-compile-method
           _%self169932%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp171433 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp171433
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args169926%_
        (apply make-instance gxc#::generate-runtime::t _%$args169926%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp171434
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
        (__make-atomic-promise __tmp171434)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx169918%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self169921%_
                (let ((__obj171396
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj171396))
               (__tmp171435
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self169921%_ _%stx169918%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp171435
           gxc#current-compile-method
           _%self169921%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp171437 (list gxc#::generate-runtime::t))
            (__tmp171436 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp171437
         '()
         __tmp171436
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args169915%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args169915%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp171438
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
        (__make-atomic-promise __tmp171438)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx169907%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self169910%_
                (let ((__obj171398
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj171398))
               (__tmp171439
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self169910%_ _%stx169907%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp171439
           gxc#current-compile-method
           _%self169910%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp171440 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp171440
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args169904%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args169904%_)))
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
      (let ((__tmp171441
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
        (__make-atomic-promise __tmp171441)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords169879%_ _%table169876169880%_ _%stx169881%_)
        (let ((_%table169884%_
               (if (eq? _%table169876169880%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table169876169880%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self169886%_
                  (let ((__obj171400
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171400
                       _%table169884%_
                       '1
                       '#f
                       '#f))
                    __obj171400))
                 (__tmp171442
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self169886%_ _%stx169881%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp171442
             gxc#current-compile-method
             _%self169886%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords169893%_ . _%args169894%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords169893%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169893%_
                  'table:
                  absent-value))
               _%args169894%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args169877169900%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args169877169900%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp171444 (list gxc#::void-expression::t))
            (__tmp171443 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp171444
         '(state)
         __tmp171443
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args169872%_
        (apply make-instance gxc#::generate-meta::t _%$args169872%_)))
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
      (let ((__tmp171445
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
        (__make-atomic-promise __tmp171445)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords169847%_ _%state169844169848%_ _%stx169849%_)
        (let ((_%state169852%_
               (if (eq? _%state169844169848%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state169844169848%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self169854%_
                  (let ((__obj171402
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171402
                       _%state169852%_
                       '1
                       '#f
                       '#f))
                    __obj171402))
                 (__tmp171446
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self169854%_ _%stx169849%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp171446
             gxc#current-compile-method
             _%self169854%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords169861%_ . _%args169862%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords169861%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169861%_
                  'state:
                  absent-value))
               _%args169862%_)))
    (define gxc#apply-generate-meta
      (lambda _%args169845169868%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args169845169868%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp171448 (list)) (__tmp171447 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp171448
         '(state)
         __tmp171447
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args169840%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args169840%_)))
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
      (let ((__tmp171449
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
        (__make-atomic-promise __tmp171449)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords169815%_ _%state169812169816%_ _%stx169817%_)
        (let ((_%state169820%_
               (if (eq? _%state169812169816%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state169812169816%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self169822%_
                  (let ((__obj171404
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171404
                       _%state169820%_
                       '1
                       '#f
                       '#f))
                    __obj171404))
                 (__tmp171450
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self169822%_ _%stx169817%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp171450
             gxc#current-compile-method
             _%self169822%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords169829%_ . _%args169830%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords169829%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169829%_
                  'state:
                  absent-value))
               _%args169830%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args169813169836%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args169813169836%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self169741%_ _%stx169742%_)
        (let* ((_%g169744169761%_
                (lambda (_%g169745169758%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g169745169758%_))))
               (_%g169743169808%_
                (lambda (_%g169745169764%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g169745169764%_))
                      (let ((_%e169748169766%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g169745169764%_))))
                        (let ((_%hd169749169769%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169748169766%_)))
                              (_%tl169750169771%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169748169766%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl169750169771%_))
                              (let ((_%e169751169774%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl169750169771%_))))
                                (let ((_%hd169752169777%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169751169774%_)))
                                      (_%tl169753169779%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169751169774%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169753169779%_))
                                      (let ((_%e169754169782%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169753169779%_))))
                                        (let ((_%hd169755169785%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169754169782%_)))
                                              (_%tl169756169787%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169754169782%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169756169787%_))
                                              ((lambda (_%g169746169790%_
                                                        _%g169747169791%_)
                                                 (let ((__tmp171451
                                                        (lambda (_%bind169806%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind169806%_))
                      (gxc#add-module-binding! _%bind169806%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp171451
                                                    _%g169747169791%_)))
                                               _%hd169755169785%_
                                               _%hd169752169777%_)
                                              (_%g169744169761%_
                                               _%g169745169764%_))))
                                      (_%g169744169761%_ _%g169745169764%_))))
                              (_%g169744169761%_ _%g169745169764%_))))
                      (_%g169744169761%_ _%g169745169764%_)))))
          (_%g169743169808%_ _%stx169742%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self169673%_ _%stx169674%_)
        (let* ((_%g169676169693%_
                (lambda (_%g169677169690%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g169677169690%_))))
               (_%g169675169738%_
                (lambda (_%g169677169696%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g169677169696%_))
                      (let ((_%e169680169698%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g169677169696%_))))
                        (let ((_%hd169681169701%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169680169698%_)))
                              (_%tl169682169703%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169680169698%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl169682169703%_))
                              (let ((_%e169683169706%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl169682169703%_))))
                                (let ((_%hd169684169709%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169683169706%_)))
                                      (_%tl169685169711%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169683169706%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169685169711%_))
                                      (let ((_%e169686169714%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169685169711%_))))
                                        (let ((_%hd169687169717%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169686169714%_)))
                                              (_%tl169688169719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169686169714%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169688169719%_))
                                              ((lambda (_%g169678169722%_
                                                        _%g169679169723%_)
                                                 (gxc#add-module-binding!
                                                  _%g169679169723%_
                                                  '#t))
                                               _%hd169687169717%_
                                               _%hd169684169709%_)
                                              (_%g169676169693%_
                                               _%g169677169696%_))))
                                      (_%g169676169693%_ _%g169677169696%_))))
                              (_%g169676169693%_ _%g169677169696%_))))
                      (_%g169676169693%_ _%g169677169696%_)))))
          (_%g169675169738%_ _%stx169674%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self169615%_ _%stx169616%_)
        (let* ((_%g169618169632%_
                (lambda (_%g169619169629%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g169619169629%_))))
               (_%g169617169670%_
                (lambda (_%g169619169635%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g169619169635%_))
                      (let ((_%e169622169637%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g169619169635%_))))
                        (let ((_%hd169623169640%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169622169637%_)))
                              (_%tl169624169642%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169622169637%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl169624169642%_))
                              (let ((_%e169625169645%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl169624169642%_))))
                                (let ((_%hd169626169648%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169625169645%_)))
                                      (_%tl169627169650%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169625169645%_))))
                                  ((lambda (_%g169620169653%_
                                            _%g169621169654%_)
                                     (let ((_%ctx169667%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g169621169654%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self169615%_
                                           'modules))
                                        (cons _%ctx169667%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self169615%_
                                                        'modules)))))
                                       (let ((__tmp171452
                                              (lambda ()
                                                (let ((__tmp171453
                                                       (##structure-ref
                                                        _%ctx169667%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self169615%_
                                                   __tmp171453)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp171452
                                          gx#current-expander-context
                                          _%ctx169667%_))))
                                   _%tl169627169650%_
                                   _%hd169626169648%_)))
                              (_%g169618169632%_ _%g169619169635%_))))
                      (_%g169618169632%_ _%g169619169635%_)))))
          (_%g169617169670%_ _%stx169616%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls169569169571%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls169569169571%_
              (let ((_%decls169573%_ _%decls169569169571%_))
                (let _%lp169575%_ ((_%rest169577%_ _%decls169573%_))
                  (let* ((_%rest169578169586%_ _%rest169577%_)
                         (_%else169580169594%_ (lambda () '#f))
                         (_%K169582169603%_
                          (lambda (_%decls169597%_ _%decl169598%_)
                            (if (equal? _%decl169598%_ '(not safe))
                                '#t
                                (if (equal? _%decl169598%_ '(safe))
                                    '#f
                                    (_%lp169575%_ _%decls169597%_))))))
                    (if (pair? _%rest169578169586%_)
                        (let ((_%hd169583169606%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest169578169586%_)))
                              (_%tl169584169608%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest169578169586%_))))
                          (let* ((_%decl169611%_ _%hd169583169606%_)
                                 (_%decls169613%_ _%tl169584169608%_))
                            (_%K169582169603%_
                             _%decls169613%_
                             _%decl169611%_)))
                        (_%else169580169594%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id169563%_ _%syntax?169564%_)
        (let ((_%eid169566%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id169563%_))
                '1
                gx#binding::t
                '#f))
              (_%ht169567%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid169566%_))
              '#!void
              (let ((__tmp171454
                     (let ((__tmp171455
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid169566%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp171455 _%syntax?169564%_))))
                (declare (not safe))
                (hash-put! _%ht169567%_ _%eid169566%_ __tmp171454))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id169561%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id169561%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key169516%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key169516%_))
            _%key169516%_
            (if (uninterned-symbol? _%key169516%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key169516%_))
                (let* ((_%key169520169527%_ _%key169516%_)
                       (_%E169522169531%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key169520169527%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K169523169549%_
                        (lambda (_%mark169534%_ _%eid169535%_)
                          (let ((_%$e169537%_
                                 (##structure-ref
                                  _%mark169534%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e169537%_
                                ((lambda (_%ht169540%_)
                                   (let ((_%$e169542%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht169540%_
                                             _%eid169535%_))))
                                     (if _%$e169542%_
                                         ((lambda (_%id169545%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id169545%_))
                                                _%id169545%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id169545%_))))
                                          _%$e169542%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid169535%_))))
                                 _%$e169537%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid169535%_))))))
                  (if (pair? _%key169520169527%_)
                      (let ((_%hd169524169552%_
                             (let ()
                               (declare (not safe))
                               (##car _%key169520169527%_)))
                            (_%tl169525169554%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key169520169527%_))))
                        (let* ((_%eid169557%_ _%hd169524169552%_)
                               (_%mark169559%_ _%tl169525169554%_))
                          (_%K169523169549%_ _%mark169559%_ _%eid169557%_)))
                      (_%E169522169531%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self169513%_ _%stx169514%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self169360%_ _%stx169361%_)
        (letrec ((_%simplify169363%_
                  (lambda (_%body169411%_)
                    (let _%lp169413%_ ((_%rest169415%_ _%body169411%_)
                                       (_%r169416%_ '()))
                      (let* ((_%rest169417169425%_ _%rest169415%_)
                             (_%else169419169433%_
                              (lambda () (reverse _%r169416%_)))
                             (_%K169421169501%_
                              (lambda (_%rest169436%_ _%hd169437%_)
                                (let* ((_%hd169438169454%_ _%hd169437%_)
                                       (_%else169442169462%_
                                        (lambda ()
                                          (_%lp169413%_
                                           _%rest169436%_
                                           (cons _%hd169437%_ _%r169416%_)))))
                                  (let ((_%K169450169491%_
                                         (lambda (_%exprs169489%_)
                                           (_%lp169413%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest169436%_
                                               _%exprs169489%_))
                                            _%r169416%_)))
                                        (_%K169445169475%_
                                         (lambda ()
                                           (if (null? _%rest169436%_)
                                               (_%lp169413%_
                                                _%rest169436%_
                                                (cons _%hd169437%_
                                                      _%r169416%_))
                                               (_%lp169413%_
                                                _%rest169436%_
                                                _%r169416%_))))
                                        (_%K169444169467%_
                                         (lambda ()
                                           (if (null? _%rest169436%_)
                                               (_%lp169413%_
                                                _%rest169436%_
                                                (cons _%hd169437%_
                                                      _%r169416%_))
                                               (_%lp169413%_
                                                _%rest169436%_
                                                _%r169416%_)))))
                                    (let ((_%try-match169441169470%_
                                           (lambda ()
                                             (if (symbol? _%hd169438169454%_)
                                                 (_%K169444169467%_)
                                                 (_%else169442169462%_)))))
                                      (if (pair? _%hd169438169454%_)
                                          (let ((_%tl169452169496%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd169438169454%_)))
                                                (_%hd169451169494%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd169438169454%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd169451169494%_
                                                         'begin))
                                                (let ((_%exprs169499%_
                                                       _%tl169452169496%_))
                                                  (_%K169450169491%_
                                                   _%exprs169499%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd169451169494%_
                                                             'quote))
                                                    (if (pair? _%tl169452169496%_)
                                                        (let ((_%tl169449169483%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl169452169496%_))))
                  (if (null? _%tl169449169483%_)
                      (_%K169445169475%_)
                      (_%try-match169441169470%_)))
                (_%try-match169441169470%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match169441169470%_))))
                                          (_%try-match169441169470%_))))))))
                        (if (pair? _%rest169417169425%_)
                            (let ((_%hd169422169504%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest169417169425%_)))
                                  (_%tl169423169506%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest169417169425%_))))
                              (let* ((_%hd169509%_ _%hd169422169504%_)
                                     (_%rest169511%_ _%tl169423169506%_))
                                (_%K169421169501%_
                                 _%rest169511%_
                                 _%hd169509%_)))
                            (_%else169419169433%_)))))))
          (let* ((_%g169365169375%_
                  (lambda (_%g169366169372%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g169366169372%_))))
                 (_%g169364169408%_
                  (lambda (_%g169366169378%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g169366169378%_))
                        (let ((_%e169368169380%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g169366169378%_))))
                          (let ((_%hd169369169383%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169368169380%_)))
                                (_%tl169370169385%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169368169380%_))))
                            ((lambda (_%g169367169388%_)
                               (let* ((_%body169403%_
                                       (map (lambda (_%g169398169400%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self169360%_
                                                 _%g169398169400%_)))
                                            _%g169367169388%_))
                                      (_%body169405%_
                                       (_%simplify169363%_ _%body169403%_)))
                                 (if (let ((__tmp171456
                                            (length _%body169405%_)))
                                       (declare (not safe))
                                       (##fx= __tmp171456 '1))
                                     (car _%body169405%_)
                                     (cons 'begin _%body169405%_))))
                             _%tl169370169385%_)))
                        (_%g169365169375%_ _%g169366169378%_)))))
            (_%g169364169408%_ _%stx169361%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self169321%_ _%stx169322%_)
        (let* ((_%g169324169334%_
                (lambda (_%g169325169331%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g169325169331%_))))
               (_%g169323169357%_
                (lambda (_%g169325169337%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g169325169337%_))
                      (let ((_%e169327169339%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g169325169337%_))))
                        (let ((_%hd169328169342%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169327169339%_)))
                              (_%tl169329169344%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169327169339%_))))
                          ((lambda (_%g169326169347%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g169326169347%_))))
                           _%tl169329169344%_)))
                      (_%g169324169334%_ _%g169325169337%_)))))
          (_%g169323169357%_ _%stx169322%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self169087%_ _%stx169088%_)
        (let* ((_%__stx170046170047%_ _%stx169088%_)
               (_%g169092169144%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx170046170047%_)))))
          (let ((_%__kont170048170049%_
                 (lambda (_%g169094169303%_ _%g169095169304%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self169087%_ _%g169094169303%_))))
                (_%__kont170050170051%_
                 (lambda (_%g169105169251%_
                          _%g169106169252%_
                          _%g169107169253%_)
                   (if (let ((__tmp171457
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g169107169253%_))))
                         (declare (not safe))
                         (##memq __tmp171457 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self169087%_
                          _%g169105169251%_)))))
                (_%__kont170054170055%_
                 (lambda (_%g169129169173%_ _%g169130169174%_)
                   (let ((_%decls169189%_
                          (map gx#syntax->datum _%g169130169174%_)))
                     (let ((__tmp171460
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls169189%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self169087%_
                                                   _%g169129169173%_))
                                                '())))))
                           (__tmp171458
                            (let ((__tmp171459
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp171459 _%decls169189%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp171460
                        gxc#current-compile-decls
                        __tmp171458))))))
            (let* ((_%__match170101170102%_
                    (lambda (_%e169108169197%_
                             _%hd169109169200%_
                             _%tl169110169202%_
                             _%e169111169205%_
                             _%hd169112169208%_
                             _%tl169113169210%_
                             _%e169114169213%_
                             _%hd169115169216%_
                             _%tl169116169218%_
                             _%__splice170052170053%_
                             _%target169117169221%_
                             _%tl169119169223%_)
                      (letrec ((_%loop169120169226%_
                                (lambda (_%hd169118169229%_
                                         _%param169124169231%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd169118169229%_))
                                      (let ((_%e169121169233%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd169118169229%_))))
                                        (let ((_%lp-tl169123169238%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169121169233%_)))
                                              (_%lp-hd169122169236%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169121169233%_))))
                                          (_%loop169120169226%_
                                           _%lp-tl169123169238%_
                                           (cons _%lp-hd169122169236%_
                                                 _%param169124169231%_))))
                                      (let ((_%param169125169241%_
                                             (reverse _%param169124169231%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169113169210%_))
                                            (let ((_%e169126169243%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169113169210%_))))
                                              (let ((_%tl169128169248%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169126169243%_)))
                                                    (_%hd169127169246%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169126169243%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl169128169248%_))
                                                    (let ((_%g169105169251%_
                                                           _%hd169127169246%_)
                                                          (_%g169106169252%_
                                                           _%param169125169241%_)
                                                          (_%g169107169253%_
                                                           _%hd169115169216%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g169107169253%_))
                       (not (let ((__tmp171461
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g169107169253%_))))
                              (declare (not safe))
                              (##memq __tmp171461 gxc#gambit-annotations))))
                  (_%__kont170050170051%_
                   _%g169105169251%_
                   _%g169106169252%_
                   _%g169107169253%_)
                  (_%__kont170054170055%_
                   _%hd169127169246%_
                   _%hd169112169208%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g169092169144%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g169092169144%_))))))))
                        (_%loop169120169226%_ _%target169117169221%_ '()))))
                   (_%__match170075170076%_
                    (lambda (_%e169096169279%_
                             _%hd169097169282%_
                             _%tl169098169284%_
                             _%e169099169287%_
                             _%hd169100169290%_
                             _%tl169101169292%_
                             _%e169102169295%_
                             _%hd169103169298%_
                             _%tl169104169300%_)
                      (let ((_%g169094169303%_ _%hd169103169298%_)
                            (_%g169095169304%_ _%hd169100169290%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g169095169304%_))
                            (_%__kont170048170049%_
                             _%g169094169303%_
                             _%g169095169304%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd169100169290%_))
                                (let ((_%e169114169213%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd169100169290%_))))
                                  (let ((_%tl169116169218%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169114169213%_)))
                                        (_%hd169115169216%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169114169213%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl169116169218%_))
                                        (let ((_%__splice170052170053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl169116169218%_
                                                  '0))))
                                          (let ((_%tl169119169223%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice170052170053%_
                                                    '1)))
                                                (_%target169117169221%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice170052170053%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl169119169223%_))
                                                (_%__match170101170102%_
                                                 _%e169096169279%_
                                                 _%hd169097169282%_
                                                 _%tl169098169284%_
                                                 _%e169099169287%_
                                                 _%hd169100169290%_
                                                 _%tl169101169292%_
                                                 _%e169114169213%_
                                                 _%hd169115169216%_
                                                 _%tl169116169218%_
                                                 _%__splice170052170053%_
                                                 _%target169117169221%_
                                                 _%tl169119169223%_)
                                                (_%__kont170054170055%_
                                                 _%hd169103169298%_
                                                 _%hd169100169290%_))))
                                        (_%__kont170054170055%_
                                         _%hd169103169298%_
                                         _%hd169100169290%_))))
                                (_%__kont170054170055%_
                                 _%hd169103169298%_
                                 _%hd169100169290%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx170046170047%_))
                  (let ((_%e169096169279%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx170046170047%_))))
                    (let ((_%tl169098169284%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169096169279%_)))
                          (_%hd169097169282%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169096169279%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl169098169284%_))
                          (let ((_%e169099169287%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl169098169284%_))))
                            (let ((_%tl169101169292%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169099169287%_)))
                                  (_%hd169100169290%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169099169287%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl169101169292%_))
                                  (let ((_%e169102169295%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl169101169292%_))))
                                    (let ((_%tl169104169300%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169102169295%_)))
                                          (_%hd169103169298%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169102169295%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl169104169300%_))
                                          (_%__match170075170076%_
                                           _%e169096169279%_
                                           _%hd169097169282%_
                                           _%tl169098169284%_
                                           _%e169099169287%_
                                           _%hd169100169290%_
                                           _%tl169101169292%_
                                           _%e169102169295%_
                                           _%hd169103169298%_
                                           _%tl169104169300%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd169100169290%_))
                                              (let ((_%e169114169213%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd169100169290%_))))
                                                (let ((_%tl169116169218%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169114169213%_)))
                                                      (_%hd169115169216%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169114169213%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl169116169218%_))
                                                      (let ((_%__splice170052170053%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl169116169218%_
                        '0))))
                (let ((_%tl169119169223%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170052170053%_ '1)))
                      (_%target169117169221%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170052170053%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl169119169223%_))
                      (_%__match170101170102%_
                       _%e169096169279%_
                       _%hd169097169282%_
                       _%tl169098169284%_
                       _%e169099169287%_
                       _%hd169100169290%_
                       _%tl169101169292%_
                       _%e169114169213%_
                       _%hd169115169216%_
                       _%tl169116169218%_
                       _%__splice170052170053%_
                       _%target169117169221%_
                       _%tl169119169223%_)
                      (let () (declare (not safe)) (_%g169092169144%_)))))
              (let () (declare (not safe)) (_%g169092169144%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g169092169144%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd169100169290%_))
                                      (let ((_%e169114169213%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd169100169290%_))))
                                        (let ((_%tl169116169218%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169114169213%_)))
                                              (_%hd169115169216%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169114169213%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl169116169218%_))
                                              (let ((_%__splice170052170053%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl169116169218%_
                                                        '0))))
                                                (let ((_%tl169119169223%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice170052170053%_
                                                          '1)))
                                                      (_%target169117169221%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice170052170053%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169119169223%_))
                                                      (_%__match170101170102%_
                                                       _%e169096169279%_
                                                       _%hd169097169282%_
                                                       _%tl169098169284%_
                                                       _%e169099169287%_
                                                       _%hd169100169290%_
                                                       _%tl169101169292%_
                                                       _%e169114169213%_
                                                       _%hd169115169216%_
                                                       _%tl169116169218%_
                                                       _%__splice170052170053%_
                                                       _%target169117169221%_
                                                       _%tl169119169223%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g169092169144%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g169092169144%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g169092169144%_))))))
                          (let () (declare (not safe)) (_%g169092169144%_)))))
                  (let () (declare (not safe)) (_%g169092169144%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self169046%_ _%stx169047%_)
        (let* ((_%g169049169059%_
                (lambda (_%g169050169056%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g169050169056%_))))
               (_%g169048169084%_
                (lambda (_%g169050169062%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g169050169062%_))
                      (let ((_%e169052169064%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g169050169062%_))))
                        (let ((_%hd169053169067%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169052169064%_)))
                              (_%tl169054169069%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169052169064%_))))
                          ((lambda (_%g169051169072%_)
                             (let ((_%decls169082%_
                                    (map gx#syntax->datum _%g169051169072%_)))
                               (let ((__tmp171462
                                      (let ((__tmp171463
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp171463
                                         _%decls169082%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp171462))
                               (cons 'declare _%decls169082%_)))
                           _%tl169054169069%_)))
                      (_%g169049169059%_ _%g169050169062%_)))))
          (_%g169048169084%_ _%stx169047%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self168793%_ _%stx168794%_)
        (let* ((_%g168796168813%_
                (lambda (_%g168797168810%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g168797168810%_))))
               (_%g168795169043%_
                (lambda (_%g168797168816%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g168797168816%_))
                      (let ((_%e168800168818%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g168797168816%_))))
                        (let ((_%hd168801168821%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e168800168818%_)))
                              (_%tl168802168823%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e168800168818%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl168802168823%_))
                              (let ((_%e168803168826%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl168802168823%_))))
                                (let ((_%hd168804168829%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168803168826%_)))
                                      (_%tl168805168831%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168803168826%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl168805168831%_))
                                      (let ((_%e168806168834%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl168805168831%_))))
                                        (let ((_%hd168807168837%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168806168834%_)))
                                              (_%tl168808168839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168806168834%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl168808168839%_))
                                              ((lambda (_%g168798168842%_
                                                        _%g168799168843%_)
                                                 (let* ((_%__stx170154170155%_
                                                         _%g168799168843%_)
                                                        (_%g168860168874%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx170154170155%_)))))
                                                   (let ((_%__kont170156170157%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self168793%_
                                                               _%g168798168842%_))))
                                                         (_%__kont170158170159%_
                                                          (lambda (_%g168866169006%_)
                                                            (let ((_%eid169015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g168866169006%_))))
                      (let ((_%lambda-expr169016169018%_
                             (gxc#apply-find-lambda-expression
                              _%g168798168842%_)))
                        (if _%lambda-expr169016169018%_
                            (let* ((_%lambda-expr169020%_
                                    _%lambda-expr169016169018%_)
                                   (__tmp171464
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp171464
                               _%lambda-expr169020%_
                               _%eid169015%_))
                            '#f))
                      (cons 'define
                            (cons _%eid169015%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self168793%_
                                           _%g168798168842%_))
                                        '()))))))
                 (_%__kont170160170161%_
                  (lambda ()
                    (let* ((_%tmp168881%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body168990%_
                            (let _%lp168883%_ ((_%rest168885%_
                                                _%g168799168843%_)
                                               (_%k168886%_ '0)
                                               (_%r168887%_ '()))
                              (let* ((_%__stx170124170125%_ _%rest168885%_)
                                     (_%g168892168909%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx170124170125%_)))))
                                (let ((_%__kont170126170127%_
                                       (lambda (_%g168894168977%_)
                                         (_%lp168883%_
                                          _%g168894168977%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k168886%_ '1))
                                          _%r168887%_)))
                                      (_%__kont170128170129%_
                                       (lambda (_%g168899168950%_
                                                _%g168900168951%_)
                                         (_%lp168883%_
                                          _%g168899168950%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k168886%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g168900168951%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp168881%_
                           _%k168886%_
                           _%g168899168950%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r168887%_))))
                                      (_%__kont170130170131%_
                                       (lambda (_%g168904168921%_)
                                         (let ((__tmp171465
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g168904168921%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp168881%_
                                 _%k168886%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp171465
                                            _%r168887%_))))
                                      (_%__kont170132170133%_
                                       (lambda () (reverse _%r168887%_))))
                                  (let ((_%g168890168937%_
                                         (lambda ()
                                           (let ((_%g168904168921%_
                                                  _%__stx170124170125%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g168904168921%_))
                                                 (_%__kont170130170131%_
                                                  _%g168904168921%_)
                                                 (_%__kont170132170133%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx170124170125%_))
                                        (let ((_%e168895168966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx170124170125%_))))
                                          (let ((_%tl168897168971%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168895168966%_)))
                                                (_%hd168896168969%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168895168966%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd168896168969%_))
                                                (let ((_%e168898168974%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd168896168969%_))))
                                                  (if (equal? _%e168898168974%_
                                                              '#f)
                                                      (_%__kont170126170127%_
                                                       _%tl168897168971%_)
                                                      (_%__kont170128170129%_
                                                       _%tl168897168971%_
                                                       _%hd168896168969%_)))
                                                (_%__kont170128170129%_
                                                 _%tl168897168971%_
                                                 _%hd168896168969%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g168890168937%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp168881%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self168793%_
                                                       _%g168798168842%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp168881%_
                                         _%g168799168843%_
                                         _%g168798168842%_)
                                        _%body168990%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx170154170155%_))
                                                         (let ((_%e168862169027%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx170154170155%_))))
                   (let ((_%tl168864169032%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e168862169027%_)))
                         (_%hd168863169030%_
                          (let ()
                            (declare (not safe))
                            (##car _%e168862169027%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd168863169030%_))
                         (let ((_%e168865169035%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd168863169030%_))))
                           (if (equal? _%e168865169035%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl168864169032%_))
                                   (_%__kont170156170157%_)
                                   (_%__kont170160170161%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl168864169032%_))
                                   (_%__kont170158170159%_ _%hd168863169030%_)
                                   (_%__kont170160170161%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl168864169032%_))
                             (_%__kont170158170159%_ _%hd168863169030%_)
                             (_%__kont170160170161%_)))))
                 (_%__kont170160170161%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd168807168837%_
                                               _%hd168804168829%_)
                                              (_%g168796168813%_
                                               _%g168797168816%_))))
                                      (_%g168796168813%_ _%g168797168816%_))))
                              (_%g168796168813%_ _%g168797168816%_))))
                      (_%g168796168813%_ _%g168797168816%_)))))
          (_%g168795169043%_ _%stx168794%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals168768%_ _%hd168769%_ _%expr168770%_)
        (let ((_%$e168772%_ (gxc#apply-count-values _%expr168770%_)))
          (if _%$e168772%_
              ((lambda (_%count168775%_)
                 (let ((_%len168777%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd168769%_)))
                       (_%cmp168778%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd168769%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len168777%_ '0))
                           (_%cmp168778%_ _%count168775%_ _%len168777%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr168770%_
                          _%hd168769%_)))))
               _%$e168772%_)
              (let* ((_%len168784%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd168769%_)))
                     (_%cmp168786%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd168769%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg168788%_
                      (let ((__tmp171467
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd168769%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp171466 (number->string _%len168784%_)))
                        (declare (not safe))
                        (##string-append __tmp171467 __tmp171466 '" values")))
                     (_%count168790%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd168769%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len168784%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count168790%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals168768%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp168786%_
                                (cons _%count168790%_
                                      (cons _%len168784%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp168786%_
                                                        (cons _%count168790%_
                                                              (cons _%len168784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg168788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count168790%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var168763%_)
        (letrec ((_%generate-inline168765%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var168763%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var168763%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline168765%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline168765%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var168756%_ _%i168757%_ _%rest168758%_)
        (letrec ((_%generate-inline168760%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i168757%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest168758%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var168756%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var168756%_
                                                      (cons '0 '())))
                                          (cons _%var168756%_ '()))))
                        (cons '##values-ref
                              (cons _%var168756%_ (cons _%i168757%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline168760%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline168760%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var168750%_ _%i168751%_)
        (if (let () (declare (not safe)) (##fx= _%i168751%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var168750%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var168750%_ '()))
                                  (cons (cons 'list (cons _%var168750%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var168750%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var168750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var168750%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i168751%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var168750%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var168750%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var168750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var168750%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var168750%_ '()))
                                (cons _%i168751%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var168750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i168751%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self168682%_ _%stx168683%_)
        (let* ((_%g168685168702%_
                (lambda (_%g168686168699%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g168686168699%_))))
               (_%g168684168747%_
                (lambda (_%g168686168705%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g168686168705%_))
                      (let ((_%e168689168707%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g168686168705%_))))
                        (let ((_%hd168690168710%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e168689168707%_)))
                              (_%tl168691168712%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e168689168707%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl168691168712%_))
                              (let ((_%e168692168715%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl168691168712%_))))
                                (let ((_%hd168693168718%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168692168715%_)))
                                      (_%tl168694168720%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168692168715%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl168694168720%_))
                                      (let ((_%e168695168723%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl168694168720%_))))
                                        (let ((_%hd168696168726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168695168723%_)))
                                              (_%tl168697168728%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168695168723%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl168697168728%_))
                                              ((lambda (_%g168687168731%_
                                                        _%g168688168732%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self168682%_
                                                  _%g168688168732%_
                                                  _%g168687168731%_))
                                               _%hd168696168726%_
                                               _%hd168693168718%_)
                                              (_%g168685168702%_
                                               _%g168686168705%_))))
                                      (_%g168685168702%_ _%g168686168705%_))))
                              (_%g168685168702%_ _%g168686168705%_))))
                      (_%g168685168702%_ _%g168686168705%_)))))
          (_%g168684168747%_ _%stx168683%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self168641%_ _%hd168642%_ _%body168643%_)
        (let* ((_%hd168645%_ (gxc#generate-runtime-lambda-head _%hd168642%_))
               (_%body168647%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self168641%_ _%body168643%_)))
               (_%body168679%_
                (let* ((_%body168648168656%_ _%body168647%_)
                       (_%else168650168664%_
                        (lambda () (cons _%body168647%_ '())))
                       (_%K168652168669%_
                        (lambda (_%exprs168667%_) _%exprs168667%_)))
                  (if (pair? _%body168648168656%_)
                      (let ((_%hd168653168672%_
                             (let ()
                               (declare (not safe))
                               (##car _%body168648168656%_)))
                            (_%tl168654168674%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body168648168656%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd168653168672%_ 'begin))
                            (let ((_%exprs168677%_ _%tl168654168674%_))
                              (_%K168652168669%_ _%exprs168677%_))
                            (_%else168650168664%_)))
                      (_%else168650168664%_)))))
          (cons 'lambda (cons _%hd168645%_ _%body168679%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd168639%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd168639%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self167196%_ _%stx167197%_)
        (letrec ((_%dispatch-case?167199%_
                  (lambda (_%hd167877%_ _%body167878%_)
                    (let* ((_%form167880%_
                            (cons _%hd167877%_ (cons _%body167878%_ '())))
                           (_%__stx170186170187%_ _%form167880%_)
                           (_%g167885168042%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx170186170187%_)))))
                      (let ((_%__kont170188170189%_
                             (lambda (_%g167887168559%_
                                      _%g167888168560%_
                                      _%g167889168561%_)
                               '#t))
                            (_%__kont170194170195%_
                             (lambda (_%g167932168351%_
                                      _%g167933168352%_
                                      _%g167934168353%_
                                      _%g167935168354%_
                                      _%g167936168355%_
                                      _%g167937168356%_)
                               '#t))
                            (_%__kont170200170201%_
                             (lambda (_%g167998168150%_
                                      _%g167999168151%_
                                      _%g168000168152%_
                                      _%g168001168153%_)
                               '#t))
                            (_%__kont170202170203%_ (lambda () '#f)))
                        (let* ((_%__match170327170328%_
                                (lambda (_%e168002168054%_
                                         _%hd168003168057%_
                                         _%tl168004168059%_
                                         _%e168005168062%_
                                         _%hd168006168065%_
                                         _%tl168007168067%_
                                         _%e168008168070%_
                                         _%hd168009168073%_
                                         _%tl168010168075%_
                                         _%e168011168078%_
                                         _%hd168012168081%_
                                         _%tl168013168083%_
                                         _%e168014168086%_
                                         _%hd168015168089%_
                                         _%tl168016168091%_
                                         _%e168017168094%_
                                         _%hd168018168097%_
                                         _%tl168019168099%_
                                         _%e168020168102%_
                                         _%hd168021168105%_
                                         _%tl168022168107%_
                                         _%e168023168110%_
                                         _%hd168024168113%_
                                         _%tl168025168115%_
                                         _%e168026168118%_
                                         _%hd168027168121%_
                                         _%tl168028168123%_
                                         _%e168029168126%_
                                         _%hd168030168129%_
                                         _%tl168031168131%_
                                         _%e168032168134%_
                                         _%hd168033168137%_
                                         _%tl168034168139%_
                                         _%e168035168142%_
                                         _%hd168036168145%_
                                         _%tl168037168147%_)
                                  (let ((_%g167998168150%_ _%hd168036168145%_)
                                        (_%g167999168151%_ _%hd168027168121%_)
                                        (_%g168000168152%_ _%hd168018168097%_)
                                        (_%g168001168153%_ _%hd168003168057%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g168001168153%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g168000168152%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g168001168153%_
                                                _%g167998168150%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g167999168151%_
                                                     _%g168001168153%_))))
                                        (_%__kont170200170201%_
                                         _%g167998168150%_
                                         _%g167999168151%_
                                         _%g168000168152%_
                                         _%g168001168153%_)
                                        (_%__kont170202170203%_)))))
                               (_%__match170299170300%_
                                (lambda (_%e168002168054%_
                                         _%hd168003168057%_
                                         _%tl168004168059%_
                                         _%e168005168062%_
                                         _%hd168006168065%_
                                         _%tl168007168067%_
                                         _%e168008168070%_
                                         _%hd168009168073%_
                                         _%tl168010168075%_
                                         _%e168011168078%_
                                         _%hd168012168081%_
                                         _%tl168013168083%_
                                         _%e168014168086%_
                                         _%hd168015168089%_
                                         _%tl168016168091%_
                                         _%e168017168094%_
                                         _%hd168018168097%_
                                         _%tl168019168099%_
                                         _%e168020168102%_
                                         _%hd168021168105%_
                                         _%tl168022168107%_
                                         _%e168023168110%_
                                         _%hd168024168113%_
                                         _%tl168025168115%_
                                         _%e168026168118%_
                                         _%hd168027168121%_
                                         _%tl168028168123%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl168022168107%_))
                                      (let ((_%e168029168126%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl168022168107%_))))
                                        (let ((_%tl168031168131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168029168126%_)))
                                              (_%hd168030168129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168029168126%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd168030168129%_))
                                              (let ((_%e168032168134%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd168030168129%_))))
                                                (let ((_%tl168034168139%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e168032168134%_)))
                                                      (_%hd168033168137%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e168032168134%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd168033168137%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd168033168137%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl168034168139%_))
                      (let ((_%e168035168142%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl168034168139%_))))
                        (let ((_%tl168037168147%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e168035168142%_)))
                              (_%hd168036168145%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e168035168142%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl168037168147%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl168031168131%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl168007168067%_))
                                      (_%__match170327170328%_
                                       _%e168002168054%_
                                       _%hd168003168057%_
                                       _%tl168004168059%_
                                       _%e168005168062%_
                                       _%hd168006168065%_
                                       _%tl168007168067%_
                                       _%e168008168070%_
                                       _%hd168009168073%_
                                       _%tl168010168075%_
                                       _%e168011168078%_
                                       _%hd168012168081%_
                                       _%tl168013168083%_
                                       _%e168014168086%_
                                       _%hd168015168089%_
                                       _%tl168016168091%_
                                       _%e168017168094%_
                                       _%hd168018168097%_
                                       _%tl168019168099%_
                                       _%e168020168102%_
                                       _%hd168021168105%_
                                       _%tl168022168107%_
                                       _%e168023168110%_
                                       _%hd168024168113%_
                                       _%tl168025168115%_
                                       _%e168026168118%_
                                       _%hd168027168121%_
                                       _%tl168028168123%_
                                       _%e168029168126%_
                                       _%hd168030168129%_
                                       _%tl168031168131%_
                                       _%e168032168134%_
                                       _%hd168033168137%_
                                       _%tl168034168139%_
                                       _%e168035168142%_
                                       _%hd168036168145%_
                                       _%tl168037168147%_)
                                      (_%__kont170202170203%_))
                                  (_%__kont170202170203%_))
                              (_%__kont170202170203%_))))
                      (_%__kont170202170203%_))
                  (_%__kont170202170203%_))
              (_%__kont170202170203%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont170202170203%_))))
                                      (_%__kont170202170203%_))))
                               (_%__match170229170230%_
                                (lambda (_%e167938168195%_
                                         _%hd167939168198%_
                                         _%tl167940168200%_
                                         _%__splice170196170197%_
                                         _%target167941168203%_
                                         _%tl167943168205%_)
                                  (letrec ((_%loop167944168208%_
                                            (lambda (_%hd167942168211%_
                                                     _%arg167948168213%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd167942168211%_))
                                                  (let ((_%e167945168215%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd167942168211%_))))
                                                    (let ((_%lp-tl167947168220%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e167945168215%_)))
                                                          (_%lp-hd167946168218%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e167945168215%_))))
                                                      (_%loop167944168208%_
                                                       _%lp-tl167947168220%_
                                                       (cons _%lp-hd167946168218%_
                                                             _%arg167948168213%_))))
                                                  (let ((_%arg167949168223%_
                                                         (reverse _%arg167948168213%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl167940168200%_))
                                                        (let ((_%e167950168225%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl167940168200%_))))
                  (let ((_%tl167952168230%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e167950168225%_)))
                        (_%hd167951168228%_
                         (let ()
                           (declare (not safe))
                           (##car _%e167950168225%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd167951168228%_))
                        (let ((_%e167953168233%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd167951168228%_))))
                          (let ((_%tl167955168238%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167953168233%_)))
                                (_%hd167954168236%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167953168233%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd167954168236%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd167954168236%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl167955168238%_))
                                        (let ((_%e167956168241%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl167955168238%_))))
                                          (let ((_%tl167958168246%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167956168241%_)))
                                                (_%hd167957168244%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167956168241%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd167957168244%_))
                                                (let ((_%e167959168249%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd167957168244%_))))
                                                  (let ((_%tl167961168254%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e167959168249%_)))
                                                        (_%hd167960168252%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e167959168249%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd167960168252%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd167960168252%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl167961168254%_))
                        (let ((_%e167962168257%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl167961168254%_))))
                          (let ((_%tl167964168262%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167962168257%_)))
                                (_%hd167963168260%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167962168257%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl167964168262%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl167958168246%_))
                                    (let ((_%e167965168265%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl167958168246%_))))
                                      (let ((_%tl167967168270%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e167965168265%_)))
                                            (_%hd167966168268%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e167965168265%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd167966168268%_))
                                            (let ((_%e167968168273%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd167966168268%_))))
                                              (let ((_%tl167970168278%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e167968168273%_)))
                                                    (_%hd167969168276%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e167968168273%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd167969168276%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd167969168276%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl167970168278%_))
                                                            (let ((_%e167971168281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl167970168278%_))))
                      (let ((_%tl167973168286%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167971168281%_)))
                            (_%hd167972168284%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167971168281%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl167973168286%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl167967168270%_))
                                (if (let ((__tmp171468
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl167967168270%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp171468 '1))
                                    (let ((_%__splice170198170199%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl167967168270%_
                                              '1))))
                                      (let ((_%tl167976168291%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice170198170199%_
                                                '1)))
                                            (_%target167974168289%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice170198170199%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl167976168291%_))
                                            (let ((_%e167983168294%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl167976168291%_))))
                                              (let ((_%tl167985168299%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e167983168294%_)))
                                                    (_%hd167984168297%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e167983168294%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd167984168297%_))
                                                    (let ((_%e167986168302%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd167984168297%_))))
                                                      (let ((_%tl167988168307%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e167986168302%_)))
                    (_%hd167987168305%_
                     (let () (declare (not safe)) (##car _%e167986168302%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd167987168305%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd167987168305%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl167988168307%_))
                            (let ((_%e167989168310%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl167988168307%_))))
                              (let ((_%tl167991168315%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167989168310%_)))
                                    (_%hd167990168313%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167989168310%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl167991168315%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl167985168299%_))
                                        (letrec ((_%loop167977168318%_
                                                  (lambda (_%hd167975168321%_
                                                           _%xarg167981168323%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd167975168321%_))
                                                        (let ((_%e167978168325%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd167975168321%_))))
                  (let ((_%lp-tl167980168330%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e167978168325%_)))
                        (_%lp-hd167979168328%_
                         (let ()
                           (declare (not safe))
                           (##car _%e167978168325%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd167979168328%_))
                        (let ((_%e167992168333%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd167979168328%_))))
                          (let ((_%tl167994168338%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167992168333%_)))
                                (_%hd167993168336%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167992168333%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd167993168336%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd167993168336%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl167994168338%_))
                                        (let ((_%e167995168341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl167994168338%_))))
                                          (let ((_%tl167997168346%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167995168341%_)))
                                                (_%hd167996168344%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167995168341%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl167997168346%_))
                                                (_%loop167977168318%_
                                                 _%lp-tl167980168330%_
                                                 (cons _%hd167996168344%_
                                                       _%xarg167981168323%_))
                                                (_%__match170299170300%_
                                                 _%e167938168195%_
                                                 _%hd167939168198%_
                                                 _%tl167940168200%_
                                                 _%e167950168225%_
                                                 _%hd167951168228%_
                                                 _%tl167952168230%_
                                                 _%e167953168233%_
                                                 _%hd167954168236%_
                                                 _%tl167955168238%_
                                                 _%e167956168241%_
                                                 _%hd167957168244%_
                                                 _%tl167958168246%_
                                                 _%e167959168249%_
                                                 _%hd167960168252%_
                                                 _%tl167961168254%_
                                                 _%e167962168257%_
                                                 _%hd167963168260%_
                                                 _%tl167964168262%_
                                                 _%e167965168265%_
                                                 _%hd167966168268%_
                                                 _%tl167967168270%_
                                                 _%e167968168273%_
                                                 _%hd167969168276%_
                                                 _%tl167970168278%_
                                                 _%e167971168281%_
                                                 _%hd167972168284%_
                                                 _%tl167973168286%_))))
                                        (_%__match170299170300%_
                                         _%e167938168195%_
                                         _%hd167939168198%_
                                         _%tl167940168200%_
                                         _%e167950168225%_
                                         _%hd167951168228%_
                                         _%tl167952168230%_
                                         _%e167953168233%_
                                         _%hd167954168236%_
                                         _%tl167955168238%_
                                         _%e167956168241%_
                                         _%hd167957168244%_
                                         _%tl167958168246%_
                                         _%e167959168249%_
                                         _%hd167960168252%_
                                         _%tl167961168254%_
                                         _%e167962168257%_
                                         _%hd167963168260%_
                                         _%tl167964168262%_
                                         _%e167965168265%_
                                         _%hd167966168268%_
                                         _%tl167967168270%_
                                         _%e167968168273%_
                                         _%hd167969168276%_
                                         _%tl167970168278%_
                                         _%e167971168281%_
                                         _%hd167972168284%_
                                         _%tl167973168286%_))
                                    (_%__match170299170300%_
                                     _%e167938168195%_
                                     _%hd167939168198%_
                                     _%tl167940168200%_
                                     _%e167950168225%_
                                     _%hd167951168228%_
                                     _%tl167952168230%_
                                     _%e167953168233%_
                                     _%hd167954168236%_
                                     _%tl167955168238%_
                                     _%e167956168241%_
                                     _%hd167957168244%_
                                     _%tl167958168246%_
                                     _%e167959168249%_
                                     _%hd167960168252%_
                                     _%tl167961168254%_
                                     _%e167962168257%_
                                     _%hd167963168260%_
                                     _%tl167964168262%_
                                     _%e167965168265%_
                                     _%hd167966168268%_
                                     _%tl167967168270%_
                                     _%e167968168273%_
                                     _%hd167969168276%_
                                     _%tl167970168278%_
                                     _%e167971168281%_
                                     _%hd167972168284%_
                                     _%tl167973168286%_))
                                (_%__match170299170300%_
                                 _%e167938168195%_
                                 _%hd167939168198%_
                                 _%tl167940168200%_
                                 _%e167950168225%_
                                 _%hd167951168228%_
                                 _%tl167952168230%_
                                 _%e167953168233%_
                                 _%hd167954168236%_
                                 _%tl167955168238%_
                                 _%e167956168241%_
                                 _%hd167957168244%_
                                 _%tl167958168246%_
                                 _%e167959168249%_
                                 _%hd167960168252%_
                                 _%tl167961168254%_
                                 _%e167962168257%_
                                 _%hd167963168260%_
                                 _%tl167964168262%_
                                 _%e167965168265%_
                                 _%hd167966168268%_
                                 _%tl167967168270%_
                                 _%e167968168273%_
                                 _%hd167969168276%_
                                 _%tl167970168278%_
                                 _%e167971168281%_
                                 _%hd167972168284%_
                                 _%tl167973168286%_))))
                        (_%__match170299170300%_
                         _%e167938168195%_
                         _%hd167939168198%_
                         _%tl167940168200%_
                         _%e167950168225%_
                         _%hd167951168228%_
                         _%tl167952168230%_
                         _%e167953168233%_
                         _%hd167954168236%_
                         _%tl167955168238%_
                         _%e167956168241%_
                         _%hd167957168244%_
                         _%tl167958168246%_
                         _%e167959168249%_
                         _%hd167960168252%_
                         _%tl167961168254%_
                         _%e167962168257%_
                         _%hd167963168260%_
                         _%tl167964168262%_
                         _%e167965168265%_
                         _%hd167966168268%_
                         _%tl167967168270%_
                         _%e167968168273%_
                         _%hd167969168276%_
                         _%tl167970168278%_
                         _%e167971168281%_
                         _%hd167972168284%_
                         _%tl167973168286%_))))
                (let ((_%xarg167982168349%_ (reverse _%xarg167981168323%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl167952168230%_))
                      (let ((_%g167932168351%_ _%hd167990168313%_)
                            (_%g167933168352%_ _%xarg167982168349%_)
                            (_%g167934168353%_ _%hd167972168284%_)
                            (_%g167935168354%_ _%hd167963168260%_)
                            (_%g167936168355%_ _%tl167943168205%_)
                            (_%g167937168356%_ _%arg167949168223%_))
                        (if (and (let ((__tmp171469
                                        (let ((__tmp171470
                                               (lambda (_%g168399168402%_
                                                        _%g168400168404%_)
                                                 (cons _%g168399168402%_
                                                       _%g168400168404%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp171470
                                           '()
                                           _%g167937168356%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp171469))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g167936168355%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g167935168354%_
                                    'apply))
                                 (let ((__tmp171473
                                        (length (let ((__tmp171474
                                                       (lambda (_%g168406168409%_
                                                                _%g168407168411%_)
                                                         (cons _%g168406168409%_
                                                               _%g168407168411%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp171474
                                                   '()
                                                   _%g167937168356%_))))
                                       (__tmp171471
                                        (length (let ((__tmp171472
                                                       (lambda (_%g168413168416%_
                                                                _%g168414168418%_)
                                                         (cons _%g168413168416%_
                                                               _%g168414168418%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp171472
                                                   '()
                                                   _%g167933168352%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp171473 __tmp171471))
                                 (let ((__tmp171477
                                        (let ((__tmp171478
                                               (lambda (_%g168420168423%_
                                                        _%g168421168425%_)
                                                 (cons _%g168420168423%_
                                                       _%g168421168425%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp171478
                                           '()
                                           _%g167937168356%_)))
                                       (__tmp171475
                                        (let ((__tmp171476
                                               (lambda (_%g168427168430%_
                                                        _%g168428168432%_)
                                                 (cons _%g168427168430%_
                                                       _%g168428168432%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp171476
                                           '()
                                           _%g167933168352%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp171477
                                    __tmp171475))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g167936168355%_
                                    _%g167932168351%_))
                                 (not (let ((__tmp171482
                                             (lambda (_%g168434168436%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g168434168436%_
                                                  _%g167934168353%_))))
                                            (__tmp171479
                                             (let ((__tmp171481
                                                    (lambda (_%g168438168441%_
                                                             _%g168439168443%_)
                                                      (cons _%g168438168441%_
                                                            _%g168439168443%_)))
                                                   (__tmp171480
                                                    (cons _%g167936168355%_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp171481
                                                __tmp171480
                                                _%g167937168356%_))))
                                        (declare (not safe))
                                        (__find __tmp171482 __tmp171479))))
                            (_%__kont170194170195%_
                             _%g167932168351%_
                             _%g167933168352%_
                             _%g167934168353%_
                             _%g167935168354%_
                             _%g167936168355%_
                             _%g167937168356%_)
                            (_%__match170299170300%_
                             _%e167938168195%_
                             _%hd167939168198%_
                             _%tl167940168200%_
                             _%e167950168225%_
                             _%hd167951168228%_
                             _%tl167952168230%_
                             _%e167953168233%_
                             _%hd167954168236%_
                             _%tl167955168238%_
                             _%e167956168241%_
                             _%hd167957168244%_
                             _%tl167958168246%_
                             _%e167959168249%_
                             _%hd167960168252%_
                             _%tl167961168254%_
                             _%e167962168257%_
                             _%hd167963168260%_
                             _%tl167964168262%_
                             _%e167965168265%_
                             _%hd167966168268%_
                             _%tl167967168270%_
                             _%e167968168273%_
                             _%hd167969168276%_
                             _%tl167970168278%_
                             _%e167971168281%_
                             _%hd167972168284%_
                             _%tl167973168286%_)))
                      (_%__match170299170300%_
                       _%e167938168195%_
                       _%hd167939168198%_
                       _%tl167940168200%_
                       _%e167950168225%_
                       _%hd167951168228%_
                       _%tl167952168230%_
                       _%e167953168233%_
                       _%hd167954168236%_
                       _%tl167955168238%_
                       _%e167956168241%_
                       _%hd167957168244%_
                       _%tl167958168246%_
                       _%e167959168249%_
                       _%hd167960168252%_
                       _%tl167961168254%_
                       _%e167962168257%_
                       _%hd167963168260%_
                       _%tl167964168262%_
                       _%e167965168265%_
                       _%hd167966168268%_
                       _%tl167967168270%_
                       _%e167968168273%_
                       _%hd167969168276%_
                       _%tl167970168278%_
                       _%e167971168281%_
                       _%hd167972168284%_
                       _%tl167973168286%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop167977168318%_
                                           _%target167974168289%_
                                           '()))
                                        (_%__match170299170300%_
                                         _%e167938168195%_
                                         _%hd167939168198%_
                                         _%tl167940168200%_
                                         _%e167950168225%_
                                         _%hd167951168228%_
                                         _%tl167952168230%_
                                         _%e167953168233%_
                                         _%hd167954168236%_
                                         _%tl167955168238%_
                                         _%e167956168241%_
                                         _%hd167957168244%_
                                         _%tl167958168246%_
                                         _%e167959168249%_
                                         _%hd167960168252%_
                                         _%tl167961168254%_
                                         _%e167962168257%_
                                         _%hd167963168260%_
                                         _%tl167964168262%_
                                         _%e167965168265%_
                                         _%hd167966168268%_
                                         _%tl167967168270%_
                                         _%e167968168273%_
                                         _%hd167969168276%_
                                         _%tl167970168278%_
                                         _%e167971168281%_
                                         _%hd167972168284%_
                                         _%tl167973168286%_))
                                    (_%__match170299170300%_
                                     _%e167938168195%_
                                     _%hd167939168198%_
                                     _%tl167940168200%_
                                     _%e167950168225%_
                                     _%hd167951168228%_
                                     _%tl167952168230%_
                                     _%e167953168233%_
                                     _%hd167954168236%_
                                     _%tl167955168238%_
                                     _%e167956168241%_
                                     _%hd167957168244%_
                                     _%tl167958168246%_
                                     _%e167959168249%_
                                     _%hd167960168252%_
                                     _%tl167961168254%_
                                     _%e167962168257%_
                                     _%hd167963168260%_
                                     _%tl167964168262%_
                                     _%e167965168265%_
                                     _%hd167966168268%_
                                     _%tl167967168270%_
                                     _%e167968168273%_
                                     _%hd167969168276%_
                                     _%tl167970168278%_
                                     _%e167971168281%_
                                     _%hd167972168284%_
                                     _%tl167973168286%_))))
                            (_%__match170299170300%_
                             _%e167938168195%_
                             _%hd167939168198%_
                             _%tl167940168200%_
                             _%e167950168225%_
                             _%hd167951168228%_
                             _%tl167952168230%_
                             _%e167953168233%_
                             _%hd167954168236%_
                             _%tl167955168238%_
                             _%e167956168241%_
                             _%hd167957168244%_
                             _%tl167958168246%_
                             _%e167959168249%_
                             _%hd167960168252%_
                             _%tl167961168254%_
                             _%e167962168257%_
                             _%hd167963168260%_
                             _%tl167964168262%_
                             _%e167965168265%_
                             _%hd167966168268%_
                             _%tl167967168270%_
                             _%e167968168273%_
                             _%hd167969168276%_
                             _%tl167970168278%_
                             _%e167971168281%_
                             _%hd167972168284%_
                             _%tl167973168286%_))
                        (_%__match170299170300%_
                         _%e167938168195%_
                         _%hd167939168198%_
                         _%tl167940168200%_
                         _%e167950168225%_
                         _%hd167951168228%_
                         _%tl167952168230%_
                         _%e167953168233%_
                         _%hd167954168236%_
                         _%tl167955168238%_
                         _%e167956168241%_
                         _%hd167957168244%_
                         _%tl167958168246%_
                         _%e167959168249%_
                         _%hd167960168252%_
                         _%tl167961168254%_
                         _%e167962168257%_
                         _%hd167963168260%_
                         _%tl167964168262%_
                         _%e167965168265%_
                         _%hd167966168268%_
                         _%tl167967168270%_
                         _%e167968168273%_
                         _%hd167969168276%_
                         _%tl167970168278%_
                         _%e167971168281%_
                         _%hd167972168284%_
                         _%tl167973168286%_))
                    (_%__match170299170300%_
                     _%e167938168195%_
                     _%hd167939168198%_
                     _%tl167940168200%_
                     _%e167950168225%_
                     _%hd167951168228%_
                     _%tl167952168230%_
                     _%e167953168233%_
                     _%hd167954168236%_
                     _%tl167955168238%_
                     _%e167956168241%_
                     _%hd167957168244%_
                     _%tl167958168246%_
                     _%e167959168249%_
                     _%hd167960168252%_
                     _%tl167961168254%_
                     _%e167962168257%_
                     _%hd167963168260%_
                     _%tl167964168262%_
                     _%e167965168265%_
                     _%hd167966168268%_
                     _%tl167967168270%_
                     _%e167968168273%_
                     _%hd167969168276%_
                     _%tl167970168278%_
                     _%e167971168281%_
                     _%hd167972168284%_
                     _%tl167973168286%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match170299170300%_
                                                     _%e167938168195%_
                                                     _%hd167939168198%_
                                                     _%tl167940168200%_
                                                     _%e167950168225%_
                                                     _%hd167951168228%_
                                                     _%tl167952168230%_
                                                     _%e167953168233%_
                                                     _%hd167954168236%_
                                                     _%tl167955168238%_
                                                     _%e167956168241%_
                                                     _%hd167957168244%_
                                                     _%tl167958168246%_
                                                     _%e167959168249%_
                                                     _%hd167960168252%_
                                                     _%tl167961168254%_
                                                     _%e167962168257%_
                                                     _%hd167963168260%_
                                                     _%tl167964168262%_
                                                     _%e167965168265%_
                                                     _%hd167966168268%_
                                                     _%tl167967168270%_
                                                     _%e167968168273%_
                                                     _%hd167969168276%_
                                                     _%tl167970168278%_
                                                     _%e167971168281%_
                                                     _%hd167972168284%_
                                                     _%tl167973168286%_))))
                                            (_%__match170299170300%_
                                             _%e167938168195%_
                                             _%hd167939168198%_
                                             _%tl167940168200%_
                                             _%e167950168225%_
                                             _%hd167951168228%_
                                             _%tl167952168230%_
                                             _%e167953168233%_
                                             _%hd167954168236%_
                                             _%tl167955168238%_
                                             _%e167956168241%_
                                             _%hd167957168244%_
                                             _%tl167958168246%_
                                             _%e167959168249%_
                                             _%hd167960168252%_
                                             _%tl167961168254%_
                                             _%e167962168257%_
                                             _%hd167963168260%_
                                             _%tl167964168262%_
                                             _%e167965168265%_
                                             _%hd167966168268%_
                                             _%tl167967168270%_
                                             _%e167968168273%_
                                             _%hd167969168276%_
                                             _%tl167970168278%_
                                             _%e167971168281%_
                                             _%hd167972168284%_
                                             _%tl167973168286%_))))
                                    (_%__match170299170300%_
                                     _%e167938168195%_
                                     _%hd167939168198%_
                                     _%tl167940168200%_
                                     _%e167950168225%_
                                     _%hd167951168228%_
                                     _%tl167952168230%_
                                     _%e167953168233%_
                                     _%hd167954168236%_
                                     _%tl167955168238%_
                                     _%e167956168241%_
                                     _%hd167957168244%_
                                     _%tl167958168246%_
                                     _%e167959168249%_
                                     _%hd167960168252%_
                                     _%tl167961168254%_
                                     _%e167962168257%_
                                     _%hd167963168260%_
                                     _%tl167964168262%_
                                     _%e167965168265%_
                                     _%hd167966168268%_
                                     _%tl167967168270%_
                                     _%e167968168273%_
                                     _%hd167969168276%_
                                     _%tl167970168278%_
                                     _%e167971168281%_
                                     _%hd167972168284%_
                                     _%tl167973168286%_))
                                (_%__match170299170300%_
                                 _%e167938168195%_
                                 _%hd167939168198%_
                                 _%tl167940168200%_
                                 _%e167950168225%_
                                 _%hd167951168228%_
                                 _%tl167952168230%_
                                 _%e167953168233%_
                                 _%hd167954168236%_
                                 _%tl167955168238%_
                                 _%e167956168241%_
                                 _%hd167957168244%_
                                 _%tl167958168246%_
                                 _%e167959168249%_
                                 _%hd167960168252%_
                                 _%tl167961168254%_
                                 _%e167962168257%_
                                 _%hd167963168260%_
                                 _%tl167964168262%_
                                 _%e167965168265%_
                                 _%hd167966168268%_
                                 _%tl167967168270%_
                                 _%e167968168273%_
                                 _%hd167969168276%_
                                 _%tl167970168278%_
                                 _%e167971168281%_
                                 _%hd167972168284%_
                                 _%tl167973168286%_))
                            (_%__kont170202170203%_))))
                    (_%__kont170202170203%_))
                (_%__kont170202170203%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont170202170203%_))))
                                            (_%__kont170202170203%_))))
                                    (_%__kont170202170203%_))
                                (_%__kont170202170203%_))))
                        (_%__kont170202170203%_))
                    (_%__kont170202170203%_))
                (_%__kont170202170203%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont170202170203%_))))
                                        (_%__kont170202170203%_))
                                    (_%__kont170202170203%_))
                                (_%__kont170202170203%_))))
                        (_%__kont170202170203%_))))
                (_%__kont170202170203%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop167944168208%_
                                     _%target167941168203%_
                                     '()))))
                               (_%__match170217170218%_
                                (lambda (_%e167890168451%_
                                         _%hd167891168454%_
                                         _%tl167892168456%_
                                         _%__splice170190170191%_
                                         _%target167893168459%_
                                         _%tl167895168461%_)
                                  (letrec ((_%loop167896168464%_
                                            (lambda (_%hd167894168467%_
                                                     _%arg167900168469%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd167894168467%_))
                                                  (let ((_%e167897168471%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd167894168467%_))))
                                                    (let ((_%lp-tl167899168476%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e167897168471%_)))
                                                          (_%lp-hd167898168474%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e167897168471%_))))
                                                      (_%loop167896168464%_
                                                       _%lp-tl167899168476%_
                                                       (cons _%lp-hd167898168474%_
                                                             _%arg167900168469%_))))
                                                  (let ((_%arg167901168479%_
                                                         (reverse _%arg167900168469%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl167892168456%_))
                                                        (let ((_%e167902168481%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl167892168456%_))))
                  (let ((_%tl167904168486%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e167902168481%_)))
                        (_%hd167903168484%_
                         (let ()
                           (declare (not safe))
                           (##car _%e167902168481%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd167903168484%_))
                        (let ((_%e167905168489%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd167903168484%_))))
                          (let ((_%tl167907168494%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167905168489%_)))
                                (_%hd167906168492%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167905168489%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd167906168492%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd167906168492%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl167907168494%_))
                                        (let ((_%e167908168497%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl167907168494%_))))
                                          (let ((_%tl167910168502%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167908168497%_)))
                                                (_%hd167909168500%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167908168497%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd167909168500%_))
                                                (let ((_%e167911168505%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd167909168500%_))))
                                                  (let ((_%tl167913168510%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e167911168505%_)))
                                                        (_%hd167912168508%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e167911168505%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd167912168508%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd167912168508%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl167913168510%_))
                        (let ((_%e167914168513%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl167913168510%_))))
                          (let ((_%tl167916168518%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167914168513%_)))
                                (_%hd167915168516%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167914168513%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl167916168518%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl167910168502%_))
                                    (let ((_%__splice170192170193%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl167910168502%_
                                              '0))))
                                      (let ((_%tl167919168523%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice170192170193%_
                                                '1)))
                                            (_%target167917168521%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice170192170193%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl167919168523%_))
                                            (letrec ((_%loop167920168526%_
                                                      (lambda (_%hd167918168529%_
                                                               _%xarg167924168531%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd167918168529%_))
                                                            (let ((_%e167921168533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd167918168529%_))))
                      (let ((_%lp-tl167923168538%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167921168533%_)))
                            (_%lp-hd167922168536%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167921168533%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd167922168536%_))
                            (let ((_%e167926168541%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd167922168536%_))))
                              (let ((_%tl167928168546%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167926168541%_)))
                                    (_%hd167927168544%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167926168541%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd167927168544%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd167927168544%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl167928168546%_))
                                            (let ((_%e167929168549%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl167928168546%_))))
                                              (let ((_%tl167931168554%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e167929168549%_)))
                                                    (_%hd167930168552%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e167929168549%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl167931168554%_))
                                                    (_%loop167920168526%_
                                                     _%lp-tl167923168538%_
                                                     (cons _%hd167930168552%_
                                                           _%xarg167924168531%_))
                                                    (_%__match170229170230%_
                                                     _%e167890168451%_
                                                     _%hd167891168454%_
                                                     _%tl167892168456%_
                                                     _%__splice170190170191%_
                                                     _%target167893168459%_
                                                     _%tl167895168461%_))))
                                            (_%__match170229170230%_
                                             _%e167890168451%_
                                             _%hd167891168454%_
                                             _%tl167892168456%_
                                             _%__splice170190170191%_
                                             _%target167893168459%_
                                             _%tl167895168461%_))
                                        (_%__match170229170230%_
                                         _%e167890168451%_
                                         _%hd167891168454%_
                                         _%tl167892168456%_
                                         _%__splice170190170191%_
                                         _%target167893168459%_
                                         _%tl167895168461%_))
                                    (_%__match170229170230%_
                                     _%e167890168451%_
                                     _%hd167891168454%_
                                     _%tl167892168456%_
                                     _%__splice170190170191%_
                                     _%target167893168459%_
                                     _%tl167895168461%_))))
                            (_%__match170229170230%_
                             _%e167890168451%_
                             _%hd167891168454%_
                             _%tl167892168456%_
                             _%__splice170190170191%_
                             _%target167893168459%_
                             _%tl167895168461%_))))
                    (let ((_%xarg167925168557%_
                           (reverse _%xarg167924168531%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167904168486%_))
                          (let ((_%g167887168559%_ _%xarg167925168557%_)
                                (_%g167888168560%_ _%hd167915168516%_)
                                (_%g167889168561%_ _%arg167901168479%_))
                            (if (and (let ((__tmp171483
                                            (let ((__tmp171484
                                                   (lambda (_%g168589168592%_
                                                            _%g168590168594%_)
                                                     (cons _%g168589168592%_
                                                           _%g168590168594%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp171484
                                               '()
                                               _%g167889168561%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp171483))
                                     (let ((__tmp171487
                                            (length (let ((__tmp171488
                                                           (lambda (_%g168596168599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g168597168601%_)
                     (cons _%g168596168599%_ _%g168597168601%_))))
              (declare (not safe))
              (__foldr1 __tmp171488 '() _%g167889168561%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp171485
                                            (length (let ((__tmp171486
                                                           (lambda (_%g168603168606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g168604168608%_)
                     (cons _%g168603168606%_ _%g168604168608%_))))
              (declare (not safe))
              (__foldr1 __tmp171486 '() _%g167887168559%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp171487 __tmp171485))
                                     (let ((__tmp171491
                                            (let ((__tmp171492
                                                   (lambda (_%g168610168613%_
                                                            _%g168611168615%_)
                                                     (cons _%g168610168613%_
                                                           _%g168611168615%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp171492
                                               '()
                                               _%g167889168561%_)))
                                           (__tmp171489
                                            (let ((__tmp171490
                                                   (lambda (_%g168617168620%_
                                                            _%g168618168622%_)
                                                     (cons _%g168617168620%_
                                                           _%g168618168622%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp171490
                                               '()
                                               _%g167887168559%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp171491
                                        __tmp171489))
                                     (not (let ((__tmp171495
                                                 (lambda (_%g168624168626%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g168624168626%_
                                                      _%g167888168560%_))))
                                                (__tmp171493
                                                 (let ((__tmp171494
                                                        (lambda (_%g168628168631%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g168629168633%_)
                  (cons _%g168628168631%_ _%g168629168633%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp171494
                                                    '()
                                                    _%g167889168561%_))))
                                            (declare (not safe))
                                            (__find __tmp171495 __tmp171493))))
                                (_%__kont170188170189%_
                                 _%g167887168559%_
                                 _%g167888168560%_
                                 _%g167889168561%_)
                                (_%__match170229170230%_
                                 _%e167890168451%_
                                 _%hd167891168454%_
                                 _%tl167892168456%_
                                 _%__splice170190170191%_
                                 _%target167893168459%_
                                 _%tl167895168461%_)))
                          (_%__match170229170230%_
                           _%e167890168451%_
                           _%hd167891168454%_
                           _%tl167892168456%_
                           _%__splice170190170191%_
                           _%target167893168459%_
                           _%tl167895168461%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop167920168526%_
                                               _%target167917168521%_
                                               '()))
                                            (_%__match170229170230%_
                                             _%e167890168451%_
                                             _%hd167891168454%_
                                             _%tl167892168456%_
                                             _%__splice170190170191%_
                                             _%target167893168459%_
                                             _%tl167895168461%_))))
                                    (_%__match170229170230%_
                                     _%e167890168451%_
                                     _%hd167891168454%_
                                     _%tl167892168456%_
                                     _%__splice170190170191%_
                                     _%target167893168459%_
                                     _%tl167895168461%_))
                                (_%__match170229170230%_
                                 _%e167890168451%_
                                 _%hd167891168454%_
                                 _%tl167892168456%_
                                 _%__splice170190170191%_
                                 _%target167893168459%_
                                 _%tl167895168461%_))))
                        (_%__match170229170230%_
                         _%e167890168451%_
                         _%hd167891168454%_
                         _%tl167892168456%_
                         _%__splice170190170191%_
                         _%target167893168459%_
                         _%tl167895168461%_))
                    (_%__match170229170230%_
                     _%e167890168451%_
                     _%hd167891168454%_
                     _%tl167892168456%_
                     _%__splice170190170191%_
                     _%target167893168459%_
                     _%tl167895168461%_))
                (_%__match170229170230%_
                 _%e167890168451%_
                 _%hd167891168454%_
                 _%tl167892168456%_
                 _%__splice170190170191%_
                 _%target167893168459%_
                 _%tl167895168461%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match170229170230%_
                                                 _%e167890168451%_
                                                 _%hd167891168454%_
                                                 _%tl167892168456%_
                                                 _%__splice170190170191%_
                                                 _%target167893168459%_
                                                 _%tl167895168461%_))))
                                        (_%__match170229170230%_
                                         _%e167890168451%_
                                         _%hd167891168454%_
                                         _%tl167892168456%_
                                         _%__splice170190170191%_
                                         _%target167893168459%_
                                         _%tl167895168461%_))
                                    (_%__match170229170230%_
                                     _%e167890168451%_
                                     _%hd167891168454%_
                                     _%tl167892168456%_
                                     _%__splice170190170191%_
                                     _%target167893168459%_
                                     _%tl167895168461%_))
                                (_%__match170229170230%_
                                 _%e167890168451%_
                                 _%hd167891168454%_
                                 _%tl167892168456%_
                                 _%__splice170190170191%_
                                 _%target167893168459%_
                                 _%tl167895168461%_))))
                        (_%__match170229170230%_
                         _%e167890168451%_
                         _%hd167891168454%_
                         _%tl167892168456%_
                         _%__splice170190170191%_
                         _%target167893168459%_
                         _%tl167895168461%_))))
                (_%__match170229170230%_
                 _%e167890168451%_
                 _%hd167891168454%_
                 _%tl167892168456%_
                 _%__splice170190170191%_
                 _%target167893168459%_
                 _%tl167895168461%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop167896168464%_
                                     _%target167893168459%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx170186170187%_))
                              (let ((_%e167890168451%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx170186170187%_))))
                                (let ((_%tl167892168456%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167890168451%_)))
                                      (_%hd167891168454%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167890168451%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd167891168454%_))
                                      (let ((_%__splice170190170191%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd167891168454%_
                                                '0))))
                                        (let ((_%tl167895168461%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170190170191%_
                                                  '1)))
                                              (_%target167893168459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170190170191%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl167895168461%_))
                                              (_%__match170217170218%_
                                               _%e167890168451%_
                                               _%hd167891168454%_
                                               _%tl167892168456%_
                                               _%__splice170190170191%_
                                               _%target167893168459%_
                                               _%tl167895168461%_)
                                              (_%__match170229170230%_
                                               _%e167890168451%_
                                               _%hd167891168454%_
                                               _%tl167892168456%_
                                               _%__splice170190170191%_
                                               _%target167893168459%_
                                               _%tl167895168461%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl167892168456%_))
                                          (let ((_%e168005168062%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl167892168456%_))))
                                            (let ((_%tl168007168067%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e168005168062%_)))
                                                  (_%hd168006168065%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e168005168062%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168006168065%_))
                                                  (let ((_%e168008168070%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168006168065%_))))
                                                    (let ((_%tl168010168075%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168008168070%_)))
                                                          (_%hd168009168073%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168008168070%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd168009168073%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd168009168073%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl168010168075%_))
                          (let ((_%e168011168078%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl168010168075%_))))
                            (let ((_%tl168013168083%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168011168078%_)))
                                  (_%hd168012168081%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168011168078%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd168012168081%_))
                                  (let ((_%e168014168086%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd168012168081%_))))
                                    (let ((_%tl168016168091%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168014168086%_)))
                                          (_%hd168015168089%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168014168086%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd168015168089%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd168015168089%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl168016168091%_))
                                                  (let ((_%e168017168094%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl168016168091%_))))
                                                    (let ((_%tl168019168099%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168017168094%_)))
                                                          (_%hd168018168097%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168017168094%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl168019168099%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl168013168083%_))
                      (let ((_%e168020168102%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl168013168083%_))))
                        (let ((_%tl168022168107%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e168020168102%_)))
                              (_%hd168021168105%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e168020168102%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd168021168105%_))
                              (let ((_%e168023168110%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd168021168105%_))))
                                (let ((_%tl168025168115%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168023168110%_)))
                                      (_%hd168024168113%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168023168110%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd168024168113%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd168024168113%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl168025168115%_))
                                              (let ((_%e168026168118%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl168025168115%_))))
                                                (let ((_%tl168028168123%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e168026168118%_)))
                                                      (_%hd168027168121%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e168026168118%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl168028168123%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl168022168107%_))
                                                          (let ((_%e168029168126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl168022168107%_))))
                    (let ((_%tl168031168131%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168029168126%_)))
                          (_%hd168030168129%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168029168126%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd168030168129%_))
                          (let ((_%e168032168134%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd168030168129%_))))
                            (let ((_%tl168034168139%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168032168134%_)))
                                  (_%hd168033168137%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168032168134%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd168033168137%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd168033168137%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl168034168139%_))
                                          (let ((_%e168035168142%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl168034168139%_))))
                                            (let ((_%tl168037168147%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e168035168142%_)))
                                                  (_%hd168036168145%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e168035168142%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl168037168147%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl168031168131%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl168007168067%_))
                                                          (_%__match170327170328%_
                                                           _%e167890168451%_
                                                           _%hd167891168454%_
                                                           _%tl167892168456%_
                                                           _%e168005168062%_
                                                           _%hd168006168065%_
                                                           _%tl168007168067%_
                                                           _%e168008168070%_
                                                           _%hd168009168073%_
                                                           _%tl168010168075%_
                                                           _%e168011168078%_
                                                           _%hd168012168081%_
                                                           _%tl168013168083%_
                                                           _%e168014168086%_
                                                           _%hd168015168089%_
                                                           _%tl168016168091%_
                                                           _%e168017168094%_
                                                           _%hd168018168097%_
                                                           _%tl168019168099%_
                                                           _%e168020168102%_
                                                           _%hd168021168105%_
                                                           _%tl168022168107%_
                                                           _%e168023168110%_
                                                           _%hd168024168113%_
                                                           _%tl168025168115%_
                                                           _%e168026168118%_
                                                           _%hd168027168121%_
                                                           _%tl168028168123%_
                                                           _%e168029168126%_
                                                           _%hd168030168129%_
                                                           _%tl168031168131%_
                                                           _%e168032168134%_
                                                           _%hd168033168137%_
                                                           _%tl168034168139%_
                                                           _%e168035168142%_
                                                           _%hd168036168145%_
                                                           _%tl168037168147%_)
                                                          (_%__kont170202170203%_))
                                                      (_%__kont170202170203%_))
                                                  (_%__kont170202170203%_))))
                                          (_%__kont170202170203%_))
                                      (_%__kont170202170203%_))
                                  (_%__kont170202170203%_))))
                          (_%__kont170202170203%_))))
                  (_%__kont170202170203%_))
              (_%__kont170202170203%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont170202170203%_))
                                          (_%__kont170202170203%_))
                                      (_%__kont170202170203%_))))
                              (_%__kont170202170203%_))))
                      (_%__kont170202170203%_))
                  (_%__kont170202170203%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170202170203%_))
                                              (_%__kont170202170203%_))
                                          (_%__kont170202170203%_))))
                                  (_%__kont170202170203%_))))
                          (_%__kont170202170203%_))
                      (_%__kont170202170203%_))
                  (_%__kont170202170203%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170202170203%_))))
                                          (_%__kont170202170203%_)))))
                              (_%__kont170202170203%_)))))))
                 (_%dispatch-case-e167200%_
                  (lambda (_%hd167347%_ _%body167348%_)
                    (let* ((_%form167350%_
                            (cons _%hd167347%_ (cons _%body167348%_ '())))
                           (_%__stx170330170331%_ _%form167350%_)
                           (_%g167354167478%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx170330170331%_)))))
                      (let ((_%__kont170332170333%_
                             (lambda (_%g167356167843%_
                                      _%g167357167844%_
                                      _%g167358167845%_)
                               (let ((__tmp171496
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g167357167844%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self167196%_
                                  __tmp171496))))
                            (_%__kont170338170339%_
                             (lambda (_%g167401167695%_
                                      _%g167402167696%_
                                      _%g167403167697%_
                                      _%g167404167698%_)
                               (let ((__tmp171497
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g167401167695%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self167196%_
                                  __tmp171497))))
                            (_%__kont170342170343%_
                             (lambda (_%g167441167563%_
                                      _%g167442167564%_
                                      _%g167443167565%_)
                               (let ((__tmp171498
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g167441167563%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self167196%_
                                  __tmp171498)))))
                        (let* ((_%__match170439170440%_
                                (lambda (_%e167444167483%_
                                         _%hd167445167486%_
                                         _%tl167446167488%_
                                         _%e167447167491%_
                                         _%hd167448167494%_
                                         _%tl167449167496%_
                                         _%e167450167499%_
                                         _%hd167451167502%_
                                         _%tl167452167504%_
                                         _%e167453167507%_
                                         _%hd167454167510%_
                                         _%tl167455167512%_
                                         _%e167456167515%_
                                         _%hd167457167518%_
                                         _%tl167458167520%_
                                         _%e167459167523%_
                                         _%hd167460167526%_
                                         _%tl167461167528%_
                                         _%e167462167531%_
                                         _%hd167463167534%_
                                         _%tl167464167536%_
                                         _%e167465167539%_
                                         _%hd167466167542%_
                                         _%tl167467167544%_
                                         _%e167468167547%_
                                         _%hd167469167550%_
                                         _%tl167470167552%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl167464167536%_))
                                      (let ((_%e167471167555%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl167464167536%_))))
                                        (let ((_%tl167473167560%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e167471167555%_)))
                                              (_%hd167472167558%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e167471167555%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl167473167560%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl167449167496%_))
                                                  (_%__kont170342170343%_
                                                   _%hd167469167550%_
                                                   _%hd167460167526%_
                                                   _%hd167445167486%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g167354167478%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g167354167478%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g167354167478%_)))))
                               (_%__match170369170370%_
                                (lambda (_%e167405167601%_
                                         _%hd167406167604%_
                                         _%tl167407167606%_
                                         _%__splice170340170341%_
                                         _%target167408167609%_
                                         _%tl167410167611%_)
                                  (letrec ((_%loop167411167614%_
                                            (lambda (_%hd167409167617%_
                                                     _%arg167415167619%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd167409167617%_))
                                                  (let ((_%e167412167621%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd167409167617%_))))
                                                    (let ((_%lp-tl167414167626%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e167412167621%_)))
                                                          (_%lp-hd167413167624%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e167412167621%_))))
                                                      (_%loop167411167614%_
                                                       _%lp-tl167414167626%_
                                                       (cons _%lp-hd167413167624%_
                                                             _%arg167415167619%_))))
                                                  (let ((_%arg167416167629%_
                                                         (reverse _%arg167415167619%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl167407167606%_))
                                                        (let ((_%e167417167631%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl167407167606%_))))
                  (let ((_%tl167419167636%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e167417167631%_)))
                        (_%hd167418167634%_
                         (let ()
                           (declare (not safe))
                           (##car _%e167417167631%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd167418167634%_))
                        (let ((_%e167420167639%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd167418167634%_))))
                          (let ((_%tl167422167644%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167420167639%_)))
                                (_%hd167421167642%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167420167639%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd167421167642%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd167421167642%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl167422167644%_))
                                        (let ((_%e167423167647%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl167422167644%_))))
                                          (let ((_%tl167425167652%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167423167647%_)))
                                                (_%hd167424167650%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167423167647%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd167424167650%_))
                                                (let ((_%e167426167655%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd167424167650%_))))
                                                  (let ((_%tl167428167660%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e167426167655%_)))
                                                        (_%hd167427167658%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e167426167655%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd167427167658%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd167427167658%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl167428167660%_))
                        (let ((_%e167429167663%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl167428167660%_))))
                          (let ((_%tl167431167668%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167429167663%_)))
                                (_%hd167430167666%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167429167663%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl167431167668%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl167425167652%_))
                                    (let ((_%e167432167671%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl167425167652%_))))
                                      (let ((_%tl167434167676%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e167432167671%_)))
                                            (_%hd167433167674%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e167432167671%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd167433167674%_))
                                            (let ((_%e167435167679%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd167433167674%_))))
                                              (let ((_%tl167437167684%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e167435167679%_)))
                                                    (_%hd167436167682%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e167435167679%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd167436167682%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd167436167682%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl167437167684%_))
                                                            (let ((_%e167438167687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl167437167684%_))))
                      (let ((_%tl167440167692%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167438167687%_)))
                            (_%hd167439167690%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167438167687%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl167440167692%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl167419167636%_))
                                (_%__kont170338170339%_
                                 _%hd167439167690%_
                                 _%hd167430167666%_
                                 _%tl167410167611%_
                                 _%arg167416167629%_)
                                (_%__match170439170440%_
                                 _%e167405167601%_
                                 _%hd167406167604%_
                                 _%tl167407167606%_
                                 _%e167417167631%_
                                 _%hd167418167634%_
                                 _%tl167419167636%_
                                 _%e167420167639%_
                                 _%hd167421167642%_
                                 _%tl167422167644%_
                                 _%e167423167647%_
                                 _%hd167424167650%_
                                 _%tl167425167652%_
                                 _%e167426167655%_
                                 _%hd167427167658%_
                                 _%tl167428167660%_
                                 _%e167429167663%_
                                 _%hd167430167666%_
                                 _%tl167431167668%_
                                 _%e167432167671%_
                                 _%hd167433167674%_
                                 _%tl167434167676%_
                                 _%e167435167679%_
                                 _%hd167436167682%_
                                 _%tl167437167684%_
                                 _%e167438167687%_
                                 _%hd167439167690%_
                                 _%tl167440167692%_))
                            (let ()
                              (declare (not safe))
                              (_%g167354167478%_)))))
                    (let () (declare (not safe)) (_%g167354167478%_)))
                (let () (declare (not safe)) (_%g167354167478%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g167354167478%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g167354167478%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g167354167478%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g167354167478%_)))))
                        (let () (declare (not safe)) (_%g167354167478%_)))
                    (let () (declare (not safe)) (_%g167354167478%_)))
                (let () (declare (not safe)) (_%g167354167478%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g167354167478%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g167354167478%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g167354167478%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g167354167478%_)))))
                        (let () (declare (not safe)) (_%g167354167478%_)))))
                (let () (declare (not safe)) (_%g167354167478%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop167411167614%_
                                     _%target167408167609%_
                                     '()))))
                               (_%__match170357170358%_
                                (lambda (_%e167359167735%_
                                         _%hd167360167738%_
                                         _%tl167361167740%_
                                         _%__splice170334170335%_
                                         _%target167362167743%_
                                         _%tl167364167745%_)
                                  (letrec ((_%loop167365167748%_
                                            (lambda (_%hd167363167751%_
                                                     _%arg167369167753%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd167363167751%_))
                                                  (let ((_%e167366167755%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd167363167751%_))))
                                                    (let ((_%lp-tl167368167760%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e167366167755%_)))
                                                          (_%lp-hd167367167758%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e167366167755%_))))
                                                      (_%loop167365167748%_
                                                       _%lp-tl167368167760%_
                                                       (cons _%lp-hd167367167758%_
                                                             _%arg167369167753%_))))
                                                  (let ((_%arg167370167763%_
                                                         (reverse _%arg167369167753%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl167361167740%_))
                                                        (let ((_%e167371167765%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl167361167740%_))))
                  (let ((_%tl167373167770%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e167371167765%_)))
                        (_%hd167372167768%_
                         (let ()
                           (declare (not safe))
                           (##car _%e167371167765%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd167372167768%_))
                        (let ((_%e167374167773%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd167372167768%_))))
                          (let ((_%tl167376167778%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167374167773%_)))
                                (_%hd167375167776%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167374167773%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd167375167776%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd167375167776%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl167376167778%_))
                                        (let ((_%e167377167781%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl167376167778%_))))
                                          (let ((_%tl167379167786%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167377167781%_)))
                                                (_%hd167378167784%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167377167781%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd167378167784%_))
                                                (let ((_%e167380167789%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd167378167784%_))))
                                                  (let ((_%tl167382167794%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e167380167789%_)))
                                                        (_%hd167381167792%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e167380167789%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd167381167792%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd167381167792%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl167382167794%_))
                        (let ((_%e167383167797%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl167382167794%_))))
                          (let ((_%tl167385167802%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167383167797%_)))
                                (_%hd167384167800%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167383167797%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl167385167802%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl167379167786%_))
                                    (let ((_%__splice170336170337%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl167379167786%_
                                              '0))))
                                      (let ((_%tl167388167807%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice170336170337%_
                                                '1)))
                                            (_%target167386167805%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice170336170337%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl167388167807%_))
                                            (letrec ((_%loop167389167810%_
                                                      (lambda (_%hd167387167813%_
                                                               _%xarg167393167815%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd167387167813%_))
                                                            (let ((_%e167390167817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd167387167813%_))))
                      (let ((_%lp-tl167392167822%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167390167817%_)))
                            (_%lp-hd167391167820%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167390167817%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd167391167820%_))
                            (let ((_%e167395167825%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd167391167820%_))))
                              (let ((_%tl167397167830%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167395167825%_)))
                                    (_%hd167396167828%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167395167825%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd167396167828%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd167396167828%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl167397167830%_))
                                            (let ((_%e167398167833%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl167397167830%_))))
                                              (let ((_%tl167400167838%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e167398167833%_)))
                                                    (_%hd167399167836%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e167398167833%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl167400167838%_))
                                                    (_%loop167389167810%_
                                                     _%lp-tl167392167822%_
                                                     (cons _%hd167399167836%_
                                                           _%xarg167393167815%_))
                                                    (_%__match170369170370%_
                                                     _%e167359167735%_
                                                     _%hd167360167738%_
                                                     _%tl167361167740%_
                                                     _%__splice170334170335%_
                                                     _%target167362167743%_
                                                     _%tl167364167745%_))))
                                            (_%__match170369170370%_
                                             _%e167359167735%_
                                             _%hd167360167738%_
                                             _%tl167361167740%_
                                             _%__splice170334170335%_
                                             _%target167362167743%_
                                             _%tl167364167745%_))
                                        (_%__match170369170370%_
                                         _%e167359167735%_
                                         _%hd167360167738%_
                                         _%tl167361167740%_
                                         _%__splice170334170335%_
                                         _%target167362167743%_
                                         _%tl167364167745%_))
                                    (_%__match170369170370%_
                                     _%e167359167735%_
                                     _%hd167360167738%_
                                     _%tl167361167740%_
                                     _%__splice170334170335%_
                                     _%target167362167743%_
                                     _%tl167364167745%_))))
                            (_%__match170369170370%_
                             _%e167359167735%_
                             _%hd167360167738%_
                             _%tl167361167740%_
                             _%__splice170334170335%_
                             _%target167362167743%_
                             _%tl167364167745%_))))
                    (let ((_%xarg167394167841%_
                           (reverse _%xarg167393167815%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167373167770%_))
                          (_%__kont170332170333%_
                           _%xarg167394167841%_
                           _%hd167384167800%_
                           _%arg167370167763%_)
                          (_%__match170369170370%_
                           _%e167359167735%_
                           _%hd167360167738%_
                           _%tl167361167740%_
                           _%__splice170334170335%_
                           _%target167362167743%_
                           _%tl167364167745%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop167389167810%_
                                               _%target167386167805%_
                                               '()))
                                            (_%__match170369170370%_
                                             _%e167359167735%_
                                             _%hd167360167738%_
                                             _%tl167361167740%_
                                             _%__splice170334170335%_
                                             _%target167362167743%_
                                             _%tl167364167745%_))))
                                    (_%__match170369170370%_
                                     _%e167359167735%_
                                     _%hd167360167738%_
                                     _%tl167361167740%_
                                     _%__splice170334170335%_
                                     _%target167362167743%_
                                     _%tl167364167745%_))
                                (_%__match170369170370%_
                                 _%e167359167735%_
                                 _%hd167360167738%_
                                 _%tl167361167740%_
                                 _%__splice170334170335%_
                                 _%target167362167743%_
                                 _%tl167364167745%_))))
                        (_%__match170369170370%_
                         _%e167359167735%_
                         _%hd167360167738%_
                         _%tl167361167740%_
                         _%__splice170334170335%_
                         _%target167362167743%_
                         _%tl167364167745%_))
                    (_%__match170369170370%_
                     _%e167359167735%_
                     _%hd167360167738%_
                     _%tl167361167740%_
                     _%__splice170334170335%_
                     _%target167362167743%_
                     _%tl167364167745%_))
                (_%__match170369170370%_
                 _%e167359167735%_
                 _%hd167360167738%_
                 _%tl167361167740%_
                 _%__splice170334170335%_
                 _%target167362167743%_
                 _%tl167364167745%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match170369170370%_
                                                 _%e167359167735%_
                                                 _%hd167360167738%_
                                                 _%tl167361167740%_
                                                 _%__splice170334170335%_
                                                 _%target167362167743%_
                                                 _%tl167364167745%_))))
                                        (_%__match170369170370%_
                                         _%e167359167735%_
                                         _%hd167360167738%_
                                         _%tl167361167740%_
                                         _%__splice170334170335%_
                                         _%target167362167743%_
                                         _%tl167364167745%_))
                                    (_%__match170369170370%_
                                     _%e167359167735%_
                                     _%hd167360167738%_
                                     _%tl167361167740%_
                                     _%__splice170334170335%_
                                     _%target167362167743%_
                                     _%tl167364167745%_))
                                (_%__match170369170370%_
                                 _%e167359167735%_
                                 _%hd167360167738%_
                                 _%tl167361167740%_
                                 _%__splice170334170335%_
                                 _%target167362167743%_
                                 _%tl167364167745%_))))
                        (_%__match170369170370%_
                         _%e167359167735%_
                         _%hd167360167738%_
                         _%tl167361167740%_
                         _%__splice170334170335%_
                         _%target167362167743%_
                         _%tl167364167745%_))))
                (_%__match170369170370%_
                 _%e167359167735%_
                 _%hd167360167738%_
                 _%tl167361167740%_
                 _%__splice170334170335%_
                 _%target167362167743%_
                 _%tl167364167745%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop167365167748%_
                                     _%target167362167743%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx170330170331%_))
                              (let ((_%e167359167735%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx170330170331%_))))
                                (let ((_%tl167361167740%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167359167735%_)))
                                      (_%hd167360167738%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167359167735%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd167360167738%_))
                                      (let ((_%__splice170334170335%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd167360167738%_
                                                '0))))
                                        (let ((_%tl167364167745%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170334170335%_
                                                  '1)))
                                              (_%target167362167743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170334170335%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl167364167745%_))
                                              (_%__match170357170358%_
                                               _%e167359167735%_
                                               _%hd167360167738%_
                                               _%tl167361167740%_
                                               _%__splice170334170335%_
                                               _%target167362167743%_
                                               _%tl167364167745%_)
                                              (_%__match170369170370%_
                                               _%e167359167735%_
                                               _%hd167360167738%_
                                               _%tl167361167740%_
                                               _%__splice170334170335%_
                                               _%target167362167743%_
                                               _%tl167364167745%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl167361167740%_))
                                          (let ((_%e167447167491%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl167361167740%_))))
                                            (let ((_%tl167449167496%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e167447167491%_)))
                                                  (_%hd167448167494%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e167447167491%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd167448167494%_))
                                                  (let ((_%e167450167499%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd167448167494%_))))
                                                    (let ((_%tl167452167504%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e167450167499%_)))
                                                          (_%hd167451167502%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e167450167499%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd167451167502%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd167451167502%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167452167504%_))
                          (let ((_%e167453167507%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167452167504%_))))
                            (let ((_%tl167455167512%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167453167507%_)))
                                  (_%hd167454167510%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167453167507%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd167454167510%_))
                                  (let ((_%e167456167515%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd167454167510%_))))
                                    (let ((_%tl167458167520%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e167456167515%_)))
                                          (_%hd167457167518%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e167456167515%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd167457167518%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd167457167518%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl167458167520%_))
                                                  (let ((_%e167459167523%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl167458167520%_))))
                                                    (let ((_%tl167461167528%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e167459167523%_)))
                                                          (_%hd167460167526%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e167459167523%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl167461167528%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl167455167512%_))
                      (let ((_%e167462167531%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl167455167512%_))))
                        (let ((_%tl167464167536%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e167462167531%_)))
                              (_%hd167463167534%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e167462167531%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd167463167534%_))
                              (let ((_%e167465167539%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd167463167534%_))))
                                (let ((_%tl167467167544%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167465167539%_)))
                                      (_%hd167466167542%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167465167539%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd167466167542%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd167466167542%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl167467167544%_))
                                              (let ((_%e167468167547%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl167467167544%_))))
                                                (let ((_%tl167470167552%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e167468167547%_)))
                                                      (_%hd167469167550%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e167468167547%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl167470167552%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl167464167536%_))
                                                          (let ((_%e167471167555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl167464167536%_))))
                    (let ((_%tl167473167560%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e167471167555%_)))
                          (_%hd167472167558%_
                           (let ()
                             (declare (not safe))
                             (##car _%e167471167555%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167473167560%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl167449167496%_))
                              (_%__kont170342170343%_
                               _%hd167469167550%_
                               _%hd167460167526%_
                               _%hd167360167738%_)
                              (let ()
                                (declare (not safe))
                                (_%g167354167478%_)))
                          (let () (declare (not safe)) (_%g167354167478%_)))))
                  (let () (declare (not safe)) (_%g167354167478%_)))
              (let () (declare (not safe)) (_%g167354167478%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g167354167478%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g167354167478%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g167354167478%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g167354167478%_)))))
                      (let () (declare (not safe)) (_%g167354167478%_)))
                  (let () (declare (not safe)) (_%g167354167478%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g167354167478%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g167354167478%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g167354167478%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g167354167478%_)))))
                          (let () (declare (not safe)) (_%g167354167478%_)))
                      (let () (declare (not safe)) (_%g167354167478%_)))
                  (let () (declare (not safe)) (_%g167354167478%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g167354167478%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g167354167478%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g167354167478%_))))))))
                 (_%generate1167201%_
                  (lambda (_%args167332%_
                           _%arglen167333%_
                           _%hd167334%_
                           _%body167335%_)
                    (let* ((_%len167337%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd167334%_)))
                           (_%condition167342%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd167334%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen167333%_
                                                (cons _%len167337%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen167333%_ (cons _%len167337%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len167337%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen167333%_
                                                    (cons _%len167337%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen167333%_ (cons _%len167337%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch167344%_
                            (if (_%dispatch-case?167199%_
                                 _%hd167334%_
                                 _%body167335%_)
                                (_%dispatch-case-e167200%_
                                 _%hd167334%_
                                 _%body167335%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self167196%_
                                 _%hd167334%_
                                 _%body167335%_))))
                      (cons _%condition167342%_
                            (cons (cons 'apply
                                        (cons _%dispatch167344%_
                                              (cons _%args167332%_ '())))
                                  '()))))))
          (let* ((_%g167203167231%_
                  (lambda (_%g167204167228%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g167204167228%_))))
                 (_%g167202167329%_
                  (lambda (_%g167204167234%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g167204167234%_))
                        (let ((_%e167207167236%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g167204167234%_))))
                          (let ((_%hd167208167239%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167207167236%_)))
                                (_%tl167209167241%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167207167236%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl167209167241%_))
                                (let ((_g171499_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl167209167241%_
                                          '0))))
                                  (begin
                                    (let ((_g171500_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g171499_)
                                                 (##values-length _g171499_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g171500_ 2)))
                                          (error "Context expects 2 values"
                                                 _g171500_)))
                                    (let ((_%target167210167244%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g171499_ 0)))
                                          (_%tl167212167246%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g171499_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl167212167246%_))
                                          (letrec ((_%loop167213167249%_
                                                    (lambda (_%hd167211167252%_
                                                             _%body167217167254%_
                                                             _%hd167218167255%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd167211167252%_))
                                                          (let ((_%e167214167257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd167211167252%_))))
                    (let ((_%lp-hd167215167260%_
                           (let ()
                             (declare (not safe))
                             (##car _%e167214167257%_)))
                          (_%lp-tl167216167262%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e167214167257%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd167215167260%_))
                          (let ((_%e167221167265%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd167215167260%_))))
                            (let ((_%hd167222167268%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167221167265%_)))
                                  (_%tl167223167270%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167221167265%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl167223167270%_))
                                  (let ((_%e167224167273%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl167223167270%_))))
                                    (let ((_%hd167225167276%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e167224167273%_)))
                                          (_%tl167226167278%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e167224167273%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl167226167278%_))
                                          (_%loop167213167249%_
                                           _%lp-tl167216167262%_
                                           (cons _%hd167225167276%_
                                                 _%body167217167254%_)
                                           (cons _%hd167222167268%_
                                                 _%hd167218167255%_))
                                          (_%g167203167231%_
                                           _%g167204167234%_))))
                                  (_%g167203167231%_ _%g167204167234%_))))
                          (_%g167203167231%_ _%g167204167234%_))))
                  (let ((_%body167219167281%_ (reverse _%body167217167254%_))
                        (_%hd167220167282%_ (reverse _%hd167218167255%_)))
                    ((lambda (_%g167205167284%_ _%g167206167285%_)
                       (let ((_%args167304%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen167305%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name167306%_
                              (let ((_%$e167301%_
                                     (let ((__tmp171501
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp171501 _%stx167197%_))))
                                (if _%$e167301%_
                                    _%$e167301%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args167304%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen167305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args167304%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args167304%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp171505
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name167306%_
                                                                (cons _%args167304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp171502
                                  (map (lambda (_%g167307167310%_
                                                _%g167308167312%_)
                                         (_%generate1167201%_
                                          _%args167304%_
                                          _%arglen167305%_
                                          _%g167307167310%_
                                          _%g167308167312%_))
                                       (let ((__tmp171503
                                              (lambda (_%g167314167317%_
                                                       _%g167315167319%_)
                                                (cons _%g167314167317%_
                                                      _%g167315167319%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp171503
                                          '()
                                          _%g167206167285%_))
                                       (let ((__tmp171504
                                              (lambda (_%g167321167324%_
                                                       _%g167322167326%_)
                                                (cons _%g167321167324%_
                                                      _%g167322167326%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp171504
                                          '()
                                          _%g167205167284%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp171505 __tmp171502)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body167219167281%_
                     _%hd167220167282%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop167213167249%_
                                             _%target167210167244%_
                                             '()
                                             '()))
                                          (_%g167203167231%_
                                           _%g167204167234%_)))))
                                (_%g167203167231%_ _%g167204167234%_))))
                        (_%g167203167231%_ _%g167204167234%_)))))
            (_%g167202167329%_ _%stx167197%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self166433%_ _%stx166434%_ _%compiled-body?166435%_)
        (letrec ((_%generate-simple166437%_
                  (lambda (_%hd167181%_ _%body167182%_)
                    (_%coalesce-boolean166438%_
                     (_%simplify-let166439%_
                      (gxc#generate-runtime-simple-let
                       _%self166433%_
                       'let
                       _%hd167181%_
                       _%body167182%_
                       _%compiled-body?166435%_)))))
                 (_%coalesce-boolean166438%_
                  (lambda (_%code167042%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code167043167069%_ _%code167042%_)
                               (_%else167045167077%_
                                (lambda () _%code167042%_))
                               (_%K167047167114%_
                                (lambda (_%expr2167080%_
                                         _%expr1167081%_
                                         _%id167082%_)
                                  (let* ((_%expr2167083167091%_
                                          _%expr2167080%_)
                                         (_%else167085167099%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1167081%_
                                                        (cons _%expr2167080%_
                                                              '())))))
                                         (_%K167087167104%_
                                          (lambda (_%exprs167102%_)
                                            (cons 'or
                                                  (cons _%expr1167081%_
                                                        _%exprs167102%_)))))
                                    (if (pair? _%expr2167083167091%_)
                                        (let ((_%hd167088167107%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2167083167091%_)))
                                              (_%tl167089167109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2167083167091%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd167088167107%_ 'or))
                                              (let ((_%exprs167112%_
                                                     _%tl167089167109%_))
                                                (_%K167087167104%_
                                                 _%exprs167112%_))
                                              (_%else167085167099%_)))
                                        (_%else167085167099%_))))))
                          (if (pair? _%code167043167069%_)
                              (let ((_%hd167048167117%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code167043167069%_)))
                                    (_%tl167049167119%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code167043167069%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd167048167117%_ 'let))
                                    (if (pair? _%tl167049167119%_)
                                        (let ((_%hd167050167122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl167049167119%_)))
                                              (_%tl167051167124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl167049167119%_))))
                                          (if (pair? _%hd167050167122%_)
                                              (let ((_%hd167062167127%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd167050167122%_)))
                                                    (_%tl167063167129%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd167050167122%_))))
                                                (if (pair? _%hd167062167127%_)
                                                    (let ((_%hd167064167132%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd167062167127%_)))
                                                          (_%tl167065167134%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd167062167127%_))))
                                                      (let ((_%id167137%_
                                                             _%hd167064167132%_))
                                                        (if (pair? _%tl167065167134%_)
                                                            (let ((_%hd167066167139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl167065167134%_)))
                          (_%tl167067167141%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl167065167134%_))))
                      (let ((_%expr1167144%_ _%hd167066167139%_))
                        (if (null? _%tl167067167141%_)
                            (if (null? _%tl167063167129%_)
                                (if (pair? _%tl167051167124%_)
                                    (let ((_%hd167052167146%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl167051167124%_)))
                                          (_%tl167053167148%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl167051167124%_))))
                                      (if (pair? _%hd167052167146%_)
                                          (let ((_%hd167054167151%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd167052167146%_)))
                                                (_%tl167055167153%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd167052167146%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd167054167151%_
                                                         'if))
                                                (if (pair? _%tl167055167153%_)
                                                    (let ((_%hd167056167156%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl167055167153%_)))
                                                          (_%tl167057167158%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl167055167153%_))))
                                                      (if ((lambda (_%g167160167162%_)
                                                             (eq? _%g167160167162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id167137%_))
                   _%hd167056167156%_)
                  (if (pair? _%tl167057167158%_)
                      (let ((_%hd167058167165%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl167057167158%_)))
                            (_%tl167059167167%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl167057167158%_))))
                        (if ((lambda (_%g167169167171%_)
                               (eq? _%g167169167171%_ _%id167137%_))
                             _%hd167058167165%_)
                            (if (pair? _%tl167059167167%_)
                                (let ((_%hd167060167174%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl167059167167%_)))
                                      (_%tl167061167176%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl167059167167%_))))
                                  (let ((_%expr2167179%_ _%hd167060167174%_))
                                    (if (null? _%tl167061167176%_)
                                        (if (null? _%tl167053167148%_)
                                            (_%K167047167114%_
                                             _%expr2167179%_
                                             _%expr1167144%_
                                             _%id167137%_)
                                            (_%else167045167077%_))
                                        (_%else167045167077%_))))
                                (_%else167045167077%_))
                            (_%else167045167077%_)))
                      (_%else167045167077%_))
                  (_%else167045167077%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else167045167077%_))
                                                (_%else167045167077%_)))
                                          (_%else167045167077%_)))
                                    (_%else167045167077%_))
                                (_%else167045167077%_))
                            (_%else167045167077%_))))
                    (_%else167045167077%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else167045167077%_)))
                                              (_%else167045167077%_)))
                                        (_%else167045167077%_))
                                    (_%else167045167077%_)))
                              (_%else167045167077%_)))
                        _%code167042%_)))
                 (_%simplify-let166439%_
                  (lambda (_%code166741%_)
                    (let* ((_%code166742166814%_ _%code166741%_)
                           (_%else166747166822%_ (lambda () _%code166741%_)))
                      (let ((_%K166806167022%_
                             (lambda (_%expr167020%_) _%expr167020%_))
                            (_%K166789166968%_
                             (lambda (_%body166964%_
                                      _%expr166965%_
                                      _%id166966%_)
                               (cons 'let
                                     (cons (cons (cons _%id166966%_
                                                       (cons _%expr166965%_
                                                             '()))
                                                 '())
                                           _%body166964%_))))
                            (_%K166766166892%_
                             (lambda (_%body166886%_
                                      _%expr2166887%_
                                      _%id2166888%_
                                      _%expr1166889%_
                                      _%id1166890%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1166890%_
                                                       (cons _%expr1166889%_
                                                             '()))
                                                 (cons (cons _%id2166888%_
                                                             (cons _%expr2166887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body166886%_))))
                            (_%K166749166831%_
                             (lambda (_%body166826%_
                                      _%bind166827%_
                                      _%expr1166828%_
                                      _%id1166829%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1166829%_
                                                       (cons _%expr1166828%_
                                                             '()))
                                                 _%bind166827%_)
                                           _%body166826%_)))))
                        (if (pair? _%code166742166814%_)
                            (let ((_%tl166808167027%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code166742166814%_)))
                                  (_%hd166807167025%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code166742166814%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd166807167025%_ 'let))
                                  (if (pair? _%tl166808167027%_)
                                      (let ((_%tl166810167032%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl166808167027%_)))
                                            (_%hd166809167030%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl166808167027%_))))
                                        (if (null? _%hd166809167030%_)
                                            (if (pair? _%tl166810167032%_)
                                                (let ((_%tl166812167037%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl166810167032%_)))
                                                      (_%hd166811167035%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl166810167032%_))))
                                                  (if (null? _%tl166812167037%_)
                                                      (let ((_%expr167040%_
                                                             _%hd166811167035%_))
                                                        (_%K166806167022%_
                                                         _%expr167040%_))
                                                      (_%else166747166822%_)))
                                                (_%else166747166822%_))
                                            (if (pair? _%hd166809167030%_)
                                                (let ((_%tl166801166983%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd166809167030%_)))
                                                      (_%hd166800166981%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd166809167030%_))))
                                                  (if (pair? _%hd166800166981%_)
                                                      (let ((_%tl166803166988%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd166800166981%_)))
                    (_%hd166802166986%_
                     (let () (declare (not safe)) (##car _%hd166800166981%_))))
                (if (pair? _%tl166803166988%_)
                    (let ((_%tl166805166995%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl166803166988%_)))
                          (_%hd166804166993%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl166803166988%_))))
                      (if (null? _%tl166805166995%_)
                          (if (null? _%tl166801166983%_)
                              (if (pair? _%tl166810167032%_)
                                  (let ((_%tl166795167002%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl166810167032%_)))
                                        (_%hd166794167000%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl166810167032%_))))
                                    (if (pair? _%hd166794167000%_)
                                        (let ((_%tl166797167007%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd166794167000%_)))
                                              (_%hd166796167005%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd166794167000%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd166796167005%_
                                                       'let))
                                              (if (pair? _%tl166797167007%_)
                                                  (let ((_%tl166799167012%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl166797167007%_)))
                                                        (_%hd166798167010%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl166797167007%_))))
                                                    (if (null? _%hd166798167010%_)
                                                        (if (null? _%tl166795167002%_)
                                                            (let ((_%id166991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd166802166986%_)
                          (_%expr166998%_ _%hd166804166993%_)
                          (_%body167015%_ _%tl166799167012%_))
                      (_%K166789166968%_
                       _%body167015%_
                       _%expr166998%_
                       _%id166991%_))
                    (_%else166747166822%_))
                (if (pair? _%hd166798167010%_)
                    (let ((_%tl166778166941%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd166798167010%_)))
                          (_%hd166777166939%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd166798167010%_))))
                      (if (pair? _%hd166777166939%_)
                          (let ((_%tl166780166946%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd166777166939%_)))
                                (_%hd166779166944%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd166777166939%_))))
                            (if (pair? _%tl166780166946%_)
                                (let ((_%tl166782166953%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl166780166946%_)))
                                      (_%hd166781166951%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl166780166946%_))))
                                  (if (null? _%tl166782166953%_)
                                      (if (null? _%tl166778166941%_)
                                          (if (null? _%tl166795167002%_)
                                              (let ((_%id1166915%_
                                                     _%hd166802166986%_)
                                                    (_%expr1166922%_
                                                     _%hd166804166993%_)
                                                    (_%id2166949%_
                                                     _%hd166779166944%_)
                                                    (_%expr2166956%_
                                                     _%hd166781166951%_)
                                                    (_%body166958%_
                                                     _%tl166799167012%_))
                                                (_%K166766166892%_
                                                 _%body166958%_
                                                 _%expr2166956%_
                                                 _%id2166949%_
                                                 _%expr1166922%_
                                                 _%id1166915%_))
                                              (_%else166747166822%_))
                                          (_%else166747166822%_))
                                      (_%else166747166822%_)))
                                (_%else166747166822%_)))
                          (_%else166747166822%_)))
                    (_%else166747166822%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else166747166822%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd166796167005%_
                                                           'let*))
                                                  (if (pair? _%tl166797167007%_)
                                                      (let ((_%tl166759166875%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl166797167007%_)))
                    (_%hd166758166873%_
                     (let () (declare (not safe)) (##car _%tl166797167007%_))))
                (if (null? _%tl166795167002%_)
                    (let ((_%id1166854%_ _%hd166802166986%_)
                          (_%expr1166861%_ _%hd166804166993%_)
                          (_%bind166878%_ _%hd166758166873%_)
                          (_%body166880%_ _%tl166759166875%_))
                      (_%K166749166831%_
                       _%body166880%_
                       _%bind166878%_
                       _%expr1166861%_
                       _%id1166854%_))
                    (_%else166747166822%_)))
              (_%else166747166822%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else166747166822%_))))
                                        (_%else166747166822%_)))
                                  (_%else166747166822%_))
                              (_%else166747166822%_))
                          (_%else166747166822%_)))
                    (_%else166747166822%_)))
              (_%else166747166822%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else166747166822%_))))
                                      (_%else166747166822%_))
                                  (_%else166747166822%_)))
                            (_%else166747166822%_))))))
                 (_%generate-values166440%_
                  (lambda (_%hd166554%_ _%body166555%_)
                    (let _%lp166557%_ ((_%rest166559%_ _%hd166554%_)
                                       (_%bind166560%_ '())
                                       (_%check166561%_ '())
                                       (_%post166562%_ '()))
                      (let* ((_%__stx170659170660%_ _%rest166559%_)
                             (_%g166565166576%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx170659170660%_)))))
                        (let ((_%__kont170661170662%_
                               (lambda (_%g166567166603%_ _%g166568166604%_)
                                 (let* ((_%__stx170615170616%_
                                         _%g166568166604%_)
                                        (_%g166619166644%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx170615170616%_)))))
                                   (let ((_%__kont170617170618%_
                                          (lambda (_%g166621166717%_
                                                   _%g166622166718%_)
                                            (let ((_%eid166732%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g166622166718%_)))
                                                  (_%expr166733%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self166433%_
                                                      _%g166621166717%_))))
                                              (_%lp166557%_
                                               _%g166567166603%_
                                               (cons (cons _%eid166732%_
                                                           (cons _%expr166733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind166560%_)
                                               _%check166561%_
                                               _%post166562%_))))
                                         (_%__kont170619170620%_
                                          (lambda (_%g166632166665%_
                                                   _%g166633166666%_)
                                            (let* ((_%vals166679%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values166681%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals166679%_
                                                     _%g166633166666%_
                                                     _%g166632166665%_))
                                                   (_%refs166683%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals166679%_
                                                     _%g166633166666%_))
                                                   (_%expr166685%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self166433%_
                                                       _%g166632166665%_))))
                                              (_%lp166557%_
                                               _%g166567166603%_
                                               (cons (cons _%vals166679%_
                                                           (cons _%expr166685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind166560%_)
                                               (cons _%check-values166681%_
                                                     _%check166561%_)
                                               (cons _%refs166683%_
                                                     _%post166562%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx170615170616%_))
                                         (let ((_%e166623166693%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx170615170616%_))))
                                           (let ((_%tl166625166698%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e166623166693%_)))
                                                 (_%hd166624166696%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e166623166693%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd166624166696%_))
                                                 (let ((_%e166626166701%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd166624166696%_))))
                                                   (let ((_%tl166628166706%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e166626166701%_)))
                                                         (_%hd166627166704%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e166626166701%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl166628166706%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl166625166698%_))
                     (let ((_%e166629166709%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl166625166698%_))))
                       (let ((_%tl166631166714%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e166629166709%_)))
                             (_%hd166630166712%_
                              (let ()
                                (declare (not safe))
                                (##car _%e166629166709%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl166631166714%_))
                             (_%__kont170617170618%_
                              _%hd166630166712%_
                              _%hd166627166704%_)
                             (let ()
                               (declare (not safe))
                               (_%g166619166644%_)))))
                     (let () (declare (not safe)) (_%g166619166644%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl166625166698%_))
                     (let ((_%e166637166657%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl166625166698%_))))
                       (let ((_%tl166639166662%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e166637166657%_)))
                             (_%hd166638166660%_
                              (let ()
                                (declare (not safe))
                                (##car _%e166637166657%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl166639166662%_))
                             (_%__kont170619170620%_
                              _%hd166638166660%_
                              _%hd166624166696%_)
                             (let ()
                               (declare (not safe))
                               (_%g166619166644%_)))))
                     (let () (declare (not safe)) (_%g166619166644%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl166625166698%_))
                                                     (let ((_%e166637166657%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl166625166698%_))))
                                                       (let ((_%tl166639166662%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e166637166657%_)))
                     (_%hd166638166660%_
                      (let () (declare (not safe)) (##car _%e166637166657%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl166639166662%_))
                     (_%__kont170619170620%_
                      _%hd166638166660%_
                      _%hd166624166696%_)
                     (let () (declare (not safe)) (_%g166619166644%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g166619166644%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g166619166644%_)))))))
                              (_%__kont170663170664%_
                               (lambda ()
                                 (let* ((_%body166583%_
                                         (if _%compiled-body?166435%_
                                             _%body166555%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self166433%_
                                                _%body166555%_))))
                                        (_%body166585%_
                                         (_%generate-values-post166441%_
                                          _%post166562%_
                                          _%body166583%_))
                                        (_%body166587%_
                                         (_%generate-values-check166442%_
                                          _%check166561%_
                                          _%body166585%_)))
                                   (cons 'let
                                         (cons (reverse _%bind166560%_)
                                               (cons _%body166587%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx170659170660%_))
                              (let ((_%e166569166595%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx170659170660%_))))
                                (let ((_%tl166571166600%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166569166595%_)))
                                      (_%hd166570166598%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166569166595%_))))
                                  (_%__kont170661170662%_
                                   _%tl166571166600%_
                                   _%hd166570166598%_)))
                              (_%__kont170663170664%_)))))))
                 (_%generate-values-post166441%_
                  (lambda (_%post166513%_ _%body166514%_)
                    (let _%lp166516%_ ((_%rest166518%_ _%post166513%_)
                                       (_%body166519%_ _%body166514%_))
                      (let* ((_%rest166520166528%_ _%rest166518%_)
                             (_%else166522166536%_ (lambda () _%body166519%_))
                             (_%K166524166542%_
                              (lambda (_%rest166539%_ _%bind166540%_)
                                (_%lp166516%_
                                 _%rest166539%_
                                 (cons 'let
                                       (cons _%bind166540%_
                                             (cons _%body166519%_ '())))))))
                        (if (pair? _%rest166520166528%_)
                            (let ((_%hd166525166545%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest166520166528%_)))
                                  (_%tl166526166547%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest166520166528%_))))
                              (let* ((_%bind166550%_ _%hd166525166545%_)
                                     (_%rest166552%_ _%tl166526166547%_))
                                (_%K166524166542%_
                                 _%rest166552%_
                                 _%bind166550%_)))
                            (_%else166522166536%_))))))
                 (_%generate-values-check166442%_
                  (lambda (_%check166510%_ _%body166511%_)
                    (cons 'begin
                          (let ((__tmp171507 (cons _%body166511%_ '()))
                                (__tmp171506 (reverse _%check166510%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp171507 __tmp171506))))))
          (let* ((_%g166444166461%_
                  (lambda (_%g166445166458%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g166445166458%_))))
                 (_%g166443166507%_
                  (lambda (_%g166445166464%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g166445166464%_))
                        (let ((_%e166448166466%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g166445166464%_))))
                          (let ((_%hd166449166469%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166448166466%_)))
                                (_%tl166450166471%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166448166466%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166450166471%_))
                                (let ((_%e166451166474%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166450166471%_))))
                                  (let ((_%hd166452166477%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166451166474%_)))
                                        (_%tl166453166479%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166451166474%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl166453166479%_))
                                        (let ((_%e166454166482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl166453166479%_))))
                                          (let ((_%hd166455166485%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166454166482%_)))
                                                (_%tl166456166487%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166454166482%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl166456166487%_))
                                                ((lambda (_%g166446166490%_
                                                          _%g166447166491%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g166447166491%_)
                                                       (_%generate-simple166437%_
                                                        _%g166447166491%_
                                                        _%g166446166490%_)
                                                       (_%generate-values166440%_
                                                        _%g166447166491%_
                                                        _%g166446166490%_)))
                                                 _%hd166455166485%_
                                                 _%hd166452166477%_)
                                                (_%g166444166461%_
                                                 _%g166445166464%_))))
                                        (_%g166444166461%_
                                         _%g166445166464%_))))
                                (_%g166444166461%_ _%g166445166464%_))))
                        (_%g166444166461%_ _%g166445166464%_)))))
            (_%g166443166507%_ _%stx166434%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self167187%_ _%stx167188%_)
        (let ((_%compiled-body?167190%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self167187%_
           _%stx167188%_
           _%compiled-body?167190%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g171508_
        (let ((_g171509_ (let () (declare (not safe)) (##length _g171508_))))
          (cond ((let () (declare (not safe)) (##fx= _g171509_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g171508_))
                ((let () (declare (not safe)) (##fx= _g171509_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g171508_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g171508_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals166327%_ _%hd166328%_)
        (let _%lp166330%_ ((_%rest166332%_ _%hd166328%_)
                           (_%k166333%_ '0)
                           (_%r166334%_ '()))
          (let* ((_%__stx170673170674%_ _%rest166332%_)
                 (_%g166339166356%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx170673170674%_)))))
            (let ((_%__kont170675170676%_
                   (lambda (_%g166341166419%_)
                     (_%lp166330%_
                      _%g166341166419%_
                      (let () (declare (not safe)) (##fx+ _%k166333%_ '1))
                      _%r166334%_)))
                  (_%__kont170677170678%_
                   (lambda (_%g166346166392%_ _%g166347166393%_)
                     (_%lp166330%_
                      _%g166346166392%_
                      (let () (declare (not safe)) (##fx+ _%k166333%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g166347166393%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals166327%_
                                         _%k166333%_
                                         _%g166346166392%_)
                                        '()))
                            _%r166334%_))))
                  (_%__kont170679170680%_
                   (lambda (_%g166351166368%_)
                     (let ((__tmp171510
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g166351166368%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals166327%_
                                               _%k166333%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp171510 _%r166334%_))))
                  (_%__kont170681170682%_ (lambda () (reverse _%r166334%_))))
              (let ((_%g166337166379%_
                     (lambda ()
                       (let ((_%g166351166368%_ _%__stx170673170674%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g166351166368%_))
                             (_%__kont170679170680%_ _%g166351166368%_)
                             (_%__kont170681170682%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx170673170674%_))
                    (let ((_%e166342166408%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx170673170674%_))))
                      (let ((_%tl166344166413%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e166342166408%_)))
                            (_%hd166343166411%_
                             (let ()
                               (declare (not safe))
                               (##car _%e166342166408%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd166343166411%_))
                            (let ((_%e166345166416%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd166343166411%_))))
                              (if (equal? _%e166345166416%_ '#f)
                                  (_%__kont170675170676%_ _%tl166344166413%_)
                                  (_%__kont170677170678%_
                                   _%tl166344166413%_
                                   _%hd166343166411%_)))
                            (_%__kont170677170678%_
                             _%tl166344166413%_
                             _%hd166343166411%_))))
                    (let () (declare (not safe)) (_%g166337166379%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self166006%_ _%stx166007%_ _%compiled-body?166008%_)
        (letrec ((_%generate-simple166010%_
                  (lambda (_%hd166312%_ _%body166313%_)
                    (gxc#generate-runtime-simple-let
                     _%self166006%_
                     'letrec
                     _%hd166312%_
                     _%body166313%_
                     _%compiled-body?166008%_)))
                 (_%generate-values166011%_
                  (lambda (_%hd166091%_ _%body166092%_)
                    (let _%lp166094%_ ((_%rest166096%_ _%hd166091%_)
                                       (_%bind166097%_ '())
                                       (_%check166098%_ '())
                                       (_%post166099%_ '()))
                      (let* ((_%__stx170747170748%_ _%rest166096%_)
                             (_%g166102166113%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx170747170748%_)))))
                        (let ((_%__kont170749170750%_
                               (lambda (_%g166104166140%_ _%g166105166141%_)
                                 (let* ((_%__stx170703170704%_
                                         _%g166105166141%_)
                                        (_%g166156166181%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx170703170704%_)))))
                                   (let ((_%__kont170705170706%_
                                          (lambda (_%g166158166288%_
                                                   _%g166159166289%_)
                                            (let ((_%eid166303%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g166159166289%_)))
                                                  (_%expr166304%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self166006%_
                                                      _%g166158166288%_))))
                                              (_%lp166094%_
                                               _%g166104166140%_
                                               (cons (cons _%eid166303%_
                                                           (cons _%expr166304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind166097%_)
                                               _%check166098%_
                                               _%post166099%_))))
                                         (_%__kont170707170708%_
                                          (lambda (_%g166169166202%_
                                                   _%g166170166203%_)
                                            (let* ((_%vals166216%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values166218%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals166216%_
                                                     _%g166170166203%_
                                                     _%g166169166202%_))
                                                   (_%refs166220%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals166216%_
                                                     _%g166170166203%_))
                                                   (_%expr166222%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self166006%_
                                                       _%g166169166202%_))))
                                              (_%lp166094%_
                                               _%g166104166140%_
                                               (let ((__tmp171512
                                                      (cons (cons _%vals166216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr166222%_ '()))
                    _%bind166097%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp171511
                                                      (map (lambda (_%e166224166226%_)
                                                             (let* ((_%e166224166228166237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e166224166226%_)
                            (_%E166230166241%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e166224166228166237%_
                                        '([eid _])))
                               '#!void))
                            (_%K166231166246%_
                             (lambda (_%eid166244%_)
                               (cons _%eid166244%_ (cons '#!void '())))))
                       (if (pair? _%e166224166228166237%_)
                           (let ((_%hd166232166249%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e166224166228166237%_)))
                                 (_%tl166233166251%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e166224166228166237%_))))
                             (let ((_%eid166254%_ _%hd166232166249%_))
                               (if (pair? _%tl166233166251%_)
                                   (let ((_%tl166235166256%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl166233166251%_))))
                                     (if (null? _%tl166235166256%_)
                                         (_%K166231166246%_ _%eid166254%_)
                                         (_%E166230166241%_)))
                                   (_%E166230166241%_))))
                           (_%E166230166241%_))))
                   _%refs166220%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp171512
                                                  __tmp171511))
                                               (cons _%check-values166218%_
                                                     _%check166098%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs166220%_
                                                  _%post166099%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx170703170704%_))
                                         (let ((_%e166160166264%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx170703170704%_))))
                                           (let ((_%tl166162166269%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e166160166264%_)))
                                                 (_%hd166161166267%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e166160166264%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd166161166267%_))
                                                 (let ((_%e166163166272%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd166161166267%_))))
                                                   (let ((_%tl166165166277%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e166163166272%_)))
                                                         (_%hd166164166275%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e166163166272%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl166165166277%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl166162166269%_))
                     (let ((_%e166166166280%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl166162166269%_))))
                       (let ((_%tl166168166285%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e166166166280%_)))
                             (_%hd166167166283%_
                              (let ()
                                (declare (not safe))
                                (##car _%e166166166280%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl166168166285%_))
                             (_%__kont170705170706%_
                              _%hd166167166283%_
                              _%hd166164166275%_)
                             (let ()
                               (declare (not safe))
                               (_%g166156166181%_)))))
                     (let () (declare (not safe)) (_%g166156166181%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl166162166269%_))
                     (let ((_%e166174166194%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl166162166269%_))))
                       (let ((_%tl166176166199%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e166174166194%_)))
                             (_%hd166175166197%_
                              (let ()
                                (declare (not safe))
                                (##car _%e166174166194%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl166176166199%_))
                             (_%__kont170707170708%_
                              _%hd166175166197%_
                              _%hd166161166267%_)
                             (let ()
                               (declare (not safe))
                               (_%g166156166181%_)))))
                     (let () (declare (not safe)) (_%g166156166181%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl166162166269%_))
                                                     (let ((_%e166174166194%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl166162166269%_))))
                                                       (let ((_%tl166176166199%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e166174166194%_)))
                     (_%hd166175166197%_
                      (let () (declare (not safe)) (##car _%e166174166194%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl166176166199%_))
                     (_%__kont170707170708%_
                      _%hd166175166197%_
                      _%hd166161166267%_)
                     (let () (declare (not safe)) (_%g166156166181%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g166156166181%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g166156166181%_)))))))
                              (_%__kont170751170752%_
                               (lambda ()
                                 (let* ((_%body166120%_
                                         (if _%compiled-body?166008%_
                                             _%body166092%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self166006%_
                                                _%body166092%_))))
                                        (_%body166122%_
                                         (_%generate-values-post166013%_
                                          _%post166099%_
                                          _%body166120%_))
                                        (_%body166124%_
                                         (_%generate-values-check166012%_
                                          _%check166098%_
                                          _%body166122%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind166097%_)
                                               (cons _%body166124%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx170747170748%_))
                              (let ((_%e166106166132%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx170747170748%_))))
                                (let ((_%tl166108166137%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166106166132%_)))
                                      (_%hd166107166135%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166106166132%_))))
                                  (_%__kont170749170750%_
                                   _%tl166108166137%_
                                   _%hd166107166135%_)))
                              (_%__kont170751170752%_)))))))
                 (_%generate-values-check166012%_
                  (lambda (_%check166088%_ _%body166089%_)
                    (cons 'begin
                          (let ((__tmp171514 (cons _%body166089%_ '()))
                                (__tmp171513 (reverse _%check166088%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp171514 __tmp171513)))))
                 (_%generate-values-post166013%_
                  (lambda (_%post166081%_ _%body166082%_)
                    (cons 'begin
                          (let ((__tmp171518 (cons _%body166082%_ '()))
                                (__tmp171515
                                 (let ((__tmp171517
                                        (lambda (_%g166083166085%_)
                                          (cons 'set! _%g166083166085%_)))
                                       (__tmp171516 (reverse _%post166081%_)))
                                   (declare (not safe))
                                   (##map __tmp171517 __tmp171516))))
                            (declare (not safe))
                            (__foldr1 cons __tmp171518 __tmp171515))))))
          (let* ((_%g166015166032%_
                  (lambda (_%g166016166029%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g166016166029%_))))
                 (_%g166014166078%_
                  (lambda (_%g166016166035%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g166016166035%_))
                        (let ((_%e166019166037%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g166016166035%_))))
                          (let ((_%hd166020166040%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166019166037%_)))
                                (_%tl166021166042%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166019166037%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166021166042%_))
                                (let ((_%e166022166045%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166021166042%_))))
                                  (let ((_%hd166023166048%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166022166045%_)))
                                        (_%tl166024166050%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166022166045%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl166024166050%_))
                                        (let ((_%e166025166053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl166024166050%_))))
                                          (let ((_%hd166026166056%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166025166053%_)))
                                                (_%tl166027166058%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166025166053%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl166027166058%_))
                                                ((lambda (_%g166017166061%_
                                                          _%g166018166062%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g166018166062%_)
                                                       (_%generate-simple166010%_
                                                        _%g166018166062%_
                                                        _%g166017166061%_)
                                                       (_%generate-values166011%_
                                                        _%g166018166062%_
                                                        _%g166017166061%_)))
                                                 _%hd166026166056%_
                                                 _%hd166023166048%_)
                                                (_%g166015166032%_
                                                 _%g166016166035%_))))
                                        (_%g166015166032%_
                                         _%g166016166035%_))))
                                (_%g166015166032%_ _%g166016166035%_))))
                        (_%g166015166032%_ _%g166016166035%_)))))
            (_%g166014166078%_ _%stx166007%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self166318%_ _%stx166319%_)
        (let ((_%compiled-body?166321%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self166318%_
           _%stx166319%_
           _%compiled-body?166321%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g171519_
        (let ((_g171520_ (let () (declare (not safe)) (##length _g171519_))))
          (cond ((let () (declare (not safe)) (##fx= _g171520_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g171519_))
                ((let () (declare (not safe)) (##fx= _g171520_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g171519_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g171519_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self165587%_ _%stx165588%_)
        (letrec ((_%generate-values165590%_
                  (lambda (_%hd165833%_ _%body165834%_)
                    (let _%lp165836%_ ((_%rest165838%_ _%hd165833%_)
                                       (_%bind165839%_ '()))
                      (let* ((_%rest165840165848%_ _%rest165838%_)
                             (_%else165842165859%_
                              (lambda ()
                                (let ((_%bind165856%_ (reverse _%bind165839%_))
                                      (_%body165857%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self165587%_
                                          _%body165834%_))))
                                  (cons 'letrec*
                                        (cons _%bind165856%_
                                              (cons _%body165857%_ '()))))))
                             (_%K165844165993%_
                              (lambda (_%rest165862%_ _%hd-bind165863%_)
                                (let* ((_%__stx170761170762%_
                                        _%hd-bind165863%_)
                                       (_%g165866165891%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx170761170762%_)))))
                                  (let ((_%__kont170763170764%_
                                         (lambda (_%g165868165972%_
                                                  _%g165869165973%_)
                                           (let ((_%eid165987%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g165869165973%_)))
                                                 (_%expr165988%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self165587%_
                                                     _%g165868165972%_))))
                                             (_%lp165836%_
                                              _%rest165862%_
                                              (cons (cons _%eid165987%_
                                                          (cons _%expr165988%_
                                                                '()))
                                                    _%bind165839%_)))))
                                        (_%__kont170765170766%_
                                         (lambda (_%g165879165912%_
                                                  _%g165880165913%_)
                                           (let* ((_%vals165932%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp165934%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values165936%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp165934%_
                                                    _%g165880165913%_
                                                    _%g165879165912%_))
                                                  (_%refs165938%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals165932%_
                                                    _%g165880165913%_))
                                                  (_%expr165940%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self165587%_
                                                      _%g165879165912%_))))
                                             (_%lp165836%_
                                              _%rest165862%_
                                              (let ((__tmp171521
                                                     (cons (cons _%vals165932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp165934%_
                                                       (cons _%expr165940%_
                                                             '()))
                                                 '())
                                           (cons _%check-values165936%_
                                                 (cons _%tmp165934%_ '()))))
                               '()))
                   _%bind165839%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp171521
                                                 _%refs165938%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx170761170762%_))
                                        (let ((_%e165870165948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx170761170762%_))))
                                          (let ((_%tl165872165953%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165870165948%_)))
                                                (_%hd165871165951%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165870165948%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd165871165951%_))
                                                (let ((_%e165873165956%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd165871165951%_))))
                                                  (let ((_%tl165875165961%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e165873165956%_)))
                                                        (_%hd165874165959%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e165873165956%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl165875165961%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl165872165953%_))
                                                            (let ((_%e165876165964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl165872165953%_))))
                      (let ((_%tl165878165969%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e165876165964%_)))
                            (_%hd165877165967%_
                             (let ()
                               (declare (not safe))
                               (##car _%e165876165964%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165878165969%_))
                            (_%__kont170763170764%_
                             _%hd165877165967%_
                             _%hd165874165959%_)
                            (let ()
                              (declare (not safe))
                              (_%g165866165891%_)))))
                    (let () (declare (not safe)) (_%g165866165891%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl165872165953%_))
                    (let ((_%e165884165904%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl165872165953%_))))
                      (let ((_%tl165886165909%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e165884165904%_)))
                            (_%hd165885165907%_
                             (let ()
                               (declare (not safe))
                               (##car _%e165884165904%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165886165909%_))
                            (_%__kont170765170766%_
                             _%hd165885165907%_
                             _%hd165871165951%_)
                            (let ()
                              (declare (not safe))
                              (_%g165866165891%_)))))
                    (let () (declare (not safe)) (_%g165866165891%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl165872165953%_))
                                                    (let ((_%e165884165904%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl165872165953%_))))
                                                      (let ((_%tl165886165909%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e165884165904%_)))
                    (_%hd165885165907%_
                     (let () (declare (not safe)) (##car _%e165884165904%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl165886165909%_))
                    (_%__kont170765170766%_
                     _%hd165885165907%_
                     _%hd165871165951%_)
                    (let () (declare (not safe)) (_%g165866165891%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g165866165891%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g165866165891%_))))))))
                        (if (pair? _%rest165840165848%_)
                            (let ((_%hd165845165996%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest165840165848%_)))
                                  (_%tl165846165998%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest165840165848%_))))
                              (let* ((_%hd-bind166001%_ _%hd165845165996%_)
                                     (_%rest166003%_ _%tl165846165998%_))
                                (_%K165844165993%_
                                 _%rest166003%_
                                 _%hd-bind166001%_)))
                            (_%else165842165859%_))))))
                 (_%generate-letrec?165591%_
                  (lambda (_%hd165723%_)
                    (let _%lp165725%_ ((_%rest165727%_ _%hd165723%_))
                      (let* ((_%rest165728165736%_ _%rest165727%_)
                             (_%else165730165744%_ (lambda () '#t))
                             (_%K165732165821%_
                              (lambda (_%rest165747%_ _%hd-bind165748%_)
                                (let* ((_%g165750165767%_
                                        (lambda (_%g165751165764%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g165751165764%_))))
                                       (_%g165749165818%_
                                        (lambda (_%g165751165770%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g165751165770%_))
                                              (let ((_%e165754165772%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g165751165770%_))))
                                                (let ((_%hd165755165775%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165754165772%_)))
                                                      (_%tl165756165777%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165754165772%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd165755165775%_))
                                                      (let ((_%e165757165780%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd165755165775%_))))
                (let ((_%hd165758165783%_
                       (let () (declare (not safe)) (##car _%e165757165780%_)))
                      (_%tl165759165785%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e165757165780%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl165759165785%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl165756165777%_))
                          (let ((_%e165760165788%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl165756165777%_))))
                            (let ((_%hd165761165791%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e165760165788%_)))
                                  (_%tl165762165793%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e165760165788%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl165762165793%_))
                                  ((lambda (_%g165752165796%_
                                            _%g165753165797%_)
                                     (if (_%is-lambda-expr?165592%_
                                          _%g165752165796%_)
                                         (_%lp165725%_ _%rest165747%_)
                                         '#f))
                                   _%hd165761165791%_
                                   _%hd165758165783%_)
                                  (_%g165750165767%_ _%g165751165770%_))))
                          (_%g165750165767%_ _%g165751165770%_))
                      (_%g165750165767%_ _%g165751165770%_))))
              (_%g165750165767%_ _%g165751165770%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g165750165767%_
                                               _%g165751165770%_)))))
                                  (_%g165749165818%_ _%hd-bind165748%_)))))
                        (if (pair? _%rest165728165736%_)
                            (let ((_%hd165733165824%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest165728165736%_)))
                                  (_%tl165734165826%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest165728165736%_))))
                              (let* ((_%hd-bind165829%_ _%hd165733165824%_)
                                     (_%rest165831%_ _%tl165734165826%_))
                                (_%K165732165821%_
                                 _%rest165831%_
                                 _%hd-bind165829%_)))
                            (_%else165730165744%_))))))
                 (_%is-lambda-expr?165592%_
                  (lambda (_%expr165660%_)
                    (let* ((_%__stx170805170806%_ _%expr165660%_)
                           (_%g165663165677%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx170805170806%_)))))
                      (let ((_%__kont170807170808%_
                             (lambda (_%g165665165705%_ _%g165666165706%_)
                               '#t))
                            (_%__kont170809170810%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx170805170806%_))
                            (let ((_%e165667165689%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx170805170806%_))))
                              (let ((_%tl165669165694%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165667165689%_)))
                                    (_%hd165668165692%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165667165689%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd165668165692%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd165668165692%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl165669165694%_))
                                            (let ((_%e165670165697%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl165669165694%_))))
                                              (let ((_%tl165672165702%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e165670165697%_)))
                                                    (_%hd165671165700%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e165670165697%_))))
                                                (_%__kont170807170808%_
                                                 _%tl165672165702%_
                                                 _%hd165671165700%_)))
                                            (_%__kont170809170810%_))
                                        (_%__kont170809170810%_))
                                    (_%__kont170809170810%_))))
                            (_%__kont170809170810%_)))))))
          (let* ((_%g165594165611%_
                  (lambda (_%g165595165608%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g165595165608%_))))
                 (_%g165593165657%_
                  (lambda (_%g165595165614%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g165595165614%_))
                        (let ((_%e165598165616%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g165595165614%_))))
                          (let ((_%hd165599165619%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e165598165616%_)))
                                (_%tl165600165621%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e165598165616%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165600165621%_))
                                (let ((_%e165601165624%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165600165621%_))))
                                  (let ((_%hd165602165627%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165601165624%_)))
                                        (_%tl165603165629%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165601165624%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl165603165629%_))
                                        (let ((_%e165604165632%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl165603165629%_))))
                                          (let ((_%hd165605165635%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165604165632%_)))
                                                (_%tl165606165637%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165604165632%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl165606165637%_))
                                                ((lambda (_%g165596165640%_
                                                          _%g165597165641%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g165597165641%_)
                                                       (if (_%generate-letrec?165591%_
                                                            _%g165597165641%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self165587%_
                                                            'letrec
                                                            _%g165597165641%_
                                                            _%g165596165640%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self165587%_
                                                            'letrec*
                                                            _%g165597165641%_
                                                            _%g165596165640%_
                                                            '#f))
                                                       (_%generate-values165590%_
                                                        _%g165597165641%_
                                                        _%g165596165640%_)))
                                                 _%hd165605165635%_
                                                 _%hd165602165627%_)
                                                (_%g165594165611%_
                                                 _%g165595165614%_))))
                                        (_%g165594165611%_
                                         _%g165595165614%_))))
                                (_%g165594165611%_ _%g165595165614%_))))
                        (_%g165594165611%_ _%g165595165614%_)))))
            (_%g165593165657%_ _%stx165588%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd165524%_)
        (let _%lp165526%_ ((_%rest165528%_ _%hd165524%_))
          (let* ((_%rest165529165545%_ _%rest165528%_)
                 (_%else165532165553%_ (lambda () '#f)))
            (let ((_%K165535165566%_
                   (lambda (_%rest165564%_) (_%lp165526%_ _%rest165564%_)))
                  (_%K165534165558%_ (lambda () '#t)))
              (let ((_%try-match165531165561%_
                     (lambda ()
                       (if (null? _%rest165529165545%_)
                           (_%K165534165558%_)
                           (_%else165532165553%_)))))
                (if (pair? _%rest165529165545%_)
                    (let ((_%tl165537165571%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest165529165545%_)))
                          (_%hd165536165569%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest165529165545%_))))
                      (if (pair? _%hd165536165569%_)
                          (let ((_%tl165539165576%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd165536165569%_)))
                                (_%hd165538165574%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd165536165569%_))))
                            (if (pair? _%hd165538165574%_)
                                (let ((_%tl165543165579%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd165538165574%_))))
                                  (if (null? _%tl165543165579%_)
                                      (if (pair? _%tl165539165576%_)
                                          (let ((_%tl165541165582%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl165539165576%_))))
                                            (if (null? _%tl165541165582%_)
                                                (let ((_%rest165585%_
                                                       _%tl165537165571%_))
                                                  (_%lp165526%_
                                                   _%rest165585%_))
                                                (_%else165532165553%_)))
                                          (_%else165532165553%_))
                                      (_%else165532165553%_)))
                                (_%else165532165553%_)))
                          (_%else165532165553%_)))
                    (_%try-match165531165561%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self165436%_
               _%form165437%_
               _%hd165438%_
               _%body165439%_
               _%compiled-body?165440%_)
        (letrec ((_%generate1165442%_
                  (lambda (_%bind165481%_)
                    (let* ((_%bind165482165493%_ _%bind165481%_)
                           (_%E165484165496%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind165482165493%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K165485165502%_
                            (lambda (_%expr165499%_ _%id165500%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id165500%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self165436%_
                                             _%expr165499%_))
                                          '())))))
                      (if (pair? _%bind165482165493%_)
                          (let ((_%hd165486165505%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind165482165493%_)))
                                (_%tl165487165507%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind165482165493%_))))
                            (if (pair? _%hd165486165505%_)
                                (let ((_%hd165490165510%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd165486165505%_)))
                                      (_%tl165491165512%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd165486165505%_))))
                                  (let ((_%id165515%_ _%hd165490165510%_))
                                    (if (null? _%tl165491165512%_)
                                        (if (pair? _%tl165487165507%_)
                                            (let ((_%hd165488165517%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl165487165507%_)))
                                                  (_%tl165489165519%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl165487165507%_))))
                                              (let ((_%expr165522%_
                                                     _%hd165488165517%_))
                                                (if (null? _%tl165489165519%_)
                                                    (_%K165485165502%_
                                                     _%expr165522%_
                                                     _%id165515%_)
                                                    (_%E165484165496%_))))
                                            (_%E165484165496%_))
                                        (_%E165484165496%_))))
                                (_%E165484165496%_)))
                          (_%E165484165496%_))))))
          (let* ((_%bind165444%_ (map _%generate1165442%_ _%hd165438%_))
                 (_%body165446%_
                  (if _%compiled-body?165440%_
                      _%body165439%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self165436%_ _%body165439%_))))
                 (_%body165478%_
                  (let* ((_%body165447165455%_ _%body165446%_)
                         (_%else165449165463%_
                          (lambda () (cons _%body165446%_ '())))
                         (_%K165451165468%_
                          (lambda (_%exprs165466%_) _%exprs165466%_)))
                    (if (pair? _%body165447165455%_)
                        (let ((_%hd165452165471%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body165447165455%_)))
                              (_%tl165453165473%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body165447165455%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd165452165471%_ 'begin))
                              (let ((_%exprs165476%_ _%tl165453165473%_))
                                (_%K165451165468%_ _%exprs165476%_))
                              (_%else165449165463%_)))
                        (_%else165449165463%_)))))
            (cons _%form165437%_ (cons _%bind165444%_ _%body165478%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self165336%_ _%stx165337%_)
        (letrec ((_%generate1165339%_
                  (lambda (_%datum165391%_)
                    (if (or (null? _%datum165391%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum165391%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum165391%_))
                            (eof-object? _%datum165391%_))
                        _%datum165391%_
                        (if (uninterned-symbol? _%datum165391%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum165391%_
                               '#t))
                            (if (pair? _%datum165391%_)
                                (cons (_%generate1165339%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum165391%_)))
                                      (_%generate1165339%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum165391%_))))
                                (if (box? _%datum165391%_)
                                    (box (_%generate1165339%_
                                          (unbox _%datum165391%_)))
                                    (if (vector? _%datum165391%_)
                                        (vector-map
                                         _%generate1165339%_
                                         _%datum165391%_)
                                        (if (or (s8vector? _%datum165391%_)
                                                (u8vector? _%datum165391%_)
                                                (s16vector? _%datum165391%_)
                                                (u16vector? _%datum165391%_)
                                                (s32vector? _%datum165391%_)
                                                (u32vector? _%datum165391%_)
                                                (s64vector? _%datum165391%_)
                                                (u64vector? _%datum165391%_)
                                                (f32vector? _%datum165391%_)
                                                (f64vector? _%datum165391%_))
                                            _%datum165391%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx165337%_)))))))))))
          (let* ((_%g165341165354%_
                  (lambda (_%g165342165351%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g165342165351%_))))
                 (_%g165340165388%_
                  (lambda (_%g165342165357%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g165342165357%_))
                        (let ((_%e165344165359%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g165342165357%_))))
                          (let ((_%hd165345165362%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e165344165359%_)))
                                (_%tl165346165364%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e165344165359%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165346165364%_))
                                (let ((_%e165347165367%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165346165364%_))))
                                  (let ((_%hd165348165370%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165347165367%_)))
                                        (_%tl165349165372%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165347165367%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165349165372%_))
                                        ((lambda (_%g165343165375%_)
                                           (cons 'quote
                                                 (cons (_%generate1165339%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g165343165375%_)))
                                                       '())))
                                         _%hd165348165370%_)
                                        (_%g165341165354%_
                                         _%g165342165357%_))))
                                (_%g165341165354%_ _%g165342165357%_))))
                        (_%g165341165354%_ _%g165342165357%_)))))
            (_%g165340165388%_ _%stx165337%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self164783%_ _%stx164784%_)
        (letrec ((_%compile-call164786%_
                  (lambda (_%rator165073%_ _%rands165074%_)
                    (let ((_%rator165080%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self164783%_
                              _%rator165073%_)))
                          (_%rands165081%_
                           (map (lambda (_%g165075165077%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self164783%_
                                     _%g165075165077%_)))
                                _%rands165074%_)))
                      (let* ((_%__stx170852170853%_ _%rator165080%_)
                             (_%g165084165136%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx170852170853%_)))))
                        (let ((_%__kont170854170855%_
                               (lambda (_%g165086165256%_
                                        _%g165087165257%_
                                        _%g165088165258%_
                                        _%g165089165259%_)
                                 (if (let ((__tmp171524
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands165081%_)))
                                           (__tmp171522
                                            (length (let ((__tmp171523
                                                           (lambda (_%g165295165298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g165296165300%_)
                     (cons _%g165295165298%_ _%g165296165300%_))))
              (declare (not safe))
              (__foldr1 __tmp171523 '() _%g165088165258%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp171524 __tmp171522))
                                     (let* ((_%id165303%_ _%g165089165259%_)
                                            (_%args165312%_
                                             (let ((__tmp171525
                                                    (lambda (_%g165304165307%_
                                                             _%g165305165309%_)
                                                      (cons _%g165304165307%_
                                                            _%g165305165309%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp171525
                                                '()
                                                _%g165088165258%_)))
                                            (_%body165321%_
                                             (let ((__tmp171526
                                                    (lambda (_%g165313165316%_
                                                             _%g165314165318%_)
                                                      (cons _%g165313165316%_
                                                            _%g165314165318%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp171526
                                                '()
                                                _%g165087165257%_)))
                                            (_%init165323%_
                                             (map list
                                                  _%args165312%_
                                                  _%rands165081%_)))
                                       (cons 'let
                                             (cons _%id165303%_
                                                   (cons _%init165323%_
                                                         _%body165321%_))))
                                     (let ((__tmp171527
                                            (let ((__tmp171528
                                                   (lambda (_%g165325165328%_
                                                            _%g165326165330%_)
                                                     (cons _%g165325165328%_
                                                           _%g165326165330%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp171528
                                               '()
                                               _%g165088165258%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx164784%_
                                        __tmp171527
                                        _%rands165081%_)))))
                              (_%__kont170860170861%_
                               (lambda ()
                                 (cons _%rator165080%_ _%rands165081%_))))
                          (let ((_%__match170919170920%_
                                 (lambda (_%e165090165148%_
                                          _%hd165091165151%_
                                          _%tl165092165153%_
                                          _%e165093165156%_
                                          _%hd165094165159%_
                                          _%tl165095165161%_
                                          _%e165096165164%_
                                          _%hd165097165167%_
                                          _%tl165098165169%_
                                          _%e165099165172%_
                                          _%hd165100165175%_
                                          _%tl165101165177%_
                                          _%e165102165180%_
                                          _%hd165103165183%_
                                          _%tl165104165185%_
                                          _%e165105165188%_
                                          _%hd165106165191%_
                                          _%tl165107165193%_
                                          _%e165108165196%_
                                          _%hd165109165199%_
                                          _%tl165110165201%_
                                          _%__splice170856170857%_
                                          _%target165111165204%_
                                          _%tl165113165206%_)
                                   (letrec ((_%loop165114165209%_
                                             (lambda (_%hd165112165212%_
                                                      _%arg165118165214%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd165112165212%_))
                                                   (let ((_%e165115165216%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd165112165212%_))))
                                                     (let ((_%lp-tl165117165221%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e165115165216%_)))
                                                           (_%lp-hd165116165219%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e165115165216%_))))
                                                       (_%loop165114165209%_
                                                        _%lp-tl165117165221%_
                                                        (cons _%lp-hd165116165219%_
                                                              _%arg165118165214%_))))
                                                   (let ((_%arg165119165224%_
                                                          (reverse _%arg165118165214%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl165110165201%_))
                                                         (let ((_%__splice170858170859%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl165110165201%_
                           '0))))
                   (let ((_%tl165122165228%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice170858170859%_ '1)))
                         (_%target165120165226%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice170858170859%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl165122165228%_))
                         (letrec ((_%loop165123165231%_
                                   (lambda (_%hd165121165234%_
                                            _%body165127165236%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd165121165234%_))
                                         (let ((_%e165124165238%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd165121165234%_))))
                                           (let ((_%lp-tl165126165243%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e165124165238%_)))
                                                 (_%lp-hd165125165241%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e165124165238%_))))
                                             (_%loop165123165231%_
                                              _%lp-tl165126165243%_
                                              (cons _%lp-hd165125165241%_
                                                    _%body165127165236%_))))
                                         (let ((_%body165128165246%_
                                                (reverse _%body165127165236%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl165104165185%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl165098165169%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl165095165161%_))
                                                       (let ((_%e165129165248%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl165095165161%_))))
                 (let ((_%tl165131165253%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e165129165248%_)))
                       (_%hd165130165251%_
                        (let ()
                          (declare (not safe))
                          (##car _%e165129165248%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl165131165253%_))
                       (let ((_%g165086165256%_ _%hd165130165251%_)
                             (_%g165087165257%_ _%body165128165246%_)
                             (_%g165088165258%_ _%arg165119165224%_)
                             (_%g165089165259%_ _%hd165100165175%_))
                         (if (eq? _%g165089165259%_ _%g165086165256%_)
                             (_%__kont170854170855%_
                              _%g165086165256%_
                              _%g165087165257%_
                              _%g165088165258%_
                              _%g165089165259%_)
                             (_%__kont170860170861%_)))
                       (_%__kont170860170861%_))))
               (_%__kont170860170861%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont170860170861%_))
                                               (_%__kont170860170861%_)))))))
                           (_%loop165123165231%_ _%target165120165226%_ '()))
                         (_%__kont170860170861%_))))
                 (_%__kont170860170861%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop165114165209%_
                                      _%target165111165204%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx170852170853%_))
                                (let ((_%e165090165148%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx170852170853%_))))
                                  (let ((_%tl165092165153%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165090165148%_)))
                                        (_%hd165091165151%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165090165148%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd165091165151%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd165091165151%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl165092165153%_))
                                                (let ((_%e165093165156%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl165092165153%_))))
                                                  (let ((_%tl165095165161%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e165093165156%_)))
                                                        (_%hd165094165159%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e165093165156%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd165094165159%_))
                                                        (let ((_%e165096165164%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd165094165159%_))))
                  (let ((_%tl165098165169%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e165096165164%_)))
                        (_%hd165097165167%_
                         (let ()
                           (declare (not safe))
                           (##car _%e165096165164%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd165097165167%_))
                        (let ((_%e165099165172%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd165097165167%_))))
                          (let ((_%tl165101165177%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e165099165172%_)))
                                (_%hd165100165175%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e165099165172%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165101165177%_))
                                (let ((_%e165102165180%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165101165177%_))))
                                  (let ((_%tl165104165185%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165102165180%_)))
                                        (_%hd165103165183%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165102165180%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd165103165183%_))
                                        (let ((_%e165105165188%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd165103165183%_))))
                                          (let ((_%tl165107165193%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165105165188%_)))
                                                (_%hd165106165191%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165105165188%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd165106165191%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd165106165191%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl165107165193%_))
                                                        (let ((_%e165108165196%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl165107165193%_))))
                  (let ((_%tl165110165201%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e165108165196%_)))
                        (_%hd165109165199%_
                         (let ()
                           (declare (not safe))
                           (##car _%e165108165196%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd165109165199%_))
                        (let ((_%__splice170856170857%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd165109165199%_
                                  '0))))
                          (let ((_%tl165113165206%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice170856170857%_ '1)))
                                (_%target165111165204%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice170856170857%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl165113165206%_))
                                (_%__match170919170920%_
                                 _%e165090165148%_
                                 _%hd165091165151%_
                                 _%tl165092165153%_
                                 _%e165093165156%_
                                 _%hd165094165159%_
                                 _%tl165095165161%_
                                 _%e165096165164%_
                                 _%hd165097165167%_
                                 _%tl165098165169%_
                                 _%e165099165172%_
                                 _%hd165100165175%_
                                 _%tl165101165177%_
                                 _%e165102165180%_
                                 _%hd165103165183%_
                                 _%tl165104165185%_
                                 _%e165105165188%_
                                 _%hd165106165191%_
                                 _%tl165107165193%_
                                 _%e165108165196%_
                                 _%hd165109165199%_
                                 _%tl165110165201%_
                                 _%__splice170856170857%_
                                 _%target165111165204%_
                                 _%tl165113165206%_)
                                (_%__kont170860170861%_))))
                        (_%__kont170860170861%_))))
                (_%__kont170860170861%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont170860170861%_))
                                                (_%__kont170860170861%_))))
                                        (_%__kont170860170861%_))))
                                (_%__kont170860170861%_))))
                        (_%__kont170860170861%_))))
                (_%__kont170860170861%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont170860170861%_))
                                            (_%__kont170860170861%_))
                                        (_%__kont170860170861%_))))
                                (_%__kont170860170861%_)))))))))
          (let* ((_%g164788164811%_
                  (lambda (_%g164789164808%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g164789164808%_))))
                 (_%g164787165070%_
                  (lambda (_%g164789164814%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g164789164814%_))
                        (let ((_%e164792164816%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g164789164814%_))))
                          (let ((_%hd164793164819%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e164792164816%_)))
                                (_%tl164794164821%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e164792164816%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl164794164821%_))
                                (let ((_%e164795164824%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl164794164821%_))))
                                  (let ((_%hd164796164827%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e164795164824%_)))
                                        (_%tl164797164829%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e164795164824%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl164797164829%_))
                                        (let ((_g171529_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl164797164829%_
                                                  '0))))
                                          (begin
                                            (let ((_g171530_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g171529_)
                                                         (##values-length
                                                          _g171529_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g171530_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g171530_)))
                                            (let ((_%target164798164832%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g171529_
                                                      0)))
                                                  (_%tl164800164834%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g171529_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl164800164834%_))
                                                  (letrec ((_%loop164801164837%_
                                                            (lambda (_%hd164799164840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand164805164842%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd164799164840%_))
                          (let ((_%e164802164844%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd164799164840%_))))
                            (let ((_%lp-hd164803164847%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e164802164844%_)))
                                  (_%lp-tl164804164849%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e164802164844%_))))
                              (_%loop164801164837%_
                               _%lp-tl164804164849%_
                               (cons _%lp-hd164803164847%_
                                     _%rand164805164842%_))))
                          (let ((_%rand164806164852%_
                                 (reverse _%rand164805164842%_)))
                            ((lambda (_%g164790164854%_ _%g164791164855%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call164786%_
                                    _%g164791164855%_
                                    (let ((__tmp171531
                                           (lambda (_%g164872164875%_
                                                    _%g164873164877%_)
                                             (cons _%g164872164875%_
                                                   _%g164873164877%_))))
                                      (declare (not safe))
                                      (__foldr1
                                       __tmp171531
                                       '()
                                       _%g164790164854%_)))
                                   (let* ((_%__stx170968170969%_
                                           _%g164791164855%_)
                                          (_%g164881164893%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx170968170969%_)))))
                                     (let ((_%__kont170970170971%_
                                            (lambda ()
                                              (let ((_%f164930%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self164783%_
                                                        _%g164791164855%_))))
                                                (if (and (let ((__tmp171532
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f164930%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp171532))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f164930%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp164932%_ ((_%rest164935%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp171534
                                                (lambda (_%g165052165055%_
                                                         _%g165053165057%_)
                                                  (cons _%g165052165055%_
                                                        _%g165053165057%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp171534
                                            '()
                                            _%g164790164854%_))))
                               (_%bind164937%_ '())
                               (_%args164938%_ '()))
              (let* ((_%rest164939164947%_ _%rest164935%_)
                     (_%else164941164955%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind164937%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f164930%_
                                                      _%args164938%_)
                                                '()))))))
                     (_%K164943165041%_
                      (lambda (_%rest164958%_ _%e164959%_)
                        (let* ((_%__stx170922170923%_ _%e164959%_)
                               (_%g164964164982%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx170922170923%_)))))
                          (let ((_%__kont170924170925%_
                                 (lambda ()
                                   (_%lp164932%_
                                    _%rest164958%_
                                    _%bind164937%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e164959%_))
                                          _%args164938%_))))
                                (_%__kont170926170927%_
                                 (lambda ()
                                   (_%lp164932%_
                                    _%rest164958%_
                                    _%bind164937%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e164959%_))
                                          _%args164938%_))))
                                (_%__kont170928170929%_
                                 (lambda ()
                                   (let ((_%tmp164989%_
                                          (let ((__tmp171533
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp171533))))
                                     (_%lp164932%_
                                      _%rest164958%_
                                      (cons (cons _%tmp164989%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e164959%_))
                                                        '()))
                                            _%bind164937%_)
                                      (cons _%tmp164989%_ _%args164938%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx170922170923%_))
                                (let ((_%e164966165020%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx170922170923%_))))
                                  (let ((_%tl164968165025%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e164966165020%_)))
                                        (_%hd164967165023%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e164966165020%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd164967165023%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd164967165023%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl164968165025%_))
                                                (let ((_%e164969165028%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl164968165025%_))))
                                                  (let ((_%tl164971165033%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e164969165028%_)))
                                                        (_%hd164970165031%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e164969165028%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl164971165033%_))
                                                        (_%__kont170924170925%_)
                                                        (_%__kont170928170929%_))))
                                                (_%__kont170928170929%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd164967165023%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl164968165025%_))
                                                    (let ((_%e164975165005%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl164968165025%_))))
                                                      (let ((_%tl164977165010%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e164975165005%_)))
                    (_%hd164976165008%_
                     (let () (declare (not safe)) (##car _%e164975165005%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl164977165010%_))
                    (_%__kont170926170927%_)
                    (_%__kont170928170929%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont170928170929%_))
                                                (_%__kont170928170929%_)))
                                        (_%__kont170928170929%_))))
                                (_%__kont170928170929%_)))))))
                (if (pair? _%rest164939164947%_)
                    (let ((_%hd164944165044%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest164939164947%_)))
                          (_%tl164945165046%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest164939164947%_))))
                      (let* ((_%e165049%_ _%hd164944165044%_)
                             (_%rest165051%_ _%tl164945165046%_))
                        (_%K164943165041%_ _%rest165051%_ _%e165049%_)))
                    (_%else164941164955%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call164786%_
                                                     _%g164791164855%_
                                                     (let ((__tmp171535
                                                            (lambda (_%g165059165062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g165060165064%_)
                      (cons _%g165059165062%_ _%g165060165064%_))))
               (declare (not safe))
               (__foldr1 __tmp171535 '() _%g164790164854%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont170972170973%_
                                            (lambda ()
                                              (_%compile-call164786%_
                                               _%g164791164855%_
                                               (let ((__tmp171536
                                                      (lambda (_%g164899164902%_
                                                               _%g164900164904%_)
                                                        (cons _%g164899164902%_
                                                              _%g164900164904%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp171536
                                                  '()
                                                  _%g164790164854%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx170968170969%_))
                                           (let ((_%e164883164912%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx170968170969%_))))
                                             (let ((_%tl164885164917%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e164883164912%_)))
                                                   (_%hd164884164915%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e164883164912%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd164884164915%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd164884164915%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl164885164917%_))
                                                           (let ((_%e164886164920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl164885164917%_))))
                     (let ((_%tl164888164925%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e164886164920%_)))
                           (_%hd164887164923%_
                            (let ()
                              (declare (not safe))
                              (##car _%e164886164920%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl164888164925%_))
                           (_%__kont170970170971%_)
                           (_%__kont170972170973%_))))
                   (_%__kont170972170973%_))
               (_%__kont170972170973%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont170972170973%_))))
                                           (_%__kont170972170973%_))))))
                             _%rand164806164852%_
                             _%hd164796164827%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop164801164837%_
                                                     _%target164798164832%_
                                                     '()))
                                                  (_%g164788164811%_
                                                   _%g164789164814%_)))))
                                        (_%g164788164811%_
                                         _%g164789164814%_))))
                                (_%g164788164811%_ _%g164789164814%_))))
                        (_%g164788164811%_ _%g164789164814%_)))))
            (_%g164787165070%_ _%stx164784%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self164528%_ _%stx164529%_)
        (let* ((_%__stx171040171041%_ _%stx164529%_)
               (_%g164532164561%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx171040171041%_)))))
          (let ((_%__kont171042171043%_
                 (lambda (_%g164534164627%_ _%g164535164628%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self164528%_
                        _%stx164529%_)
                       (let ((_%f164650%_
                              (let ((__tmp171537
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g164535164628%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self164528%_
                                 __tmp171537))))
                         (let _%lp164652%_ ((_%rest164655%_
                                             (reverse (let ((__tmp171539
                                                             (lambda (_%g164772164775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g164773164777%_)
                       (cons _%g164772164775%_ _%g164773164777%_))))
                (declare (not safe))
                (__foldr1 __tmp171539 '() _%g164534164627%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind164657%_ '())
                                            (_%args164658%_ '()))
                           (let* ((_%rest164659164667%_ _%rest164655%_)
                                  (_%else164661164675%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind164657%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f164650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args164658%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K164663164761%_
                                   (lambda (_%rest164678%_ _%e164679%_)
                                     (let* ((_%__stx170994170995%_ _%e164679%_)
                                            (_%g164684164702%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx170994170995%_)))))
                                       (let ((_%__kont170996170997%_
                                              (lambda ()
                                                (_%lp164652%_
                                                 _%rest164678%_
                                                 _%bind164657%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e164679%_))
                                                       _%args164658%_))))
                                             (_%__kont170998170999%_
                                              (lambda ()
                                                (_%lp164652%_
                                                 _%rest164678%_
                                                 _%bind164657%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e164679%_))
                                                       _%args164658%_))))
                                             (_%__kont171000171001%_
                                              (lambda ()
                                                (let ((_%tmp164709%_
                                                       (let ((__tmp171538
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp171538))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp164652%_
                                                   _%rest164678%_
                                                   (cons (cons _%tmp164709%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e164679%_))
                             '()))
                 _%bind164657%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp164709%_
                                                         _%args164658%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx170994170995%_))
                                             (let ((_%e164686164740%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx170994170995%_))))
                                               (let ((_%tl164688164745%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e164686164740%_)))
                                                     (_%hd164687164743%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e164686164740%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd164687164743%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd164687164743%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl164688164745%_))
                     (let ((_%e164689164748%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl164688164745%_))))
                       (let ((_%tl164691164753%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e164689164748%_)))
                             (_%hd164690164751%_
                              (let ()
                                (declare (not safe))
                                (##car _%e164689164748%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl164691164753%_))
                             (_%__kont170996170997%_)
                             (_%__kont171000171001%_))))
                     (_%__kont171000171001%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd164687164743%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl164688164745%_))
                         (let ((_%e164695164725%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl164688164745%_))))
                           (let ((_%tl164697164730%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e164695164725%_)))
                                 (_%hd164696164728%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e164695164725%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl164697164730%_))
                                 (_%__kont170998170999%_)
                                 (_%__kont171000171001%_))))
                         (_%__kont171000171001%_))
                     (_%__kont171000171001%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont171000171001%_))))
                                             (_%__kont171000171001%_)))))))
                             (if (pair? _%rest164659164667%_)
                                 (let ((_%hd164664164764%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest164659164667%_)))
                                       (_%tl164665164766%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest164659164667%_))))
                                   (let* ((_%e164769%_ _%hd164664164764%_)
                                          (_%rest164771%_ _%tl164665164766%_))
                                     (_%K164663164761%_
                                      _%rest164771%_
                                      _%e164769%_)))
                                 (_%else164661164675%_))))))))
                (_%__kont171046171047%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self164528%_ _%stx164529%_))))
            (let ((_%__match171085171086%_
                   (lambda (_%e164536164573%_
                            _%hd164537164576%_
                            _%tl164538164578%_
                            _%e164539164581%_
                            _%hd164540164584%_
                            _%tl164541164586%_
                            _%e164542164589%_
                            _%hd164543164592%_
                            _%tl164544164594%_
                            _%e164545164597%_
                            _%hd164546164600%_
                            _%tl164547164602%_
                            _%__splice171044171045%_
                            _%target164548164605%_
                            _%tl164550164607%_)
                     (letrec ((_%loop164551164610%_
                               (lambda (_%hd164549164613%_
                                        _%rand164555164615%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd164549164613%_))
                                     (let ((_%e164552164617%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd164549164613%_))))
                                       (let ((_%lp-tl164554164622%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e164552164617%_)))
                                             (_%lp-hd164553164620%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e164552164617%_))))
                                         (_%loop164551164610%_
                                          _%lp-tl164554164622%_
                                          (cons _%lp-hd164553164620%_
                                                _%rand164555164615%_))))
                                     (let ((_%rand164556164625%_
                                            (reverse _%rand164555164615%_)))
                                       (_%__kont171042171043%_
                                        _%rand164556164625%_
                                        _%hd164546164600%_))))))
                       (_%loop164551164610%_ _%target164548164605%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx171040171041%_))
                  (let ((_%e164536164573%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx171040171041%_))))
                    (let ((_%tl164538164578%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e164536164573%_)))
                          (_%hd164537164576%_
                           (let ()
                             (declare (not safe))
                             (##car _%e164536164573%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl164538164578%_))
                          (let ((_%e164539164581%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl164538164578%_))))
                            (let ((_%tl164541164586%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e164539164581%_)))
                                  (_%hd164540164584%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e164539164581%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd164540164584%_))
                                  (let ((_%e164542164589%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd164540164584%_))))
                                    (let ((_%tl164544164594%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e164542164589%_)))
                                          (_%hd164543164592%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e164542164589%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd164543164592%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd164543164592%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl164544164594%_))
                                                  (let ((_%e164545164597%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl164544164594%_))))
                                                    (let ((_%tl164547164602%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e164545164597%_)))
                                                          (_%hd164546164600%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e164545164597%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl164547164602%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl164541164586%_))
                      (let ((_%__splice171044171045%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl164541164586%_
                                '0))))
                        (let ((_%tl164550164607%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice171044171045%_ '1)))
                              (_%target164548164605%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice171044171045%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl164550164607%_))
                              (_%__match171085171086%_
                               _%e164536164573%_
                               _%hd164537164576%_
                               _%tl164538164578%_
                               _%e164539164581%_
                               _%hd164540164584%_
                               _%tl164541164586%_
                               _%e164542164589%_
                               _%hd164543164592%_
                               _%tl164544164594%_
                               _%e164545164597%_
                               _%hd164546164600%_
                               _%tl164547164602%_
                               _%__splice171044171045%_
                               _%target164548164605%_
                               _%tl164550164607%_)
                              (_%__kont171046171047%_))))
                      (_%__kont171046171047%_))
                  (_%__kont171046171047%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171046171047%_))
                                              (_%__kont171046171047%_))
                                          (_%__kont171046171047%_))))
                                  (_%__kont171046171047%_))))
                          (_%__kont171046171047%_))))
                  (_%__kont171046171047%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self164340%_ _%stx164341%_)
        (letrec ((_%simplify164343%_
                  (lambda (_%code164428%_)
                    (let* ((_%code164429164447%_ _%code164428%_)
                           (_%else164431164455%_ (lambda () _%code164428%_))
                           (_%K164433164491%_
                            (lambda (_%expr164458%_ _%test164459%_)
                              (let* ((_%expr164460164468%_ _%expr164458%_)
                                     (_%else164462164476%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test164459%_
                                                    (cons _%expr164458%_
                                                          '())))))
                                     (_%K164464164481%_
                                      (lambda (_%exprs164479%_)
                                        (cons 'and
                                              (cons _%test164459%_
                                                    _%exprs164479%_)))))
                                (if (pair? _%expr164460164468%_)
                                    (let ((_%hd164465164484%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr164460164468%_)))
                                          (_%tl164466164486%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr164460164468%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd164465164484%_ 'and))
                                          (let ((_%exprs164489%_
                                                 _%tl164466164486%_))
                                            (_%K164464164481%_
                                             _%exprs164489%_))
                                          (_%else164462164476%_)))
                                    (_%else164462164476%_))))))
                      (if (pair? _%code164429164447%_)
                          (let ((_%hd164434164494%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code164429164447%_)))
                                (_%tl164435164496%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code164429164447%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd164434164494%_ 'if))
                                (if (pair? _%tl164435164496%_)
                                    (let ((_%hd164436164499%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl164435164496%_)))
                                          (_%tl164437164501%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl164435164496%_))))
                                      (let ((_%test164504%_
                                             _%hd164436164499%_))
                                        (if (pair? _%tl164437164501%_)
                                            (let ((_%hd164438164506%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl164437164501%_)))
                                                  (_%tl164439164508%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl164437164501%_))))
                                              (let ((_%expr164511%_
                                                     _%hd164438164506%_))
                                                (if (pair? _%tl164439164508%_)
                                                    (let ((_%hd164440164513%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl164439164508%_)))
                                                          (_%tl164441164515%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl164439164508%_))))
                                                      (if (pair? _%hd164440164513%_)
                                                          (let ((_%hd164442164518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd164440164513%_)))
                        (_%tl164443164520%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd164440164513%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd164442164518%_ 'quote))
                        (if (pair? _%tl164443164520%_)
                            (let ((_%hd164444164523%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl164443164520%_)))
                                  (_%tl164445164525%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl164443164520%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd164444164523%_ '#f))
                                  (if (null? _%tl164445164525%_)
                                      (if (null? _%tl164441164515%_)
                                          (_%K164433164491%_
                                           _%expr164511%_
                                           _%test164504%_)
                                          (_%else164431164455%_))
                                      (_%else164431164455%_))
                                  (_%else164431164455%_)))
                            (_%else164431164455%_))
                        (_%else164431164455%_)))
                  (_%else164431164455%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else164431164455%_))))
                                            (_%else164431164455%_))))
                                    (_%else164431164455%_))
                                (_%else164431164455%_)))
                          (_%else164431164455%_))))))
          (let* ((_%g164345164366%_
                  (lambda (_%g164346164363%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g164346164363%_))))
                 (_%g164344164425%_
                  (lambda (_%g164346164369%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g164346164369%_))
                        (let ((_%e164350164371%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g164346164369%_))))
                          (let ((_%hd164351164374%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e164350164371%_)))
                                (_%tl164352164376%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e164350164371%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl164352164376%_))
                                (let ((_%e164353164379%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl164352164376%_))))
                                  (let ((_%hd164354164382%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e164353164379%_)))
                                        (_%tl164355164384%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e164353164379%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl164355164384%_))
                                        (let ((_%e164356164387%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl164355164384%_))))
                                          (let ((_%hd164357164390%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e164356164387%_)))
                                                (_%tl164358164392%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e164356164387%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl164358164392%_))
                                                (let ((_%e164359164395%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl164358164392%_))))
                                                  (let ((_%hd164360164398%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e164359164395%_)))
                                                        (_%tl164361164400%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e164359164395%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl164361164400%_))
                                                        ((lambda (_%g164347164403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g164348164404%_
                          _%g164349164405%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify164343%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self164340%_
                                       _%g164349164405%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self164340%_
                                             _%g164348164404%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self164340%_
                                                   _%g164347164403%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp171540
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self164340%_
                                               _%g164349164405%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp171540
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self164340%_
                                            _%g164348164404%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self164340%_
                                                  _%g164347164403%_))
                                               '()))))))
                 _%hd164360164398%_
                 _%hd164357164390%_
                 _%hd164354164382%_)
                (_%g164345164366%_ _%g164346164369%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g164345164366%_
                                                 _%g164346164369%_))))
                                        (_%g164345164366%_
                                         _%g164346164369%_))))
                                (_%g164345164366%_ _%g164346164369%_))))
                        (_%g164345164366%_ _%g164346164369%_)))))
            (_%g164344164425%_ _%stx164341%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self164288%_ _%stx164289%_)
        (let* ((_%g164291164304%_
                (lambda (_%g164292164301%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164292164301%_))))
               (_%g164290164337%_
                (lambda (_%g164292164307%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164292164307%_))
                      (let ((_%e164294164309%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164292164307%_))))
                        (let ((_%hd164295164312%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164294164309%_)))
                              (_%tl164296164314%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164294164309%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164296164314%_))
                              (let ((_%e164297164317%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164296164314%_))))
                                (let ((_%hd164298164320%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164297164317%_)))
                                      (_%tl164299164322%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164297164317%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl164299164322%_))
                                      ((lambda (_%g164293164325%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g164293164325%_)))
                                       _%hd164298164320%_)
                                      (_%g164291164304%_ _%g164292164307%_))))
                              (_%g164291164304%_ _%g164292164307%_))))
                      (_%g164291164304%_ _%g164292164307%_)))))
          (_%g164290164337%_ _%stx164289%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self164220%_ _%stx164221%_)
        (let* ((_%g164223164240%_
                (lambda (_%g164224164237%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164224164237%_))))
               (_%g164222164285%_
                (lambda (_%g164224164243%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164224164243%_))
                      (let ((_%e164227164245%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164224164243%_))))
                        (let ((_%hd164228164248%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164227164245%_)))
                              (_%tl164229164250%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164227164245%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164229164250%_))
                              (let ((_%e164230164253%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164229164250%_))))
                                (let ((_%hd164231164256%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164230164253%_)))
                                      (_%tl164232164258%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164230164253%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164232164258%_))
                                      (let ((_%e164233164261%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164232164258%_))))
                                        (let ((_%hd164234164264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164233164261%_)))
                                              (_%tl164235164266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164233164261%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl164235164266%_))
                                              ((lambda (_%g164225164269%_
                                                        _%g164226164270%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g164226164270%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self164220%_
                              _%g164225164269%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd164234164264%_
                                               _%hd164231164256%_)
                                              (_%g164223164240%_
                                               _%g164224164243%_))))
                                      (_%g164223164240%_ _%g164224164243%_))))
                              (_%g164223164240%_ _%g164224164243%_))))
                      (_%g164223164240%_ _%g164224164243%_)))))
          (_%g164222164285%_ _%stx164221%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self164031%_ _%stx164032%_)
        (let* ((_%g164034164051%_
                (lambda (_%g164035164048%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164035164048%_))))
               (_%g164033164217%_
                (lambda (_%g164035164054%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164035164054%_))
                      (let ((_%e164038164056%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164035164054%_))))
                        (let ((_%hd164039164059%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164038164056%_)))
                              (_%tl164040164061%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164038164056%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164040164061%_))
                              (let ((_%e164041164064%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164040164061%_))))
                                (let ((_%hd164042164067%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164041164064%_)))
                                      (_%tl164043164069%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164041164064%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164043164069%_))
                                      (let ((_%e164044164072%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164043164069%_))))
                                        (let ((_%hd164045164075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164044164072%_)))
                                              (_%tl164046164077%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164044164072%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl164046164077%_))
                                              ((lambda (_%g164036164080%_
                                                        _%g164037164081%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self164031%_ _%g164036164080%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self164031%_
                                  _%g164037164081%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp164096%_ ((_%rest164099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g164037164081%_
                                       (cons _%g164036164080%_ '())))
                                (_%bind164101%_ '())
                                (_%args164102%_ '()))
               (let* ((_%rest164103164111%_ _%rest164099%_)
                      (_%else164105164119%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind164101%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args164102%_)
                                                 '()))))))
                      (_%K164107164205%_
                       (lambda (_%rest164122%_ _%e164123%_)
                         (let* ((_%__stx171088171089%_ _%e164123%_)
                                (_%g164128164146%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx171088171089%_)))))
                           (let ((_%__kont171090171091%_
                                  (lambda ()
                                    (_%lp164096%_
                                     _%rest164122%_
                                     _%bind164101%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e164123%_))
                                           _%args164102%_))))
                                 (_%__kont171092171093%_
                                  (lambda ()
                                    (_%lp164096%_
                                     _%rest164122%_
                                     _%bind164101%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e164123%_))
                                           _%args164102%_))))
                                 (_%__kont171094171095%_
                                  (lambda ()
                                    (let ((_%tmp164153%_
                                           (let ((__tmp171541
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp171541))))
                                      (_%lp164096%_
                                       _%rest164122%_
                                       (cons (cons _%tmp164153%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e164123%_))
                                                         '()))
                                             _%bind164101%_)
                                       (cons _%tmp164153%_ _%args164102%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx171088171089%_))
                                 (let ((_%e164130164184%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx171088171089%_))))
                                   (let ((_%tl164132164189%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e164130164184%_)))
                                         (_%hd164131164187%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e164130164184%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd164131164187%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd164131164187%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl164132164189%_))
                                                 (let ((_%e164133164192%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl164132164189%_))))
                                                   (let ((_%tl164135164197%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e164133164192%_)))
                                                         (_%hd164134164195%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e164133164192%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl164135164197%_))
                                                         (_%__kont171090171091%_)
                                                         (_%__kont171094171095%_))))
                                                 (_%__kont171094171095%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd164131164187%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl164132164189%_))
                                                     (let ((_%e164139164169%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl164132164189%_))))
                                                       (let ((_%tl164141164174%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e164139164169%_)))
                     (_%hd164140164172%_
                      (let () (declare (not safe)) (##car _%e164139164169%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl164141164174%_))
                     (_%__kont171092171093%_)
                     (_%__kont171094171095%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont171094171095%_))
                                                 (_%__kont171094171095%_)))
                                         (_%__kont171094171095%_))))
                                 (_%__kont171094171095%_)))))))
                 (if (pair? _%rest164103164111%_)
                     (let ((_%hd164108164208%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest164103164111%_)))
                           (_%tl164109164210%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest164103164111%_))))
                       (let* ((_%e164213%_ _%hd164108164208%_)
                              (_%rest164215%_ _%tl164109164210%_))
                         (_%K164107164205%_ _%rest164215%_ _%e164213%_)))
                     (_%else164105164119%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd164045164075%_
                                               _%hd164042164067%_)
                                              (_%g164034164051%_
                                               _%g164035164054%_))))
                                      (_%g164034164051%_ _%g164035164054%_))))
                              (_%g164034164051%_ _%g164035164054%_))))
                      (_%g164034164051%_ _%g164035164054%_)))))
          (_%g164033164217%_ _%stx164032%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self163842%_ _%stx163843%_)
        (let* ((_%g163845163862%_
                (lambda (_%g163846163859%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163846163859%_))))
               (_%g163844164028%_
                (lambda (_%g163846163865%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163846163865%_))
                      (let ((_%e163849163867%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163846163865%_))))
                        (let ((_%hd163850163870%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163849163867%_)))
                              (_%tl163851163872%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163849163867%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl163851163872%_))
                              (let ((_%e163852163875%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl163851163872%_))))
                                (let ((_%hd163853163878%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e163852163875%_)))
                                      (_%tl163854163880%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e163852163875%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl163854163880%_))
                                      (let ((_%e163855163883%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl163854163880%_))))
                                        (let ((_%hd163856163886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e163855163883%_)))
                                              (_%tl163857163888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e163855163883%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl163857163888%_))
                                              ((lambda (_%g163847163891%_
                                                        _%g163848163892%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self163842%_ _%g163847163891%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self163842%_
                                  _%g163848163892%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp163907%_ ((_%rest163910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g163848163892%_
                                       (cons _%g163847163891%_ '())))
                                (_%bind163912%_ '())
                                (_%args163913%_ '()))
               (let* ((_%rest163914163922%_ _%rest163910%_)
                      (_%else163916163930%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind163912%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args163913%_)
                                                 '()))))))
                      (_%K163918164016%_
                       (lambda (_%rest163933%_ _%e163934%_)
                         (let* ((_%__stx171134171135%_ _%e163934%_)
                                (_%g163939163957%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx171134171135%_)))))
                           (let ((_%__kont171136171137%_
                                  (lambda ()
                                    (_%lp163907%_
                                     _%rest163933%_
                                     _%bind163912%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e163934%_))
                                           _%args163913%_))))
                                 (_%__kont171138171139%_
                                  (lambda ()
                                    (_%lp163907%_
                                     _%rest163933%_
                                     _%bind163912%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e163934%_))
                                           _%args163913%_))))
                                 (_%__kont171140171141%_
                                  (lambda ()
                                    (let ((_%tmp163964%_
                                           (let ((__tmp171542
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp171542))))
                                      (_%lp163907%_
                                       _%rest163933%_
                                       (cons (cons _%tmp163964%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e163934%_))
                                                         '()))
                                             _%bind163912%_)
                                       (cons _%tmp163964%_ _%args163913%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx171134171135%_))
                                 (let ((_%e163941163995%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx171134171135%_))))
                                   (let ((_%tl163943164000%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e163941163995%_)))
                                         (_%hd163942163998%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e163941163995%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd163942163998%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd163942163998%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl163943164000%_))
                                                 (let ((_%e163944164003%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl163943164000%_))))
                                                   (let ((_%tl163946164008%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e163944164003%_)))
                                                         (_%hd163945164006%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e163944164003%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl163946164008%_))
                                                         (_%__kont171136171137%_)
                                                         (_%__kont171140171141%_))))
                                                 (_%__kont171140171141%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd163942163998%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl163943164000%_))
                                                     (let ((_%e163950163980%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl163943164000%_))))
                                                       (let ((_%tl163952163985%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e163950163980%_)))
                     (_%hd163951163983%_
                      (let () (declare (not safe)) (##car _%e163950163980%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl163952163985%_))
                     (_%__kont171138171139%_)
                     (_%__kont171140171141%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont171140171141%_))
                                                 (_%__kont171140171141%_)))
                                         (_%__kont171140171141%_))))
                                 (_%__kont171140171141%_)))))))
                 (if (pair? _%rest163914163922%_)
                     (let ((_%hd163919164019%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest163914163922%_)))
                           (_%tl163920164021%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest163914163922%_))))
                       (let* ((_%e164024%_ _%hd163919164019%_)
                              (_%rest164026%_ _%tl163920164021%_))
                         (_%K163918164016%_ _%rest164026%_ _%e164024%_)))
                     (_%else163916163930%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd163856163886%_
                                               _%hd163853163878%_)
                                              (_%g163845163862%_
                                               _%g163846163865%_))))
                                      (_%g163845163862%_ _%g163846163865%_))))
                              (_%g163845163862%_ _%g163846163865%_))))
                      (_%g163845163862%_ _%g163846163865%_)))))
          (_%g163844164028%_ _%stx163843%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self163758%_ _%stx163759%_)
        (let* ((_%g163761163782%_
                (lambda (_%g163762163779%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163762163779%_))))
               (_%g163760163839%_
                (lambda (_%g163762163785%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163762163785%_))
                      (let ((_%e163766163787%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163762163785%_))))
                        (let ((_%hd163767163790%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163766163787%_)))
                              (_%tl163768163792%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163766163787%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl163768163792%_))
                              (let ((_%e163769163795%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl163768163792%_))))
                                (let ((_%hd163770163798%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e163769163795%_)))
                                      (_%tl163771163800%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e163769163795%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl163771163800%_))
                                      (let ((_%e163772163803%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl163771163800%_))))
                                        (let ((_%hd163773163806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e163772163803%_)))
                                              (_%tl163774163808%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e163772163803%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl163774163808%_))
                                              (let ((_%e163775163811%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl163774163808%_))))
                                                (let ((_%hd163776163814%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e163775163811%_)))
                                                      (_%tl163777163816%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e163775163811%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl163777163816%_))
                                                      ((lambda (_%g163763163819%_
                                                                _%g163764163820%_
                                                                _%g163765163821%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self163758%_
                                _%g163763163819%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self163758%_
                                      _%g163764163820%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self163758%_
                                            _%g163765163821%_))
                                         (cons ''#f '()))))))
               _%hd163776163814%_
               _%hd163773163806%_
               _%hd163770163798%_)
              (_%g163761163782%_ _%g163762163785%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g163761163782%_
                                               _%g163762163785%_))))
                                      (_%g163761163782%_ _%g163762163785%_))))
                              (_%g163761163782%_ _%g163762163785%_))))
                      (_%g163761163782%_ _%g163762163785%_)))))
          (_%g163760163839%_ _%stx163759%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self163658%_ _%stx163659%_)
        (let* ((_%g163661163686%_
                (lambda (_%g163662163683%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163662163683%_))))
               (_%g163660163755%_
                (lambda (_%g163662163689%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163662163689%_))
                      (let ((_%e163667163691%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163662163689%_))))
                        (let ((_%hd163668163694%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163667163691%_)))
                              (_%tl163669163696%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163667163691%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl163669163696%_))
                              (let ((_%e163670163699%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl163669163696%_))))
                                (let ((_%hd163671163702%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e163670163699%_)))
                                      (_%tl163672163704%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e163670163699%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl163672163704%_))
                                      (let ((_%e163673163707%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl163672163704%_))))
                                        (let ((_%hd163674163710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e163673163707%_)))
                                              (_%tl163675163712%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e163673163707%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl163675163712%_))
                                              (let ((_%e163676163715%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl163675163712%_))))
                                                (let ((_%hd163677163718%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e163676163715%_)))
                                                      (_%tl163678163720%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e163676163715%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl163678163720%_))
                                                      (let ((_%e163679163723%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl163678163720%_))))
                (let ((_%hd163680163726%_
                       (let () (declare (not safe)) (##car _%e163679163723%_)))
                      (_%tl163681163728%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e163679163723%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl163681163728%_))
                      ((lambda (_%g163663163731%_
                                _%g163664163732%_
                                _%g163665163733%_
                                _%g163666163734%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self163658%_
                                        _%g163664163732%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self163658%_
                                              _%g163663163731%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self163658%_
                                                    _%g163665163733%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self163658%_
                                                          _%g163666163734%_))
                                                       (cons ''#f '())))))))
                       _%hd163680163726%_
                       _%hd163677163718%_
                       _%hd163674163710%_
                       _%hd163671163702%_)
                      (_%g163661163686%_ _%g163662163689%_))))
              (_%g163661163686%_ _%g163662163689%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g163661163686%_
                                               _%g163662163689%_))))
                                      (_%g163661163686%_ _%g163662163689%_))))
                              (_%g163661163686%_ _%g163662163689%_))))
                      (_%g163661163686%_ _%g163662163689%_)))))
          (_%g163660163755%_ _%stx163659%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self163574%_ _%stx163575%_)
        (let* ((_%g163577163598%_
                (lambda (_%g163578163595%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163578163595%_))))
               (_%g163576163655%_
                (lambda (_%g163578163601%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163578163601%_))
                      (let ((_%e163582163603%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163578163601%_))))
                        (let ((_%hd163583163606%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163582163603%_)))
                              (_%tl163584163608%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163582163603%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl163584163608%_))
                              (let ((_%e163585163611%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl163584163608%_))))
                                (let ((_%hd163586163614%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e163585163611%_)))
                                      (_%tl163587163616%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e163585163611%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl163587163616%_))
                                      (let ((_%e163588163619%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl163587163616%_))))
                                        (let ((_%hd163589163622%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e163588163619%_)))
                                              (_%tl163590163624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e163588163619%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl163590163624%_))
                                              (let ((_%e163591163627%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl163590163624%_))))
                                                (let ((_%hd163592163630%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e163591163627%_)))
                                                      (_%tl163593163632%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e163591163627%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl163593163632%_))
                                                      ((lambda (_%g163579163635%_
                                                                _%g163580163636%_
                                                                _%g163581163637%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self163574%_
                                _%g163579163635%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self163574%_
                                      _%g163580163636%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self163574%_
                                            _%g163581163637%_))
                                         (cons ''#f '()))))))
               _%hd163592163630%_
               _%hd163589163622%_
               _%hd163586163614%_)
              (_%g163577163598%_ _%g163578163601%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g163577163598%_
                                               _%g163578163601%_))))
                                      (_%g163577163598%_ _%g163578163601%_))))
                              (_%g163577163598%_ _%g163578163601%_))))
                      (_%g163577163598%_ _%g163578163601%_)))))
          (_%g163576163655%_ _%stx163575%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self163474%_ _%stx163475%_)
        (let* ((_%g163477163502%_
                (lambda (_%g163478163499%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163478163499%_))))
               (_%g163476163571%_
                (lambda (_%g163478163505%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163478163505%_))
                      (let ((_%e163483163507%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163478163505%_))))
                        (let ((_%hd163484163510%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163483163507%_)))
                              (_%tl163485163512%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163483163507%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl163485163512%_))
                              (let ((_%e163486163515%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl163485163512%_))))
                                (let ((_%hd163487163518%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e163486163515%_)))
                                      (_%tl163488163520%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e163486163515%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl163488163520%_))
                                      (let ((_%e163489163523%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl163488163520%_))))
                                        (let ((_%hd163490163526%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e163489163523%_)))
                                              (_%tl163491163528%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e163489163523%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl163491163528%_))
                                              (let ((_%e163492163531%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl163491163528%_))))
                                                (let ((_%hd163493163534%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e163492163531%_)))
                                                      (_%tl163494163536%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e163492163531%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl163494163536%_))
                                                      (let ((_%e163495163539%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl163494163536%_))))
                (let ((_%hd163496163542%_
                       (let () (declare (not safe)) (##car _%e163495163539%_)))
                      (_%tl163497163544%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e163495163539%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl163497163544%_))
                      ((lambda (_%g163479163547%_
                                _%g163480163548%_
                                _%g163481163549%_
                                _%g163482163550%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self163474%_
                                        _%g163480163548%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self163474%_
                                              _%g163479163547%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self163474%_
                                                    _%g163481163549%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self163474%_
                                                          _%g163482163550%_))
                                                       (cons ''#f '())))))))
                       _%hd163496163542%_
                       _%hd163493163534%_
                       _%hd163490163526%_
                       _%hd163487163518%_)
                      (_%g163477163502%_ _%g163478163505%_))))
              (_%g163477163502%_ _%g163478163505%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g163477163502%_
                                               _%g163478163505%_))))
                                      (_%g163477163502%_ _%g163478163505%_))))
                              (_%g163477163502%_ _%g163478163505%_))))
                      (_%g163477163502%_ _%g163478163505%_)))))
          (_%g163476163571%_ _%stx163475%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self163269%_ _%stx163270%_)
        (let* ((_%g163272163293%_
                (lambda (_%g163273163290%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163273163290%_))))
               (_%g163271163471%_
                (lambda (_%g163273163296%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163273163296%_))
                      (let ((_%e163277163298%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163273163296%_))))
                        (let ((_%hd163278163301%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163277163298%_)))
                              (_%tl163279163303%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163277163298%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl163279163303%_))
                              (let ((_%e163280163306%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl163279163303%_))))
                                (let ((_%hd163281163309%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e163280163306%_)))
                                      (_%tl163282163311%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e163280163306%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl163282163311%_))
                                      (let ((_%e163283163314%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl163282163311%_))))
                                        (let ((_%hd163284163317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e163283163314%_)))
                                              (_%tl163285163319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e163283163314%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl163285163319%_))
                                              (let ((_%e163286163322%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl163285163319%_))))
                                                (let ((_%hd163287163325%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e163286163322%_)))
                                                      (_%tl163288163327%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e163286163322%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl163288163327%_))
                                                      ((lambda (_%g163274163330%_
                                                                _%g163275163331%_
                                                                _%g163276163332%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self163269%_
                                    _%g163274163330%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self163269%_
                                          _%g163275163331%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp163350%_ ((_%rest163353%_
                                         (cons _%g163275163331%_
                                               (cons _%g163274163330%_ '())))
                                        (_%bind163355%_ '())
                                        (_%args163356%_ '()))
                       (let* ((_%rest163357163365%_ _%rest163353%_)
                              (_%else163359163373%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind163355%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp171543
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp171543 _%args163356%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K163361163459%_
                               (lambda (_%rest163376%_ _%e163377%_)
                                 (let* ((_%__stx171180171181%_ _%e163377%_)
                                        (_%g163382163400%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx171180171181%_)))))
                                   (let ((_%__kont171182171183%_
                                          (lambda ()
                                            (_%lp163350%_
                                             _%rest163376%_
                                             _%bind163355%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e163377%_))
                                                   _%args163356%_))))
                                         (_%__kont171184171185%_
                                          (lambda ()
                                            (_%lp163350%_
                                             _%rest163376%_
                                             _%bind163355%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e163377%_))
                                                   _%args163356%_))))
                                         (_%__kont171186171187%_
                                          (lambda ()
                                            (let ((_%tmp163407%_
                                                   (let ((__tmp171544
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp171544))))
                                              (_%lp163350%_
                                               _%rest163376%_
                                               (cons (cons _%tmp163407%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e163377%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind163355%_)
                                               (cons _%tmp163407%_
                                                     _%args163356%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx171180171181%_))
                                         (let ((_%e163384163438%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx171180171181%_))))
                                           (let ((_%tl163386163443%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e163384163438%_)))
                                                 (_%hd163385163441%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e163384163438%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd163385163441%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd163385163441%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl163386163443%_))
                                                         (let ((_%e163387163446%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl163386163443%_))))
                   (let ((_%tl163389163451%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e163387163446%_)))
                         (_%hd163388163449%_
                          (let ()
                            (declare (not safe))
                            (##car _%e163387163446%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl163389163451%_))
                         (_%__kont171182171183%_)
                         (_%__kont171186171187%_))))
                 (_%__kont171186171187%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd163385163441%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl163386163443%_))
                     (let ((_%e163393163423%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl163386163443%_))))
                       (let ((_%tl163395163428%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e163393163423%_)))
                             (_%hd163394163426%_
                              (let ()
                                (declare (not safe))
                                (##car _%e163393163423%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl163395163428%_))
                             (_%__kont171184171185%_)
                             (_%__kont171186171187%_))))
                     (_%__kont171186171187%_))
                 (_%__kont171186171187%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont171186171187%_))))
                                         (_%__kont171186171187%_)))))))
                         (if (pair? _%rest163357163365%_)
                             (let ((_%hd163362163462%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest163357163365%_)))
                                   (_%tl163363163464%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest163357163365%_))))
                               (let* ((_%e163467%_ _%hd163362163462%_)
                                      (_%rest163469%_ _%tl163363163464%_))
                                 (_%K163361163459%_
                                  _%rest163469%_
                                  _%e163467%_)))
                             (_%else163359163373%_))))))
               _%hd163287163325%_
               _%hd163284163317%_
               _%hd163281163309%_)
              (_%g163272163293%_ _%g163273163296%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g163272163293%_
                                               _%g163273163296%_))))
                                      (_%g163272163293%_ _%g163273163296%_))))
                              (_%g163272163293%_ _%g163273163296%_))))
                      (_%g163272163293%_ _%g163273163296%_)))))
          (_%g163271163471%_ _%stx163270%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self163048%_ _%stx163049%_)
        (let* ((_%g163051163076%_
                (lambda (_%g163052163073%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163052163073%_))))
               (_%g163050163266%_
                (lambda (_%g163052163079%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163052163079%_))
                      (let ((_%e163057163081%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163052163079%_))))
                        (let ((_%hd163058163084%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163057163081%_)))
                              (_%tl163059163086%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163057163081%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl163059163086%_))
                              (let ((_%e163060163089%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl163059163086%_))))
                                (let ((_%hd163061163092%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e163060163089%_)))
                                      (_%tl163062163094%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e163060163089%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl163062163094%_))
                                      (let ((_%e163063163097%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl163062163094%_))))
                                        (let ((_%hd163064163100%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e163063163097%_)))
                                              (_%tl163065163102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e163063163097%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl163065163102%_))
                                              (let ((_%e163066163105%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl163065163102%_))))
                                                (let ((_%hd163067163108%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e163066163105%_)))
                                                      (_%tl163068163110%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e163066163105%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl163068163110%_))
                                                      (let ((_%e163069163113%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl163068163110%_))))
                (let ((_%hd163070163116%_
                       (let () (declare (not safe)) (##car _%e163069163113%_)))
                      (_%tl163071163118%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e163069163113%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl163071163118%_))
                      ((lambda (_%g163053163121%_
                                _%g163054163122%_
                                _%g163055163123%_
                                _%g163056163124%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self163048%_
                                            _%g163054163122%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self163048%_
                                                  _%g163053163121%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self163048%_
                                                        _%g163055163123%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp163145%_ ((_%rest163148%_
                                                 (cons _%g163055163123%_
                                                       (cons _%g163053163121%_
                                                             (cons _%g163054163122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind163150%_ '())
                                                (_%args163151%_ '()))
                               (let* ((_%rest163152163160%_ _%rest163148%_)
                                      (_%else163154163168%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind163150%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp171545 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp171545 _%args163151%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K163156163254%_
                                       (lambda (_%rest163171%_ _%e163172%_)
                                         (let* ((_%__stx171226171227%_
                                                 _%e163172%_)
                                                (_%g163177163195%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx171226171227%_)))))
                                           (let ((_%__kont171228171229%_
                                                  (lambda ()
                                                    (_%lp163145%_
                                                     _%rest163171%_
                                                     _%bind163150%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e163172%_))
                                                           _%args163151%_))))
                                                 (_%__kont171230171231%_
                                                  (lambda ()
                                                    (_%lp163145%_
                                                     _%rest163171%_
                                                     _%bind163150%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e163172%_))
                                                           _%args163151%_))))
                                                 (_%__kont171232171233%_
                                                  (lambda ()
                                                    (let ((_%tmp163202%_
                                                           (let ((__tmp171546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp171546))))
              (_%lp163145%_
               _%rest163171%_
               (cons (cons _%tmp163202%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e163172%_))
                                 '()))
                     _%bind163150%_)
               (cons _%tmp163202%_ _%args163151%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx171226171227%_))
                                                 (let ((_%e163179163233%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx171226171227%_))))
                                                   (let ((_%tl163181163238%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e163179163233%_)))
                                                         (_%hd163180163236%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e163179163233%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd163180163236%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd163180163236%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl163181163238%_))
                         (let ((_%e163182163241%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl163181163238%_))))
                           (let ((_%tl163184163246%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e163182163241%_)))
                                 (_%hd163183163244%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e163182163241%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl163184163246%_))
                                 (_%__kont171228171229%_)
                                 (_%__kont171232171233%_))))
                         (_%__kont171232171233%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd163180163236%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl163181163238%_))
                             (let ((_%e163188163218%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl163181163238%_))))
                               (let ((_%tl163190163223%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e163188163218%_)))
                                     (_%hd163189163221%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e163188163218%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl163190163223%_))
                                     (_%__kont171230171231%_)
                                     (_%__kont171232171233%_))))
                             (_%__kont171232171233%_))
                         (_%__kont171232171233%_)))
                 (_%__kont171232171233%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont171232171233%_)))))))
                                 (if (pair? _%rest163152163160%_)
                                     (let ((_%hd163157163257%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest163152163160%_)))
                                           (_%tl163158163259%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest163152163160%_))))
                                       (let* ((_%e163262%_ _%hd163157163257%_)
                                              (_%rest163264%_
                                               _%tl163158163259%_))
                                         (_%K163156163254%_
                                          _%rest163264%_
                                          _%e163262%_)))
                                     (_%else163154163168%_))))))
                       _%hd163070163116%_
                       _%hd163067163108%_
                       _%hd163064163100%_
                       _%hd163061163092%_)
                      (_%g163051163076%_ _%g163052163079%_))))
              (_%g163051163076%_ _%g163052163079%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g163051163076%_
                                               _%g163052163079%_))))
                                      (_%g163051163076%_ _%g163052163079%_))))
                              (_%g163051163076%_ _%g163052163079%_))))
                      (_%g163051163076%_ _%g163052163079%_)))))
          (_%g163050163266%_ _%stx163049%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self162887%_ _%stx162888%_)
        (letrec ((_%import-set-template162890%_
                  (lambda (_%in162993%_ _%phi162994%_)
                    (let ((_%iphi162996%_
                           (fx+ _%phi162994%_
                                (##direct-structure-ref
                                 _%in162993%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports162997%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in162993%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp162999%_ ((_%rest163001%_ _%imports162997%_)
                                         (_%r163002%_ '()))
                        (let* ((_%rest163003163011%_ _%rest163001%_)
                               (_%else163005163019%_ (lambda () _%r163002%_))
                               (_%K163007163036%_
                                (lambda (_%rest163022%_ _%in163023%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in163023%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi162996%_))
                                          (_%lp162999%_
                                           _%rest163022%_
                                           (cons _%in163023%_ _%r163002%_))
                                          (_%lp162999%_
                                           _%rest163022%_
                                           _%r163002%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in163023%_
                                             'gx#module-import::t))
                                          (let ((_%iphi163027%_
                                                 (fx+ _%phi162994%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in163023%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi163027%_))
                                                (_%lp162999%_
                                                 _%rest163022%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in163023%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r163002%_))
                                                (_%lp162999%_
                                                 _%rest163022%_
                                                 _%r163002%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in163023%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi163030%_
                                                     (fx+ _%iphi162996%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in163023%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi163030%_))
                                                    (_%lp162999%_
                                                     _%rest163022%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in163023%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r163002%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi163030%_))
                                                        (_%lp162999%_
                                                         _%rest163022%_
                                                         (let ((__tmp171547
                                                                (_%import-set-template162890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in163023%_
                         _%iphi162996%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r163002%_ __tmp171547)))
                (_%lp162999%_ _%rest163022%_ _%r163002%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp162999%_
                                               _%rest163022%_
                                               _%r163002%_)))))))
                          (if (pair? _%rest163003163011%_)
                              (let ((_%hd163008163039%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest163003163011%_)))
                                    (_%tl163009163041%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest163003163011%_))))
                                (let* ((_%in163044%_ _%hd163008163039%_)
                                       (_%rest163046%_ _%tl163009163041%_))
                                  (_%K163007163036%_
                                   _%rest163046%_
                                   _%in163044%_)))
                              (_%else163005163019%_))))))))
          (let* ((_%g162892162902%_
                  (lambda (_%g162893162899%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g162893162899%_))))
                 (_%g162891162990%_
                  (lambda (_%g162893162905%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g162893162905%_))
                        (let ((_%e162895162907%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g162893162905%_))))
                          (let ((_%hd162896162910%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e162895162907%_)))
                                (_%tl162897162912%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e162895162907%_))))
                            ((lambda (_%g162894162915%_)
                               (let ((_%ht162926%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp162928%_ ((_%rest162930%_
                                                     _%g162894162915%_)
                                                    (_%loads162931%_ '()))
                                   (letrec ((_%K162933%_
                                             (lambda (_%ctx162983%_
                                                      _%rest162984%_)
                                               (let ((_%id162986%_
                                                      (##structure-ref
                                                       _%ctx162983%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht162926%_
                                                        _%id162986%_))
                                                     (_%lp162928%_
                                                      _%rest162984%_
                                                      _%loads162931%_)
                                                     (let ((_%rt162988%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id162986%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht162926%_
                                                          _%id162986%_
                                                          _%rt162988%_))
                                                       (_%lp162928%_
                                                        _%rest162984%_
                                                        (cons _%rt162988%_
                                                              _%loads162931%_))))))))
                                     (let* ((_%rest162934162942%_
                                             _%rest162930%_)
                                            (_%else162936162954%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp171549
                                                            (lambda (_%g162949162951%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g162949162951%_)))
                   (__tmp171548 (reverse _%loads162931%_)))
               (declare (not safe))
               (##map __tmp171549 __tmp171548)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K162938162971%_
                                             (lambda (_%rest162957%_
                                                      _%in162958%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in162958%_
                                                      'gx#module-context::t))
                                                   (_%K162933%_
                                                    _%in162958%_
                                                    _%rest162957%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in162958%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in162958%_
                               '3
                               '#f
                               '#f)))
                   (_%K162933%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in162958%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest162957%_)
                   (_%lp162928%_ _%rest162957%_ _%loads162931%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in162958%_
                      'gx#import-set::t))
                   (let ((_%phi162963%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in162958%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi162963%_)
                         (_%K162933%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in162958%_
                             '1
                             '#f
                             '#f))
                          _%rest162957%_)
                         (if (fxpositive? _%phi162963%_)
                             (let ((_%deps162967%_
                                    (_%import-set-template162890%_
                                     _%in162958%_
                                     '0)))
                               (_%lp162928%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest162957%_
                                   _%deps162967%_))
                                _%loads162931%_))
                             (_%lp162928%_ _%rest162957%_ _%loads162931%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx162888%_
                      _%in162958%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest162934162942%_)
                                           (let ((_%hd162939162974%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest162934162942%_)))
                                                 (_%tl162940162976%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest162934162942%_))))
                                             (let* ((_%in162979%_
                                                     _%hd162939162974%_)
                                                    (_%rest162981%_
                                                     _%tl162940162976%_))
                                               (_%K162938162971%_
                                                _%rest162981%_
                                                _%in162979%_)))
                                           (_%else162936162954%_)))))))
                             _%tl162897162912%_)))
                        (_%g162892162902%_ _%g162893162905%_)))))
            (_%g162891162990%_ _%stx162888%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self162701%_ _%stx162702%_)
        (letrec ((_%add-lift!162704%_
                  (lambda (_%expr162885%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr162885%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote162705%_
                  (lambda (_%id162882%_ _%marks162883%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id162882%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks162883%_
                                                        '()))))))))
                 (_%generate-simple162706%_
                  (lambda (_%stxq162877%_)
                    (let ((_%gid162879%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid162880%_
                           (gxc#generate-runtime-identifier _%stxq162877%_)))
                      (_%add-lift!162704%_
                       (cons 'define
                             (cons _%gid162879%_
                                   (cons (_%generate-syntax-quote162705%_
                                          _%qid162880%_
                                          ''())
                                         '()))))
                      (let ((__tmp171550
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp171550 _%stxq162877%_ _%gid162879%_))
                      _%gid162879%_)))
                 (_%generate-serialized162707%_
                  (lambda (_%stxq162867%_ _%marks162868%_)
                    (let* ((_%mark-refs162870%_
                            (map _%generate-mark162708%_ _%marks162868%_))
                           (_%gid162872%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid162874%_
                            (gxc#generate-runtime-identifier _%stxq162867%_)))
                      (_%add-lift!162704%_
                       (cons 'define
                             (cons _%gid162872%_
                                   (cons (_%generate-syntax-quote162705%_
                                          _%qid162874%_
                                          (cons 'list _%mark-refs162870%_))
                                         '()))))
                      (let ((__tmp171551
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp171551 _%stxq162867%_ _%gid162872%_))
                      _%gid162872%_)))
                 (_%generate-mark162708%_
                  (lambda (_%mark162852%_)
                    (let ((_%$e162854%_
                           (let ((__tmp171552
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp171552 _%mark162852%_))))
                      (if _%$e162854%_
                          _%$e162854%_
                          (let* ((_%gid162858%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr162860%_
                                  (_%serialize-mark162709%_ _%mark162852%_))
                                 (_%ctx162862%_
                                  (let ((__tmp171553
                                         (##structure-ref
                                          _%mark162852%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp171553)))
                                 (_%ctx-ref162864%_
                                  (if (eq? _%ctx162862%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref162710%_
                                                               _%ctx162862%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp171554
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp171554
                               _%mark162852%_
                               _%gid162858%_))
                            (_%add-lift!162704%_
                             (cons 'define
                                   (cons _%gid162858%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr162860%_ '()))
                   (cons _%ctx-ref162864%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid162858%_)))))
                 (_%serialize-mark162709%_
                  (lambda (_%mark162800%_)
                    (letrec ((_%quote-e162802%_
                              (lambda (_%sym162850%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym162850%_))
                                    _%sym162850%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym162850%_))))))
                      (let* ((_%mark162803162812%_ _%mark162800%_)
                             (_%E162805162815%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark162803162812%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K162806162827%_
                              (lambda (_%trace162818%_
                                       _%phi162819%_
                                       _%ctx162820%_
                                       _%subst162821%_)
                                (let ((_%subs162823%_
                                       (if _%subst162821%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst162821%_))
                                           '())))
                                  (cons _%phi162819%_
                                        (let ((__tmp171555
                                               (lambda (_%pair162825%_)
                                                 (cons (_%quote-e162802%_
                                                        (car _%pair162825%_))
                                                       (_%quote-e162802%_
                                                        (cdr _%pair162825%_))))))
                                          (declare (not safe))
                                          (##map __tmp171555
                                                 _%subs162823%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark162803162812%_
                               'gx#expander-mark::t))
                            (let* ((_%e162807162830%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark162803162812%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst162833%_ _%e162807162830%_)
                                   (_%e162808162835%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark162803162812%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx162838%_ _%e162808162835%_)
                                   (_%e162809162840%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark162803162812%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi162843%_ _%e162809162840%_)
                                   (_%e162810162845%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark162803162812%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace162848%_ _%e162810162845%_))
                              (_%K162806162827%_
                               _%trace162848%_
                               _%phi162843%_
                               _%ctx162838%_
                               _%subst162833%_))
                            (_%E162805162815%_))))))
                 (_%context-ref162710%_
                  (lambda (_%ctx162787%_)
                    (if (let ((__tmp171556
                               (##structure-ref
                                _%ctx162787%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp171556
                           'gx#module-context::t))
                        (let ((_%ctx-ref162789%_
                               (_%context-ref-nested162712%_ _%ctx162787%_))
                              (_%ctx-origin162790%_
                               (_%context-ref-origin162711%_ _%ctx162787%_))
                              (_%origin162791%_
                               (_%context-ref-origin162711%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin162791%_ _%ctx-origin162790%_)
                              (let ((_%ref162793%_
                                     (_%context-ref-nested162712%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp162795%_ ((_%ref162797%_
                                                    (cdr _%ref162793%_))
                                                   (_%ctx-ref162798%_
                                                    (cdr _%ctx-ref162789%_)))
                                  (if (and (pair? _%ref162797%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref162797%_))
                                                (car _%ctx-ref162798%_)))
                                      (_%lp162795%_
                                       (cdr _%ref162797%_)
                                       (cdr _%ctx-ref162798%_))
                                      (cons '#f _%ctx-ref162798%_))))
                              _%ctx-ref162789%_))
                        (let ((__tmp171557
                               (##structure-ref
                                _%ctx162787%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp171557)))))
                 (_%context-ref-origin162711%_
                  (lambda (_%ctx162779%_)
                    (let _%lp162781%_ ((_%ctx162783%_ _%ctx162779%_))
                      (let ((_%super162785%_
                             (##structure-ref
                              _%ctx162783%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super162785%_
                               'gx#module-context::t))
                            (_%lp162781%_ _%super162785%_)
                            _%ctx162783%_)))))
                 (_%context-ref-nested162712%_
                  (lambda (_%ctx162770%_)
                    (let _%lp162772%_ ((_%ctx162774%_ _%ctx162770%_)
                                       (_%r162775%_ '()))
                      (let ((_%super162777%_
                             (##structure-ref
                              _%ctx162774%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super162777%_
                               'gx#module-context::t))
                            (_%lp162772%_
                             _%super162777%_
                             (cons (car (##structure-ref
                                         _%ctx162774%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r162775%_))
                            (cons (let ((__tmp171558
                                         (##structure-ref
                                          _%ctx162774%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp171558))
                                  _%r162775%_)))))))
          (let* ((_%g162714162727%_
                  (lambda (_%g162715162724%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g162715162724%_))))
                 (_%g162713162767%_
                  (lambda (_%g162715162730%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g162715162730%_))
                        (let ((_%e162717162732%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g162715162730%_))))
                          (let ((_%hd162718162735%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e162717162732%_)))
                                (_%tl162719162737%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e162717162732%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl162719162737%_))
                                (let ((_%e162720162740%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl162719162737%_))))
                                  (let ((_%hd162721162743%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e162720162740%_)))
                                        (_%tl162722162745%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e162720162740%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl162722162745%_))
                                        ((lambda (_%g162716162748%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g162716162748%_))
                                               (let ((_%$e162761%_
                                                      (let ((__tmp171559
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp171559 _%g162716162748%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e162761%_
                                                     _%$e162761%_
                                                     (let ((_%marks162765%_
                                                            (##direct-structure-ref
                                                             _%g162716162748%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks162765%_)
                                                           (_%generate-simple162706%_
                                                            _%g162716162748%_)
                                                           (_%generate-serialized162707%_
                                                            _%g162716162748%_
                                                            _%marks162765%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g162716162748%_))))
                                         _%hd162721162743%_)
                                        (_%g162714162727%_
                                         _%g162715162730%_))))
                                (_%g162714162727%_ _%g162715162730%_))))
                        (_%g162714162727%_ _%g162715162730%_)))))
            (_%g162713162767%_ _%stx162702%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self162633%_ _%stx162634%_)
        (let* ((_%g162636162653%_
                (lambda (_%g162637162650%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162637162650%_))))
               (_%g162635162698%_
                (lambda (_%g162637162656%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162637162656%_))
                      (let ((_%e162640162658%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162637162656%_))))
                        (let ((_%hd162641162661%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162640162658%_)))
                              (_%tl162642162663%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162640162658%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162642162663%_))
                              (let ((_%e162643162666%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162642162663%_))))
                                (let ((_%hd162644162669%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162643162666%_)))
                                      (_%tl162645162671%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162643162666%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162645162671%_))
                                      (let ((_%e162646162674%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162645162671%_))))
                                        (let ((_%hd162647162677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162646162674%_)))
                                              (_%tl162648162679%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162646162674%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl162648162679%_))
                                              ((lambda (_%g162638162682%_
                                                        _%g162639162683%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g162639162683%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self162633%_
                              _%g162638162682%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd162647162677%_
                                               _%hd162644162669%_)
                                              (_%g162636162653%_
                                               _%g162637162656%_))))
                                      (_%g162636162653%_ _%g162637162656%_))))
                              (_%g162636162653%_ _%g162637162656%_))))
                      (_%g162636162653%_ _%g162637162656%_)))))
          (_%g162635162698%_ _%stx162634%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self162582%_ _%stx162583%_)
        (let* ((_%g162585162595%_
                (lambda (_%g162586162592%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162586162592%_))))
               (_%g162584162630%_
                (lambda (_%g162586162598%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162586162598%_))
                      (let ((_%e162588162600%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162586162598%_))))
                        (let ((_%hd162589162603%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162588162600%_)))
                              (_%tl162590162605%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162588162600%_))))
                          ((lambda (_%g162587162608%_)
                             (let* ((_%c-body162622%_
                                     (map (lambda (_%g162617162619%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self162582%_
                                               _%g162617162619%_)))
                                          _%g162587162608%_))
                                    (_%c-body162627%_
                                     (let ((__tmp171560
                                            (lambda (_%$obj162624%_)
                                              (not (eq? _%$obj162624%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp171560
                                        _%c-body162622%_))))
                               (cons '%#begin _%c-body162627%_)))
                           _%tl162590162605%_)))
                      (_%g162585162595%_ _%g162586162598%_)))))
          (_%g162584162630%_ _%stx162583%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self162487%_ _%stx162488%_)
        (let* ((_%g162490162500%_
                (lambda (_%g162491162497%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162491162497%_))))
               (_%g162489162579%_
                (lambda (_%g162491162503%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162491162503%_))
                      (let ((_%e162493162505%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162491162503%_))))
                        (let ((_%hd162494162508%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162493162505%_)))
                              (_%tl162495162510%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162493162505%_))))
                          ((lambda (_%g162492162513%_)
                             (let* ((_%phi162523%_
                                     (let ((__tmp171561
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp171561 '1)))
                                    (_%block162525%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self162487%_ 'state))
                                      _%phi162523%_))
                                    (_%compiled162528%_
                                     (let ((__tmp171562
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self162487%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g162492162513%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp171562
                                        gx#current-expander-phi
                                        _%phi162523%_)))
                                    (_%g162531162541%_
                                     (lambda (_%g162532162538%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g162532162538%_))))
                                    (_%g162530162576%_
                                     (lambda (_%g162532162544%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g162532162544%_))
                                           (let ((_%e162534162546%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g162532162544%_))))
                                             (let ((_%hd162535162549%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e162534162546%_)))
                                                   (_%tl162536162551%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e162534162546%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd162535162549%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd162535162549%_))
                                                       ((lambda (_%g162533162554%_)
                                                          (let ((_%c-body162571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj162568%_)
                                   (not (eq? _%$obj162568%_ '#!void)))
                                 _%g162533162554%_)))
                    (if _%block162525%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block162525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body162571%_))
                        (if (null? _%c-body162571%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body162571%_)))))
                _%tl162536162551%_)
               (_%g162531162541%_ _%g162532162544%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g162531162541%_
                                                    _%g162532162544%_))))
                                           (_%g162531162541%_
                                            _%g162532162544%_)))))
                               (_%g162530162576%_ _%compiled162528%_)))
                           _%tl162495162510%_)))
                      (_%g162490162500%_ _%g162491162503%_)))))
          (_%g162489162579%_ _%stx162488%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self162418%_ _%stx162419%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self162418%_ 'state)))
        (let* ((_%g162421162435%_
                (lambda (_%g162422162432%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162422162432%_))))
               (_%g162420162484%_
                (lambda (_%g162422162438%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162422162438%_))
                      (let ((_%e162425162440%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162422162438%_))))
                        (let ((_%hd162426162443%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162425162440%_)))
                              (_%tl162427162445%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162425162440%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162427162445%_))
                              (let ((_%e162428162448%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162427162445%_))))
                                (let ((_%hd162429162451%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162428162448%_)))
                                      (_%tl162430162453%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162428162448%_))))
                                  ((lambda (_%g162423162456%_
                                            _%g162424162457%_)
                                     (let ((_%key162470%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g162424162457%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key162470%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx162419%_
                                              _%g162424162457%_
                                              _%key162470%_)))
                                       (let* ((_%ctx162472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g162424162457%_)))
                                              (_%code162475%_
                                               (let ((__tmp171563
                                                      (lambda ()
                                                        (let ((__tmp171564
                                                               (##structure-ref
                                                                _%ctx162472%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self162418%_
                                                           __tmp171564)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp171563
                                                  gx#current-expander-context
                                                  _%ctx162472%_)))
                                              (_%rt162477%_
                                               (let ((__tmp171565
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp171565
                                                  _%ctx162472%_)))
                                              (_%loader162479%_
                                               (if _%rt162477%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt162477%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid162481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g162424162457%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self162418%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid162481%_
                                                     (cons _%code162475%_
                                                           _%loader162479%_))))))
                                   _%tl162430162453%_
                                   _%hd162429162451%_)))
                              (_%g162421162435%_ _%g162422162438%_))))
                      (_%g162421162435%_ _%g162422162438%_)))))
          (_%g162420162484%_ _%stx162419%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx162405%_ _%context-chain162406%_)
        (let _%lp162408%_ ((_%ctx162410%_ _%ctx162405%_) (_%path162411%_ '()))
          (let ((_%super162413%_
                 (##structure-ref _%ctx162410%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super162413%_ _%context-chain162406%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx162410%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path162411%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super162413%_
                       'gx#module-context::t))
                    (_%lp162408%_
                     _%super162413%_
                     (cons (car (##structure-ref
                                 _%ctx162410%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path162411%_))
                    (cons (let ((__tmp171566
                                 (##structure-ref
                                  _%ctx162410%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp171566))
                          _%path162411%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp162398%_ ((_%ctx162400%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r162401%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx162400%_ 'gx#module-context::t))
              (_%lp162398%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx162400%_ '3 '#f '#f))
               (cons _%ctx162400%_ _%r162401%_))
              _%r162401%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self162163%_ _%stx162164%_)
        (letrec* ((_%context-chain162166%_ (gxc#current-context-chain))
                  (_%make-import-spec162167%_
                   (lambda (_%in162335%_)
                     (let* ((_%in162336162348%_ _%in162335%_)
                            (_%E162338162351%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in162336162348%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K162339162361%_
                             (lambda (_%phi162354%_
                                      _%name162355%_
                                      _%src-name162356%_
                                      _%src-phi162357%_
                                      _%src-key162358%_
                                      _%src-ctx162359%_)
                               (cons _%phi162354%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name162355%_)
                                           (cons _%src-phi162357%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name162356%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in162336162348%_
                              'gx#module-import::t))
                           (let ((_%e162340162364%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in162336162348%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e162340162364%_
                                    'gx#module-export::t))
                                 (let* ((_%e162343162367%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e162340162364%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx162370%_ _%e162343162367%_)
                                        (_%e162344162372%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e162340162364%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key162375%_ _%e162344162372%_)
                                        (_%e162345162377%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e162340162364%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi162380%_ _%e162345162377%_)
                                        (_%e162346162382%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e162340162364%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name162385%_ _%e162346162382%_)
                                        (_%e162341162387%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in162336162348%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name162390%_ _%e162341162387%_)
                                        (_%e162342162392%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in162336162348%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi162395%_ _%e162342162392%_))
                                   (_%K162339162361%_
                                    _%phi162395%_
                                    _%name162390%_
                                    _%src-name162385%_
                                    _%src-phi162380%_
                                    _%src-key162375%_
                                    _%src-ctx162370%_))
                                 (_%E162338162351%_)))
                           (_%E162338162351%_)))))
                  (_%make-import-path162168%_
                   (lambda (_%ctx162333%_)
                     (gxc#generate-meta-import-path
                      _%ctx162333%_
                      _%context-chain162166%_)))
                  (_%make-import-spec-in162169%_
                   (lambda (_%ctx162330%_ _%in162331%_)
                     (cons 'spec:
                           (cons (_%make-import-path162168%_ _%ctx162330%_)
                                 (reverse _%in162331%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self162163%_ 'state)))
          (let* ((_%g162171162181%_
                  (lambda (_%g162172162178%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g162172162178%_))))
                 (_%g162170162327%_
                  (lambda (_%g162172162184%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g162172162184%_))
                        (let ((_%e162174162186%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g162172162184%_))))
                          (let ((_%hd162175162189%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e162174162186%_)))
                                (_%tl162176162191%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e162174162186%_))))
                            ((lambda (_%g162173162194%_)
                               (let _%lp162205%_ ((_%rest162207%_
                                                   _%g162173162194%_)
                                                  (_%current-src162208%_ '#f)
                                                  (_%current-in162209%_ '())
                                                  (_%r162210%_ '()))
                                 (let* ((_%rest162211162219%_ _%rest162207%_)
                                        (_%else162213162229%_
                                         (lambda ()
                                           (let ((_%r162227%_
                                                  (if _%current-src162208%_
                                                      (cons (_%make-import-spec-in162169%_
                                                             _%current-src162208%_
                                                             _%current-in162209%_)
                                                            _%r162210%_)
                                                      _%r162210%_)))
                                             (cons '%#import
                                                   (reverse _%r162227%_)))))
                                        (_%K162215162315%_
                                         (lambda (_%rest162232%_ _%in162233%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in162233%_
                                                  'gx#module-import::t))
                                               (let* ((_%in162235162242%_
                                                       _%in162233%_)
                                                      (_%E162237162245%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in162235162242%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K162238162253%_
               (lambda (_%src-ctx162248%_)
                 (if (eq? _%current-src162208%_ _%src-ctx162248%_)
                     (_%lp162205%_
                      _%rest162232%_
                      _%current-src162208%_
                      (cons (_%make-import-spec162167%_ _%in162233%_)
                            _%current-in162209%_)
                      _%r162210%_)
                     (if _%current-src162208%_
                         (_%lp162205%_
                          _%rest162232%_
                          _%src-ctx162248%_
                          (cons (_%make-import-spec162167%_ _%in162233%_) '())
                          (cons (_%make-import-spec-in162169%_
                                 _%current-src162208%_
                                 _%current-in162209%_)
                                _%r162210%_))
                         (_%lp162205%_
                          _%rest162232%_
                          _%src-ctx162248%_
                          (cons (_%make-import-spec162167%_ _%in162233%_) '())
                          _%r162210%_)))))
              (_%e162239162256%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in162235162242%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e162239162256%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e162240162259%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e162239162256%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx162262%_ _%e162240162259%_))
               (_%K162238162253%_ _%src-ctx162262%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E162237162245%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in162233%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi162265%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in162233%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src162267%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in162233%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in162307%_
                                                           (let* ((_%g162268162277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path162168%_ _%src162267%_))
                          (_%E162271162281%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g162268162277%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K162273162297%_
                            (lambda (_%path162295%_) _%path162295%_))
                           (_%K162272162287%_
                            (lambda (_%path162285%_)
                              (cons 'in: _%path162285%_))))
                       (if (pair? _%g162268162277%_)
                           (let ((_%tl162275162302%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g162268162277%_)))
                                 (_%hd162274162300%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g162268162277%_))))
                             (if (null? _%tl162275162302%_)
                                 (let ((_%path162305%_ _%hd162274162300%_))
                                   (_%K162273162297%_ _%path162305%_))
                                 (let ((_%path162290%_ _%g162268162277%_))
                                   (_%K162272162287%_ _%path162290%_))))
                           (let ((_%path162290%_ _%g162268162277%_))
                             (_%K162272162287%_ _%path162290%_))))))
                  (_%r162309%_
                   (if _%current-src162208%_
                       (cons (_%make-import-spec-in162169%_
                              _%current-src162208%_
                              _%current-in162209%_)
                             _%r162210%_)
                       _%r162210%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp162205%_
                                                      _%rest162232%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi162265%_)
                                                                _%src-in162307%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi162265%_
                                    (cons _%src-in162307%_ '()))))
                    _%r162309%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in162233%_
                                                          'gx#module-context::t))
                                                       (let ((_%r162313%_
                                                              (if _%current-src162208%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in162169%_
                                 _%current-src162208%_
                                 _%current-in162209%_)
                                _%r162210%_)
                          _%r162210%_)))
                 (_%lp162205%_
                  _%rest162232%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path162168%_ _%in162233%_))
                        _%r162313%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest162211162219%_)
                                       (let ((_%hd162216162318%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest162211162219%_)))
                                             (_%tl162217162320%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest162211162219%_))))
                                         (let* ((_%in162323%_
                                                 _%hd162216162318%_)
                                                (_%rest162325%_
                                                 _%tl162217162320%_))
                                           (_%K162215162315%_
                                            _%rest162325%_
                                            _%in162323%_)))
                                       (_%else162213162229%_)))))
                             _%tl162176162191%_)))
                        (_%g162171162181%_ _%g162172162184%_)))))
            (_%g162170162327%_ _%stx162164%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self161973%_ _%stx161974%_)
        (letrec* ((_%context-chain161976%_ (gxc#current-context-chain))
                  (_%make-import-path161977%_
                   (lambda (_%ctx162161%_)
                     (gxc#generate-meta-import-path
                      _%ctx162161%_
                      _%context-chain161976%_))))
          (let* ((_%g161979161989%_
                  (lambda (_%g161980161986%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g161980161986%_))))
                 (_%g161978162158%_
                  (lambda (_%g161980161992%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g161980161992%_))
                        (let ((_%e161982161994%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g161980161992%_))))
                          (let ((_%hd161983161997%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e161982161994%_)))
                                (_%tl161984161999%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e161982161994%_))))
                            ((lambda (_%g161981162002%_)
                               (let _%lp162013%_ ((_%rest162015%_
                                                   _%g161981162002%_)
                                                  (_%r162016%_ '()))
                                 (let* ((_%rest162017162025%_ _%rest162015%_)
                                        (_%else162019162033%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r162016%_))))
                                        (_%K162021162146%_
                                         (lambda (_%rest162036%_ _%out162037%_)
                                           (let* ((_%out162038162051%_
                                                   _%out162037%_)
                                                  (_%E162041162055%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out162038162051%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K162045162125%_
                                                    (lambda (_%name162121%_
                                                             _%phi162122%_
                                                             _%key162123%_)
                                                      (_%lp162013%_
                                                       _%rest162036%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi162122%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key162123%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name162121%_)
                                             '()))))
                     _%r162016%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K162042162105%_
                                                    (lambda (_%phi162059%_
                                                             _%src162060%_)
                                                      (let* ((_%out162100%_
                                                              (if _%src162060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g162061162070%_
                                              (_%make-import-path161977%_
                                               _%src162060%_))
                                             (_%E162064162074%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g162061162070%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K162066162090%_
                                               (lambda (_%path162088%_)
                                                 _%path162088%_))
                                              (_%K162065162080%_
                                               (lambda (_%path162078%_)
                                                 (cons 'in: _%path162078%_))))
                                          (if (pair? _%g162061162070%_)
                                              (let ((_%tl162068162095%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g162061162070%_)))
                                                    (_%hd162067162093%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g162061162070%_))))
                                                (if (null? _%tl162068162095%_)
                                                    (let ((_%path162098%_
                                                           _%hd162067162093%_))
                                                      (_%K162066162090%_
                                                       _%path162098%_))
                                                    (let ((_%path162083%_
                                                           _%g162061162070%_))
                                                      (_%K162065162080%_
                                                       _%path162083%_))))
                                              (let ((_%path162083%_
                                                     _%g162061162070%_))
                                                (_%K162065162080%_
                                                 _%path162083%_)))))
                                      '()))
                          '#t))
                     (_%out162102%_
                      (if (fxzero? _%phi162059%_)
                          _%out162100%_
                          (cons 'phi:
                                (cons _%phi162059%_
                                      (cons _%out162100%_ '()))))))
                (_%lp162013%_
                 _%rest162036%_
                 (cons _%out162102%_ _%r162016%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match162040162118%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out162038162051%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e162043162108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out162038162051%_
                               '1
                               '#f
                               '#f)))
                           (_%e162044162113%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out162038162051%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src162111%_ _%e162043162108%_)
                            (_%phi162116%_ _%e162044162113%_))
                        (_%K162042162105%_ _%phi162116%_ _%src162111%_)))
                    (_%E162041162055%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out162038162051%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e162046162128%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out162038162051%_
                        '1
                        '#f
                        '#f)))
                    (_%e162047162131%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out162038162051%_
                        '2
                        '#f
                        '#f)))
                    (_%e162048162136%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out162038162051%_
                        '3
                        '#f
                        '#f)))
                    (_%e162049162141%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out162038162051%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key162134%_ _%e162047162131%_)
                     (_%phi162139%_ _%e162048162136%_)
                     (_%name162144%_ _%e162049162141%_))
                 (_%K162045162125%_
                  _%name162144%_
                  _%phi162139%_
                  _%key162134%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match162040162118%_))))))))
                                   (if (pair? _%rest162017162025%_)
                                       (let ((_%hd162022162149%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest162017162025%_)))
                                             (_%tl162023162151%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest162017162025%_))))
                                         (let* ((_%out162154%_
                                                 _%hd162022162149%_)
                                                (_%rest162156%_
                                                 _%tl162023162151%_))
                                           (_%K162021162146%_
                                            _%rest162156%_
                                            _%out162154%_)))
                                       (_%else162019162033%_)))))
                             _%tl161984161999%_)))
                        (_%g161979161989%_ _%g161980161992%_)))))
            (_%g161978162158%_ _%stx161974%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self161934%_ _%stx161935%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self161934%_ 'state)))
        (let* ((_%g161937161947%_
                (lambda (_%g161938161944%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161938161944%_))))
               (_%g161936161970%_
                (lambda (_%g161938161950%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161938161950%_))
                      (let ((_%e161940161952%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161938161950%_))))
                        (let ((_%hd161941161955%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161940161952%_)))
                              (_%tl161942161957%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161940161952%_))))
                          ((lambda (_%g161939161960%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g161939161960%_)))
                           _%tl161942161957%_)))
                      (_%g161937161947%_ _%g161938161950%_)))))
          (_%g161936161970%_ _%stx161935%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self161809%_ _%stx161810%_)
        (letrec ((_%generate1161812%_
                  (lambda (_%id161929%_ _%eid161930%_)
                    (let ((_%eid161932%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid161930%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid161932%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx161810%_
                             _%eid161932%_)))
                      (cons (gxc#generate-runtime-identifier _%id161929%_)
                            (cons _%eid161932%_ '()))))))
          (let* ((_%g161814161842%_
                  (lambda (_%g161815161839%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g161815161839%_))))
                 (_%g161813161926%_
                  (lambda (_%g161815161845%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g161815161845%_))
                        (let ((_%e161818161847%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g161815161845%_))))
                          (let ((_%hd161819161850%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e161818161847%_)))
                                (_%tl161820161852%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e161818161847%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl161820161852%_))
                                (let ((_g171567_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl161820161852%_
                                          '0))))
                                  (begin
                                    (let ((_g171568_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g171567_)
                                                 (##values-length _g171567_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g171568_ 2)))
                                          (error "Context expects 2 values"
                                                 _g171568_)))
                                    (let ((_%target161821161855%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g171567_ 0)))
                                          (_%tl161823161857%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g171567_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl161823161857%_))
                                          (letrec ((_%loop161824161860%_
                                                    (lambda (_%hd161822161863%_
                                                             _%eid161828161865%_
                                                             _%id161829161866%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd161822161863%_))
                                                          (let ((_%e161825161868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd161822161863%_))))
                    (let ((_%lp-hd161826161871%_
                           (let ()
                             (declare (not safe))
                             (##car _%e161825161868%_)))
                          (_%lp-tl161827161873%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e161825161868%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd161826161871%_))
                          (let ((_%e161832161876%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd161826161871%_))))
                            (let ((_%hd161833161879%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e161832161876%_)))
                                  (_%tl161834161881%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e161832161876%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl161834161881%_))
                                  (let ((_%e161835161884%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl161834161881%_))))
                                    (let ((_%hd161836161887%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e161835161884%_)))
                                          (_%tl161837161889%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e161835161884%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl161837161889%_))
                                          (_%loop161824161860%_
                                           _%lp-tl161827161873%_
                                           (cons _%hd161836161887%_
                                                 _%eid161828161865%_)
                                           (cons _%hd161833161879%_
                                                 _%id161829161866%_))
                                          (_%g161814161842%_
                                           _%g161815161845%_))))
                                  (_%g161814161842%_ _%g161815161845%_))))
                          (_%g161814161842%_ _%g161815161845%_))))
                  (let ((_%eid161830161892%_ (reverse _%eid161828161865%_))
                        (_%id161831161893%_ (reverse _%id161829161866%_)))
                    ((lambda (_%g161816161895%_ _%g161817161896%_)
                       (cons '%#extern
                             (map _%generate1161812%_
                                  (let ((__tmp171569
                                         (lambda (_%g161911161914%_
                                                  _%g161912161916%_)
                                           (cons _%g161911161914%_
                                                 _%g161912161916%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp171569
                                     '()
                                     _%g161817161896%_))
                                  (let ((__tmp171570
                                         (lambda (_%g161918161921%_
                                                  _%g161919161923%_)
                                           (cons _%g161918161921%_
                                                 _%g161919161923%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp171570
                                     '()
                                     _%g161816161895%_)))))
                     _%eid161830161892%_
                     _%id161831161893%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop161824161860%_
                                             _%target161821161855%_
                                             '()
                                             '()))
                                          (_%g161814161842%_
                                           _%g161815161845%_)))))
                                (_%g161814161842%_ _%g161815161845%_))))
                        (_%g161814161842%_ _%g161815161845%_)))))
            (_%g161813161926%_ _%stx161810%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self161599%_ _%stx161600%_)
        (letrec ((_%generate1161602%_
                  (lambda (_%id161804%_)
                    (let ((_%eid161806%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id161804%_)))
                          (_%ident161807%_
                           (gxc#generate-runtime-identifier _%id161804%_)))
                      (cons '%#define-runtime
                            (cons _%ident161807%_ (cons _%eid161806%_ '()))))))
                 (_%generate*161603%_
                  (lambda (_%all161772%_)
                    (let* ((_%all161773161781%_ _%all161772%_)
                           (_%else161775161789%_
                            (lambda () (cons '%#begin _%all161772%_)))
                           (_%K161777161794%_
                            (lambda (_%one161792%_) _%one161792%_)))
                      (if (pair? _%all161773161781%_)
                          (let ((_%hd161778161797%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all161773161781%_)))
                                (_%tl161779161799%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all161773161781%_))))
                            (let ((_%one161802%_ _%hd161778161797%_))
                              (if (null? _%tl161779161799%_)
                                  (_%K161777161794%_ _%one161802%_)
                                  (_%else161775161789%_))))
                          (_%else161775161789%_))))))
          (let* ((_%g161605161622%_
                  (lambda (_%g161606161619%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g161606161619%_))))
                 (_%g161604161769%_
                  (lambda (_%g161606161625%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g161606161625%_))
                        (let ((_%e161609161627%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g161606161625%_))))
                          (let ((_%hd161610161630%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e161609161627%_)))
                                (_%tl161611161632%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e161609161627%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl161611161632%_))
                                (let ((_%e161612161635%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl161611161632%_))))
                                  (let ((_%hd161613161638%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e161612161635%_)))
                                        (_%tl161614161640%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e161612161635%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl161614161640%_))
                                        (let ((_%e161615161643%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl161614161640%_))))
                                          (let ((_%hd161616161646%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e161615161643%_)))
                                                (_%tl161617161648%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e161615161643%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl161617161648%_))
                                                ((lambda (_%g161607161651%_
                                                          _%g161608161652%_)
                                                   (let _%lp161668%_ ((_%rest161670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g161608161652%_)
                              (_%r161671%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx171305171306%_
                                                             _%rest161670%_)
                                                            (_%g161676161693%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx171305171306%_)))))
               (let ((_%__kont171307171308%_
                      (lambda (_%g161678161756%_)
                        (_%lp161668%_ _%g161678161756%_ _%r161671%_)))
                     (_%__kont171309171310%_
                      (lambda (_%g161683161729%_ _%g161684161730%_)
                        (_%lp161668%_
                         _%g161683161729%_
                         (cons (_%generate1161602%_ _%g161684161730%_)
                               _%r161671%_))))
                     (_%__kont171311171312%_
                      (lambda (_%g161688161705%_)
                        (_%generate*161603%_
                         (let ((__tmp171571
                                (cons (_%generate1161602%_ _%g161688161705%_)
                                      '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp171571 _%r161671%_)))))
                     (_%__kont171313171314%_
                      (lambda () (_%generate*161603%_ (reverse _%r161671%_)))))
                 (let ((_%g161674161716%_
                        (lambda ()
                          (let ((_%g161688161705%_ _%__stx171305171306%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g161688161705%_))
                                (_%__kont171311171312%_ _%g161688161705%_)
                                (_%__kont171313171314%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx171305171306%_))
                       (let ((_%e161679161745%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx171305171306%_))))
                         (let ((_%tl161681161750%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e161679161745%_)))
                               (_%hd161680161748%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e161679161745%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd161680161748%_))
                               (let ((_%e161682161753%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd161680161748%_))))
                                 (if (equal? _%e161682161753%_ '#f)
                                     (_%__kont171307171308%_
                                      _%tl161681161750%_)
                                     (_%__kont171309171310%_
                                      _%tl161681161750%_
                                      _%hd161680161748%_)))
                               (_%__kont171309171310%_
                                _%tl161681161750%_
                                _%hd161680161748%_))))
                       (let () (declare (not safe)) (_%g161674161716%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd161616161646%_
                                                 _%hd161613161638%_)
                                                (_%g161605161622%_
                                                 _%g161606161625%_))))
                                        (_%g161605161622%_
                                         _%g161606161625%_))))
                                (_%g161605161622%_ _%g161606161625%_))))
                        (_%g161605161622%_ _%g161606161625%_)))))
            (_%g161604161769%_ _%stx161600%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self161496%_ _%stx161497%_)
        (let* ((_%g161499161516%_
                (lambda (_%g161500161513%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161500161513%_))))
               (_%g161498161596%_
                (lambda (_%g161500161519%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161500161519%_))
                      (let ((_%e161503161521%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161500161519%_))))
                        (let ((_%hd161504161524%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161503161521%_)))
                              (_%tl161505161526%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161503161521%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161505161526%_))
                              (let ((_%e161506161529%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161505161526%_))))
                                (let ((_%hd161507161532%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161506161529%_)))
                                      (_%tl161508161534%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161506161529%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161508161534%_))
                                      (let ((_%e161509161537%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161508161534%_))))
                                        (let ((_%hd161510161540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161509161537%_)))
                                              (_%tl161511161542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161509161537%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161511161542%_))
                                              ((lambda (_%g161501161545%_
                                                        _%g161502161546%_)
                                                 (let* ((_%eid161561%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g161502161546%_)))
                                                        (_%phi161563%_
                                                         (let ((__tmp171572
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp171572 '1)))
                (_%block161565%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self161496%_ 'state))
                  _%phi161563%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g161568161575%_
                                                           (lambda (_%g161569161572%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g161569161572%_))))
                  (_%g161567161593%_
                   (lambda (_%g161569161578%_)
                     ((lambda (_%g161570161580%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self161496%_ 'state))
                         _%phi161563%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g161570161580%_
                                     (cons _%g161501161545%_ '())))))
                      _%g161569161578%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g161567161593%_
                                                      _%eid161561%_))
                                                   (if _%block161565%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block161565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%g161502161546%_)
                                             (cons _%eid161561%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%g161502161546%_)
                           (cons _%eid161561%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd161510161540%_
                                               _%hd161507161532%_)
                                              (_%g161499161516%_
                                               _%g161500161519%_))))
                                      (_%g161499161516%_ _%g161500161519%_))))
                              (_%g161499161516%_ _%g161500161519%_))))
                      (_%g161499161516%_ _%g161500161519%_)))))
          (_%g161498161596%_ _%stx161497%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self161428%_ _%stx161429%_)
        (let* ((_%g161431161448%_
                (lambda (_%g161432161445%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161432161445%_))))
               (_%g161430161493%_
                (lambda (_%g161432161451%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161432161451%_))
                      (let ((_%e161435161453%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161432161451%_))))
                        (let ((_%hd161436161456%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161435161453%_)))
                              (_%tl161437161458%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161435161453%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161437161458%_))
                              (let ((_%e161438161461%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161437161458%_))))
                                (let ((_%hd161439161464%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161438161461%_)))
                                      (_%tl161440161466%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161438161461%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161440161466%_))
                                      (let ((_%e161441161469%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161440161466%_))))
                                        (let ((_%hd161442161472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161441161469%_)))
                                              (_%tl161443161474%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161441161469%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161443161474%_))
                                              ((lambda (_%g161433161477%_
                                                        _%g161434161478%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%g161434161478%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g161433161477%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd161442161472%_
                                               _%hd161439161464%_)
                                              (_%g161431161448%_
                                               _%g161432161451%_))))
                                      (_%g161431161448%_ _%g161432161451%_))))
                              (_%g161431161448%_ _%g161432161451%_))))
                      (_%g161431161448%_ _%g161432161451%_)))))
          (_%g161430161493%_ _%stx161429%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self161425%_ _%stx161426%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self161425%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx161426%_)
        (gxc#generate-meta-define-values% _%self161425%_ _%stx161426%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self161422%_ _%stx161423%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self161422%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx161423%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp171574 (list)) (__tmp171573 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp171574
         '(src n open blocks)
         __tmp171573
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args161419%_
        (apply make-instance gxc#meta-state::t _%$args161419%_)))
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
      (lambda (_%self161405%_ _%ctx161406%_)
        (let ((_%self161409%_ _%self161405%_))
          (if (let ((__tmp171575
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self161409%_))))
                (declare (not safe))
                (##fx< '4 __tmp171575))
              (begin
                (let ((__tmp171576
                       (let ((__tmp171577
                              (##structure-ref
                               _%ctx161406%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp171577))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self161409%_
                   __tmp171576
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self161409%_ '1 '2 '#f '#f))
                (let ((__tmp171578
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self161409%_
                   __tmp171578
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self161409%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp171579
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self161409%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self161409%_
                       '4
                       __tmp171579))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp171581 (list)) (__tmp171580 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp171581
         '(ctx phi n code)
         __tmp171580
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args161280%_
        (apply make-instance gxc#meta-state-block::t _%$args161280%_)))
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
      (lambda (_%state161240%_ _%phi161241%_)
        (let* ((_%state161242161250%_ _%state161240%_)
               (_%E161244161253%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state161242161250%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K161245161262%_
                (lambda (_%open161256%_ _%n161257%_ _%src161258%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open161256%_ _%phi161241%_))
                      '#f
                      (let ((_%block-ref161260%_
                             (let ((__tmp171582 (number->string _%n161257%_)))
                               (declare (not safe))
                               (##string-append
                                _%src161258%_
                                '"~"
                                __tmp171582))))
                        (##structure-set!
                         _%state161240%_
                         (let () (declare (not safe)) (##fx+ _%n161257%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp171583
                               (let ((__tmp171584
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp171584
                                  _%phi161241%_
                                  _%n161257%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open161256%_ _%phi161241%_ __tmp171583))
                        _%block-ref161260%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state161242161250%_
                 'gxc#meta-state::t))
              (let* ((_%e161246161265%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state161242161250%_
                         '1
                         '#f
                         '#f)))
                     (_%src161268%_ _%e161246161265%_)
                     (_%e161247161270%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state161242161250%_
                         '2
                         '#f
                         '#f)))
                     (_%n161273%_ _%e161247161270%_)
                     (_%e161248161275%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state161242161250%_
                         '3
                         '#f
                         '#f)))
                     (_%open161278%_ _%e161248161275%_))
                (_%K161245161262%_ _%open161278%_ _%n161273%_ _%src161268%_))
              (_%E161244161253%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state161234%_ _%phi161235%_ _%stx161236%_)
        (let ((_%block161238%_
               (let ((__tmp171585
                      (##structure-ref
                       _%state161234%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp171585 _%phi161235%_))))
          (##structure-set!
           _%block161238%_
           (cons _%stx161236%_
                 (##structure-ref
                  _%block161238%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state161228%_)
        (##structure-set!
         _%state161228%_
         (let ((__tmp171588
                (lambda (_%_161230%_ _%block161231%_ _%r161232%_)
                  (cons _%block161231%_ _%r161232%_)))
               (__tmp171587
                (##structure-ref _%state161228%_ '4 gxc#meta-state::t '#f))
               (__tmp171586
                (##structure-ref _%state161228%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp171588 __tmp171587 __tmp171586))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state161228%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state161181%_)
        (gxc#meta-state-end-phi! _%state161181%_)
        (let ((__tmp171590
               (lambda (_%block161183%_ _%r161184%_)
                 (let* ((_%block161185161194%_ _%block161183%_)
                        (_%E161187161197%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block161185161194%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K161188161205%_
                         (lambda (_%code161200%_
                                  _%n161201%_
                                  _%phi161202%_
                                  _%ctx161203%_)
                           (if (null? _%code161200%_)
                               _%r161184%_
                               (cons (cons _%ctx161203%_
                                           (cons _%phi161202%_
                                                 (cons _%n161201%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code161200%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r161184%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block161185161194%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e161189161208%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block161185161194%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx161211%_ _%e161189161208%_)
                              (_%e161190161213%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block161185161194%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi161216%_ _%e161190161213%_)
                              (_%e161191161218%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block161185161194%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n161221%_ _%e161191161218%_)
                              (_%e161192161223%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block161185161194%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code161226%_ _%e161192161223%_))
                         (_%K161188161205%_
                          _%code161226%_
                          _%n161221%_
                          _%phi161216%_
                          _%ctx161211%_))
                       (_%E161187161197%_)))))
              (__tmp171589
               (##structure-ref _%state161181%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp171590 '() __tmp171589))))
    (define gxc#collect-expression-refs
      (lambda (_%stx161177%_)
        (let ((_%ht161179%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht161179%_ _%stx161177%_)
          _%ht161179%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self161120%_ _%stx161121%_)
        (let* ((_%g161123161136%_
                (lambda (_%g161124161133%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161124161133%_))))
               (_%g161122161174%_
                (lambda (_%g161124161139%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161124161139%_))
                      (let ((_%e161126161141%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161124161139%_))))
                        (let ((_%hd161127161144%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161126161141%_)))
                              (_%tl161128161146%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161126161141%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161128161146%_))
                              (let ((_%e161129161149%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161128161146%_))))
                                (let ((_%hd161130161152%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161129161149%_)))
                                      (_%tl161131161154%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161129161149%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl161131161154%_))
                                      ((lambda (_%g161125161157%_)
                                         (let* ((_%bind161169%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g161125161157%_)))
                                                (_%eid161171%_
                                                 (if _%bind161169%_
                                                     (##structure-ref
                                                      _%bind161169%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g161125161157%_))))
                                                (__tmp171591
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self161120%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp171591
                                            _%eid161171%_
                                            _%eid161171%_)))
                                       _%hd161130161152%_)
                                      (_%g161123161136%_ _%g161124161139%_))))
                              (_%g161123161136%_ _%g161124161139%_))))
                      (_%g161123161136%_ _%g161124161139%_)))))
          (_%g161122161174%_ _%stx161121%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self161047%_ _%stx161048%_)
        (let* ((_%g161050161067%_
                (lambda (_%g161051161064%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161051161064%_))))
               (_%g161049161117%_
                (lambda (_%g161051161070%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161051161070%_))
                      (let ((_%e161054161072%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161051161070%_))))
                        (let ((_%hd161055161075%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161054161072%_)))
                              (_%tl161056161077%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161054161072%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl161056161077%_))
                              (let ((_%e161057161080%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl161056161077%_))))
                                (let ((_%hd161058161083%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e161057161080%_)))
                                      (_%tl161059161085%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e161057161080%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl161059161085%_))
                                      (let ((_%e161060161088%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl161059161085%_))))
                                        (let ((_%hd161061161091%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e161060161088%_)))
                                              (_%tl161062161093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e161060161088%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl161062161093%_))
                                              ((lambda (_%g161052161096%_
                                                        _%g161053161097%_)
                                                 (let* ((_%bind161112%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g161053161097%_)))
                                                        (_%eid161114%_
                                                         (if _%bind161112%_
                                                             (##structure-ref
                                                              _%bind161112%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g161053161097%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp171592
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self161047%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp171592
                                                      _%eid161114%_
                                                      _%eid161114%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self161047%_
                                                      _%g161052161096%_))))
                                               _%hd161061161091%_
                                               _%hd161058161083%_)
                                              (_%g161050161067%_
                                               _%g161051161070%_))))
                                      (_%g161050161067%_ _%g161051161070%_))))
                              (_%g161050161067%_ _%g161051161070%_))))
                      (_%g161050161067%_ _%g161051161070%_)))))
          (_%g161049161117%_ _%stx161048%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self161004%_ _%stx161005%_)
        (let* ((_%g161007161017%_
                (lambda (_%g161008161014%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g161008161014%_))))
               (_%g161006161044%_
                (lambda (_%g161008161020%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g161008161020%_))
                      (let ((_%e161010161022%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g161008161020%_))))
                        (let ((_%hd161011161025%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e161010161022%_)))
                              (_%tl161012161027%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e161010161022%_))))
                          ((lambda (_%g161009161030%_)
                             (let ((__tmp171593
                                    (lambda (_%g161039161041%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self161004%_
                                         _%g161039161041%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp171593 _%g161009161030%_)))
                           _%tl161012161027%_)))
                      (_%g161007161017%_ _%g161008161020%_)))))
          (_%g161006161044%_ _%stx161005%_))))
    (define gxc#count-values-single%
      (lambda (_%self161001%_ _%stx161002%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self160869%_ _%stx160870%_)
        (let* ((_%__stx171335171336%_ _%stx160870%_)
               (_%g160873160902%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx171335171336%_)))))
          (let ((_%__kont171337171338%_
                 (lambda (_%g160875160968%_ _%g160876160969%_)
                   (length (let ((__tmp171594
                                  (lambda (_%g160990160993%_ _%g160991160995%_)
                                    (cons _%g160990160993%_
                                          _%g160991160995%_))))
                             (declare (not safe))
                             (__foldr1 __tmp171594 '() _%g160875160968%_)))))
                (_%__kont171341171342%_ (lambda () '#f)))
            (let ((_%__match171380171381%_
                   (lambda (_%e160877160914%_
                            _%hd160878160917%_
                            _%tl160879160919%_
                            _%e160880160922%_
                            _%hd160881160925%_
                            _%tl160882160927%_
                            _%e160883160930%_
                            _%hd160884160933%_
                            _%tl160885160935%_
                            _%e160886160938%_
                            _%hd160887160941%_
                            _%tl160888160943%_
                            _%__splice171339171340%_
                            _%target160889160946%_
                            _%tl160891160948%_)
                     (letrec ((_%loop160892160951%_
                               (lambda (_%hd160890160954%_
                                        _%rand160896160956%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd160890160954%_))
                                     (let ((_%e160893160958%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd160890160954%_))))
                                       (let ((_%lp-tl160895160963%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e160893160958%_)))
                                             (_%lp-hd160894160961%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e160893160958%_))))
                                         (_%loop160892160951%_
                                          _%lp-tl160895160963%_
                                          (cons _%lp-hd160894160961%_
                                                _%rand160896160956%_))))
                                     (let ((_%rand160897160966%_
                                            (reverse _%rand160896160956%_)))
                                       (let ((_%g160875160968%_
                                              _%rand160897160966%_)
                                             (_%g160876160969%_
                                              _%hd160887160941%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g160876160969%_
                                                'values))
                                             (_%__kont171337171338%_
                                              _%g160875160968%_
                                              _%g160876160969%_)
                                             (_%__kont171341171342%_))))))))
                       (_%loop160892160951%_ _%target160889160946%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx171335171336%_))
                  (let ((_%e160877160914%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx171335171336%_))))
                    (let ((_%tl160879160919%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e160877160914%_)))
                          (_%hd160878160917%_
                           (let ()
                             (declare (not safe))
                             (##car _%e160877160914%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl160879160919%_))
                          (let ((_%e160880160922%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl160879160919%_))))
                            (let ((_%tl160882160927%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e160880160922%_)))
                                  (_%hd160881160925%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e160880160922%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd160881160925%_))
                                  (let ((_%e160883160930%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd160881160925%_))))
                                    (let ((_%tl160885160935%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e160883160930%_)))
                                          (_%hd160884160933%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e160883160930%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd160884160933%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd160884160933%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl160885160935%_))
                                                  (let ((_%e160886160938%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl160885160935%_))))
                                                    (let ((_%tl160888160943%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e160886160938%_)))
                                                          (_%hd160887160941%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e160886160938%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl160888160943%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl160882160927%_))
                      (let ((_%__splice171339171340%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl160882160927%_
                                '0))))
                        (let ((_%tl160891160948%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice171339171340%_ '1)))
                              (_%target160889160946%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice171339171340%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl160891160948%_))
                              (_%__match171380171381%_
                               _%e160877160914%_
                               _%hd160878160917%_
                               _%tl160879160919%_
                               _%e160880160922%_
                               _%hd160881160925%_
                               _%tl160882160927%_
                               _%e160883160930%_
                               _%hd160884160933%_
                               _%tl160885160935%_
                               _%e160886160938%_
                               _%hd160887160941%_
                               _%tl160888160943%_
                               _%__splice171339171340%_
                               _%target160889160946%_
                               _%tl160891160948%_)
                              (_%__kont171341171342%_))))
                      (_%__kont171341171342%_))
                  (_%__kont171341171342%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171341171342%_))
                                              (_%__kont171341171342%_))
                                          (_%__kont171341171342%_))))
                                  (_%__kont171341171342%_))))
                          (_%__kont171341171342%_))))
                  (_%__kont171341171342%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self160774%_ _%stx160775%_)
        (let* ((_%g160777160798%_
                (lambda (_%g160778160795%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g160778160795%_))))
               (_%g160776160866%_
                (lambda (_%g160778160801%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g160778160801%_))
                      (let ((_%e160782160803%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g160778160801%_))))
                        (let ((_%hd160783160806%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e160782160803%_)))
                              (_%tl160784160808%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e160782160803%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl160784160808%_))
                              (let ((_%e160785160811%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl160784160808%_))))
                                (let ((_%hd160786160814%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e160785160811%_)))
                                      (_%tl160787160816%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e160785160811%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl160787160816%_))
                                      (let ((_%e160788160819%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl160787160816%_))))
                                        (let ((_%hd160789160822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e160788160819%_)))
                                              (_%tl160790160824%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e160788160819%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl160790160824%_))
                                              (let ((_%e160791160827%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl160790160824%_))))
                                                (let ((_%hd160792160830%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e160791160827%_)))
                                                      (_%tl160793160832%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e160791160827%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl160793160832%_))
                                                      ((lambda (_%g160779160835%_
                                                                _%g160780160836%_
                                                                _%g160781160837%_)
                                                         (let ((_%c1160854160856%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self160774%_
                           _%g160780160836%_))))
                   (if _%c1160854160856%_
                       (let* ((_%c1160858%_ _%c1160854160856%_)
                              (_%c2160859160861%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self160774%_
                                  _%g160779160835%_))))
                         (if _%c2160859160861%_
                             (let ((_%c2160863%_ _%c2160859160861%_))
                               (if (fx= _%c1160858%_ _%c2160863%_)
                                   _%c1160858%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd160792160830%_
               _%hd160789160822%_
               _%hd160786160814%_)
              (_%g160777160798%_ _%g160778160801%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g160777160798%_
                                               _%g160778160801%_))))
                                      (_%g160777160798%_ _%g160778160801%_))))
                              (_%g160777160798%_ _%g160778160801%_))))
                      (_%g160777160798%_ _%g160778160801%_)))))
          (_%g160776160866%_ _%stx160775%_))))))
