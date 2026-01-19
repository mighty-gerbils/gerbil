(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1768865824)
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
        (letrec ((_%hash-e159692%_
                  (lambda (_%id159694%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id159694%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e159692%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp161079 (list gxc#::void::t))
            (__tmp161078 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp161079
         '()
         __tmp161078
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args159688%_
        (apply make-instance gxc#::collect-bindings::t _%$args159688%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp161080
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
        (__make-atomic-promise __tmp161080)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx159680%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self159683%_
                (let ((__obj161054
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj161054))
               (__tmp161081
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159683%_ _%stx159680%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161081
           gxc#current-compile-method
           _%self159683%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp161083 (list gxc#::void::t))
            (__tmp161082 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp161083
         '(modules)
         __tmp161082
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args159677%_
        (apply make-instance gxc#::lift-modules::t _%$args159677%_)))
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
      (let ((__tmp161084
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
        (__make-atomic-promise __tmp161084)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords159651%_ _%modules159648159652%_ _%stx159654%_)
        (let ((_%modules159657%_
               (if (eq? _%modules159648159652%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules159648159652%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self159659%_
                  (let ((__obj161056
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj161056
                       _%modules159657%_
                       '1
                       '#f
                       '#f))
                    __obj161056))
                 (__tmp161085
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self159659%_ _%stx159654%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp161085
             gxc#current-compile-method
             _%self159659%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords159666%_ . _%args159667%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords159666%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159666%_
                  'modules:
                  absent-value))
               _%args159667%_)))
    (define gxc#apply-lift-modules
      (lambda _%args159649159673%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args159649159673%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp161087 (list)) (__tmp161086 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp161087
         '()
         __tmp161086
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args159644%_
        (apply make-instance gxc#::find-runtime-code::t _%$args159644%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp161088
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
        (__make-atomic-promise __tmp161088)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx159636%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self159639%_
                (let ((__obj161058
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj161058))
               (__tmp161089
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159639%_ _%stx159636%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161089
           gxc#current-compile-method
           _%self159639%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp161091 (list gxc#::false::t))
            (__tmp161090 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp161091
         '()
         __tmp161090
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args159633%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args159633%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp161092
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
        (__make-atomic-promise __tmp161092)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx159625%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self159628%_
                (let ((__obj161060
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj161060))
               (__tmp161093
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159628%_ _%stx159625%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161093
           gxc#current-compile-method
           _%self159628%_))))
    (define gxc#::count-values::t
      (let ((__tmp161095 (list gxc#::false-expression::t))
            (__tmp161094 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp161095
         '()
         __tmp161094
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args159622%_
        (apply make-instance gxc#::count-values::t _%$args159622%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp161096
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
        (__make-atomic-promise __tmp161096)))
    (define gxc#apply-count-values
      (lambda (_%stx159614%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self159617%_
                (let ((__obj161062
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj161062))
               (__tmp161097
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159617%_ _%stx159614%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161097
           gxc#current-compile-method
           _%self159617%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp161098 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp161098
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args159611%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args159611%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp161099
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
        (__make-atomic-promise __tmp161099)))
    (define gxc#::generate-loader::t
      (let ((__tmp161101 (list gxc#::generate-runtime-empty::t))
            (__tmp161100 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp161101
         '()
         __tmp161100
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args159607%_
        (apply make-instance gxc#::generate-loader::t _%$args159607%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp161102
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
        (__make-atomic-promise __tmp161102)))
    (define gxc#apply-generate-loader
      (lambda (_%stx159599%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self159602%_
                (let ((__obj161065
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj161065))
               (__tmp161103
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159602%_ _%stx159599%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161103
           gxc#current-compile-method
           _%self159602%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp161104 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp161104
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args159596%_
        (apply make-instance gxc#::generate-runtime::t _%$args159596%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp161105
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
        (__make-atomic-promise __tmp161105)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx159588%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self159591%_
                (let ((__obj161067
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj161067))
               (__tmp161106
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159591%_ _%stx159588%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161106
           gxc#current-compile-method
           _%self159591%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp161108 (list gxc#::generate-runtime::t))
            (__tmp161107 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp161108
         '()
         __tmp161107
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args159585%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args159585%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp161109
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
        (__make-atomic-promise __tmp161109)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx159577%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self159580%_
                (let ((__obj161069
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj161069))
               (__tmp161110
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159580%_ _%stx159577%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161110
           gxc#current-compile-method
           _%self159580%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp161111 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp161111
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args159574%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args159574%_)))
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
      (let ((__tmp161112
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
        (__make-atomic-promise __tmp161112)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords159548%_ _%table159545159549%_ _%stx159551%_)
        (let ((_%table159554%_
               (if (eq? _%table159545159549%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table159545159549%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self159556%_
                  (let ((__obj161071
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj161071
                       _%table159554%_
                       '1
                       '#f
                       '#f))
                    __obj161071))
                 (__tmp161113
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self159556%_ _%stx159551%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp161113
             gxc#current-compile-method
             _%self159556%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords159563%_ . _%args159564%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords159563%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159563%_
                  'table:
                  absent-value))
               _%args159564%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args159546159570%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args159546159570%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp161115 (list gxc#::void-expression::t))
            (__tmp161114 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp161115
         '(state)
         __tmp161114
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args159541%_
        (apply make-instance gxc#::generate-meta::t _%$args159541%_)))
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
      (let ((__tmp161116
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
        (__make-atomic-promise __tmp161116)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords159515%_ _%state159512159516%_ _%stx159518%_)
        (let ((_%state159521%_
               (if (eq? _%state159512159516%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state159512159516%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self159523%_
                  (let ((__obj161073
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj161073
                       _%state159521%_
                       '1
                       '#f
                       '#f))
                    __obj161073))
                 (__tmp161117
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self159523%_ _%stx159518%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp161117
             gxc#current-compile-method
             _%self159523%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords159530%_ . _%args159531%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords159530%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159530%_
                  'state:
                  absent-value))
               _%args159531%_)))
    (define gxc#apply-generate-meta
      (lambda _%args159513159537%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args159513159537%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp161119 (list)) (__tmp161118 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp161119
         '(state)
         __tmp161118
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args159508%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args159508%_)))
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
      (let ((__tmp161120
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
        (__make-atomic-promise __tmp161120)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords159482%_ _%state159479159483%_ _%stx159485%_)
        (let ((_%state159488%_
               (if (eq? _%state159479159483%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state159479159483%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self159490%_
                  (let ((__obj161075
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj161075
                       _%state159488%_
                       '1
                       '#f
                       '#f))
                    __obj161075))
                 (__tmp161121
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self159490%_ _%stx159485%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp161121
             gxc#current-compile-method
             _%self159490%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords159497%_ . _%args159498%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords159497%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159497%_
                  'state:
                  absent-value))
               _%args159498%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args159480159504%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args159480159504%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self159408%_ _%stx159409%_)
        (let* ((_%g159411159428%_
                (lambda (_%g159412159425%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159412159425%_))))
               (_%g159410159475%_
                (lambda (_%g159412159431%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159412159431%_))
                      (let ((_%e159415159433%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159412159431%_))))
                        (let ((_%hd159416159436%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159415159433%_)))
                              (_%tl159417159438%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159415159433%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159417159438%_))
                              (let ((_%e159418159441%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159417159438%_))))
                                (let ((_%hd159419159444%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159418159441%_)))
                                      (_%tl159420159446%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159418159441%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl159420159446%_))
                                      (let ((_%e159421159449%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl159420159446%_))))
                                        (let ((_%hd159422159452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159421159449%_)))
                                              (_%tl159423159454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159421159449%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl159423159454%_))
                                              ((lambda (_%L159457%_
                                                        _%L159458%_)
                                                 (let ((__tmp161122
                                                        (lambda (_%bind159473%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind159473%_))
                      (gxc#add-module-binding! _%bind159473%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp161122
                                                    _%L159458%_)))
                                               _%hd159422159452%_
                                               _%hd159419159444%_)
                                              (_%g159411159428%_
                                               _%g159412159431%_))))
                                      (_%g159411159428%_ _%g159412159431%_))))
                              (_%g159411159428%_ _%g159412159431%_))))
                      (_%g159411159428%_ _%g159412159431%_)))))
          (_%g159410159475%_ _%stx159409%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self159340%_ _%stx159341%_)
        (let* ((_%g159343159360%_
                (lambda (_%g159344159357%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159344159357%_))))
               (_%g159342159405%_
                (lambda (_%g159344159363%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159344159363%_))
                      (let ((_%e159347159365%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159344159363%_))))
                        (let ((_%hd159348159368%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159347159365%_)))
                              (_%tl159349159370%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159347159365%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159349159370%_))
                              (let ((_%e159350159373%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159349159370%_))))
                                (let ((_%hd159351159376%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159350159373%_)))
                                      (_%tl159352159378%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159350159373%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl159352159378%_))
                                      (let ((_%e159353159381%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl159352159378%_))))
                                        (let ((_%hd159354159384%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159353159381%_)))
                                              (_%tl159355159386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159353159381%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl159355159386%_))
                                              ((lambda (_%L159389%_
                                                        _%L159390%_)
                                                 (gxc#add-module-binding!
                                                  _%L159390%_
                                                  '#t))
                                               _%hd159354159384%_
                                               _%hd159351159376%_)
                                              (_%g159343159360%_
                                               _%g159344159363%_))))
                                      (_%g159343159360%_ _%g159344159363%_))))
                              (_%g159343159360%_ _%g159344159363%_))))
                      (_%g159343159360%_ _%g159344159363%_)))))
          (_%g159342159405%_ _%stx159341%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self159282%_ _%stx159283%_)
        (let* ((_%g159285159299%_
                (lambda (_%g159286159296%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159286159296%_))))
               (_%g159284159337%_
                (lambda (_%g159286159302%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159286159302%_))
                      (let ((_%e159289159304%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159286159302%_))))
                        (let ((_%hd159290159307%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159289159304%_)))
                              (_%tl159291159309%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159289159304%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159291159309%_))
                              (let ((_%e159292159312%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159291159309%_))))
                                (let ((_%hd159293159315%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159292159312%_)))
                                      (_%tl159294159317%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159292159312%_))))
                                  ((lambda (_%L159320%_ _%L159321%_)
                                     (let ((_%ctx159334%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L159321%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self159282%_
                                           'modules))
                                        (cons _%ctx159334%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self159282%_
                                                        'modules)))))
                                       (let ((__tmp161123
                                              (lambda ()
                                                (let ((__tmp161124
                                                       (##structure-ref
                                                        _%ctx159334%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self159282%_
                                                   __tmp161124)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp161123
                                          gx#current-expander-context
                                          _%ctx159334%_))))
                                   _%tl159294159317%_
                                   _%hd159293159315%_)))
                              (_%g159285159299%_ _%g159286159302%_))))
                      (_%g159285159299%_ _%g159286159302%_)))))
          (_%g159284159337%_ _%stx159283%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls159235159237%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls159235159237%_
              (let ((_%decls159240%_ _%decls159235159237%_))
                (let _%lp159242%_ ((_%rest159244%_ _%decls159240%_))
                  (let* ((_%rest159245159253%_ _%rest159244%_)
                         (_%else159247159261%_ (lambda () '#f))
                         (_%K159249159270%_
                          (lambda (_%decls159264%_ _%decl159265%_)
                            (if (equal? _%decl159265%_ '(not safe))
                                '#t
                                (if (equal? _%decl159265%_ '(safe))
                                    '#f
                                    (_%lp159242%_ _%decls159264%_))))))
                    (if (pair? _%rest159245159253%_)
                        (let ((_%hd159250159273%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest159245159253%_)))
                              (_%tl159251159275%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest159245159253%_))))
                          (let* ((_%decl159278%_ _%hd159250159273%_)
                                 (_%decls159280%_ _%tl159251159275%_))
                            (_%K159249159270%_
                             _%decls159280%_
                             _%decl159278%_)))
                        (_%else159247159261%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id159229%_ _%syntax?159230%_)
        (let ((_%eid159232%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id159229%_))
                '1
                gx#binding::t
                '#f))
              (_%ht159233%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid159232%_))
              '#!void
              (let ((__tmp161125
                     (let ((__tmp161126
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid159232%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp161126 _%syntax?159230%_))))
                (declare (not safe))
                (hash-put! _%ht159233%_ _%eid159232%_ __tmp161125))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id159227%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id159227%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key159182%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key159182%_))
            _%key159182%_
            (if (uninterned-symbol? _%key159182%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key159182%_))
                (let* ((_%key159186159193%_ _%key159182%_)
                       (_%E159188159197%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key159186159193%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K159189159215%_
                        (lambda (_%mark159200%_ _%eid159201%_)
                          (let ((_%$e159203%_
                                 (##structure-ref
                                  _%mark159200%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e159203%_
                                ((lambda (_%ht159206%_)
                                   (let ((_%$e159208%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht159206%_
                                             _%eid159201%_))))
                                     (if _%$e159208%_
                                         ((lambda (_%id159211%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id159211%_))
                                                _%id159211%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id159211%_))))
                                          _%$e159208%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid159201%_))))
                                 _%$e159203%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid159201%_))))))
                  (if (pair? _%key159186159193%_)
                      (let ((_%hd159190159218%_
                             (let ()
                               (declare (not safe))
                               (##car _%key159186159193%_)))
                            (_%tl159191159220%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key159186159193%_))))
                        (let* ((_%eid159223%_ _%hd159190159218%_)
                               (_%mark159225%_ _%tl159191159220%_))
                          (_%K159189159215%_ _%mark159225%_ _%eid159223%_)))
                      (_%E159188159197%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self159179%_ _%stx159180%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self159026%_ _%stx159027%_)
        (letrec ((_%simplify159029%_
                  (lambda (_%body159077%_)
                    (let _%lp159079%_ ((_%rest159081%_ _%body159077%_)
                                       (_%r159082%_ '()))
                      (let* ((_%rest159083159091%_ _%rest159081%_)
                             (_%else159085159099%_
                              (lambda () (reverse _%r159082%_)))
                             (_%K159087159167%_
                              (lambda (_%rest159102%_ _%hd159103%_)
                                (let* ((_%hd159104159120%_ _%hd159103%_)
                                       (_%else159108159128%_
                                        (lambda ()
                                          (_%lp159079%_
                                           _%rest159102%_
                                           (cons _%hd159103%_ _%r159082%_)))))
                                  (let ((_%K159116159157%_
                                         (lambda (_%exprs159155%_)
                                           (_%lp159079%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest159102%_
                                               _%exprs159155%_))
                                            _%r159082%_)))
                                        (_%K159111159141%_
                                         (lambda ()
                                           (if (null? _%rest159102%_)
                                               (_%lp159079%_
                                                _%rest159102%_
                                                (cons _%hd159103%_
                                                      _%r159082%_))
                                               (_%lp159079%_
                                                _%rest159102%_
                                                _%r159082%_))))
                                        (_%K159110159133%_
                                         (lambda ()
                                           (if (null? _%rest159102%_)
                                               (_%lp159079%_
                                                _%rest159102%_
                                                (cons _%hd159103%_
                                                      _%r159082%_))
                                               (_%lp159079%_
                                                _%rest159102%_
                                                _%r159082%_)))))
                                    (let ((_%try-match159107159136%_
                                           (lambda ()
                                             (if (symbol? _%hd159104159120%_)
                                                 (_%K159110159133%_)
                                                 (_%else159108159128%_)))))
                                      (if (pair? _%hd159104159120%_)
                                          (let ((_%tl159118159162%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd159104159120%_)))
                                                (_%hd159117159160%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd159104159120%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd159117159160%_
                                                         'begin))
                                                (let ((_%exprs159165%_
                                                       _%tl159118159162%_))
                                                  (_%K159116159157%_
                                                   _%exprs159165%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd159117159160%_
                                                             'quote))
                                                    (if (pair? _%tl159118159162%_)
                                                        (let ((_%tl159115159149%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl159118159162%_))))
                  (if (null? _%tl159115159149%_)
                      (_%K159111159141%_)
                      (_%try-match159107159136%_)))
                (_%try-match159107159136%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match159107159136%_))))
                                          (_%try-match159107159136%_))))))))
                        (if (pair? _%rest159083159091%_)
                            (let ((_%hd159088159170%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest159083159091%_)))
                                  (_%tl159089159172%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest159083159091%_))))
                              (let* ((_%hd159175%_ _%hd159088159170%_)
                                     (_%rest159177%_ _%tl159089159172%_))
                                (_%K159087159167%_
                                 _%rest159177%_
                                 _%hd159175%_)))
                            (_%else159085159099%_)))))))
          (let* ((_%g159031159041%_
                  (lambda (_%g159032159038%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g159032159038%_))))
                 (_%g159030159074%_
                  (lambda (_%g159032159044%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g159032159044%_))
                        (let ((_%e159034159046%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g159032159044%_))))
                          (let ((_%hd159035159049%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e159034159046%_)))
                                (_%tl159036159051%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e159034159046%_))))
                            ((lambda (_%L159054%_)
                               (let* ((_%body159069%_
                                       (map (lambda (_%g159064159066%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self159026%_
                                                 _%g159064159066%_)))
                                            _%L159054%_))
                                      (_%body159071%_
                                       (_%simplify159029%_ _%body159069%_)))
                                 (if (let ((__tmp161127
                                            (length _%body159071%_)))
                                       (declare (not safe))
                                       (##fx= __tmp161127 '1))
                                     (car _%body159071%_)
                                     (cons 'begin _%body159071%_))))
                             _%tl159036159051%_)))
                        (_%g159031159041%_ _%g159032159044%_)))))
            (_%g159030159074%_ _%stx159027%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self158987%_ _%stx158988%_)
        (let* ((_%g158990159000%_
                (lambda (_%g158991158997%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158991158997%_))))
               (_%g158989159023%_
                (lambda (_%g158991159003%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158991159003%_))
                      (let ((_%e158993159005%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158991159003%_))))
                        (let ((_%hd158994159008%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158993159005%_)))
                              (_%tl158995159010%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158993159005%_))))
                          ((lambda (_%L159013%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L159013%_))))
                           _%tl158995159010%_)))
                      (_%g158990159000%_ _%g158991159003%_)))))
          (_%g158989159023%_ _%stx158988%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self158751%_ _%stx158752%_)
        (let* ((_%__stx159717159718%_ _%stx158752%_)
               (_%g158756158808%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx159717159718%_)))))
          (let ((_%__kont159719159720%_
                 (lambda (_%L158969%_ _%L158970%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self158751%_ _%L158969%_))))
                (_%__kont159721159722%_
                 (lambda (_%L158917%_ _%L158918%_ _%L158919%_)
                   (if (let ((__tmp161128
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L158919%_))))
                         (declare (not safe))
                         (##memq __tmp161128 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self158751%_ _%L158917%_)))))
                (_%__kont159725159726%_
                 (lambda (_%L158837%_ _%L158838%_)
                   (let ((_%decls158853%_ (map gx#syntax->datum _%L158838%_)))
                     (let ((__tmp161131
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls158853%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self158751%_
                                                   _%L158837%_))
                                                '())))))
                           (__tmp161129
                            (let ((__tmp161130
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp161130 _%decls158853%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp161131
                        gxc#current-compile-decls
                        __tmp161129))))))
            (let* ((_%__match159772159773%_
                    (lambda (_%e158772158861%_
                             _%hd158773158864%_
                             _%tl158774158866%_
                             _%e158775158869%_
                             _%hd158776158872%_
                             _%tl158777158874%_
                             _%e158778158877%_
                             _%hd158779158880%_
                             _%tl158780158882%_
                             _%__splice159723159724%_
                             _%target158781158885%_
                             _%tl158783158887%_)
                      (letrec ((_%loop158784158890%_
                                (lambda (_%hd158782158893%_
                                         _%param158788158895%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd158782158893%_))
                                      (let ((_%e158785158898%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd158782158893%_))))
                                        (let ((_%lp-tl158787158903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e158785158898%_)))
                                              (_%lp-hd158786158901%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e158785158898%_))))
                                          (_%loop158784158890%_
                                           _%lp-tl158787158903%_
                                           (cons _%lp-hd158786158901%_
                                                 _%param158788158895%_))))
                                      (let ((_%param158789158906%_
                                             (reverse _%param158788158895%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl158777158874%_))
                                            (let ((_%e158790158909%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl158777158874%_))))
                                              (let ((_%tl158792158914%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e158790158909%_)))
                                                    (_%hd158791158912%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e158790158909%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl158792158914%_))
                                                    (let ((_%L158917%_
                                                           _%hd158791158912%_)
                                                          (_%L158918%_
                                                           _%param158789158906%_)
                                                          (_%L158919%_
                                                           _%hd158779158880%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L158919%_))
                       (not (let ((__tmp161132
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L158919%_))))
                              (declare (not safe))
                              (##memq __tmp161132 gxc#gambit-annotations))))
                  (_%__kont159721159722%_ _%L158917%_ _%L158918%_ _%L158919%_)
                  (_%__kont159725159726%_
                   _%hd158791158912%_
                   _%hd158776158872%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g158756158808%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g158756158808%_))))))))
                        (_%loop158784158890%_ _%target158781158885%_ '()))))
                   (_%__match159746159747%_
                    (lambda (_%e158760158945%_
                             _%hd158761158948%_
                             _%tl158762158950%_
                             _%e158763158953%_
                             _%hd158764158956%_
                             _%tl158765158958%_
                             _%e158766158961%_
                             _%hd158767158964%_
                             _%tl158768158966%_)
                      (let ((_%L158969%_ _%hd158767158964%_)
                            (_%L158970%_ _%hd158764158956%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L158970%_))
                            (_%__kont159719159720%_ _%L158969%_ _%L158970%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd158764158956%_))
                                (let ((_%e158778158877%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd158764158956%_))))
                                  (let ((_%tl158780158882%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e158778158877%_)))
                                        (_%hd158779158880%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e158778158877%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl158780158882%_))
                                        (let ((_%__splice159723159724%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl158780158882%_
                                                  '0))))
                                          (let ((_%tl158783158887%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice159723159724%_
                                                    '1)))
                                                (_%target158781158885%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice159723159724%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl158783158887%_))
                                                (_%__match159772159773%_
                                                 _%e158760158945%_
                                                 _%hd158761158948%_
                                                 _%tl158762158950%_
                                                 _%e158763158953%_
                                                 _%hd158764158956%_
                                                 _%tl158765158958%_
                                                 _%e158778158877%_
                                                 _%hd158779158880%_
                                                 _%tl158780158882%_
                                                 _%__splice159723159724%_
                                                 _%target158781158885%_
                                                 _%tl158783158887%_)
                                                (_%__kont159725159726%_
                                                 _%hd158767158964%_
                                                 _%hd158764158956%_))))
                                        (_%__kont159725159726%_
                                         _%hd158767158964%_
                                         _%hd158764158956%_))))
                                (_%__kont159725159726%_
                                 _%hd158767158964%_
                                 _%hd158764158956%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx159717159718%_))
                  (let ((_%e158760158945%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx159717159718%_))))
                    (let ((_%tl158762158950%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e158760158945%_)))
                          (_%hd158761158948%_
                           (let ()
                             (declare (not safe))
                             (##car _%e158760158945%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl158762158950%_))
                          (let ((_%e158763158953%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl158762158950%_))))
                            (let ((_%tl158765158958%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e158763158953%_)))
                                  (_%hd158764158956%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e158763158953%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl158765158958%_))
                                  (let ((_%e158766158961%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl158765158958%_))))
                                    (let ((_%tl158768158966%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e158766158961%_)))
                                          (_%hd158767158964%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e158766158961%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl158768158966%_))
                                          (_%__match159746159747%_
                                           _%e158760158945%_
                                           _%hd158761158948%_
                                           _%tl158762158950%_
                                           _%e158763158953%_
                                           _%hd158764158956%_
                                           _%tl158765158958%_
                                           _%e158766158961%_
                                           _%hd158767158964%_
                                           _%tl158768158966%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd158764158956%_))
                                              (let ((_%e158778158877%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd158764158956%_))))
                                                (let ((_%tl158780158882%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e158778158877%_)))
                                                      (_%hd158779158880%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e158778158877%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl158780158882%_))
                                                      (let ((_%__splice159723159724%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl158780158882%_
                        '0))))
                (let ((_%tl158783158887%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice159723159724%_ '1)))
                      (_%target158781158885%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice159723159724%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl158783158887%_))
                      (_%__match159772159773%_
                       _%e158760158945%_
                       _%hd158761158948%_
                       _%tl158762158950%_
                       _%e158763158953%_
                       _%hd158764158956%_
                       _%tl158765158958%_
                       _%e158778158877%_
                       _%hd158779158880%_
                       _%tl158780158882%_
                       _%__splice159723159724%_
                       _%target158781158885%_
                       _%tl158783158887%_)
                      (let () (declare (not safe)) (_%g158756158808%_)))))
              (let () (declare (not safe)) (_%g158756158808%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g158756158808%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd158764158956%_))
                                      (let ((_%e158778158877%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd158764158956%_))))
                                        (let ((_%tl158780158882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e158778158877%_)))
                                              (_%hd158779158880%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e158778158877%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl158780158882%_))
                                              (let ((_%__splice159723159724%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl158780158882%_
                                                        '0))))
                                                (let ((_%tl158783158887%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice159723159724%_
                                                          '1)))
                                                      (_%target158781158885%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice159723159724%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl158783158887%_))
                                                      (_%__match159772159773%_
                                                       _%e158760158945%_
                                                       _%hd158761158948%_
                                                       _%tl158762158950%_
                                                       _%e158763158953%_
                                                       _%hd158764158956%_
                                                       _%tl158765158958%_
                                                       _%e158778158877%_
                                                       _%hd158779158880%_
                                                       _%tl158780158882%_
                                                       _%__splice159723159724%_
                                                       _%target158781158885%_
                                                       _%tl158783158887%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g158756158808%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g158756158808%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g158756158808%_))))))
                          (let () (declare (not safe)) (_%g158756158808%_)))))
                  (let () (declare (not safe)) (_%g158756158808%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self158710%_ _%stx158711%_)
        (let* ((_%g158713158723%_
                (lambda (_%g158714158720%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158714158720%_))))
               (_%g158712158748%_
                (lambda (_%g158714158726%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158714158726%_))
                      (let ((_%e158716158728%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158714158726%_))))
                        (let ((_%hd158717158731%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158716158728%_)))
                              (_%tl158718158733%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158716158728%_))))
                          ((lambda (_%L158736%_)
                             (let ((_%decls158746%_
                                    (map gx#syntax->datum _%L158736%_)))
                               (let ((__tmp161133
                                      (let ((__tmp161134
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp161134
                                         _%decls158746%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp161133))
                               (cons 'declare _%decls158746%_)))
                           _%tl158718158733%_)))
                      (_%g158713158723%_ _%g158714158726%_)))))
          (_%g158712158748%_ _%stx158711%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self158456%_ _%stx158457%_)
        (let* ((_%g158459158476%_
                (lambda (_%g158460158473%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158460158473%_))))
               (_%g158458158707%_
                (lambda (_%g158460158479%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158460158479%_))
                      (let ((_%e158463158481%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158460158479%_))))
                        (let ((_%hd158464158484%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158463158481%_)))
                              (_%tl158465158486%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158463158481%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl158465158486%_))
                              (let ((_%e158466158489%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl158465158486%_))))
                                (let ((_%hd158467158492%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e158466158489%_)))
                                      (_%tl158468158494%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e158466158489%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl158468158494%_))
                                      (let ((_%e158469158497%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl158468158494%_))))
                                        (let ((_%hd158470158500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e158469158497%_)))
                                              (_%tl158471158502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e158469158497%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl158471158502%_))
                                              ((lambda (_%L158505%_
                                                        _%L158506%_)
                                                 (let* ((_%__stx159825159826%_
                                                         _%L158506%_)
                                                        (_%g158523158537%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx159825159826%_)))))
                                                   (let ((_%__kont159827159828%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self158456%_
                                                               _%L158505%_))))
                                                         (_%__kont159829159830%_
                                                          (lambda (_%L158669%_)
                                                            (let ((_%eid158678%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L158669%_))))
                      (let ((_%lambda-expr158679158681%_
                             (gxc#apply-find-lambda-expression _%L158505%_)))
                        (if _%lambda-expr158679158681%_
                            (let* ((_%lambda-expr158684%_
                                    _%lambda-expr158679158681%_)
                                   (__tmp161135
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp161135
                               _%lambda-expr158684%_
                               _%eid158678%_))
                            '#f))
                      (cons 'define
                            (cons _%eid158678%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self158456%_
                                           _%L158505%_))
                                        '()))))))
                 (_%__kont159831159832%_
                  (lambda ()
                    (let* ((_%tmp158544%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body158653%_
                            (let _%lp158546%_ ((_%rest158548%_ _%L158506%_)
                                               (_%k158549%_ '0)
                                               (_%r158550%_ '()))
                              (let* ((_%__stx159795159796%_ _%rest158548%_)
                                     (_%g158555158572%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx159795159796%_)))))
                                (let ((_%__kont159797159798%_
                                       (lambda (_%L158640%_)
                                         (_%lp158546%_
                                          _%L158640%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k158549%_ '1))
                                          _%r158550%_)))
                                      (_%__kont159799159800%_
                                       (lambda (_%L158613%_ _%L158614%_)
                                         (_%lp158546%_
                                          _%L158613%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k158549%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L158614%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp158544%_
                           _%k158549%_
                           _%L158613%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r158550%_))))
                                      (_%__kont159801159802%_
                                       (lambda (_%L158584%_)
                                         (let ((__tmp161136
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L158584%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp158544%_
                                 _%k158549%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp161136
                                            _%r158550%_))))
                                      (_%__kont159803159804%_
                                       (lambda () (reverse _%r158550%_))))
                                  (let ((_%g158553158600%_
                                         (lambda ()
                                           (let ((_%L158584%_
                                                  _%__stx159795159796%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L158584%_))
                                                 (_%__kont159801159802%_
                                                  _%L158584%_)
                                                 (_%__kont159803159804%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx159795159796%_))
                                        (let ((_%e158558158629%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx159795159796%_))))
                                          (let ((_%tl158560158634%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e158558158629%_)))
                                                (_%hd158559158632%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e158558158629%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd158559158632%_))
                                                (let ((_%e158561158637%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd158559158632%_))))
                                                  (if (equal? _%e158561158637%_
                                                              '#f)
                                                      (_%__kont159797159798%_
                                                       _%tl158560158634%_)
                                                      (_%__kont159799159800%_
                                                       _%tl158560158634%_
                                                       _%hd158559158632%_)))
                                                (_%__kont159799159800%_
                                                 _%tl158560158634%_
                                                 _%hd158559158632%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g158553158600%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp158544%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self158456%_
                                                       _%L158505%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp158544%_
                                         _%L158506%_
                                         _%L158505%_)
                                        _%body158653%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx159825159826%_))
                                                         (let ((_%e158525158691%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx159825159826%_))))
                   (let ((_%tl158527158696%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e158525158691%_)))
                         (_%hd158526158694%_
                          (let ()
                            (declare (not safe))
                            (##car _%e158525158691%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd158526158694%_))
                         (let ((_%e158528158699%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd158526158694%_))))
                           (if (equal? _%e158528158699%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl158527158696%_))
                                   (_%__kont159827159828%_)
                                   (_%__kont159831159832%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl158527158696%_))
                                   (_%__kont159829159830%_ _%hd158526158694%_)
                                   (_%__kont159831159832%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl158527158696%_))
                             (_%__kont159829159830%_ _%hd158526158694%_)
                             (_%__kont159831159832%_)))))
                 (_%__kont159831159832%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd158470158500%_
                                               _%hd158467158492%_)
                                              (_%g158459158476%_
                                               _%g158460158479%_))))
                                      (_%g158459158476%_ _%g158460158479%_))))
                              (_%g158459158476%_ _%g158460158479%_))))
                      (_%g158459158476%_ _%g158460158479%_)))))
          (_%g158458158707%_ _%stx158457%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals158431%_ _%hd158432%_ _%expr158433%_)
        (let ((_%$e158435%_ (gxc#apply-count-values _%expr158433%_)))
          (if _%$e158435%_
              ((lambda (_%count158438%_)
                 (let ((_%len158440%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd158432%_)))
                       (_%cmp158441%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd158432%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len158440%_ '0))
                           (_%cmp158441%_ _%count158438%_ _%len158440%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr158433%_
                          _%hd158432%_)))))
               _%$e158435%_)
              (let* ((_%len158447%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd158432%_)))
                     (_%cmp158449%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd158432%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg158451%_
                      (let ((__tmp161138
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd158432%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp161137 (number->string _%len158447%_)))
                        (declare (not safe))
                        (##string-append __tmp161138 __tmp161137 '" values")))
                     (_%count158453%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd158432%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len158447%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count158453%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals158431%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp158449%_
                                (cons _%count158453%_
                                      (cons _%len158447%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp158449%_
                                                        (cons _%count158453%_
                                                              (cons _%len158447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg158451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count158453%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var158426%_)
        (letrec ((_%generate-inline158428%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var158426%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var158426%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline158428%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline158428%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var158419%_ _%i158420%_ _%rest158421%_)
        (letrec ((_%generate-inline158423%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i158420%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest158421%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var158419%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var158419%_
                                                      (cons '0 '())))
                                          (cons _%var158419%_ '()))))
                        (cons '##values-ref
                              (cons _%var158419%_ (cons _%i158420%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline158423%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline158423%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var158413%_ _%i158414%_)
        (if (let () (declare (not safe)) (##fx= _%i158414%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var158413%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var158413%_ '()))
                                  (cons (cons 'list (cons _%var158413%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var158413%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var158413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var158413%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i158414%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var158413%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var158413%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var158413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var158413%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var158413%_ '()))
                                (cons _%i158414%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var158413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i158414%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self158345%_ _%stx158346%_)
        (let* ((_%g158348158365%_
                (lambda (_%g158349158362%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158349158362%_))))
               (_%g158347158410%_
                (lambda (_%g158349158368%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158349158368%_))
                      (let ((_%e158352158370%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158349158368%_))))
                        (let ((_%hd158353158373%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158352158370%_)))
                              (_%tl158354158375%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158352158370%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl158354158375%_))
                              (let ((_%e158355158378%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl158354158375%_))))
                                (let ((_%hd158356158381%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e158355158378%_)))
                                      (_%tl158357158383%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e158355158378%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl158357158383%_))
                                      (let ((_%e158358158386%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl158357158383%_))))
                                        (let ((_%hd158359158389%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e158358158386%_)))
                                              (_%tl158360158391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e158358158386%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl158360158391%_))
                                              ((lambda (_%L158394%_
                                                        _%L158395%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self158345%_
                                                  _%L158395%_
                                                  _%L158394%_))
                                               _%hd158359158389%_
                                               _%hd158356158381%_)
                                              (_%g158348158365%_
                                               _%g158349158368%_))))
                                      (_%g158348158365%_ _%g158349158368%_))))
                              (_%g158348158365%_ _%g158349158368%_))))
                      (_%g158348158365%_ _%g158349158368%_)))))
          (_%g158347158410%_ _%stx158346%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self158304%_ _%hd158305%_ _%body158306%_)
        (let* ((_%hd158308%_ (gxc#generate-runtime-lambda-head _%hd158305%_))
               (_%body158310%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self158304%_ _%body158306%_)))
               (_%body158342%_
                (let* ((_%body158311158319%_ _%body158310%_)
                       (_%else158313158327%_
                        (lambda () (cons _%body158310%_ '())))
                       (_%K158315158332%_
                        (lambda (_%exprs158330%_) _%exprs158330%_)))
                  (if (pair? _%body158311158319%_)
                      (let ((_%hd158316158335%_
                             (let ()
                               (declare (not safe))
                               (##car _%body158311158319%_)))
                            (_%tl158317158337%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body158311158319%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd158316158335%_ 'begin))
                            (let ((_%exprs158340%_ _%tl158317158337%_))
                              (_%K158315158332%_ _%exprs158340%_))
                            (_%else158313158327%_)))
                      (_%else158313158327%_)))))
          (cons 'lambda (cons _%hd158308%_ _%body158342%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd158302%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd158302%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self156841%_ _%stx156842%_)
        (letrec ((_%dispatch-case?156844%_
                  (lambda (_%hd157532%_ _%body157533%_)
                    (let* ((_%form157535%_
                            (cons _%hd157532%_ (cons _%body157533%_ '())))
                           (_%__stx159857159858%_ _%form157535%_)
                           (_%g157540157697%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx159857159858%_)))))
                      (let ((_%__kont159859159860%_
                             (lambda (_%L158222%_ _%L158223%_ _%L158224%_)
                               '#t))
                            (_%__kont159865159866%_
                             (lambda (_%L158010%_
                                      _%L158011%_
                                      _%L158012%_
                                      _%L158013%_
                                      _%L158014%_
                                      _%L158015%_)
                               '#t))
                            (_%__kont159871159872%_
                             (lambda (_%L157805%_
                                      _%L157806%_
                                      _%L157807%_
                                      _%L157808%_)
                               '#t))
                            (_%__kont159873159874%_ (lambda () '#f)))
                        (let* ((_%__match159998159999%_
                                (lambda (_%e157657157709%_
                                         _%hd157658157712%_
                                         _%tl157659157714%_
                                         _%e157660157717%_
                                         _%hd157661157720%_
                                         _%tl157662157722%_
                                         _%e157663157725%_
                                         _%hd157664157728%_
                                         _%tl157665157730%_
                                         _%e157666157733%_
                                         _%hd157667157736%_
                                         _%tl157668157738%_
                                         _%e157669157741%_
                                         _%hd157670157744%_
                                         _%tl157671157746%_
                                         _%e157672157749%_
                                         _%hd157673157752%_
                                         _%tl157674157754%_
                                         _%e157675157757%_
                                         _%hd157676157760%_
                                         _%tl157677157762%_
                                         _%e157678157765%_
                                         _%hd157679157768%_
                                         _%tl157680157770%_
                                         _%e157681157773%_
                                         _%hd157682157776%_
                                         _%tl157683157778%_
                                         _%e157684157781%_
                                         _%hd157685157784%_
                                         _%tl157686157786%_
                                         _%e157687157789%_
                                         _%hd157688157792%_
                                         _%tl157689157794%_
                                         _%e157690157797%_
                                         _%hd157691157800%_
                                         _%tl157692157802%_)
                                  (let ((_%L157805%_ _%hd157691157800%_)
                                        (_%L157806%_ _%hd157682157776%_)
                                        (_%L157807%_ _%hd157673157752%_)
                                        (_%L157808%_ _%hd157658157712%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L157808%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L157807%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L157808%_
                                                _%L157805%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L157806%_
                                                     _%L157808%_))))
                                        (_%__kont159871159872%_
                                         _%L157805%_
                                         _%L157806%_
                                         _%L157807%_
                                         _%L157808%_)
                                        (_%__kont159873159874%_)))))
                               (_%__match159970159971%_
                                (lambda (_%e157657157709%_
                                         _%hd157658157712%_
                                         _%tl157659157714%_
                                         _%e157660157717%_
                                         _%hd157661157720%_
                                         _%tl157662157722%_
                                         _%e157663157725%_
                                         _%hd157664157728%_
                                         _%tl157665157730%_
                                         _%e157666157733%_
                                         _%hd157667157736%_
                                         _%tl157668157738%_
                                         _%e157669157741%_
                                         _%hd157670157744%_
                                         _%tl157671157746%_
                                         _%e157672157749%_
                                         _%hd157673157752%_
                                         _%tl157674157754%_
                                         _%e157675157757%_
                                         _%hd157676157760%_
                                         _%tl157677157762%_
                                         _%e157678157765%_
                                         _%hd157679157768%_
                                         _%tl157680157770%_
                                         _%e157681157773%_
                                         _%hd157682157776%_
                                         _%tl157683157778%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl157677157762%_))
                                      (let ((_%e157684157781%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl157677157762%_))))
                                        (let ((_%tl157686157786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e157684157781%_)))
                                              (_%hd157685157784%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e157684157781%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd157685157784%_))
                                              (let ((_%e157687157789%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd157685157784%_))))
                                                (let ((_%tl157689157794%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e157687157789%_)))
                                                      (_%hd157688157792%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e157687157789%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd157688157792%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd157688157792%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl157689157794%_))
                      (let ((_%e157690157797%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl157689157794%_))))
                        (let ((_%tl157692157802%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157690157797%_)))
                              (_%hd157691157800%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157690157797%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl157692157802%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl157686157786%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl157662157722%_))
                                      (_%__match159998159999%_
                                       _%e157657157709%_
                                       _%hd157658157712%_
                                       _%tl157659157714%_
                                       _%e157660157717%_
                                       _%hd157661157720%_
                                       _%tl157662157722%_
                                       _%e157663157725%_
                                       _%hd157664157728%_
                                       _%tl157665157730%_
                                       _%e157666157733%_
                                       _%hd157667157736%_
                                       _%tl157668157738%_
                                       _%e157669157741%_
                                       _%hd157670157744%_
                                       _%tl157671157746%_
                                       _%e157672157749%_
                                       _%hd157673157752%_
                                       _%tl157674157754%_
                                       _%e157675157757%_
                                       _%hd157676157760%_
                                       _%tl157677157762%_
                                       _%e157678157765%_
                                       _%hd157679157768%_
                                       _%tl157680157770%_
                                       _%e157681157773%_
                                       _%hd157682157776%_
                                       _%tl157683157778%_
                                       _%e157684157781%_
                                       _%hd157685157784%_
                                       _%tl157686157786%_
                                       _%e157687157789%_
                                       _%hd157688157792%_
                                       _%tl157689157794%_
                                       _%e157690157797%_
                                       _%hd157691157800%_
                                       _%tl157692157802%_)
                                      (_%__kont159873159874%_))
                                  (_%__kont159873159874%_))
                              (_%__kont159873159874%_))))
                      (_%__kont159873159874%_))
                  (_%__kont159873159874%_))
              (_%__kont159873159874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont159873159874%_))))
                                      (_%__kont159873159874%_))))
                               (_%__match159900159901%_
                                (lambda (_%e157593157850%_
                                         _%hd157594157853%_
                                         _%tl157595157855%_
                                         _%__splice159867159868%_
                                         _%target157596157858%_
                                         _%tl157598157860%_)
                                  (letrec ((_%loop157599157863%_
                                            (lambda (_%hd157597157866%_
                                                     _%arg157603157868%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157597157866%_))
                                                  (let ((_%e157600157871%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157597157866%_))))
                                                    (let ((_%lp-tl157602157876%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157600157871%_)))
                                                          (_%lp-hd157601157874%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157600157871%_))))
                                                      (_%loop157599157863%_
                                                       _%lp-tl157602157876%_
                                                       (cons _%lp-hd157601157874%_
                                                             _%arg157603157868%_))))
                                                  (let ((_%arg157604157879%_
                                                         (reverse _%arg157603157868%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl157595157855%_))
                                                        (let ((_%e157605157882%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl157595157855%_))))
                  (let ((_%tl157607157887%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e157605157882%_)))
                        (_%hd157606157885%_
                         (let ()
                           (declare (not safe))
                           (##car _%e157605157882%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd157606157885%_))
                        (let ((_%e157608157890%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd157606157885%_))))
                          (let ((_%tl157610157895%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157608157890%_)))
                                (_%hd157609157893%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157608157890%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd157609157893%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd157609157893%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl157610157895%_))
                                        (let ((_%e157611157898%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl157610157895%_))))
                                          (let ((_%tl157613157903%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e157611157898%_)))
                                                (_%hd157612157901%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e157611157898%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd157612157901%_))
                                                (let ((_%e157614157906%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd157612157901%_))))
                                                  (let ((_%tl157616157911%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e157614157906%_)))
                                                        (_%hd157615157909%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e157614157906%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd157615157909%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd157615157909%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl157616157911%_))
                        (let ((_%e157617157914%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl157616157911%_))))
                          (let ((_%tl157619157919%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157617157914%_)))
                                (_%hd157618157917%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157617157914%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl157619157919%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl157613157903%_))
                                    (let ((_%e157620157922%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl157613157903%_))))
                                      (let ((_%tl157622157927%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e157620157922%_)))
                                            (_%hd157621157925%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e157620157922%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd157621157925%_))
                                            (let ((_%e157623157930%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd157621157925%_))))
                                              (let ((_%tl157625157935%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e157623157930%_)))
                                                    (_%hd157624157933%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e157623157930%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd157624157933%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd157624157933%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl157625157935%_))
                                                            (let ((_%e157626157938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl157625157935%_))))
                      (let ((_%tl157628157943%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e157626157938%_)))
                            (_%hd157627157941%_
                             (let ()
                               (declare (not safe))
                               (##car _%e157626157938%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl157628157943%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl157622157927%_))
                                (if (let ((__tmp161139
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl157622157927%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp161139 '1))
                                    (let ((_%__splice159869159870%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl157622157927%_
                                              '1))))
                                      (let ((_%tl157631157948%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice159869159870%_
                                                '1)))
                                            (_%target157629157946%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice159869159870%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl157631157948%_))
                                            (let ((_%e157638157951%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl157631157948%_))))
                                              (let ((_%tl157640157956%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e157638157951%_)))
                                                    (_%hd157639157954%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e157638157951%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd157639157954%_))
                                                    (let ((_%e157641157959%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd157639157954%_))))
                                                      (let ((_%tl157643157964%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e157641157959%_)))
                    (_%hd157642157962%_
                     (let () (declare (not safe)) (##car _%e157641157959%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd157642157962%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd157642157962%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl157643157964%_))
                            (let ((_%e157644157967%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl157643157964%_))))
                              (let ((_%tl157646157972%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e157644157967%_)))
                                    (_%hd157645157970%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e157644157967%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl157646157972%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl157640157956%_))
                                        (letrec ((_%loop157632157975%_
                                                  (lambda (_%hd157630157978%_
                                                           _%xarg157636157980%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd157630157978%_))
                                                        (let ((_%e157633157983%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd157630157978%_))))
                  (let ((_%lp-tl157635157988%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e157633157983%_)))
                        (_%lp-hd157634157986%_
                         (let ()
                           (declare (not safe))
                           (##car _%e157633157983%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd157634157986%_))
                        (let ((_%e157647157991%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd157634157986%_))))
                          (let ((_%tl157649157996%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157647157991%_)))
                                (_%hd157648157994%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157647157991%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd157648157994%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd157648157994%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl157649157996%_))
                                        (let ((_%e157650157999%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl157649157996%_))))
                                          (let ((_%tl157652158004%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e157650157999%_)))
                                                (_%hd157651158002%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e157650157999%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl157652158004%_))
                                                (_%loop157632157975%_
                                                 _%lp-tl157635157988%_
                                                 (cons _%hd157651158002%_
                                                       _%xarg157636157980%_))
                                                (_%__match159970159971%_
                                                 _%e157593157850%_
                                                 _%hd157594157853%_
                                                 _%tl157595157855%_
                                                 _%e157605157882%_
                                                 _%hd157606157885%_
                                                 _%tl157607157887%_
                                                 _%e157608157890%_
                                                 _%hd157609157893%_
                                                 _%tl157610157895%_
                                                 _%e157611157898%_
                                                 _%hd157612157901%_
                                                 _%tl157613157903%_
                                                 _%e157614157906%_
                                                 _%hd157615157909%_
                                                 _%tl157616157911%_
                                                 _%e157617157914%_
                                                 _%hd157618157917%_
                                                 _%tl157619157919%_
                                                 _%e157620157922%_
                                                 _%hd157621157925%_
                                                 _%tl157622157927%_
                                                 _%e157623157930%_
                                                 _%hd157624157933%_
                                                 _%tl157625157935%_
                                                 _%e157626157938%_
                                                 _%hd157627157941%_
                                                 _%tl157628157943%_))))
                                        (_%__match159970159971%_
                                         _%e157593157850%_
                                         _%hd157594157853%_
                                         _%tl157595157855%_
                                         _%e157605157882%_
                                         _%hd157606157885%_
                                         _%tl157607157887%_
                                         _%e157608157890%_
                                         _%hd157609157893%_
                                         _%tl157610157895%_
                                         _%e157611157898%_
                                         _%hd157612157901%_
                                         _%tl157613157903%_
                                         _%e157614157906%_
                                         _%hd157615157909%_
                                         _%tl157616157911%_
                                         _%e157617157914%_
                                         _%hd157618157917%_
                                         _%tl157619157919%_
                                         _%e157620157922%_
                                         _%hd157621157925%_
                                         _%tl157622157927%_
                                         _%e157623157930%_
                                         _%hd157624157933%_
                                         _%tl157625157935%_
                                         _%e157626157938%_
                                         _%hd157627157941%_
                                         _%tl157628157943%_))
                                    (_%__match159970159971%_
                                     _%e157593157850%_
                                     _%hd157594157853%_
                                     _%tl157595157855%_
                                     _%e157605157882%_
                                     _%hd157606157885%_
                                     _%tl157607157887%_
                                     _%e157608157890%_
                                     _%hd157609157893%_
                                     _%tl157610157895%_
                                     _%e157611157898%_
                                     _%hd157612157901%_
                                     _%tl157613157903%_
                                     _%e157614157906%_
                                     _%hd157615157909%_
                                     _%tl157616157911%_
                                     _%e157617157914%_
                                     _%hd157618157917%_
                                     _%tl157619157919%_
                                     _%e157620157922%_
                                     _%hd157621157925%_
                                     _%tl157622157927%_
                                     _%e157623157930%_
                                     _%hd157624157933%_
                                     _%tl157625157935%_
                                     _%e157626157938%_
                                     _%hd157627157941%_
                                     _%tl157628157943%_))
                                (_%__match159970159971%_
                                 _%e157593157850%_
                                 _%hd157594157853%_
                                 _%tl157595157855%_
                                 _%e157605157882%_
                                 _%hd157606157885%_
                                 _%tl157607157887%_
                                 _%e157608157890%_
                                 _%hd157609157893%_
                                 _%tl157610157895%_
                                 _%e157611157898%_
                                 _%hd157612157901%_
                                 _%tl157613157903%_
                                 _%e157614157906%_
                                 _%hd157615157909%_
                                 _%tl157616157911%_
                                 _%e157617157914%_
                                 _%hd157618157917%_
                                 _%tl157619157919%_
                                 _%e157620157922%_
                                 _%hd157621157925%_
                                 _%tl157622157927%_
                                 _%e157623157930%_
                                 _%hd157624157933%_
                                 _%tl157625157935%_
                                 _%e157626157938%_
                                 _%hd157627157941%_
                                 _%tl157628157943%_))))
                        (_%__match159970159971%_
                         _%e157593157850%_
                         _%hd157594157853%_
                         _%tl157595157855%_
                         _%e157605157882%_
                         _%hd157606157885%_
                         _%tl157607157887%_
                         _%e157608157890%_
                         _%hd157609157893%_
                         _%tl157610157895%_
                         _%e157611157898%_
                         _%hd157612157901%_
                         _%tl157613157903%_
                         _%e157614157906%_
                         _%hd157615157909%_
                         _%tl157616157911%_
                         _%e157617157914%_
                         _%hd157618157917%_
                         _%tl157619157919%_
                         _%e157620157922%_
                         _%hd157621157925%_
                         _%tl157622157927%_
                         _%e157623157930%_
                         _%hd157624157933%_
                         _%tl157625157935%_
                         _%e157626157938%_
                         _%hd157627157941%_
                         _%tl157628157943%_))))
                (let ((_%xarg157637158007%_ (reverse _%xarg157636157980%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl157607157887%_))
                      (let ((_%L158010%_ _%hd157645157970%_)
                            (_%L158011%_ _%xarg157637158007%_)
                            (_%L158012%_ _%hd157627157941%_)
                            (_%L158013%_ _%hd157618157917%_)
                            (_%L158014%_ _%tl157598157860%_)
                            (_%L158015%_ _%arg157604157879%_))
                        (if (and (let ((__tmp161140
                                        (let ((__tmp161141
                                               (lambda (_%g158058158061%_
                                                        _%g158059158063%_)
                                                 (cons _%g158058158061%_
                                                       _%g158059158063%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp161141
                                           '()
                                           _%L158015%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp161140))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L158014%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L158013%_
                                    'apply))
                                 (let ((__tmp161144
                                        (length (let ((__tmp161145
                                                       (lambda (_%g158065158068%_
                                                                _%g158066158070%_)
                                                         (cons _%g158065158068%_
                                                               _%g158066158070%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp161145
                                                   '()
                                                   _%L158015%_))))
                                       (__tmp161142
                                        (length (let ((__tmp161143
                                                       (lambda (_%g158072158075%_
                                                                _%g158073158077%_)
                                                         (cons _%g158072158075%_
                                                               _%g158073158077%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp161143
                                                   '()
                                                   _%L158011%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp161144 __tmp161142))
                                 (let ((__tmp161148
                                        (let ((__tmp161149
                                               (lambda (_%g158079158082%_
                                                        _%g158080158084%_)
                                                 (cons _%g158079158082%_
                                                       _%g158080158084%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp161149
                                           '()
                                           _%L158015%_)))
                                       (__tmp161146
                                        (let ((__tmp161147
                                               (lambda (_%g158086158089%_
                                                        _%g158087158091%_)
                                                 (cons _%g158086158089%_
                                                       _%g158087158091%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp161147
                                           '()
                                           _%L158011%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp161148
                                    __tmp161146))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L158014%_
                                    _%L158010%_))
                                 (not (let ((__tmp161153
                                             (lambda (_%g158093158095%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g158093158095%_
                                                  _%L158012%_))))
                                            (__tmp161150
                                             (let ((__tmp161152
                                                    (lambda (_%g158097158100%_
                                                             _%g158098158102%_)
                                                      (cons _%g158097158100%_
                                                            _%g158098158102%_)))
                                                   (__tmp161151
                                                    (cons _%L158014%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp161152
                                                __tmp161151
                                                _%L158015%_))))
                                        (declare (not safe))
                                        (__find __tmp161153 __tmp161150))))
                            (_%__kont159865159866%_
                             _%L158010%_
                             _%L158011%_
                             _%L158012%_
                             _%L158013%_
                             _%L158014%_
                             _%L158015%_)
                            (_%__match159970159971%_
                             _%e157593157850%_
                             _%hd157594157853%_
                             _%tl157595157855%_
                             _%e157605157882%_
                             _%hd157606157885%_
                             _%tl157607157887%_
                             _%e157608157890%_
                             _%hd157609157893%_
                             _%tl157610157895%_
                             _%e157611157898%_
                             _%hd157612157901%_
                             _%tl157613157903%_
                             _%e157614157906%_
                             _%hd157615157909%_
                             _%tl157616157911%_
                             _%e157617157914%_
                             _%hd157618157917%_
                             _%tl157619157919%_
                             _%e157620157922%_
                             _%hd157621157925%_
                             _%tl157622157927%_
                             _%e157623157930%_
                             _%hd157624157933%_
                             _%tl157625157935%_
                             _%e157626157938%_
                             _%hd157627157941%_
                             _%tl157628157943%_)))
                      (_%__match159970159971%_
                       _%e157593157850%_
                       _%hd157594157853%_
                       _%tl157595157855%_
                       _%e157605157882%_
                       _%hd157606157885%_
                       _%tl157607157887%_
                       _%e157608157890%_
                       _%hd157609157893%_
                       _%tl157610157895%_
                       _%e157611157898%_
                       _%hd157612157901%_
                       _%tl157613157903%_
                       _%e157614157906%_
                       _%hd157615157909%_
                       _%tl157616157911%_
                       _%e157617157914%_
                       _%hd157618157917%_
                       _%tl157619157919%_
                       _%e157620157922%_
                       _%hd157621157925%_
                       _%tl157622157927%_
                       _%e157623157930%_
                       _%hd157624157933%_
                       _%tl157625157935%_
                       _%e157626157938%_
                       _%hd157627157941%_
                       _%tl157628157943%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop157632157975%_
                                           _%target157629157946%_
                                           '()))
                                        (_%__match159970159971%_
                                         _%e157593157850%_
                                         _%hd157594157853%_
                                         _%tl157595157855%_
                                         _%e157605157882%_
                                         _%hd157606157885%_
                                         _%tl157607157887%_
                                         _%e157608157890%_
                                         _%hd157609157893%_
                                         _%tl157610157895%_
                                         _%e157611157898%_
                                         _%hd157612157901%_
                                         _%tl157613157903%_
                                         _%e157614157906%_
                                         _%hd157615157909%_
                                         _%tl157616157911%_
                                         _%e157617157914%_
                                         _%hd157618157917%_
                                         _%tl157619157919%_
                                         _%e157620157922%_
                                         _%hd157621157925%_
                                         _%tl157622157927%_
                                         _%e157623157930%_
                                         _%hd157624157933%_
                                         _%tl157625157935%_
                                         _%e157626157938%_
                                         _%hd157627157941%_
                                         _%tl157628157943%_))
                                    (_%__match159970159971%_
                                     _%e157593157850%_
                                     _%hd157594157853%_
                                     _%tl157595157855%_
                                     _%e157605157882%_
                                     _%hd157606157885%_
                                     _%tl157607157887%_
                                     _%e157608157890%_
                                     _%hd157609157893%_
                                     _%tl157610157895%_
                                     _%e157611157898%_
                                     _%hd157612157901%_
                                     _%tl157613157903%_
                                     _%e157614157906%_
                                     _%hd157615157909%_
                                     _%tl157616157911%_
                                     _%e157617157914%_
                                     _%hd157618157917%_
                                     _%tl157619157919%_
                                     _%e157620157922%_
                                     _%hd157621157925%_
                                     _%tl157622157927%_
                                     _%e157623157930%_
                                     _%hd157624157933%_
                                     _%tl157625157935%_
                                     _%e157626157938%_
                                     _%hd157627157941%_
                                     _%tl157628157943%_))))
                            (_%__match159970159971%_
                             _%e157593157850%_
                             _%hd157594157853%_
                             _%tl157595157855%_
                             _%e157605157882%_
                             _%hd157606157885%_
                             _%tl157607157887%_
                             _%e157608157890%_
                             _%hd157609157893%_
                             _%tl157610157895%_
                             _%e157611157898%_
                             _%hd157612157901%_
                             _%tl157613157903%_
                             _%e157614157906%_
                             _%hd157615157909%_
                             _%tl157616157911%_
                             _%e157617157914%_
                             _%hd157618157917%_
                             _%tl157619157919%_
                             _%e157620157922%_
                             _%hd157621157925%_
                             _%tl157622157927%_
                             _%e157623157930%_
                             _%hd157624157933%_
                             _%tl157625157935%_
                             _%e157626157938%_
                             _%hd157627157941%_
                             _%tl157628157943%_))
                        (_%__match159970159971%_
                         _%e157593157850%_
                         _%hd157594157853%_
                         _%tl157595157855%_
                         _%e157605157882%_
                         _%hd157606157885%_
                         _%tl157607157887%_
                         _%e157608157890%_
                         _%hd157609157893%_
                         _%tl157610157895%_
                         _%e157611157898%_
                         _%hd157612157901%_
                         _%tl157613157903%_
                         _%e157614157906%_
                         _%hd157615157909%_
                         _%tl157616157911%_
                         _%e157617157914%_
                         _%hd157618157917%_
                         _%tl157619157919%_
                         _%e157620157922%_
                         _%hd157621157925%_
                         _%tl157622157927%_
                         _%e157623157930%_
                         _%hd157624157933%_
                         _%tl157625157935%_
                         _%e157626157938%_
                         _%hd157627157941%_
                         _%tl157628157943%_))
                    (_%__match159970159971%_
                     _%e157593157850%_
                     _%hd157594157853%_
                     _%tl157595157855%_
                     _%e157605157882%_
                     _%hd157606157885%_
                     _%tl157607157887%_
                     _%e157608157890%_
                     _%hd157609157893%_
                     _%tl157610157895%_
                     _%e157611157898%_
                     _%hd157612157901%_
                     _%tl157613157903%_
                     _%e157614157906%_
                     _%hd157615157909%_
                     _%tl157616157911%_
                     _%e157617157914%_
                     _%hd157618157917%_
                     _%tl157619157919%_
                     _%e157620157922%_
                     _%hd157621157925%_
                     _%tl157622157927%_
                     _%e157623157930%_
                     _%hd157624157933%_
                     _%tl157625157935%_
                     _%e157626157938%_
                     _%hd157627157941%_
                     _%tl157628157943%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match159970159971%_
                                                     _%e157593157850%_
                                                     _%hd157594157853%_
                                                     _%tl157595157855%_
                                                     _%e157605157882%_
                                                     _%hd157606157885%_
                                                     _%tl157607157887%_
                                                     _%e157608157890%_
                                                     _%hd157609157893%_
                                                     _%tl157610157895%_
                                                     _%e157611157898%_
                                                     _%hd157612157901%_
                                                     _%tl157613157903%_
                                                     _%e157614157906%_
                                                     _%hd157615157909%_
                                                     _%tl157616157911%_
                                                     _%e157617157914%_
                                                     _%hd157618157917%_
                                                     _%tl157619157919%_
                                                     _%e157620157922%_
                                                     _%hd157621157925%_
                                                     _%tl157622157927%_
                                                     _%e157623157930%_
                                                     _%hd157624157933%_
                                                     _%tl157625157935%_
                                                     _%e157626157938%_
                                                     _%hd157627157941%_
                                                     _%tl157628157943%_))))
                                            (_%__match159970159971%_
                                             _%e157593157850%_
                                             _%hd157594157853%_
                                             _%tl157595157855%_
                                             _%e157605157882%_
                                             _%hd157606157885%_
                                             _%tl157607157887%_
                                             _%e157608157890%_
                                             _%hd157609157893%_
                                             _%tl157610157895%_
                                             _%e157611157898%_
                                             _%hd157612157901%_
                                             _%tl157613157903%_
                                             _%e157614157906%_
                                             _%hd157615157909%_
                                             _%tl157616157911%_
                                             _%e157617157914%_
                                             _%hd157618157917%_
                                             _%tl157619157919%_
                                             _%e157620157922%_
                                             _%hd157621157925%_
                                             _%tl157622157927%_
                                             _%e157623157930%_
                                             _%hd157624157933%_
                                             _%tl157625157935%_
                                             _%e157626157938%_
                                             _%hd157627157941%_
                                             _%tl157628157943%_))))
                                    (_%__match159970159971%_
                                     _%e157593157850%_
                                     _%hd157594157853%_
                                     _%tl157595157855%_
                                     _%e157605157882%_
                                     _%hd157606157885%_
                                     _%tl157607157887%_
                                     _%e157608157890%_
                                     _%hd157609157893%_
                                     _%tl157610157895%_
                                     _%e157611157898%_
                                     _%hd157612157901%_
                                     _%tl157613157903%_
                                     _%e157614157906%_
                                     _%hd157615157909%_
                                     _%tl157616157911%_
                                     _%e157617157914%_
                                     _%hd157618157917%_
                                     _%tl157619157919%_
                                     _%e157620157922%_
                                     _%hd157621157925%_
                                     _%tl157622157927%_
                                     _%e157623157930%_
                                     _%hd157624157933%_
                                     _%tl157625157935%_
                                     _%e157626157938%_
                                     _%hd157627157941%_
                                     _%tl157628157943%_))
                                (_%__match159970159971%_
                                 _%e157593157850%_
                                 _%hd157594157853%_
                                 _%tl157595157855%_
                                 _%e157605157882%_
                                 _%hd157606157885%_
                                 _%tl157607157887%_
                                 _%e157608157890%_
                                 _%hd157609157893%_
                                 _%tl157610157895%_
                                 _%e157611157898%_
                                 _%hd157612157901%_
                                 _%tl157613157903%_
                                 _%e157614157906%_
                                 _%hd157615157909%_
                                 _%tl157616157911%_
                                 _%e157617157914%_
                                 _%hd157618157917%_
                                 _%tl157619157919%_
                                 _%e157620157922%_
                                 _%hd157621157925%_
                                 _%tl157622157927%_
                                 _%e157623157930%_
                                 _%hd157624157933%_
                                 _%tl157625157935%_
                                 _%e157626157938%_
                                 _%hd157627157941%_
                                 _%tl157628157943%_))
                            (_%__kont159873159874%_))))
                    (_%__kont159873159874%_))
                (_%__kont159873159874%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont159873159874%_))))
                                            (_%__kont159873159874%_))))
                                    (_%__kont159873159874%_))
                                (_%__kont159873159874%_))))
                        (_%__kont159873159874%_))
                    (_%__kont159873159874%_))
                (_%__kont159873159874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont159873159874%_))))
                                        (_%__kont159873159874%_))
                                    (_%__kont159873159874%_))
                                (_%__kont159873159874%_))))
                        (_%__kont159873159874%_))))
                (_%__kont159873159874%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop157599157863%_
                                     _%target157596157858%_
                                     '()))))
                               (_%__match159888159889%_
                                (lambda (_%e157545158110%_
                                         _%hd157546158113%_
                                         _%tl157547158115%_
                                         _%__splice159861159862%_
                                         _%target157548158118%_
                                         _%tl157550158120%_)
                                  (letrec ((_%loop157551158123%_
                                            (lambda (_%hd157549158126%_
                                                     _%arg157555158128%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157549158126%_))
                                                  (let ((_%e157552158131%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157549158126%_))))
                                                    (let ((_%lp-tl157554158136%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157552158131%_)))
                                                          (_%lp-hd157553158134%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157552158131%_))))
                                                      (_%loop157551158123%_
                                                       _%lp-tl157554158136%_
                                                       (cons _%lp-hd157553158134%_
                                                             _%arg157555158128%_))))
                                                  (let ((_%arg157556158139%_
                                                         (reverse _%arg157555158128%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl157547158115%_))
                                                        (let ((_%e157557158142%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl157547158115%_))))
                  (let ((_%tl157559158147%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e157557158142%_)))
                        (_%hd157558158145%_
                         (let ()
                           (declare (not safe))
                           (##car _%e157557158142%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd157558158145%_))
                        (let ((_%e157560158150%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd157558158145%_))))
                          (let ((_%tl157562158155%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157560158150%_)))
                                (_%hd157561158153%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157560158150%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd157561158153%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd157561158153%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl157562158155%_))
                                        (let ((_%e157563158158%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl157562158155%_))))
                                          (let ((_%tl157565158163%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e157563158158%_)))
                                                (_%hd157564158161%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e157563158158%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd157564158161%_))
                                                (let ((_%e157566158166%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd157564158161%_))))
                                                  (let ((_%tl157568158171%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e157566158166%_)))
                                                        (_%hd157567158169%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e157566158166%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd157567158169%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd157567158169%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl157568158171%_))
                        (let ((_%e157569158174%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl157568158171%_))))
                          (let ((_%tl157571158179%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157569158174%_)))
                                (_%hd157570158177%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157569158174%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl157571158179%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl157565158163%_))
                                    (let ((_%__splice159863159864%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl157565158163%_
                                              '0))))
                                      (let ((_%tl157574158184%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice159863159864%_
                                                '1)))
                                            (_%target157572158182%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice159863159864%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl157574158184%_))
                                            (letrec ((_%loop157575158187%_
                                                      (lambda (_%hd157573158190%_
                                                               _%xarg157579158192%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd157573158190%_))
                                                            (let ((_%e157576158195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd157573158190%_))))
                      (let ((_%lp-tl157578158200%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e157576158195%_)))
                            (_%lp-hd157577158198%_
                             (let ()
                               (declare (not safe))
                               (##car _%e157576158195%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd157577158198%_))
                            (let ((_%e157581158203%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd157577158198%_))))
                              (let ((_%tl157583158208%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e157581158203%_)))
                                    (_%hd157582158206%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e157581158203%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd157582158206%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd157582158206%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl157583158208%_))
                                            (let ((_%e157584158211%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl157583158208%_))))
                                              (let ((_%tl157586158216%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e157584158211%_)))
                                                    (_%hd157585158214%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e157584158211%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl157586158216%_))
                                                    (_%loop157575158187%_
                                                     _%lp-tl157578158200%_
                                                     (cons _%hd157585158214%_
                                                           _%xarg157579158192%_))
                                                    (_%__match159900159901%_
                                                     _%e157545158110%_
                                                     _%hd157546158113%_
                                                     _%tl157547158115%_
                                                     _%__splice159861159862%_
                                                     _%target157548158118%_
                                                     _%tl157550158120%_))))
                                            (_%__match159900159901%_
                                             _%e157545158110%_
                                             _%hd157546158113%_
                                             _%tl157547158115%_
                                             _%__splice159861159862%_
                                             _%target157548158118%_
                                             _%tl157550158120%_))
                                        (_%__match159900159901%_
                                         _%e157545158110%_
                                         _%hd157546158113%_
                                         _%tl157547158115%_
                                         _%__splice159861159862%_
                                         _%target157548158118%_
                                         _%tl157550158120%_))
                                    (_%__match159900159901%_
                                     _%e157545158110%_
                                     _%hd157546158113%_
                                     _%tl157547158115%_
                                     _%__splice159861159862%_
                                     _%target157548158118%_
                                     _%tl157550158120%_))))
                            (_%__match159900159901%_
                             _%e157545158110%_
                             _%hd157546158113%_
                             _%tl157547158115%_
                             _%__splice159861159862%_
                             _%target157548158118%_
                             _%tl157550158120%_))))
                    (let ((_%xarg157580158219%_
                           (reverse _%xarg157579158192%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl157559158147%_))
                          (let ((_%L158222%_ _%xarg157580158219%_)
                                (_%L158223%_ _%hd157570158177%_)
                                (_%L158224%_ _%arg157556158139%_))
                            (if (and (let ((__tmp161154
                                            (let ((__tmp161155
                                                   (lambda (_%g158252158255%_
                                                            _%g158253158257%_)
                                                     (cons _%g158252158255%_
                                                           _%g158253158257%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp161155
                                               '()
                                               _%L158224%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp161154))
                                     (let ((__tmp161158
                                            (length (let ((__tmp161159
                                                           (lambda (_%g158259158262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g158260158264%_)
                     (cons _%g158259158262%_ _%g158260158264%_))))
              (declare (not safe))
              (__foldr1 __tmp161159 '() _%L158224%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp161156
                                            (length (let ((__tmp161157
                                                           (lambda (_%g158266158269%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g158267158271%_)
                     (cons _%g158266158269%_ _%g158267158271%_))))
              (declare (not safe))
              (__foldr1 __tmp161157 '() _%L158222%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp161158 __tmp161156))
                                     (let ((__tmp161162
                                            (let ((__tmp161163
                                                   (lambda (_%g158273158276%_
                                                            _%g158274158278%_)
                                                     (cons _%g158273158276%_
                                                           _%g158274158278%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp161163
                                               '()
                                               _%L158224%_)))
                                           (__tmp161160
                                            (let ((__tmp161161
                                                   (lambda (_%g158280158283%_
                                                            _%g158281158285%_)
                                                     (cons _%g158280158283%_
                                                           _%g158281158285%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp161161
                                               '()
                                               _%L158222%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp161162
                                        __tmp161160))
                                     (not (let ((__tmp161166
                                                 (lambda (_%g158287158289%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g158287158289%_
                                                      _%L158223%_))))
                                                (__tmp161164
                                                 (let ((__tmp161165
                                                        (lambda (_%g158291158294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g158292158296%_)
                  (cons _%g158291158294%_ _%g158292158296%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp161165
                                                    '()
                                                    _%L158224%_))))
                                            (declare (not safe))
                                            (__find __tmp161166 __tmp161164))))
                                (_%__kont159859159860%_
                                 _%L158222%_
                                 _%L158223%_
                                 _%L158224%_)
                                (_%__match159900159901%_
                                 _%e157545158110%_
                                 _%hd157546158113%_
                                 _%tl157547158115%_
                                 _%__splice159861159862%_
                                 _%target157548158118%_
                                 _%tl157550158120%_)))
                          (_%__match159900159901%_
                           _%e157545158110%_
                           _%hd157546158113%_
                           _%tl157547158115%_
                           _%__splice159861159862%_
                           _%target157548158118%_
                           _%tl157550158120%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop157575158187%_
                                               _%target157572158182%_
                                               '()))
                                            (_%__match159900159901%_
                                             _%e157545158110%_
                                             _%hd157546158113%_
                                             _%tl157547158115%_
                                             _%__splice159861159862%_
                                             _%target157548158118%_
                                             _%tl157550158120%_))))
                                    (_%__match159900159901%_
                                     _%e157545158110%_
                                     _%hd157546158113%_
                                     _%tl157547158115%_
                                     _%__splice159861159862%_
                                     _%target157548158118%_
                                     _%tl157550158120%_))
                                (_%__match159900159901%_
                                 _%e157545158110%_
                                 _%hd157546158113%_
                                 _%tl157547158115%_
                                 _%__splice159861159862%_
                                 _%target157548158118%_
                                 _%tl157550158120%_))))
                        (_%__match159900159901%_
                         _%e157545158110%_
                         _%hd157546158113%_
                         _%tl157547158115%_
                         _%__splice159861159862%_
                         _%target157548158118%_
                         _%tl157550158120%_))
                    (_%__match159900159901%_
                     _%e157545158110%_
                     _%hd157546158113%_
                     _%tl157547158115%_
                     _%__splice159861159862%_
                     _%target157548158118%_
                     _%tl157550158120%_))
                (_%__match159900159901%_
                 _%e157545158110%_
                 _%hd157546158113%_
                 _%tl157547158115%_
                 _%__splice159861159862%_
                 _%target157548158118%_
                 _%tl157550158120%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match159900159901%_
                                                 _%e157545158110%_
                                                 _%hd157546158113%_
                                                 _%tl157547158115%_
                                                 _%__splice159861159862%_
                                                 _%target157548158118%_
                                                 _%tl157550158120%_))))
                                        (_%__match159900159901%_
                                         _%e157545158110%_
                                         _%hd157546158113%_
                                         _%tl157547158115%_
                                         _%__splice159861159862%_
                                         _%target157548158118%_
                                         _%tl157550158120%_))
                                    (_%__match159900159901%_
                                     _%e157545158110%_
                                     _%hd157546158113%_
                                     _%tl157547158115%_
                                     _%__splice159861159862%_
                                     _%target157548158118%_
                                     _%tl157550158120%_))
                                (_%__match159900159901%_
                                 _%e157545158110%_
                                 _%hd157546158113%_
                                 _%tl157547158115%_
                                 _%__splice159861159862%_
                                 _%target157548158118%_
                                 _%tl157550158120%_))))
                        (_%__match159900159901%_
                         _%e157545158110%_
                         _%hd157546158113%_
                         _%tl157547158115%_
                         _%__splice159861159862%_
                         _%target157548158118%_
                         _%tl157550158120%_))))
                (_%__match159900159901%_
                 _%e157545158110%_
                 _%hd157546158113%_
                 _%tl157547158115%_
                 _%__splice159861159862%_
                 _%target157548158118%_
                 _%tl157550158120%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop157551158123%_
                                     _%target157548158118%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx159857159858%_))
                              (let ((_%e157545158110%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx159857159858%_))))
                                (let ((_%tl157547158115%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157545158110%_)))
                                      (_%hd157546158113%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157545158110%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd157546158113%_))
                                      (let ((_%__splice159861159862%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd157546158113%_
                                                '0))))
                                        (let ((_%tl157550158120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice159861159862%_
                                                  '1)))
                                              (_%target157548158118%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice159861159862%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl157550158120%_))
                                              (_%__match159888159889%_
                                               _%e157545158110%_
                                               _%hd157546158113%_
                                               _%tl157547158115%_
                                               _%__splice159861159862%_
                                               _%target157548158118%_
                                               _%tl157550158120%_)
                                              (_%__match159900159901%_
                                               _%e157545158110%_
                                               _%hd157546158113%_
                                               _%tl157547158115%_
                                               _%__splice159861159862%_
                                               _%target157548158118%_
                                               _%tl157550158120%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl157547158115%_))
                                          (let ((_%e157660157717%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl157547158115%_))))
                                            (let ((_%tl157662157722%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e157660157717%_)))
                                                  (_%hd157661157720%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e157660157717%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157661157720%_))
                                                  (let ((_%e157663157725%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157661157720%_))))
                                                    (let ((_%tl157665157730%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157663157725%_)))
                                                          (_%hd157664157728%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157663157725%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd157664157728%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd157664157728%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl157665157730%_))
                          (let ((_%e157666157733%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl157665157730%_))))
                            (let ((_%tl157668157738%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e157666157733%_)))
                                  (_%hd157667157736%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e157666157733%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd157667157736%_))
                                  (let ((_%e157669157741%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd157667157736%_))))
                                    (let ((_%tl157671157746%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e157669157741%_)))
                                          (_%hd157670157744%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e157669157741%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd157670157744%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd157670157744%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl157671157746%_))
                                                  (let ((_%e157672157749%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl157671157746%_))))
                                                    (let ((_%tl157674157754%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157672157749%_)))
                                                          (_%hd157673157752%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157672157749%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl157674157754%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl157668157738%_))
                      (let ((_%e157675157757%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl157668157738%_))))
                        (let ((_%tl157677157762%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157675157757%_)))
                              (_%hd157676157760%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157675157757%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd157676157760%_))
                              (let ((_%e157678157765%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd157676157760%_))))
                                (let ((_%tl157680157770%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157678157765%_)))
                                      (_%hd157679157768%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157678157765%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd157679157768%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd157679157768%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl157680157770%_))
                                              (let ((_%e157681157773%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl157680157770%_))))
                                                (let ((_%tl157683157778%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e157681157773%_)))
                                                      (_%hd157682157776%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e157681157773%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl157683157778%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl157677157762%_))
                                                          (let ((_%e157684157781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl157677157762%_))))
                    (let ((_%tl157686157786%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e157684157781%_)))
                          (_%hd157685157784%_
                           (let ()
                             (declare (not safe))
                             (##car _%e157684157781%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd157685157784%_))
                          (let ((_%e157687157789%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd157685157784%_))))
                            (let ((_%tl157689157794%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e157687157789%_)))
                                  (_%hd157688157792%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e157687157789%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd157688157792%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd157688157792%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl157689157794%_))
                                          (let ((_%e157690157797%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl157689157794%_))))
                                            (let ((_%tl157692157802%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e157690157797%_)))
                                                  (_%hd157691157800%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e157690157797%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl157692157802%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl157686157786%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl157662157722%_))
                                                          (_%__match159998159999%_
                                                           _%e157545158110%_
                                                           _%hd157546158113%_
                                                           _%tl157547158115%_
                                                           _%e157660157717%_
                                                           _%hd157661157720%_
                                                           _%tl157662157722%_
                                                           _%e157663157725%_
                                                           _%hd157664157728%_
                                                           _%tl157665157730%_
                                                           _%e157666157733%_
                                                           _%hd157667157736%_
                                                           _%tl157668157738%_
                                                           _%e157669157741%_
                                                           _%hd157670157744%_
                                                           _%tl157671157746%_
                                                           _%e157672157749%_
                                                           _%hd157673157752%_
                                                           _%tl157674157754%_
                                                           _%e157675157757%_
                                                           _%hd157676157760%_
                                                           _%tl157677157762%_
                                                           _%e157678157765%_
                                                           _%hd157679157768%_
                                                           _%tl157680157770%_
                                                           _%e157681157773%_
                                                           _%hd157682157776%_
                                                           _%tl157683157778%_
                                                           _%e157684157781%_
                                                           _%hd157685157784%_
                                                           _%tl157686157786%_
                                                           _%e157687157789%_
                                                           _%hd157688157792%_
                                                           _%tl157689157794%_
                                                           _%e157690157797%_
                                                           _%hd157691157800%_
                                                           _%tl157692157802%_)
                                                          (_%__kont159873159874%_))
                                                      (_%__kont159873159874%_))
                                                  (_%__kont159873159874%_))))
                                          (_%__kont159873159874%_))
                                      (_%__kont159873159874%_))
                                  (_%__kont159873159874%_))))
                          (_%__kont159873159874%_))))
                  (_%__kont159873159874%_))
              (_%__kont159873159874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont159873159874%_))
                                          (_%__kont159873159874%_))
                                      (_%__kont159873159874%_))))
                              (_%__kont159873159874%_))))
                      (_%__kont159873159874%_))
                  (_%__kont159873159874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont159873159874%_))
                                              (_%__kont159873159874%_))
                                          (_%__kont159873159874%_))))
                                  (_%__kont159873159874%_))))
                          (_%__kont159873159874%_))
                      (_%__kont159873159874%_))
                  (_%__kont159873159874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont159873159874%_))))
                                          (_%__kont159873159874%_)))))
                              (_%__kont159873159874%_)))))))
                 (_%dispatch-case-e156845%_
                  (lambda (_%hd156996%_ _%body156997%_)
                    (let* ((_%form156999%_
                            (cons _%hd156996%_ (cons _%body156997%_ '())))
                           (_%__stx160001160002%_ _%form156999%_)
                           (_%g157003157127%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx160001160002%_)))))
                      (let ((_%__kont160003160004%_
                             (lambda (_%L157498%_ _%L157499%_ _%L157500%_)
                               (let ((__tmp161167
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L157499%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self156841%_
                                  __tmp161167))))
                            (_%__kont160009160010%_
                             (lambda (_%L157346%_
                                      _%L157347%_
                                      _%L157348%_
                                      _%L157349%_)
                               (let ((__tmp161168
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L157346%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self156841%_
                                  __tmp161168))))
                            (_%__kont160013160014%_
                             (lambda (_%L157212%_ _%L157213%_ _%L157214%_)
                               (let ((__tmp161169
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L157212%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self156841%_
                                  __tmp161169)))))
                        (let* ((_%__match160110160111%_
                                (lambda (_%e157093157132%_
                                         _%hd157094157135%_
                                         _%tl157095157137%_
                                         _%e157096157140%_
                                         _%hd157097157143%_
                                         _%tl157098157145%_
                                         _%e157099157148%_
                                         _%hd157100157151%_
                                         _%tl157101157153%_
                                         _%e157102157156%_
                                         _%hd157103157159%_
                                         _%tl157104157161%_
                                         _%e157105157164%_
                                         _%hd157106157167%_
                                         _%tl157107157169%_
                                         _%e157108157172%_
                                         _%hd157109157175%_
                                         _%tl157110157177%_
                                         _%e157111157180%_
                                         _%hd157112157183%_
                                         _%tl157113157185%_
                                         _%e157114157188%_
                                         _%hd157115157191%_
                                         _%tl157116157193%_
                                         _%e157117157196%_
                                         _%hd157118157199%_
                                         _%tl157119157201%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl157113157185%_))
                                      (let ((_%e157120157204%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl157113157185%_))))
                                        (let ((_%tl157122157209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e157120157204%_)))
                                              (_%hd157121157207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e157120157204%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl157122157209%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl157098157145%_))
                                                  (_%__kont160013160014%_
                                                   _%hd157118157199%_
                                                   _%hd157109157175%_
                                                   _%hd157094157135%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g157003157127%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g157003157127%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g157003157127%_)))))
                               (_%__match160040160041%_
                                (lambda (_%e157054157250%_
                                         _%hd157055157253%_
                                         _%tl157056157255%_
                                         _%__splice160011160012%_
                                         _%target157057157258%_
                                         _%tl157059157260%_)
                                  (letrec ((_%loop157060157263%_
                                            (lambda (_%hd157058157266%_
                                                     _%arg157064157268%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157058157266%_))
                                                  (let ((_%e157061157271%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157058157266%_))))
                                                    (let ((_%lp-tl157063157276%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157061157271%_)))
                                                          (_%lp-hd157062157274%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157061157271%_))))
                                                      (_%loop157060157263%_
                                                       _%lp-tl157063157276%_
                                                       (cons _%lp-hd157062157274%_
                                                             _%arg157064157268%_))))
                                                  (let ((_%arg157065157279%_
                                                         (reverse _%arg157064157268%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl157056157255%_))
                                                        (let ((_%e157066157282%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl157056157255%_))))
                  (let ((_%tl157068157287%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e157066157282%_)))
                        (_%hd157067157285%_
                         (let ()
                           (declare (not safe))
                           (##car _%e157066157282%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd157067157285%_))
                        (let ((_%e157069157290%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd157067157285%_))))
                          (let ((_%tl157071157295%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157069157290%_)))
                                (_%hd157070157293%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157069157290%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd157070157293%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd157070157293%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl157071157295%_))
                                        (let ((_%e157072157298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl157071157295%_))))
                                          (let ((_%tl157074157303%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e157072157298%_)))
                                                (_%hd157073157301%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e157072157298%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd157073157301%_))
                                                (let ((_%e157075157306%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd157073157301%_))))
                                                  (let ((_%tl157077157311%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e157075157306%_)))
                                                        (_%hd157076157309%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e157075157306%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd157076157309%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd157076157309%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl157077157311%_))
                        (let ((_%e157078157314%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl157077157311%_))))
                          (let ((_%tl157080157319%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157078157314%_)))
                                (_%hd157079157317%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157078157314%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl157080157319%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl157074157303%_))
                                    (let ((_%e157081157322%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl157074157303%_))))
                                      (let ((_%tl157083157327%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e157081157322%_)))
                                            (_%hd157082157325%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e157081157322%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd157082157325%_))
                                            (let ((_%e157084157330%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd157082157325%_))))
                                              (let ((_%tl157086157335%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e157084157330%_)))
                                                    (_%hd157085157333%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e157084157330%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd157085157333%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd157085157333%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl157086157335%_))
                                                            (let ((_%e157087157338%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl157086157335%_))))
                      (let ((_%tl157089157343%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e157087157338%_)))
                            (_%hd157088157341%_
                             (let ()
                               (declare (not safe))
                               (##car _%e157087157338%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl157089157343%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl157068157287%_))
                                (_%__kont160009160010%_
                                 _%hd157088157341%_
                                 _%hd157079157317%_
                                 _%tl157059157260%_
                                 _%arg157065157279%_)
                                (_%__match160110160111%_
                                 _%e157054157250%_
                                 _%hd157055157253%_
                                 _%tl157056157255%_
                                 _%e157066157282%_
                                 _%hd157067157285%_
                                 _%tl157068157287%_
                                 _%e157069157290%_
                                 _%hd157070157293%_
                                 _%tl157071157295%_
                                 _%e157072157298%_
                                 _%hd157073157301%_
                                 _%tl157074157303%_
                                 _%e157075157306%_
                                 _%hd157076157309%_
                                 _%tl157077157311%_
                                 _%e157078157314%_
                                 _%hd157079157317%_
                                 _%tl157080157319%_
                                 _%e157081157322%_
                                 _%hd157082157325%_
                                 _%tl157083157327%_
                                 _%e157084157330%_
                                 _%hd157085157333%_
                                 _%tl157086157335%_
                                 _%e157087157338%_
                                 _%hd157088157341%_
                                 _%tl157089157343%_))
                            (let ()
                              (declare (not safe))
                              (_%g157003157127%_)))))
                    (let () (declare (not safe)) (_%g157003157127%_)))
                (let () (declare (not safe)) (_%g157003157127%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g157003157127%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g157003157127%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g157003157127%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g157003157127%_)))))
                        (let () (declare (not safe)) (_%g157003157127%_)))
                    (let () (declare (not safe)) (_%g157003157127%_)))
                (let () (declare (not safe)) (_%g157003157127%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g157003157127%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g157003157127%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g157003157127%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g157003157127%_)))))
                        (let () (declare (not safe)) (_%g157003157127%_)))))
                (let () (declare (not safe)) (_%g157003157127%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop157060157263%_
                                     _%target157057157258%_
                                     '()))))
                               (_%__match160028160029%_
                                (lambda (_%e157008157386%_
                                         _%hd157009157389%_
                                         _%tl157010157391%_
                                         _%__splice160005160006%_
                                         _%target157011157394%_
                                         _%tl157013157396%_)
                                  (letrec ((_%loop157014157399%_
                                            (lambda (_%hd157012157402%_
                                                     _%arg157018157404%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157012157402%_))
                                                  (let ((_%e157015157407%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157012157402%_))))
                                                    (let ((_%lp-tl157017157412%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157015157407%_)))
                                                          (_%lp-hd157016157410%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157015157407%_))))
                                                      (_%loop157014157399%_
                                                       _%lp-tl157017157412%_
                                                       (cons _%lp-hd157016157410%_
                                                             _%arg157018157404%_))))
                                                  (let ((_%arg157019157415%_
                                                         (reverse _%arg157018157404%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl157010157391%_))
                                                        (let ((_%e157020157418%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl157010157391%_))))
                  (let ((_%tl157022157423%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e157020157418%_)))
                        (_%hd157021157421%_
                         (let ()
                           (declare (not safe))
                           (##car _%e157020157418%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd157021157421%_))
                        (let ((_%e157023157426%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd157021157421%_))))
                          (let ((_%tl157025157431%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157023157426%_)))
                                (_%hd157024157429%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157023157426%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd157024157429%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd157024157429%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl157025157431%_))
                                        (let ((_%e157026157434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl157025157431%_))))
                                          (let ((_%tl157028157439%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e157026157434%_)))
                                                (_%hd157027157437%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e157026157434%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd157027157437%_))
                                                (let ((_%e157029157442%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd157027157437%_))))
                                                  (let ((_%tl157031157447%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e157029157442%_)))
                                                        (_%hd157030157445%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e157029157442%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd157030157445%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd157030157445%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl157031157447%_))
                        (let ((_%e157032157450%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl157031157447%_))))
                          (let ((_%tl157034157455%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157032157450%_)))
                                (_%hd157033157453%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157032157450%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl157034157455%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl157028157439%_))
                                    (let ((_%__splice160007160008%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl157028157439%_
                                              '0))))
                                      (let ((_%tl157037157460%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice160007160008%_
                                                '1)))
                                            (_%target157035157458%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice160007160008%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl157037157460%_))
                                            (letrec ((_%loop157038157463%_
                                                      (lambda (_%hd157036157466%_
                                                               _%xarg157042157468%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd157036157466%_))
                                                            (let ((_%e157039157471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd157036157466%_))))
                      (let ((_%lp-tl157041157476%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e157039157471%_)))
                            (_%lp-hd157040157474%_
                             (let ()
                               (declare (not safe))
                               (##car _%e157039157471%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd157040157474%_))
                            (let ((_%e157044157479%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd157040157474%_))))
                              (let ((_%tl157046157484%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e157044157479%_)))
                                    (_%hd157045157482%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e157044157479%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd157045157482%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd157045157482%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl157046157484%_))
                                            (let ((_%e157047157487%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl157046157484%_))))
                                              (let ((_%tl157049157492%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e157047157487%_)))
                                                    (_%hd157048157490%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e157047157487%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl157049157492%_))
                                                    (_%loop157038157463%_
                                                     _%lp-tl157041157476%_
                                                     (cons _%hd157048157490%_
                                                           _%xarg157042157468%_))
                                                    (_%__match160040160041%_
                                                     _%e157008157386%_
                                                     _%hd157009157389%_
                                                     _%tl157010157391%_
                                                     _%__splice160005160006%_
                                                     _%target157011157394%_
                                                     _%tl157013157396%_))))
                                            (_%__match160040160041%_
                                             _%e157008157386%_
                                             _%hd157009157389%_
                                             _%tl157010157391%_
                                             _%__splice160005160006%_
                                             _%target157011157394%_
                                             _%tl157013157396%_))
                                        (_%__match160040160041%_
                                         _%e157008157386%_
                                         _%hd157009157389%_
                                         _%tl157010157391%_
                                         _%__splice160005160006%_
                                         _%target157011157394%_
                                         _%tl157013157396%_))
                                    (_%__match160040160041%_
                                     _%e157008157386%_
                                     _%hd157009157389%_
                                     _%tl157010157391%_
                                     _%__splice160005160006%_
                                     _%target157011157394%_
                                     _%tl157013157396%_))))
                            (_%__match160040160041%_
                             _%e157008157386%_
                             _%hd157009157389%_
                             _%tl157010157391%_
                             _%__splice160005160006%_
                             _%target157011157394%_
                             _%tl157013157396%_))))
                    (let ((_%xarg157043157495%_
                           (reverse _%xarg157042157468%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl157022157423%_))
                          (_%__kont160003160004%_
                           _%xarg157043157495%_
                           _%hd157033157453%_
                           _%arg157019157415%_)
                          (_%__match160040160041%_
                           _%e157008157386%_
                           _%hd157009157389%_
                           _%tl157010157391%_
                           _%__splice160005160006%_
                           _%target157011157394%_
                           _%tl157013157396%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop157038157463%_
                                               _%target157035157458%_
                                               '()))
                                            (_%__match160040160041%_
                                             _%e157008157386%_
                                             _%hd157009157389%_
                                             _%tl157010157391%_
                                             _%__splice160005160006%_
                                             _%target157011157394%_
                                             _%tl157013157396%_))))
                                    (_%__match160040160041%_
                                     _%e157008157386%_
                                     _%hd157009157389%_
                                     _%tl157010157391%_
                                     _%__splice160005160006%_
                                     _%target157011157394%_
                                     _%tl157013157396%_))
                                (_%__match160040160041%_
                                 _%e157008157386%_
                                 _%hd157009157389%_
                                 _%tl157010157391%_
                                 _%__splice160005160006%_
                                 _%target157011157394%_
                                 _%tl157013157396%_))))
                        (_%__match160040160041%_
                         _%e157008157386%_
                         _%hd157009157389%_
                         _%tl157010157391%_
                         _%__splice160005160006%_
                         _%target157011157394%_
                         _%tl157013157396%_))
                    (_%__match160040160041%_
                     _%e157008157386%_
                     _%hd157009157389%_
                     _%tl157010157391%_
                     _%__splice160005160006%_
                     _%target157011157394%_
                     _%tl157013157396%_))
                (_%__match160040160041%_
                 _%e157008157386%_
                 _%hd157009157389%_
                 _%tl157010157391%_
                 _%__splice160005160006%_
                 _%target157011157394%_
                 _%tl157013157396%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match160040160041%_
                                                 _%e157008157386%_
                                                 _%hd157009157389%_
                                                 _%tl157010157391%_
                                                 _%__splice160005160006%_
                                                 _%target157011157394%_
                                                 _%tl157013157396%_))))
                                        (_%__match160040160041%_
                                         _%e157008157386%_
                                         _%hd157009157389%_
                                         _%tl157010157391%_
                                         _%__splice160005160006%_
                                         _%target157011157394%_
                                         _%tl157013157396%_))
                                    (_%__match160040160041%_
                                     _%e157008157386%_
                                     _%hd157009157389%_
                                     _%tl157010157391%_
                                     _%__splice160005160006%_
                                     _%target157011157394%_
                                     _%tl157013157396%_))
                                (_%__match160040160041%_
                                 _%e157008157386%_
                                 _%hd157009157389%_
                                 _%tl157010157391%_
                                 _%__splice160005160006%_
                                 _%target157011157394%_
                                 _%tl157013157396%_))))
                        (_%__match160040160041%_
                         _%e157008157386%_
                         _%hd157009157389%_
                         _%tl157010157391%_
                         _%__splice160005160006%_
                         _%target157011157394%_
                         _%tl157013157396%_))))
                (_%__match160040160041%_
                 _%e157008157386%_
                 _%hd157009157389%_
                 _%tl157010157391%_
                 _%__splice160005160006%_
                 _%target157011157394%_
                 _%tl157013157396%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop157014157399%_
                                     _%target157011157394%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx160001160002%_))
                              (let ((_%e157008157386%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx160001160002%_))))
                                (let ((_%tl157010157391%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157008157386%_)))
                                      (_%hd157009157389%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157008157386%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd157009157389%_))
                                      (let ((_%__splice160005160006%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd157009157389%_
                                                '0))))
                                        (let ((_%tl157013157396%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice160005160006%_
                                                  '1)))
                                              (_%target157011157394%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice160005160006%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl157013157396%_))
                                              (_%__match160028160029%_
                                               _%e157008157386%_
                                               _%hd157009157389%_
                                               _%tl157010157391%_
                                               _%__splice160005160006%_
                                               _%target157011157394%_
                                               _%tl157013157396%_)
                                              (_%__match160040160041%_
                                               _%e157008157386%_
                                               _%hd157009157389%_
                                               _%tl157010157391%_
                                               _%__splice160005160006%_
                                               _%target157011157394%_
                                               _%tl157013157396%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl157010157391%_))
                                          (let ((_%e157096157140%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl157010157391%_))))
                                            (let ((_%tl157098157145%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e157096157140%_)))
                                                  (_%hd157097157143%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e157096157140%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157097157143%_))
                                                  (let ((_%e157099157148%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157097157143%_))))
                                                    (let ((_%tl157101157153%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157099157148%_)))
                                                          (_%hd157100157151%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157099157148%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd157100157151%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd157100157151%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl157101157153%_))
                          (let ((_%e157102157156%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl157101157153%_))))
                            (let ((_%tl157104157161%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e157102157156%_)))
                                  (_%hd157103157159%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e157102157156%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd157103157159%_))
                                  (let ((_%e157105157164%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd157103157159%_))))
                                    (let ((_%tl157107157169%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e157105157164%_)))
                                          (_%hd157106157167%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e157105157164%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd157106157167%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd157106157167%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl157107157169%_))
                                                  (let ((_%e157108157172%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl157107157169%_))))
                                                    (let ((_%tl157110157177%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157108157172%_)))
                                                          (_%hd157109157175%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157108157172%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl157110157177%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl157104157161%_))
                      (let ((_%e157111157180%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl157104157161%_))))
                        (let ((_%tl157113157185%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157111157180%_)))
                              (_%hd157112157183%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157111157180%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd157112157183%_))
                              (let ((_%e157114157188%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd157112157183%_))))
                                (let ((_%tl157116157193%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157114157188%_)))
                                      (_%hd157115157191%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157114157188%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd157115157191%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd157115157191%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl157116157193%_))
                                              (let ((_%e157117157196%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl157116157193%_))))
                                                (let ((_%tl157119157201%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e157117157196%_)))
                                                      (_%hd157118157199%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e157117157196%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl157119157201%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl157113157185%_))
                                                          (let ((_%e157120157204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl157113157185%_))))
                    (let ((_%tl157122157209%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e157120157204%_)))
                          (_%hd157121157207%_
                           (let ()
                             (declare (not safe))
                             (##car _%e157120157204%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl157122157209%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl157098157145%_))
                              (_%__kont160013160014%_
                               _%hd157118157199%_
                               _%hd157109157175%_
                               _%hd157009157389%_)
                              (let ()
                                (declare (not safe))
                                (_%g157003157127%_)))
                          (let () (declare (not safe)) (_%g157003157127%_)))))
                  (let () (declare (not safe)) (_%g157003157127%_)))
              (let () (declare (not safe)) (_%g157003157127%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g157003157127%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g157003157127%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g157003157127%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g157003157127%_)))))
                      (let () (declare (not safe)) (_%g157003157127%_)))
                  (let () (declare (not safe)) (_%g157003157127%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g157003157127%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g157003157127%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g157003157127%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g157003157127%_)))))
                          (let () (declare (not safe)) (_%g157003157127%_)))
                      (let () (declare (not safe)) (_%g157003157127%_)))
                  (let () (declare (not safe)) (_%g157003157127%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g157003157127%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g157003157127%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g157003157127%_))))))))
                 (_%generate1156846%_
                  (lambda (_%args156981%_
                           _%arglen156982%_
                           _%hd156983%_
                           _%body156984%_)
                    (let* ((_%len156986%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd156983%_)))
                           (_%condition156991%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd156983%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen156982%_
                                                (cons _%len156986%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen156982%_ (cons _%len156986%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len156986%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen156982%_
                                                    (cons _%len156986%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen156982%_ (cons _%len156986%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch156993%_
                            (if (_%dispatch-case?156844%_
                                 _%hd156983%_
                                 _%body156984%_)
                                (_%dispatch-case-e156845%_
                                 _%hd156983%_
                                 _%body156984%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self156841%_
                                 _%hd156983%_
                                 _%body156984%_))))
                      (cons _%condition156991%_
                            (cons (cons 'apply
                                        (cons _%dispatch156993%_
                                              (cons _%args156981%_ '())))
                                  '()))))))
          (let* ((_%g156848156876%_
                  (lambda (_%g156849156873%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g156849156873%_))))
                 (_%g156847156978%_
                  (lambda (_%g156849156879%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g156849156879%_))
                        (let ((_%e156852156881%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g156849156879%_))))
                          (let ((_%hd156853156884%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e156852156881%_)))
                                (_%tl156854156886%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e156852156881%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl156854156886%_))
                                (let ((_g161170_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl156854156886%_
                                          '0))))
                                  (begin
                                    (let ((_g161171_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g161170_)
                                                 (##values-length _g161170_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g161171_ 2)))
                                          (error "Context expects 2 values"
                                                 _g161171_)))
                                    (let ((_%target156855156889%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g161170_ 0)))
                                          (_%tl156857156891%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g161170_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl156857156891%_))
                                          (letrec ((_%loop156858156894%_
                                                    (lambda (_%hd156856156897%_
                                                             _%body156862156899%_
                                                             _%hd156863156901%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd156856156897%_))
                                                          (let ((_%e156859156904%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd156856156897%_))))
                    (let ((_%lp-hd156860156907%_
                           (let ()
                             (declare (not safe))
                             (##car _%e156859156904%_)))
                          (_%lp-tl156861156909%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e156859156904%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd156860156907%_))
                          (let ((_%e156866156912%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd156860156907%_))))
                            (let ((_%hd156867156915%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e156866156912%_)))
                                  (_%tl156868156917%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e156866156912%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl156868156917%_))
                                  (let ((_%e156869156920%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl156868156917%_))))
                                    (let ((_%hd156870156923%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e156869156920%_)))
                                          (_%tl156871156925%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e156869156920%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl156871156925%_))
                                          (_%loop156858156894%_
                                           _%lp-tl156861156909%_
                                           (cons _%hd156870156923%_
                                                 _%body156862156899%_)
                                           (cons _%hd156867156915%_
                                                 _%hd156863156901%_))
                                          (_%g156848156876%_
                                           _%g156849156879%_))))
                                  (_%g156848156876%_ _%g156849156879%_))))
                          (_%g156848156876%_ _%g156849156879%_))))
                  (let ((_%body156864156928%_ (reverse _%body156862156899%_))
                        (_%hd156865156930%_ (reverse _%hd156863156901%_)))
                    ((lambda (_%L156933%_ _%L156934%_)
                       (let ((_%args156953%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen156954%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name156955%_
                              (let ((_%$e156950%_
                                     (let ((__tmp161172
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp161172 _%stx156842%_))))
                                (if _%$e156950%_
                                    _%$e156950%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args156953%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen156954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args156953%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args156953%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp161176
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name156955%_
                                                                (cons _%args156953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp161173
                                  (map (lambda (_%g156956156959%_
                                                _%g156957156961%_)
                                         (_%generate1156846%_
                                          _%args156953%_
                                          _%arglen156954%_
                                          _%g156956156959%_
                                          _%g156957156961%_))
                                       (let ((__tmp161174
                                              (lambda (_%g156963156966%_
                                                       _%g156964156968%_)
                                                (cons _%g156963156966%_
                                                      _%g156964156968%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp161174
                                          '()
                                          _%L156934%_))
                                       (let ((__tmp161175
                                              (lambda (_%g156970156973%_
                                                       _%g156971156975%_)
                                                (cons _%g156970156973%_
                                                      _%g156971156975%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp161175
                                          '()
                                          _%L156933%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp161176 __tmp161173)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body156864156928%_
                     _%hd156865156930%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop156858156894%_
                                             _%target156855156889%_
                                             '()
                                             '()))
                                          (_%g156848156876%_
                                           _%g156849156879%_)))))
                                (_%g156848156876%_ _%g156849156879%_))))
                        (_%g156848156876%_ _%g156849156879%_)))))
            (_%g156847156978%_ _%stx156842%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self156078%_ _%stx156079%_ _%compiled-body?156080%_)
        (letrec ((_%generate-simple156082%_
                  (lambda (_%hd156826%_ _%body156827%_)
                    (_%coalesce-boolean156083%_
                     (_%simplify-let156084%_
                      (gxc#generate-runtime-simple-let
                       _%self156078%_
                       'let
                       _%hd156826%_
                       _%body156827%_
                       _%compiled-body?156080%_)))))
                 (_%coalesce-boolean156083%_
                  (lambda (_%code156687%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code156688156714%_ _%code156687%_)
                               (_%else156690156722%_
                                (lambda () _%code156687%_))
                               (_%K156692156759%_
                                (lambda (_%expr2156725%_
                                         _%expr1156726%_
                                         _%id156727%_)
                                  (let* ((_%expr2156728156736%_
                                          _%expr2156725%_)
                                         (_%else156730156744%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1156726%_
                                                        (cons _%expr2156725%_
                                                              '())))))
                                         (_%K156732156749%_
                                          (lambda (_%exprs156747%_)
                                            (cons 'or
                                                  (cons _%expr1156726%_
                                                        _%exprs156747%_)))))
                                    (if (pair? _%expr2156728156736%_)
                                        (let ((_%hd156733156752%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2156728156736%_)))
                                              (_%tl156734156754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2156728156736%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd156733156752%_ 'or))
                                              (let ((_%exprs156757%_
                                                     _%tl156734156754%_))
                                                (_%K156732156749%_
                                                 _%exprs156757%_))
                                              (_%else156730156744%_)))
                                        (_%else156730156744%_))))))
                          (if (pair? _%code156688156714%_)
                              (let ((_%hd156693156762%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code156688156714%_)))
                                    (_%tl156694156764%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code156688156714%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd156693156762%_ 'let))
                                    (if (pair? _%tl156694156764%_)
                                        (let ((_%hd156695156767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl156694156764%_)))
                                              (_%tl156696156769%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl156694156764%_))))
                                          (if (pair? _%hd156695156767%_)
                                              (let ((_%hd156707156772%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd156695156767%_)))
                                                    (_%tl156708156774%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd156695156767%_))))
                                                (if (pair? _%hd156707156772%_)
                                                    (let ((_%hd156709156777%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd156707156772%_)))
                                                          (_%tl156710156779%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd156707156772%_))))
                                                      (let ((_%id156782%_
                                                             _%hd156709156777%_))
                                                        (if (pair? _%tl156710156779%_)
                                                            (let ((_%hd156711156784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl156710156779%_)))
                          (_%tl156712156786%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl156710156779%_))))
                      (let ((_%expr1156789%_ _%hd156711156784%_))
                        (if (null? _%tl156712156786%_)
                            (if (null? _%tl156708156774%_)
                                (if (pair? _%tl156696156769%_)
                                    (let ((_%hd156697156791%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl156696156769%_)))
                                          (_%tl156698156793%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl156696156769%_))))
                                      (if (pair? _%hd156697156791%_)
                                          (let ((_%hd156699156796%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd156697156791%_)))
                                                (_%tl156700156798%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd156697156791%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd156699156796%_
                                                         'if))
                                                (if (pair? _%tl156700156798%_)
                                                    (let ((_%hd156701156801%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl156700156798%_)))
                                                          (_%tl156702156803%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl156700156798%_))))
                                                      (if ((lambda (_%g156805156807%_)
                                                             (eq? _%g156805156807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id156782%_))
                   _%hd156701156801%_)
                  (if (pair? _%tl156702156803%_)
                      (let ((_%hd156703156810%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl156702156803%_)))
                            (_%tl156704156812%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl156702156803%_))))
                        (if ((lambda (_%g156814156816%_)
                               (eq? _%g156814156816%_ _%id156782%_))
                             _%hd156703156810%_)
                            (if (pair? _%tl156704156812%_)
                                (let ((_%hd156705156819%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl156704156812%_)))
                                      (_%tl156706156821%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl156704156812%_))))
                                  (let ((_%expr2156824%_ _%hd156705156819%_))
                                    (if (null? _%tl156706156821%_)
                                        (if (null? _%tl156698156793%_)
                                            (_%K156692156759%_
                                             _%expr2156824%_
                                             _%expr1156789%_
                                             _%id156782%_)
                                            (_%else156690156722%_))
                                        (_%else156690156722%_))))
                                (_%else156690156722%_))
                            (_%else156690156722%_)))
                      (_%else156690156722%_))
                  (_%else156690156722%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else156690156722%_))
                                                (_%else156690156722%_)))
                                          (_%else156690156722%_)))
                                    (_%else156690156722%_))
                                (_%else156690156722%_))
                            (_%else156690156722%_))))
                    (_%else156690156722%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else156690156722%_)))
                                              (_%else156690156722%_)))
                                        (_%else156690156722%_))
                                    (_%else156690156722%_)))
                              (_%else156690156722%_)))
                        _%code156687%_)))
                 (_%simplify-let156084%_
                  (lambda (_%code156386%_)
                    (let* ((_%code156387156459%_ _%code156386%_)
                           (_%else156392156467%_ (lambda () _%code156386%_)))
                      (let ((_%K156451156667%_
                             (lambda (_%expr156665%_) _%expr156665%_))
                            (_%K156434156613%_
                             (lambda (_%body156609%_
                                      _%expr156610%_
                                      _%id156611%_)
                               (cons 'let
                                     (cons (cons (cons _%id156611%_
                                                       (cons _%expr156610%_
                                                             '()))
                                                 '())
                                           _%body156609%_))))
                            (_%K156411156537%_
                             (lambda (_%body156531%_
                                      _%expr2156532%_
                                      _%id2156533%_
                                      _%expr1156534%_
                                      _%id1156535%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1156535%_
                                                       (cons _%expr1156534%_
                                                             '()))
                                                 (cons (cons _%id2156533%_
                                                             (cons _%expr2156532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body156531%_))))
                            (_%K156394156476%_
                             (lambda (_%body156471%_
                                      _%bind156472%_
                                      _%expr1156473%_
                                      _%id1156474%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1156474%_
                                                       (cons _%expr1156473%_
                                                             '()))
                                                 _%bind156472%_)
                                           _%body156471%_)))))
                        (if (pair? _%code156387156459%_)
                            (let ((_%tl156453156672%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code156387156459%_)))
                                  (_%hd156452156670%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code156387156459%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd156452156670%_ 'let))
                                  (if (pair? _%tl156453156672%_)
                                      (let ((_%tl156455156677%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl156453156672%_)))
                                            (_%hd156454156675%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl156453156672%_))))
                                        (if (null? _%hd156454156675%_)
                                            (if (pair? _%tl156455156677%_)
                                                (let ((_%tl156457156682%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl156455156677%_)))
                                                      (_%hd156456156680%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl156455156677%_))))
                                                  (if (null? _%tl156457156682%_)
                                                      (let ((_%expr156685%_
                                                             _%hd156456156680%_))
                                                        (_%K156451156667%_
                                                         _%expr156685%_))
                                                      (_%else156392156467%_)))
                                                (_%else156392156467%_))
                                            (if (pair? _%hd156454156675%_)
                                                (let ((_%tl156446156628%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd156454156675%_)))
                                                      (_%hd156445156626%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd156454156675%_))))
                                                  (if (pair? _%hd156445156626%_)
                                                      (let ((_%tl156448156633%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd156445156626%_)))
                    (_%hd156447156631%_
                     (let () (declare (not safe)) (##car _%hd156445156626%_))))
                (if (pair? _%tl156448156633%_)
                    (let ((_%tl156450156640%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl156448156633%_)))
                          (_%hd156449156638%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl156448156633%_))))
                      (if (null? _%tl156450156640%_)
                          (if (null? _%tl156446156628%_)
                              (if (pair? _%tl156455156677%_)
                                  (let ((_%tl156440156647%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl156455156677%_)))
                                        (_%hd156439156645%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl156455156677%_))))
                                    (if (pair? _%hd156439156645%_)
                                        (let ((_%tl156442156652%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd156439156645%_)))
                                              (_%hd156441156650%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd156439156645%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd156441156650%_
                                                       'let))
                                              (if (pair? _%tl156442156652%_)
                                                  (let ((_%tl156444156657%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl156442156652%_)))
                                                        (_%hd156443156655%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl156442156652%_))))
                                                    (if (null? _%hd156443156655%_)
                                                        (if (null? _%tl156440156647%_)
                                                            (let ((_%id156636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd156447156631%_)
                          (_%expr156643%_ _%hd156449156638%_)
                          (_%body156660%_ _%tl156444156657%_))
                      (_%K156434156613%_
                       _%body156660%_
                       _%expr156643%_
                       _%id156636%_))
                    (_%else156392156467%_))
                (if (pair? _%hd156443156655%_)
                    (let ((_%tl156423156586%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd156443156655%_)))
                          (_%hd156422156584%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd156443156655%_))))
                      (if (pair? _%hd156422156584%_)
                          (let ((_%tl156425156591%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd156422156584%_)))
                                (_%hd156424156589%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd156422156584%_))))
                            (if (pair? _%tl156425156591%_)
                                (let ((_%tl156427156598%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl156425156591%_)))
                                      (_%hd156426156596%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl156425156591%_))))
                                  (if (null? _%tl156427156598%_)
                                      (if (null? _%tl156423156586%_)
                                          (if (null? _%tl156440156647%_)
                                              (let ((_%id1156560%_
                                                     _%hd156447156631%_)
                                                    (_%expr1156567%_
                                                     _%hd156449156638%_)
                                                    (_%id2156594%_
                                                     _%hd156424156589%_)
                                                    (_%expr2156601%_
                                                     _%hd156426156596%_)
                                                    (_%body156603%_
                                                     _%tl156444156657%_))
                                                (_%K156411156537%_
                                                 _%body156603%_
                                                 _%expr2156601%_
                                                 _%id2156594%_
                                                 _%expr1156567%_
                                                 _%id1156560%_))
                                              (_%else156392156467%_))
                                          (_%else156392156467%_))
                                      (_%else156392156467%_)))
                                (_%else156392156467%_)))
                          (_%else156392156467%_)))
                    (_%else156392156467%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else156392156467%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd156441156650%_
                                                           'let*))
                                                  (if (pair? _%tl156442156652%_)
                                                      (let ((_%tl156404156520%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl156442156652%_)))
                    (_%hd156403156518%_
                     (let () (declare (not safe)) (##car _%tl156442156652%_))))
                (if (null? _%tl156440156647%_)
                    (let ((_%id1156499%_ _%hd156447156631%_)
                          (_%expr1156506%_ _%hd156449156638%_)
                          (_%bind156523%_ _%hd156403156518%_)
                          (_%body156525%_ _%tl156404156520%_))
                      (_%K156394156476%_
                       _%body156525%_
                       _%bind156523%_
                       _%expr1156506%_
                       _%id1156499%_))
                    (_%else156392156467%_)))
              (_%else156392156467%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else156392156467%_))))
                                        (_%else156392156467%_)))
                                  (_%else156392156467%_))
                              (_%else156392156467%_))
                          (_%else156392156467%_)))
                    (_%else156392156467%_)))
              (_%else156392156467%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else156392156467%_))))
                                      (_%else156392156467%_))
                                  (_%else156392156467%_)))
                            (_%else156392156467%_))))))
                 (_%generate-values156085%_
                  (lambda (_%hd156199%_ _%body156200%_)
                    (let _%lp156202%_ ((_%rest156204%_ _%hd156199%_)
                                       (_%bind156205%_ '())
                                       (_%check156206%_ '())
                                       (_%post156207%_ '()))
                      (let* ((_%__stx160330160331%_ _%rest156204%_)
                             (_%g156210156221%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx160330160331%_)))))
                        (let ((_%__kont160332160333%_
                               (lambda (_%L156248%_ _%L156249%_)
                                 (let* ((_%__stx160286160287%_ _%L156249%_)
                                        (_%g156264156289%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx160286160287%_)))))
                                   (let ((_%__kont160288160289%_
                                          (lambda (_%L156362%_ _%L156363%_)
                                            (let ((_%eid156377%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L156363%_)))
                                                  (_%expr156378%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self156078%_
                                                      _%L156362%_))))
                                              (_%lp156202%_
                                               _%L156248%_
                                               (cons (cons _%eid156377%_
                                                           (cons _%expr156378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind156205%_)
                                               _%check156206%_
                                               _%post156207%_))))
                                         (_%__kont160290160291%_
                                          (lambda (_%L156310%_ _%L156311%_)
                                            (let* ((_%vals156324%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values156326%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals156324%_
                                                     _%L156311%_
                                                     _%L156310%_))
                                                   (_%refs156328%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals156324%_
                                                     _%L156311%_))
                                                   (_%expr156330%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self156078%_
                                                       _%L156310%_))))
                                              (_%lp156202%_
                                               _%L156248%_
                                               (cons (cons _%vals156324%_
                                                           (cons _%expr156330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind156205%_)
                                               (cons _%check-values156326%_
                                                     _%check156206%_)
                                               (cons _%refs156328%_
                                                     _%post156207%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx160286160287%_))
                                         (let ((_%e156268156338%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx160286160287%_))))
                                           (let ((_%tl156270156343%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e156268156338%_)))
                                                 (_%hd156269156341%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e156268156338%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd156269156341%_))
                                                 (let ((_%e156271156346%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd156269156341%_))))
                                                   (let ((_%tl156273156351%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e156271156346%_)))
                                                         (_%hd156272156349%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e156271156346%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl156273156351%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl156270156343%_))
                     (let ((_%e156274156354%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl156270156343%_))))
                       (let ((_%tl156276156359%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e156274156354%_)))
                             (_%hd156275156357%_
                              (let ()
                                (declare (not safe))
                                (##car _%e156274156354%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl156276156359%_))
                             (_%__kont160288160289%_
                              _%hd156275156357%_
                              _%hd156272156349%_)
                             (let ()
                               (declare (not safe))
                               (_%g156264156289%_)))))
                     (let () (declare (not safe)) (_%g156264156289%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl156270156343%_))
                     (let ((_%e156282156302%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl156270156343%_))))
                       (let ((_%tl156284156307%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e156282156302%_)))
                             (_%hd156283156305%_
                              (let ()
                                (declare (not safe))
                                (##car _%e156282156302%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl156284156307%_))
                             (_%__kont160290160291%_
                              _%hd156283156305%_
                              _%hd156269156341%_)
                             (let ()
                               (declare (not safe))
                               (_%g156264156289%_)))))
                     (let () (declare (not safe)) (_%g156264156289%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl156270156343%_))
                                                     (let ((_%e156282156302%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl156270156343%_))))
                                                       (let ((_%tl156284156307%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e156282156302%_)))
                     (_%hd156283156305%_
                      (let () (declare (not safe)) (##car _%e156282156302%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl156284156307%_))
                     (_%__kont160290160291%_
                      _%hd156283156305%_
                      _%hd156269156341%_)
                     (let () (declare (not safe)) (_%g156264156289%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g156264156289%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g156264156289%_)))))))
                              (_%__kont160334160335%_
                               (lambda ()
                                 (let* ((_%body156228%_
                                         (if _%compiled-body?156080%_
                                             _%body156200%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self156078%_
                                                _%body156200%_))))
                                        (_%body156230%_
                                         (_%generate-values-post156086%_
                                          _%post156207%_
                                          _%body156228%_))
                                        (_%body156232%_
                                         (_%generate-values-check156087%_
                                          _%check156206%_
                                          _%body156230%_)))
                                   (cons 'let
                                         (cons (reverse _%bind156205%_)
                                               (cons _%body156232%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx160330160331%_))
                              (let ((_%e156214156240%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx160330160331%_))))
                                (let ((_%tl156216156245%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e156214156240%_)))
                                      (_%hd156215156243%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e156214156240%_))))
                                  (_%__kont160332160333%_
                                   _%tl156216156245%_
                                   _%hd156215156243%_)))
                              (_%__kont160334160335%_)))))))
                 (_%generate-values-post156086%_
                  (lambda (_%post156158%_ _%body156159%_)
                    (let _%lp156161%_ ((_%rest156163%_ _%post156158%_)
                                       (_%body156164%_ _%body156159%_))
                      (let* ((_%rest156165156173%_ _%rest156163%_)
                             (_%else156167156181%_ (lambda () _%body156164%_))
                             (_%K156169156187%_
                              (lambda (_%rest156184%_ _%bind156185%_)
                                (_%lp156161%_
                                 _%rest156184%_
                                 (cons 'let
                                       (cons _%bind156185%_
                                             (cons _%body156164%_ '())))))))
                        (if (pair? _%rest156165156173%_)
                            (let ((_%hd156170156190%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest156165156173%_)))
                                  (_%tl156171156192%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest156165156173%_))))
                              (let* ((_%bind156195%_ _%hd156170156190%_)
                                     (_%rest156197%_ _%tl156171156192%_))
                                (_%K156169156187%_
                                 _%rest156197%_
                                 _%bind156195%_)))
                            (_%else156167156181%_))))))
                 (_%generate-values-check156087%_
                  (lambda (_%check156155%_ _%body156156%_)
                    (cons 'begin
                          (let ((__tmp161178 (cons _%body156156%_ '()))
                                (__tmp161177 (reverse _%check156155%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp161178 __tmp161177))))))
          (let* ((_%g156089156106%_
                  (lambda (_%g156090156103%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g156090156103%_))))
                 (_%g156088156152%_
                  (lambda (_%g156090156109%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g156090156109%_))
                        (let ((_%e156093156111%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g156090156109%_))))
                          (let ((_%hd156094156114%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e156093156111%_)))
                                (_%tl156095156116%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e156093156111%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl156095156116%_))
                                (let ((_%e156096156119%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl156095156116%_))))
                                  (let ((_%hd156097156122%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e156096156119%_)))
                                        (_%tl156098156124%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e156096156119%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl156098156124%_))
                                        (let ((_%e156099156127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl156098156124%_))))
                                          (let ((_%hd156100156130%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e156099156127%_)))
                                                (_%tl156101156132%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e156099156127%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl156101156132%_))
                                                ((lambda (_%L156135%_
                                                          _%L156136%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L156136%_)
                                                       (_%generate-simple156082%_
                                                        _%L156136%_
                                                        _%L156135%_)
                                                       (_%generate-values156085%_
                                                        _%L156136%_
                                                        _%L156135%_)))
                                                 _%hd156100156130%_
                                                 _%hd156097156122%_)
                                                (_%g156089156106%_
                                                 _%g156090156109%_))))
                                        (_%g156089156106%_
                                         _%g156090156109%_))))
                                (_%g156089156106%_ _%g156090156109%_))))
                        (_%g156089156106%_ _%g156090156109%_)))))
            (_%g156088156152%_ _%stx156079%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self156832%_ _%stx156833%_)
        (let ((_%compiled-body?156835%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self156832%_
           _%stx156833%_
           _%compiled-body?156835%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g161179_
        (let ((_g161180_ (let () (declare (not safe)) (##length _g161179_))))
          (cond ((let () (declare (not safe)) (##fx= _g161180_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g161179_))
                ((let () (declare (not safe)) (##fx= _g161180_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g161179_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g161179_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals155972%_ _%hd155973%_)
        (let _%lp155975%_ ((_%rest155977%_ _%hd155973%_)
                           (_%k155978%_ '0)
                           (_%r155979%_ '()))
          (let* ((_%__stx160344160345%_ _%rest155977%_)
                 (_%g155984156001%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx160344160345%_)))))
            (let ((_%__kont160346160347%_
                   (lambda (_%L156064%_)
                     (_%lp155975%_
                      _%L156064%_
                      (let () (declare (not safe)) (##fx+ _%k155978%_ '1))
                      _%r155979%_)))
                  (_%__kont160348160349%_
                   (lambda (_%L156037%_ _%L156038%_)
                     (_%lp155975%_
                      _%L156037%_
                      (let () (declare (not safe)) (##fx+ _%k155978%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L156038%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals155972%_
                                         _%k155978%_
                                         _%L156037%_)
                                        '()))
                            _%r155979%_))))
                  (_%__kont160350160351%_
                   (lambda (_%L156013%_)
                     (let ((__tmp161181
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L156013%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals155972%_
                                               _%k155978%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp161181 _%r155979%_))))
                  (_%__kont160352160353%_ (lambda () (reverse _%r155979%_))))
              (let ((_%g155982156024%_
                     (lambda ()
                       (let ((_%L156013%_ _%__stx160344160345%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L156013%_))
                             (_%__kont160350160351%_ _%L156013%_)
                             (_%__kont160352160353%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx160344160345%_))
                    (let ((_%e155987156053%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx160344160345%_))))
                      (let ((_%tl155989156058%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e155987156053%_)))
                            (_%hd155988156056%_
                             (let ()
                               (declare (not safe))
                               (##car _%e155987156053%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd155988156056%_))
                            (let ((_%e155990156061%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd155988156056%_))))
                              (if (equal? _%e155990156061%_ '#f)
                                  (_%__kont160346160347%_ _%tl155989156058%_)
                                  (_%__kont160348160349%_
                                   _%tl155989156058%_
                                   _%hd155988156056%_)))
                            (_%__kont160348160349%_
                             _%tl155989156058%_
                             _%hd155988156056%_))))
                    (let () (declare (not safe)) (_%g155982156024%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self155651%_ _%stx155652%_ _%compiled-body?155653%_)
        (letrec ((_%generate-simple155655%_
                  (lambda (_%hd155957%_ _%body155958%_)
                    (gxc#generate-runtime-simple-let
                     _%self155651%_
                     'letrec
                     _%hd155957%_
                     _%body155958%_
                     _%compiled-body?155653%_)))
                 (_%generate-values155656%_
                  (lambda (_%hd155736%_ _%body155737%_)
                    (let _%lp155739%_ ((_%rest155741%_ _%hd155736%_)
                                       (_%bind155742%_ '())
                                       (_%check155743%_ '())
                                       (_%post155744%_ '()))
                      (let* ((_%__stx160418160419%_ _%rest155741%_)
                             (_%g155747155758%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx160418160419%_)))))
                        (let ((_%__kont160420160421%_
                               (lambda (_%L155785%_ _%L155786%_)
                                 (let* ((_%__stx160374160375%_ _%L155786%_)
                                        (_%g155801155826%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx160374160375%_)))))
                                   (let ((_%__kont160376160377%_
                                          (lambda (_%L155933%_ _%L155934%_)
                                            (let ((_%eid155948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L155934%_)))
                                                  (_%expr155949%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self155651%_
                                                      _%L155933%_))))
                                              (_%lp155739%_
                                               _%L155785%_
                                               (cons (cons _%eid155948%_
                                                           (cons _%expr155949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind155742%_)
                                               _%check155743%_
                                               _%post155744%_))))
                                         (_%__kont160378160379%_
                                          (lambda (_%L155847%_ _%L155848%_)
                                            (let* ((_%vals155861%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values155863%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals155861%_
                                                     _%L155848%_
                                                     _%L155847%_))
                                                   (_%refs155865%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals155861%_
                                                     _%L155848%_))
                                                   (_%expr155867%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self155651%_
                                                       _%L155847%_))))
                                              (_%lp155739%_
                                               _%L155785%_
                                               (let ((__tmp161183
                                                      (cons (cons _%vals155861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr155867%_ '()))
                    _%bind155742%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp161182
                                                      (map (lambda (_%e155869155871%_)
                                                             (let* ((_%g155873155882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e155869155871%_)
                            (_%E155875155886%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g155873155882%_
                                        '([eid _])))
                               '#!void))
                            (_%K155876155891%_
                             (lambda (_%eid155889%_)
                               (cons _%eid155889%_ (cons '#!void '())))))
                       (if (pair? _%g155873155882%_)
                           (let ((_%hd155877155894%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g155873155882%_)))
                                 (_%tl155878155896%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g155873155882%_))))
                             (let ((_%eid155899%_ _%hd155877155894%_))
                               (if (pair? _%tl155878155896%_)
                                   (let ((_%tl155880155901%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl155878155896%_))))
                                     (if (null? _%tl155880155901%_)
                                         (_%K155876155891%_ _%eid155899%_)
                                         (_%E155875155886%_)))
                                   (_%E155875155886%_))))
                           (_%E155875155886%_))))
                   _%refs155865%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp161183
                                                  __tmp161182))
                                               (cons _%check-values155863%_
                                                     _%check155743%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs155865%_
                                                  _%post155744%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx160374160375%_))
                                         (let ((_%e155805155909%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx160374160375%_))))
                                           (let ((_%tl155807155914%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e155805155909%_)))
                                                 (_%hd155806155912%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e155805155909%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd155806155912%_))
                                                 (let ((_%e155808155917%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd155806155912%_))))
                                                   (let ((_%tl155810155922%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e155808155917%_)))
                                                         (_%hd155809155920%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e155808155917%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl155810155922%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl155807155914%_))
                     (let ((_%e155811155925%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl155807155914%_))))
                       (let ((_%tl155813155930%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e155811155925%_)))
                             (_%hd155812155928%_
                              (let ()
                                (declare (not safe))
                                (##car _%e155811155925%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl155813155930%_))
                             (_%__kont160376160377%_
                              _%hd155812155928%_
                              _%hd155809155920%_)
                             (let ()
                               (declare (not safe))
                               (_%g155801155826%_)))))
                     (let () (declare (not safe)) (_%g155801155826%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl155807155914%_))
                     (let ((_%e155819155839%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl155807155914%_))))
                       (let ((_%tl155821155844%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e155819155839%_)))
                             (_%hd155820155842%_
                              (let ()
                                (declare (not safe))
                                (##car _%e155819155839%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl155821155844%_))
                             (_%__kont160378160379%_
                              _%hd155820155842%_
                              _%hd155806155912%_)
                             (let ()
                               (declare (not safe))
                               (_%g155801155826%_)))))
                     (let () (declare (not safe)) (_%g155801155826%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl155807155914%_))
                                                     (let ((_%e155819155839%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl155807155914%_))))
                                                       (let ((_%tl155821155844%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e155819155839%_)))
                     (_%hd155820155842%_
                      (let () (declare (not safe)) (##car _%e155819155839%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl155821155844%_))
                     (_%__kont160378160379%_
                      _%hd155820155842%_
                      _%hd155806155912%_)
                     (let () (declare (not safe)) (_%g155801155826%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g155801155826%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g155801155826%_)))))))
                              (_%__kont160422160423%_
                               (lambda ()
                                 (let* ((_%body155765%_
                                         (if _%compiled-body?155653%_
                                             _%body155737%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self155651%_
                                                _%body155737%_))))
                                        (_%body155767%_
                                         (_%generate-values-post155658%_
                                          _%post155744%_
                                          _%body155765%_))
                                        (_%body155769%_
                                         (_%generate-values-check155657%_
                                          _%check155743%_
                                          _%body155767%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind155742%_)
                                               (cons _%body155769%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx160418160419%_))
                              (let ((_%e155751155777%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx160418160419%_))))
                                (let ((_%tl155753155782%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e155751155777%_)))
                                      (_%hd155752155780%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e155751155777%_))))
                                  (_%__kont160420160421%_
                                   _%tl155753155782%_
                                   _%hd155752155780%_)))
                              (_%__kont160422160423%_)))))))
                 (_%generate-values-check155657%_
                  (lambda (_%check155733%_ _%body155734%_)
                    (cons 'begin
                          (let ((__tmp161185 (cons _%body155734%_ '()))
                                (__tmp161184 (reverse _%check155733%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp161185 __tmp161184)))))
                 (_%generate-values-post155658%_
                  (lambda (_%post155726%_ _%body155727%_)
                    (cons 'begin
                          (let ((__tmp161189 (cons _%body155727%_ '()))
                                (__tmp161186
                                 (let ((__tmp161188
                                        (lambda (_%g155728155730%_)
                                          (cons 'set! _%g155728155730%_)))
                                       (__tmp161187 (reverse _%post155726%_)))
                                   (declare (not safe))
                                   (##map __tmp161188 __tmp161187))))
                            (declare (not safe))
                            (__foldr1 cons __tmp161189 __tmp161186))))))
          (let* ((_%g155660155677%_
                  (lambda (_%g155661155674%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g155661155674%_))))
                 (_%g155659155723%_
                  (lambda (_%g155661155680%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g155661155680%_))
                        (let ((_%e155664155682%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g155661155680%_))))
                          (let ((_%hd155665155685%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e155664155682%_)))
                                (_%tl155666155687%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e155664155682%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl155666155687%_))
                                (let ((_%e155667155690%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl155666155687%_))))
                                  (let ((_%hd155668155693%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e155667155690%_)))
                                        (_%tl155669155695%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e155667155690%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl155669155695%_))
                                        (let ((_%e155670155698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl155669155695%_))))
                                          (let ((_%hd155671155701%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e155670155698%_)))
                                                (_%tl155672155703%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e155670155698%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl155672155703%_))
                                                ((lambda (_%L155706%_
                                                          _%L155707%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L155707%_)
                                                       (_%generate-simple155655%_
                                                        _%L155707%_
                                                        _%L155706%_)
                                                       (_%generate-values155656%_
                                                        _%L155707%_
                                                        _%L155706%_)))
                                                 _%hd155671155701%_
                                                 _%hd155668155693%_)
                                                (_%g155660155677%_
                                                 _%g155661155680%_))))
                                        (_%g155660155677%_
                                         _%g155661155680%_))))
                                (_%g155660155677%_ _%g155661155680%_))))
                        (_%g155660155677%_ _%g155661155680%_)))))
            (_%g155659155723%_ _%stx155652%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self155963%_ _%stx155964%_)
        (let ((_%compiled-body?155966%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self155963%_
           _%stx155964%_
           _%compiled-body?155966%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g161190_
        (let ((_g161191_ (let () (declare (not safe)) (##length _g161190_))))
          (cond ((let () (declare (not safe)) (##fx= _g161191_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g161190_))
                ((let () (declare (not safe)) (##fx= _g161191_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g161190_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g161190_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self155232%_ _%stx155233%_)
        (letrec ((_%generate-values155235%_
                  (lambda (_%hd155478%_ _%body155479%_)
                    (let _%lp155481%_ ((_%rest155483%_ _%hd155478%_)
                                       (_%bind155484%_ '()))
                      (let* ((_%rest155485155493%_ _%rest155483%_)
                             (_%else155487155504%_
                              (lambda ()
                                (let ((_%bind155501%_ (reverse _%bind155484%_))
                                      (_%body155502%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self155232%_
                                          _%body155479%_))))
                                  (cons 'letrec*
                                        (cons _%bind155501%_
                                              (cons _%body155502%_ '()))))))
                             (_%K155489155638%_
                              (lambda (_%rest155507%_ _%hd-bind155508%_)
                                (let* ((_%__stx160432160433%_
                                        _%hd-bind155508%_)
                                       (_%g155511155536%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx160432160433%_)))))
                                  (let ((_%__kont160434160435%_
                                         (lambda (_%L155617%_ _%L155618%_)
                                           (let ((_%eid155632%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L155618%_)))
                                                 (_%expr155633%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self155232%_
                                                     _%L155617%_))))
                                             (_%lp155481%_
                                              _%rest155507%_
                                              (cons (cons _%eid155632%_
                                                          (cons _%expr155633%_
                                                                '()))
                                                    _%bind155484%_)))))
                                        (_%__kont160436160437%_
                                         (lambda (_%L155557%_ _%L155558%_)
                                           (let* ((_%vals155577%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp155579%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values155581%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp155579%_
                                                    _%L155558%_
                                                    _%L155557%_))
                                                  (_%refs155583%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals155577%_
                                                    _%L155558%_))
                                                  (_%expr155585%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self155232%_
                                                      _%L155557%_))))
                                             (_%lp155481%_
                                              _%rest155507%_
                                              (let ((__tmp161192
                                                     (cons (cons _%vals155577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp155579%_
                                                       (cons _%expr155585%_
                                                             '()))
                                                 '())
                                           (cons _%check-values155581%_
                                                 (cons _%tmp155579%_ '()))))
                               '()))
                   _%bind155484%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp161192
                                                 _%refs155583%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx160432160433%_))
                                        (let ((_%e155515155593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx160432160433%_))))
                                          (let ((_%tl155517155598%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e155515155593%_)))
                                                (_%hd155516155596%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e155515155593%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd155516155596%_))
                                                (let ((_%e155518155601%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd155516155596%_))))
                                                  (let ((_%tl155520155606%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e155518155601%_)))
                                                        (_%hd155519155604%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e155518155601%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl155520155606%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl155517155598%_))
                                                            (let ((_%e155521155609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl155517155598%_))))
                      (let ((_%tl155523155614%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e155521155609%_)))
                            (_%hd155522155612%_
                             (let ()
                               (declare (not safe))
                               (##car _%e155521155609%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl155523155614%_))
                            (_%__kont160434160435%_
                             _%hd155522155612%_
                             _%hd155519155604%_)
                            (let ()
                              (declare (not safe))
                              (_%g155511155536%_)))))
                    (let () (declare (not safe)) (_%g155511155536%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl155517155598%_))
                    (let ((_%e155529155549%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl155517155598%_))))
                      (let ((_%tl155531155554%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e155529155549%_)))
                            (_%hd155530155552%_
                             (let ()
                               (declare (not safe))
                               (##car _%e155529155549%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl155531155554%_))
                            (_%__kont160436160437%_
                             _%hd155530155552%_
                             _%hd155516155596%_)
                            (let ()
                              (declare (not safe))
                              (_%g155511155536%_)))))
                    (let () (declare (not safe)) (_%g155511155536%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl155517155598%_))
                                                    (let ((_%e155529155549%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl155517155598%_))))
                                                      (let ((_%tl155531155554%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e155529155549%_)))
                    (_%hd155530155552%_
                     (let () (declare (not safe)) (##car _%e155529155549%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl155531155554%_))
                    (_%__kont160436160437%_
                     _%hd155530155552%_
                     _%hd155516155596%_)
                    (let () (declare (not safe)) (_%g155511155536%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g155511155536%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g155511155536%_))))))))
                        (if (pair? _%rest155485155493%_)
                            (let ((_%hd155490155641%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest155485155493%_)))
                                  (_%tl155491155643%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest155485155493%_))))
                              (let* ((_%hd-bind155646%_ _%hd155490155641%_)
                                     (_%rest155648%_ _%tl155491155643%_))
                                (_%K155489155638%_
                                 _%rest155648%_
                                 _%hd-bind155646%_)))
                            (_%else155487155504%_))))))
                 (_%generate-letrec?155236%_
                  (lambda (_%hd155368%_)
                    (let _%lp155370%_ ((_%rest155372%_ _%hd155368%_))
                      (let* ((_%rest155373155381%_ _%rest155372%_)
                             (_%else155375155389%_ (lambda () '#t))
                             (_%K155377155466%_
                              (lambda (_%rest155392%_ _%hd-bind155393%_)
                                (let* ((_%g155395155412%_
                                        (lambda (_%g155396155409%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g155396155409%_))))
                                       (_%g155394155463%_
                                        (lambda (_%g155396155415%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g155396155415%_))
                                              (let ((_%e155399155417%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g155396155415%_))))
                                                (let ((_%hd155400155420%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e155399155417%_)))
                                                      (_%tl155401155422%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e155399155417%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd155400155420%_))
                                                      (let ((_%e155402155425%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd155400155420%_))))
                (let ((_%hd155403155428%_
                       (let () (declare (not safe)) (##car _%e155402155425%_)))
                      (_%tl155404155430%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e155402155425%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl155404155430%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl155401155422%_))
                          (let ((_%e155405155433%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl155401155422%_))))
                            (let ((_%hd155406155436%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e155405155433%_)))
                                  (_%tl155407155438%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e155405155433%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl155407155438%_))
                                  ((lambda (_%L155441%_ _%L155442%_)
                                     (if (_%is-lambda-expr?155237%_
                                          _%L155441%_)
                                         (_%lp155370%_ _%rest155392%_)
                                         '#f))
                                   _%hd155406155436%_
                                   _%hd155403155428%_)
                                  (_%g155395155412%_ _%g155396155415%_))))
                          (_%g155395155412%_ _%g155396155415%_))
                      (_%g155395155412%_ _%g155396155415%_))))
              (_%g155395155412%_ _%g155396155415%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g155395155412%_
                                               _%g155396155415%_)))))
                                  (_%g155394155463%_ _%hd-bind155393%_)))))
                        (if (pair? _%rest155373155381%_)
                            (let ((_%hd155378155469%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest155373155381%_)))
                                  (_%tl155379155471%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest155373155381%_))))
                              (let* ((_%hd-bind155474%_ _%hd155378155469%_)
                                     (_%rest155476%_ _%tl155379155471%_))
                                (_%K155377155466%_
                                 _%rest155476%_
                                 _%hd-bind155474%_)))
                            (_%else155375155389%_))))))
                 (_%is-lambda-expr?155237%_
                  (lambda (_%expr155305%_)
                    (let* ((_%__stx160476160477%_ _%expr155305%_)
                           (_%g155308155322%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx160476160477%_)))))
                      (let ((_%__kont160478160479%_
                             (lambda (_%L155350%_ _%L155351%_) '#t))
                            (_%__kont160480160481%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx160476160477%_))
                            (let ((_%e155312155334%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx160476160477%_))))
                              (let ((_%tl155314155339%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e155312155334%_)))
                                    (_%hd155313155337%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e155312155334%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd155313155337%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd155313155337%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl155314155339%_))
                                            (let ((_%e155315155342%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl155314155339%_))))
                                              (let ((_%tl155317155347%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e155315155342%_)))
                                                    (_%hd155316155345%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e155315155342%_))))
                                                (_%__kont160478160479%_
                                                 _%tl155317155347%_
                                                 _%hd155316155345%_)))
                                            (_%__kont160480160481%_))
                                        (_%__kont160480160481%_))
                                    (_%__kont160480160481%_))))
                            (_%__kont160480160481%_)))))))
          (let* ((_%g155239155256%_
                  (lambda (_%g155240155253%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g155240155253%_))))
                 (_%g155238155302%_
                  (lambda (_%g155240155259%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g155240155259%_))
                        (let ((_%e155243155261%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g155240155259%_))))
                          (let ((_%hd155244155264%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e155243155261%_)))
                                (_%tl155245155266%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e155243155261%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl155245155266%_))
                                (let ((_%e155246155269%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl155245155266%_))))
                                  (let ((_%hd155247155272%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e155246155269%_)))
                                        (_%tl155248155274%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e155246155269%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl155248155274%_))
                                        (let ((_%e155249155277%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl155248155274%_))))
                                          (let ((_%hd155250155280%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e155249155277%_)))
                                                (_%tl155251155282%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e155249155277%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl155251155282%_))
                                                ((lambda (_%L155285%_
                                                          _%L155286%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L155286%_)
                                                       (if (_%generate-letrec?155236%_
                                                            _%L155286%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self155232%_
                                                            'letrec
                                                            _%L155286%_
                                                            _%L155285%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self155232%_
                                                            'letrec*
                                                            _%L155286%_
                                                            _%L155285%_
                                                            '#f))
                                                       (_%generate-values155235%_
                                                        _%L155286%_
                                                        _%L155285%_)))
                                                 _%hd155250155280%_
                                                 _%hd155247155272%_)
                                                (_%g155239155256%_
                                                 _%g155240155259%_))))
                                        (_%g155239155256%_
                                         _%g155240155259%_))))
                                (_%g155239155256%_ _%g155240155259%_))))
                        (_%g155239155256%_ _%g155240155259%_)))))
            (_%g155238155302%_ _%stx155233%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd155169%_)
        (let _%lp155171%_ ((_%rest155173%_ _%hd155169%_))
          (let* ((_%rest155174155190%_ _%rest155173%_)
                 (_%else155177155198%_ (lambda () '#f)))
            (let ((_%K155180155211%_
                   (lambda (_%rest155209%_) (_%lp155171%_ _%rest155209%_)))
                  (_%K155179155203%_ (lambda () '#t)))
              (let ((_%try-match155176155206%_
                     (lambda ()
                       (if (null? _%rest155174155190%_)
                           (_%K155179155203%_)
                           (_%else155177155198%_)))))
                (if (pair? _%rest155174155190%_)
                    (let ((_%tl155182155216%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest155174155190%_)))
                          (_%hd155181155214%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest155174155190%_))))
                      (if (pair? _%hd155181155214%_)
                          (let ((_%tl155184155221%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd155181155214%_)))
                                (_%hd155183155219%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd155181155214%_))))
                            (if (pair? _%hd155183155219%_)
                                (let ((_%tl155188155224%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd155183155219%_))))
                                  (if (null? _%tl155188155224%_)
                                      (if (pair? _%tl155184155221%_)
                                          (let ((_%tl155186155227%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl155184155221%_))))
                                            (if (null? _%tl155186155227%_)
                                                (let ((_%rest155230%_
                                                       _%tl155182155216%_))
                                                  (_%lp155171%_
                                                   _%rest155230%_))
                                                (_%else155177155198%_)))
                                          (_%else155177155198%_))
                                      (_%else155177155198%_)))
                                (_%else155177155198%_)))
                          (_%else155177155198%_)))
                    (_%try-match155176155206%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self155080%_
               _%form155081%_
               _%hd155082%_
               _%body155083%_
               _%compiled-body?155084%_)
        (letrec ((_%generate1155086%_
                  (lambda (_%bind155125%_)
                    (let* ((_%bind155126155137%_ _%bind155125%_)
                           (_%E155128155141%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind155126155137%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K155129155147%_
                            (lambda (_%expr155144%_ _%id155145%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id155145%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self155080%_
                                             _%expr155144%_))
                                          '())))))
                      (if (pair? _%bind155126155137%_)
                          (let ((_%hd155130155150%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind155126155137%_)))
                                (_%tl155131155152%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind155126155137%_))))
                            (if (pair? _%hd155130155150%_)
                                (let ((_%hd155134155155%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd155130155150%_)))
                                      (_%tl155135155157%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd155130155150%_))))
                                  (let ((_%id155160%_ _%hd155134155155%_))
                                    (if (null? _%tl155135155157%_)
                                        (if (pair? _%tl155131155152%_)
                                            (let ((_%hd155132155162%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl155131155152%_)))
                                                  (_%tl155133155164%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl155131155152%_))))
                                              (let ((_%expr155167%_
                                                     _%hd155132155162%_))
                                                (if (null? _%tl155133155164%_)
                                                    (_%K155129155147%_
                                                     _%expr155167%_
                                                     _%id155160%_)
                                                    (_%E155128155141%_))))
                                            (_%E155128155141%_))
                                        (_%E155128155141%_))))
                                (_%E155128155141%_)))
                          (_%E155128155141%_))))))
          (let* ((_%bind155088%_ (map _%generate1155086%_ _%hd155082%_))
                 (_%body155090%_
                  (if _%compiled-body?155084%_
                      _%body155083%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self155080%_ _%body155083%_))))
                 (_%body155122%_
                  (let* ((_%body155091155099%_ _%body155090%_)
                         (_%else155093155107%_
                          (lambda () (cons _%body155090%_ '())))
                         (_%K155095155112%_
                          (lambda (_%exprs155110%_) _%exprs155110%_)))
                    (if (pair? _%body155091155099%_)
                        (let ((_%hd155096155115%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body155091155099%_)))
                              (_%tl155097155117%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body155091155099%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd155096155115%_ 'begin))
                              (let ((_%exprs155120%_ _%tl155097155117%_))
                                (_%K155095155112%_ _%exprs155120%_))
                              (_%else155093155107%_)))
                        (_%else155093155107%_)))))
            (cons _%form155081%_ (cons _%bind155088%_ _%body155122%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self154980%_ _%stx154981%_)
        (letrec ((_%generate1154983%_
                  (lambda (_%datum155035%_)
                    (if (or (null? _%datum155035%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum155035%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum155035%_))
                            (eof-object? _%datum155035%_))
                        _%datum155035%_
                        (if (uninterned-symbol? _%datum155035%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum155035%_
                               '#t))
                            (if (pair? _%datum155035%_)
                                (cons (_%generate1154983%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum155035%_)))
                                      (_%generate1154983%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum155035%_))))
                                (if (box? _%datum155035%_)
                                    (box (_%generate1154983%_
                                          (unbox _%datum155035%_)))
                                    (if (vector? _%datum155035%_)
                                        (vector-map
                                         _%generate1154983%_
                                         _%datum155035%_)
                                        (if (or (s8vector? _%datum155035%_)
                                                (u8vector? _%datum155035%_)
                                                (s16vector? _%datum155035%_)
                                                (u16vector? _%datum155035%_)
                                                (s32vector? _%datum155035%_)
                                                (u32vector? _%datum155035%_)
                                                (s64vector? _%datum155035%_)
                                                (u64vector? _%datum155035%_)
                                                (f32vector? _%datum155035%_)
                                                (f64vector? _%datum155035%_))
                                            _%datum155035%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx154981%_)))))))))))
          (let* ((_%g154985154998%_
                  (lambda (_%g154986154995%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g154986154995%_))))
                 (_%g154984155032%_
                  (lambda (_%g154986155001%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g154986155001%_))
                        (let ((_%e154988155003%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g154986155001%_))))
                          (let ((_%hd154989155006%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154988155003%_)))
                                (_%tl154990155008%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154988155003%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl154990155008%_))
                                (let ((_%e154991155011%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl154990155008%_))))
                                  (let ((_%hd154992155014%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154991155011%_)))
                                        (_%tl154993155016%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154991155011%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl154993155016%_))
                                        ((lambda (_%L155019%_)
                                           (cons 'quote
                                                 (cons (_%generate1154983%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L155019%_)))
                                                       '())))
                                         _%hd154992155014%_)
                                        (_%g154985154998%_
                                         _%g154986155001%_))))
                                (_%g154985154998%_ _%g154986155001%_))))
                        (_%g154985154998%_ _%g154986155001%_)))))
            (_%g154984155032%_ _%stx154981%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self154421%_ _%stx154422%_)
        (letrec ((_%compile-call154424%_
                  (lambda (_%rator154713%_ _%rands154714%_)
                    (let ((_%rator154720%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self154421%_
                              _%rator154713%_)))
                          (_%rands154721%_
                           (map (lambda (_%g154715154717%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self154421%_
                                     _%g154715154717%_)))
                                _%rands154714%_)))
                      (let* ((_%__stx160523160524%_ _%rator154720%_)
                             (_%g154724154776%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx160523160524%_)))))
                        (let ((_%__kont160525160526%_
                               (lambda (_%L154900%_
                                        _%L154901%_
                                        _%L154902%_
                                        _%L154903%_)
                                 (if (let ((__tmp161195
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands154721%_)))
                                           (__tmp161193
                                            (length (let ((__tmp161194
                                                           (lambda (_%g154939154942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g154940154944%_)
                     (cons _%g154939154942%_ _%g154940154944%_))))
              (declare (not safe))
              (__foldr1 __tmp161194 '() _%L154902%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp161195 __tmp161193))
                                     (let* ((_%id154947%_ _%L154903%_)
                                            (_%args154956%_
                                             (let ((__tmp161196
                                                    (lambda (_%g154948154951%_
                                                             _%g154949154953%_)
                                                      (cons _%g154948154951%_
                                                            _%g154949154953%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp161196
                                                '()
                                                _%L154902%_)))
                                            (_%body154965%_
                                             (let ((__tmp161197
                                                    (lambda (_%g154957154960%_
                                                             _%g154958154962%_)
                                                      (cons _%g154957154960%_
                                                            _%g154958154962%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp161197
                                                '()
                                                _%L154901%_)))
                                            (_%init154967%_
                                             (map list
                                                  _%args154956%_
                                                  _%rands154721%_)))
                                       (cons 'let
                                             (cons _%id154947%_
                                                   (cons _%init154967%_
                                                         _%body154965%_))))
                                     (let ((__tmp161198
                                            (let ((__tmp161199
                                                   (lambda (_%g154969154972%_
                                                            _%g154970154974%_)
                                                     (cons _%g154969154972%_
                                                           _%g154970154974%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp161199
                                               '()
                                               _%L154902%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx154422%_
                                        __tmp161198
                                        _%rands154721%_)))))
                              (_%__kont160531160532%_
                               (lambda ()
                                 (cons _%rator154720%_ _%rands154721%_))))
                          (let ((_%__match160590160591%_
                                 (lambda (_%e154730154788%_
                                          _%hd154731154791%_
                                          _%tl154732154793%_
                                          _%e154733154796%_
                                          _%hd154734154799%_
                                          _%tl154735154801%_
                                          _%e154736154804%_
                                          _%hd154737154807%_
                                          _%tl154738154809%_
                                          _%e154739154812%_
                                          _%hd154740154815%_
                                          _%tl154741154817%_
                                          _%e154742154820%_
                                          _%hd154743154823%_
                                          _%tl154744154825%_
                                          _%e154745154828%_
                                          _%hd154746154831%_
                                          _%tl154747154833%_
                                          _%e154748154836%_
                                          _%hd154749154839%_
                                          _%tl154750154841%_
                                          _%__splice160527160528%_
                                          _%target154751154844%_
                                          _%tl154753154846%_)
                                   (letrec ((_%loop154754154849%_
                                             (lambda (_%hd154752154852%_
                                                      _%arg154758154854%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd154752154852%_))
                                                   (let ((_%e154755154857%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd154752154852%_))))
                                                     (let ((_%lp-tl154757154862%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e154755154857%_)))
                                                           (_%lp-hd154756154860%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e154755154857%_))))
                                                       (_%loop154754154849%_
                                                        _%lp-tl154757154862%_
                                                        (cons _%lp-hd154756154860%_
                                                              _%arg154758154854%_))))
                                                   (let ((_%arg154759154865%_
                                                          (reverse _%arg154758154854%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl154750154841%_))
                                                         (let ((_%__splice160529160530%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl154750154841%_
                           '0))))
                   (let ((_%tl154762154870%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice160529160530%_ '1)))
                         (_%target154760154868%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice160529160530%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl154762154870%_))
                         (letrec ((_%loop154763154873%_
                                   (lambda (_%hd154761154876%_
                                            _%body154767154878%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd154761154876%_))
                                         (let ((_%e154764154881%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd154761154876%_))))
                                           (let ((_%lp-tl154766154886%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e154764154881%_)))
                                                 (_%lp-hd154765154884%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e154764154881%_))))
                                             (_%loop154763154873%_
                                              _%lp-tl154766154886%_
                                              (cons _%lp-hd154765154884%_
                                                    _%body154767154878%_))))
                                         (let ((_%body154768154889%_
                                                (reverse _%body154767154878%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl154744154825%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl154738154809%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl154735154801%_))
                                                       (let ((_%e154769154892%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl154735154801%_))))
                 (let ((_%tl154771154897%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e154769154892%_)))
                       (_%hd154770154895%_
                        (let ()
                          (declare (not safe))
                          (##car _%e154769154892%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl154771154897%_))
                       (let ((_%L154900%_ _%hd154770154895%_)
                             (_%L154901%_ _%body154768154889%_)
                             (_%L154902%_ _%arg154759154865%_)
                             (_%L154903%_ _%hd154740154815%_))
                         (if (eq? _%L154903%_ _%L154900%_)
                             (_%__kont160525160526%_
                              _%L154900%_
                              _%L154901%_
                              _%L154902%_
                              _%L154903%_)
                             (_%__kont160531160532%_)))
                       (_%__kont160531160532%_))))
               (_%__kont160531160532%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont160531160532%_))
                                               (_%__kont160531160532%_)))))))
                           (_%loop154763154873%_ _%target154760154868%_ '()))
                         (_%__kont160531160532%_))))
                 (_%__kont160531160532%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop154754154849%_
                                      _%target154751154844%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx160523160524%_))
                                (let ((_%e154730154788%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx160523160524%_))))
                                  (let ((_%tl154732154793%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154730154788%_)))
                                        (_%hd154731154791%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154730154788%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd154731154791%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd154731154791%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl154732154793%_))
                                                (let ((_%e154733154796%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl154732154793%_))))
                                                  (let ((_%tl154735154801%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e154733154796%_)))
                                                        (_%hd154734154799%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e154733154796%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd154734154799%_))
                                                        (let ((_%e154736154804%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd154734154799%_))))
                  (let ((_%tl154738154809%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e154736154804%_)))
                        (_%hd154737154807%_
                         (let ()
                           (declare (not safe))
                           (##car _%e154736154804%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd154737154807%_))
                        (let ((_%e154739154812%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd154737154807%_))))
                          (let ((_%tl154741154817%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154739154812%_)))
                                (_%hd154740154815%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154739154812%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl154741154817%_))
                                (let ((_%e154742154820%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl154741154817%_))))
                                  (let ((_%tl154744154825%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154742154820%_)))
                                        (_%hd154743154823%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154742154820%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd154743154823%_))
                                        (let ((_%e154745154828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd154743154823%_))))
                                          (let ((_%tl154747154833%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e154745154828%_)))
                                                (_%hd154746154831%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e154745154828%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd154746154831%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd154746154831%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl154747154833%_))
                                                        (let ((_%e154748154836%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl154747154833%_))))
                  (let ((_%tl154750154841%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e154748154836%_)))
                        (_%hd154749154839%_
                         (let ()
                           (declare (not safe))
                           (##car _%e154748154836%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd154749154839%_))
                        (let ((_%__splice160527160528%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd154749154839%_
                                  '0))))
                          (let ((_%tl154753154846%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice160527160528%_ '1)))
                                (_%target154751154844%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice160527160528%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl154753154846%_))
                                (_%__match160590160591%_
                                 _%e154730154788%_
                                 _%hd154731154791%_
                                 _%tl154732154793%_
                                 _%e154733154796%_
                                 _%hd154734154799%_
                                 _%tl154735154801%_
                                 _%e154736154804%_
                                 _%hd154737154807%_
                                 _%tl154738154809%_
                                 _%e154739154812%_
                                 _%hd154740154815%_
                                 _%tl154741154817%_
                                 _%e154742154820%_
                                 _%hd154743154823%_
                                 _%tl154744154825%_
                                 _%e154745154828%_
                                 _%hd154746154831%_
                                 _%tl154747154833%_
                                 _%e154748154836%_
                                 _%hd154749154839%_
                                 _%tl154750154841%_
                                 _%__splice160527160528%_
                                 _%target154751154844%_
                                 _%tl154753154846%_)
                                (_%__kont160531160532%_))))
                        (_%__kont160531160532%_))))
                (_%__kont160531160532%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont160531160532%_))
                                                (_%__kont160531160532%_))))
                                        (_%__kont160531160532%_))))
                                (_%__kont160531160532%_))))
                        (_%__kont160531160532%_))))
                (_%__kont160531160532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont160531160532%_))
                                            (_%__kont160531160532%_))
                                        (_%__kont160531160532%_))))
                                (_%__kont160531160532%_)))))))))
          (let* ((_%g154426154449%_
                  (lambda (_%g154427154446%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g154427154446%_))))
                 (_%g154425154710%_
                  (lambda (_%g154427154452%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g154427154452%_))
                        (let ((_%e154430154454%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g154427154452%_))))
                          (let ((_%hd154431154457%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154430154454%_)))
                                (_%tl154432154459%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154430154454%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl154432154459%_))
                                (let ((_%e154433154462%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl154432154459%_))))
                                  (let ((_%hd154434154465%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154433154462%_)))
                                        (_%tl154435154467%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154433154462%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl154435154467%_))
                                        (let ((_g161200_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl154435154467%_
                                                  '0))))
                                          (begin
                                            (let ((_g161201_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g161200_)
                                                         (##values-length
                                                          _g161200_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g161201_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g161201_)))
                                            (let ((_%target154436154470%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g161200_
                                                      0)))
                                                  (_%tl154438154472%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g161200_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl154438154472%_))
                                                  (letrec ((_%loop154439154475%_
                                                            (lambda (_%hd154437154478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand154443154480%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd154437154478%_))
                          (let ((_%e154440154483%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd154437154478%_))))
                            (let ((_%lp-hd154441154486%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e154440154483%_)))
                                  (_%lp-tl154442154488%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e154440154483%_))))
                              (_%loop154439154475%_
                               _%lp-tl154442154488%_
                               (cons _%lp-hd154441154486%_
                                     _%rand154443154480%_))))
                          (let ((_%rand154444154491%_
                                 (reverse _%rand154443154480%_)))
                            ((lambda (_%L154494%_ _%L154495%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call154424%_
                                    _%L154495%_
                                    (let ((__tmp161202
                                           (lambda (_%g154512154515%_
                                                    _%g154513154517%_)
                                             (cons _%g154512154515%_
                                                   _%g154513154517%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp161202 '() _%L154494%_)))
                                   (let* ((_%__stx160639160640%_ _%L154495%_)
                                          (_%g154521154533%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx160639160640%_)))))
                                     (let ((_%__kont160641160642%_
                                            (lambda ()
                                              (let ((_%f154570%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self154421%_
                                                        _%L154495%_))))
                                                (if (and (let ((__tmp161203
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f154570%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp161203))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f154570%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp154572%_ ((_%rest154575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp161205
                                                (lambda (_%g154692154695%_
                                                         _%g154693154697%_)
                                                  (cons _%g154692154695%_
                                                        _%g154693154697%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp161205
                                            '()
                                            _%L154494%_))))
                               (_%bind154577%_ '())
                               (_%args154578%_ '()))
              (let* ((_%rest154579154587%_ _%rest154575%_)
                     (_%else154581154595%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind154577%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f154570%_
                                                      _%args154578%_)
                                                '()))))))
                     (_%K154583154681%_
                      (lambda (_%rest154598%_ _%e154599%_)
                        (let* ((_%__stx160593160594%_ _%e154599%_)
                               (_%g154604154622%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx160593160594%_)))))
                          (let ((_%__kont160595160596%_
                                 (lambda ()
                                   (_%lp154572%_
                                    _%rest154598%_
                                    _%bind154577%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e154599%_))
                                          _%args154578%_))))
                                (_%__kont160597160598%_
                                 (lambda ()
                                   (_%lp154572%_
                                    _%rest154598%_
                                    _%bind154577%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e154599%_))
                                          _%args154578%_))))
                                (_%__kont160599160600%_
                                 (lambda ()
                                   (let ((_%tmp154629%_
                                          (let ((__tmp161204
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp161204))))
                                     (_%lp154572%_
                                      _%rest154598%_
                                      (cons (cons _%tmp154629%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e154599%_))
                                                        '()))
                                            _%bind154577%_)
                                      (cons _%tmp154629%_ _%args154578%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx160593160594%_))
                                (let ((_%e154606154660%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx160593160594%_))))
                                  (let ((_%tl154608154665%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154606154660%_)))
                                        (_%hd154607154663%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154606154660%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd154607154663%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd154607154663%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl154608154665%_))
                                                (let ((_%e154609154668%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl154608154665%_))))
                                                  (let ((_%tl154611154673%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e154609154668%_)))
                                                        (_%hd154610154671%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e154609154668%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl154611154673%_))
                                                        (_%__kont160595160596%_)
                                                        (_%__kont160599160600%_))))
                                                (_%__kont160599160600%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd154607154663%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl154608154665%_))
                                                    (let ((_%e154615154645%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl154608154665%_))))
                                                      (let ((_%tl154617154650%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e154615154645%_)))
                    (_%hd154616154648%_
                     (let () (declare (not safe)) (##car _%e154615154645%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl154617154650%_))
                    (_%__kont160597160598%_)
                    (_%__kont160599160600%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont160599160600%_))
                                                (_%__kont160599160600%_)))
                                        (_%__kont160599160600%_))))
                                (_%__kont160599160600%_)))))))
                (if (pair? _%rest154579154587%_)
                    (let ((_%hd154584154684%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest154579154587%_)))
                          (_%tl154585154686%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest154579154587%_))))
                      (let* ((_%e154689%_ _%hd154584154684%_)
                             (_%rest154691%_ _%tl154585154686%_))
                        (_%K154583154681%_ _%rest154691%_ _%e154689%_)))
                    (_%else154581154595%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call154424%_
                                                     _%L154495%_
                                                     (let ((__tmp161206
                                                            (lambda (_%g154699154702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g154700154704%_)
                      (cons _%g154699154702%_ _%g154700154704%_))))
               (declare (not safe))
               (__foldr1 __tmp161206 '() _%L154494%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont160643160644%_
                                            (lambda ()
                                              (_%compile-call154424%_
                                               _%L154495%_
                                               (let ((__tmp161207
                                                      (lambda (_%g154539154542%_
                                                               _%g154540154544%_)
                                                        (cons _%g154539154542%_
                                                              _%g154540154544%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp161207
                                                  '()
                                                  _%L154494%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx160639160640%_))
                                           (let ((_%e154523154552%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx160639160640%_))))
                                             (let ((_%tl154525154557%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e154523154552%_)))
                                                   (_%hd154524154555%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e154523154552%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd154524154555%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd154524154555%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl154525154557%_))
                                                           (let ((_%e154526154560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl154525154557%_))))
                     (let ((_%tl154528154565%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e154526154560%_)))
                           (_%hd154527154563%_
                            (let ()
                              (declare (not safe))
                              (##car _%e154526154560%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl154528154565%_))
                           (_%__kont160641160642%_)
                           (_%__kont160643160644%_))))
                   (_%__kont160643160644%_))
               (_%__kont160643160644%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont160643160644%_))))
                                           (_%__kont160643160644%_))))))
                             _%rand154444154491%_
                             _%hd154434154465%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop154439154475%_
                                                     _%target154436154470%_
                                                     '()))
                                                  (_%g154426154449%_
                                                   _%g154427154452%_)))))
                                        (_%g154426154449%_
                                         _%g154427154452%_))))
                                (_%g154426154449%_ _%g154427154452%_))))
                        (_%g154426154449%_ _%g154427154452%_)))))
            (_%g154425154710%_ _%stx154422%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self154164%_ _%stx154165%_)
        (let* ((_%__stx160711160712%_ _%stx154165%_)
               (_%g154168154197%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx160711160712%_)))))
          (let ((_%__kont160713160714%_
                 (lambda (_%L154265%_ _%L154266%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self154164%_
                        _%stx154165%_)
                       (let ((_%f154288%_
                              (let ((__tmp161208
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L154266%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self154164%_
                                 __tmp161208))))
                         (let _%lp154290%_ ((_%rest154293%_
                                             (reverse (let ((__tmp161210
                                                             (lambda (_%g154410154413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g154411154415%_)
                       (cons _%g154410154413%_ _%g154411154415%_))))
                (declare (not safe))
                (__foldr1 __tmp161210 '() _%L154265%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind154295%_ '())
                                            (_%args154296%_ '()))
                           (let* ((_%rest154297154305%_ _%rest154293%_)
                                  (_%else154299154313%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind154295%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f154288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args154296%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K154301154399%_
                                   (lambda (_%rest154316%_ _%e154317%_)
                                     (let* ((_%__stx160665160666%_ _%e154317%_)
                                            (_%g154322154340%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx160665160666%_)))))
                                       (let ((_%__kont160667160668%_
                                              (lambda ()
                                                (_%lp154290%_
                                                 _%rest154316%_
                                                 _%bind154295%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e154317%_))
                                                       _%args154296%_))))
                                             (_%__kont160669160670%_
                                              (lambda ()
                                                (_%lp154290%_
                                                 _%rest154316%_
                                                 _%bind154295%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e154317%_))
                                                       _%args154296%_))))
                                             (_%__kont160671160672%_
                                              (lambda ()
                                                (let ((_%tmp154347%_
                                                       (let ((__tmp161209
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp161209))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp154290%_
                                                   _%rest154316%_
                                                   (cons (cons _%tmp154347%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e154317%_))
                             '()))
                 _%bind154295%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp154347%_
                                                         _%args154296%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx160665160666%_))
                                             (let ((_%e154324154378%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx160665160666%_))))
                                               (let ((_%tl154326154383%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e154324154378%_)))
                                                     (_%hd154325154381%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e154324154378%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd154325154381%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd154325154381%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl154326154383%_))
                     (let ((_%e154327154386%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl154326154383%_))))
                       (let ((_%tl154329154391%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e154327154386%_)))
                             (_%hd154328154389%_
                              (let ()
                                (declare (not safe))
                                (##car _%e154327154386%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl154329154391%_))
                             (_%__kont160667160668%_)
                             (_%__kont160671160672%_))))
                     (_%__kont160671160672%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd154325154381%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl154326154383%_))
                         (let ((_%e154333154363%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl154326154383%_))))
                           (let ((_%tl154335154368%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e154333154363%_)))
                                 (_%hd154334154366%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e154333154363%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl154335154368%_))
                                 (_%__kont160669160670%_)
                                 (_%__kont160671160672%_))))
                         (_%__kont160671160672%_))
                     (_%__kont160671160672%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont160671160672%_))))
                                             (_%__kont160671160672%_)))))))
                             (if (pair? _%rest154297154305%_)
                                 (let ((_%hd154302154402%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest154297154305%_)))
                                       (_%tl154303154404%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest154297154305%_))))
                                   (let* ((_%e154407%_ _%hd154302154402%_)
                                          (_%rest154409%_ _%tl154303154404%_))
                                     (_%K154301154399%_
                                      _%rest154409%_
                                      _%e154407%_)))
                                 (_%else154299154313%_))))))))
                (_%__kont160717160718%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self154164%_ _%stx154165%_))))
            (let ((_%__match160756160757%_
                   (lambda (_%e154172154209%_
                            _%hd154173154212%_
                            _%tl154174154214%_
                            _%e154175154217%_
                            _%hd154176154220%_
                            _%tl154177154222%_
                            _%e154178154225%_
                            _%hd154179154228%_
                            _%tl154180154230%_
                            _%e154181154233%_
                            _%hd154182154236%_
                            _%tl154183154238%_
                            _%__splice160715160716%_
                            _%target154184154241%_
                            _%tl154186154243%_)
                     (letrec ((_%loop154187154246%_
                               (lambda (_%hd154185154249%_
                                        _%rand154191154251%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd154185154249%_))
                                     (let ((_%e154188154254%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd154185154249%_))))
                                       (let ((_%lp-tl154190154259%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e154188154254%_)))
                                             (_%lp-hd154189154257%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e154188154254%_))))
                                         (_%loop154187154246%_
                                          _%lp-tl154190154259%_
                                          (cons _%lp-hd154189154257%_
                                                _%rand154191154251%_))))
                                     (let ((_%rand154192154262%_
                                            (reverse _%rand154191154251%_)))
                                       (_%__kont160713160714%_
                                        _%rand154192154262%_
                                        _%hd154182154236%_))))))
                       (_%loop154187154246%_ _%target154184154241%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx160711160712%_))
                  (let ((_%e154172154209%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx160711160712%_))))
                    (let ((_%tl154174154214%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e154172154209%_)))
                          (_%hd154173154212%_
                           (let ()
                             (declare (not safe))
                             (##car _%e154172154209%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl154174154214%_))
                          (let ((_%e154175154217%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl154174154214%_))))
                            (let ((_%tl154177154222%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e154175154217%_)))
                                  (_%hd154176154220%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e154175154217%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd154176154220%_))
                                  (let ((_%e154178154225%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd154176154220%_))))
                                    (let ((_%tl154180154230%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e154178154225%_)))
                                          (_%hd154179154228%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e154178154225%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd154179154228%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd154179154228%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl154180154230%_))
                                                  (let ((_%e154181154233%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl154180154230%_))))
                                                    (let ((_%tl154183154238%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e154181154233%_)))
                                                          (_%hd154182154236%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e154181154233%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl154183154238%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl154177154222%_))
                      (let ((_%__splice160715160716%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl154177154222%_
                                '0))))
                        (let ((_%tl154186154243%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice160715160716%_ '1)))
                              (_%target154184154241%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice160715160716%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl154186154243%_))
                              (_%__match160756160757%_
                               _%e154172154209%_
                               _%hd154173154212%_
                               _%tl154174154214%_
                               _%e154175154217%_
                               _%hd154176154220%_
                               _%tl154177154222%_
                               _%e154178154225%_
                               _%hd154179154228%_
                               _%tl154180154230%_
                               _%e154181154233%_
                               _%hd154182154236%_
                               _%tl154183154238%_
                               _%__splice160715160716%_
                               _%target154184154241%_
                               _%tl154186154243%_)
                              (_%__kont160717160718%_))))
                      (_%__kont160717160718%_))
                  (_%__kont160717160718%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont160717160718%_))
                                              (_%__kont160717160718%_))
                                          (_%__kont160717160718%_))))
                                  (_%__kont160717160718%_))))
                          (_%__kont160717160718%_))))
                  (_%__kont160717160718%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self153976%_ _%stx153977%_)
        (letrec ((_%simplify153979%_
                  (lambda (_%code154064%_)
                    (let* ((_%code154065154083%_ _%code154064%_)
                           (_%else154067154091%_ (lambda () _%code154064%_))
                           (_%K154069154127%_
                            (lambda (_%expr154094%_ _%test154095%_)
                              (let* ((_%expr154096154104%_ _%expr154094%_)
                                     (_%else154098154112%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test154095%_
                                                    (cons _%expr154094%_
                                                          '())))))
                                     (_%K154100154117%_
                                      (lambda (_%exprs154115%_)
                                        (cons 'and
                                              (cons _%test154095%_
                                                    _%exprs154115%_)))))
                                (if (pair? _%expr154096154104%_)
                                    (let ((_%hd154101154120%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr154096154104%_)))
                                          (_%tl154102154122%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr154096154104%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd154101154120%_ 'and))
                                          (let ((_%exprs154125%_
                                                 _%tl154102154122%_))
                                            (_%K154100154117%_
                                             _%exprs154125%_))
                                          (_%else154098154112%_)))
                                    (_%else154098154112%_))))))
                      (if (pair? _%code154065154083%_)
                          (let ((_%hd154070154130%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code154065154083%_)))
                                (_%tl154071154132%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code154065154083%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd154070154130%_ 'if))
                                (if (pair? _%tl154071154132%_)
                                    (let ((_%hd154072154135%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl154071154132%_)))
                                          (_%tl154073154137%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl154071154132%_))))
                                      (let ((_%test154140%_
                                             _%hd154072154135%_))
                                        (if (pair? _%tl154073154137%_)
                                            (let ((_%hd154074154142%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl154073154137%_)))
                                                  (_%tl154075154144%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl154073154137%_))))
                                              (let ((_%expr154147%_
                                                     _%hd154074154142%_))
                                                (if (pair? _%tl154075154144%_)
                                                    (let ((_%hd154076154149%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl154075154144%_)))
                                                          (_%tl154077154151%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl154075154144%_))))
                                                      (if (pair? _%hd154076154149%_)
                                                          (let ((_%hd154078154154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd154076154149%_)))
                        (_%tl154079154156%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd154076154149%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd154078154154%_ 'quote))
                        (if (pair? _%tl154079154156%_)
                            (let ((_%hd154080154159%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl154079154156%_)))
                                  (_%tl154081154161%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl154079154156%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd154080154159%_ '#f))
                                  (if (null? _%tl154081154161%_)
                                      (if (null? _%tl154077154151%_)
                                          (_%K154069154127%_
                                           _%expr154147%_
                                           _%test154140%_)
                                          (_%else154067154091%_))
                                      (_%else154067154091%_))
                                  (_%else154067154091%_)))
                            (_%else154067154091%_))
                        (_%else154067154091%_)))
                  (_%else154067154091%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else154067154091%_))))
                                            (_%else154067154091%_))))
                                    (_%else154067154091%_))
                                (_%else154067154091%_)))
                          (_%else154067154091%_))))))
          (let* ((_%g153981154002%_
                  (lambda (_%g153982153999%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g153982153999%_))))
                 (_%g153980154061%_
                  (lambda (_%g153982154005%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g153982154005%_))
                        (let ((_%e153986154007%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g153982154005%_))))
                          (let ((_%hd153987154010%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153986154007%_)))
                                (_%tl153988154012%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153986154007%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl153988154012%_))
                                (let ((_%e153989154015%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl153988154012%_))))
                                  (let ((_%hd153990154018%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e153989154015%_)))
                                        (_%tl153991154020%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e153989154015%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl153991154020%_))
                                        (let ((_%e153992154023%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl153991154020%_))))
                                          (let ((_%hd153993154026%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e153992154023%_)))
                                                (_%tl153994154028%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e153992154023%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl153994154028%_))
                                                (let ((_%e153995154031%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl153994154028%_))))
                                                  (let ((_%hd153996154034%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e153995154031%_)))
                                                        (_%tl153997154036%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e153995154031%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl153997154036%_))
                                                        ((lambda (_%L154039%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L154040%_
                          _%L154041%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify153979%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self153976%_
                                       _%L154041%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self153976%_
                                             _%L154040%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self153976%_
                                                   _%L154039%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp161211
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self153976%_
                                               _%L154041%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp161211
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self153976%_
                                            _%L154040%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self153976%_
                                                  _%L154039%_))
                                               '()))))))
                 _%hd153996154034%_
                 _%hd153993154026%_
                 _%hd153990154018%_)
                (_%g153981154002%_ _%g153982154005%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g153981154002%_
                                                 _%g153982154005%_))))
                                        (_%g153981154002%_
                                         _%g153982154005%_))))
                                (_%g153981154002%_ _%g153982154005%_))))
                        (_%g153981154002%_ _%g153982154005%_)))))
            (_%g153980154061%_ _%stx153977%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self153924%_ _%stx153925%_)
        (let* ((_%g153927153940%_
                (lambda (_%g153928153937%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153928153937%_))))
               (_%g153926153973%_
                (lambda (_%g153928153943%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153928153943%_))
                      (let ((_%e153930153945%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153928153943%_))))
                        (let ((_%hd153931153948%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153930153945%_)))
                              (_%tl153932153950%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153930153945%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153932153950%_))
                              (let ((_%e153933153953%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153932153950%_))))
                                (let ((_%hd153934153956%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153933153953%_)))
                                      (_%tl153935153958%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153933153953%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153935153958%_))
                                      ((lambda (_%L153961%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L153961%_)))
                                       _%hd153934153956%_)
                                      (_%g153927153940%_ _%g153928153943%_))))
                              (_%g153927153940%_ _%g153928153943%_))))
                      (_%g153927153940%_ _%g153928153943%_)))))
          (_%g153926153973%_ _%stx153925%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self153856%_ _%stx153857%_)
        (let* ((_%g153859153876%_
                (lambda (_%g153860153873%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153860153873%_))))
               (_%g153858153921%_
                (lambda (_%g153860153879%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153860153879%_))
                      (let ((_%e153863153881%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153860153879%_))))
                        (let ((_%hd153864153884%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153863153881%_)))
                              (_%tl153865153886%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153863153881%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153865153886%_))
                              (let ((_%e153866153889%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153865153886%_))))
                                (let ((_%hd153867153892%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153866153889%_)))
                                      (_%tl153868153894%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153866153889%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153868153894%_))
                                      (let ((_%e153869153897%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153868153894%_))))
                                        (let ((_%hd153870153900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153869153897%_)))
                                              (_%tl153871153902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153869153897%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153871153902%_))
                                              ((lambda (_%L153905%_
                                                        _%L153906%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L153906%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self153856%_ _%L153905%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd153870153900%_
                                               _%hd153867153892%_)
                                              (_%g153859153876%_
                                               _%g153860153879%_))))
                                      (_%g153859153876%_ _%g153860153879%_))))
                              (_%g153859153876%_ _%g153860153879%_))))
                      (_%g153859153876%_ _%g153860153879%_)))))
          (_%g153858153921%_ _%stx153857%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self153667%_ _%stx153668%_)
        (let* ((_%g153670153687%_
                (lambda (_%g153671153684%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153671153684%_))))
               (_%g153669153853%_
                (lambda (_%g153671153690%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153671153690%_))
                      (let ((_%e153674153692%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153671153690%_))))
                        (let ((_%hd153675153695%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153674153692%_)))
                              (_%tl153676153697%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153674153692%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153676153697%_))
                              (let ((_%e153677153700%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153676153697%_))))
                                (let ((_%hd153678153703%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153677153700%_)))
                                      (_%tl153679153705%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153677153700%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153679153705%_))
                                      (let ((_%e153680153708%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153679153705%_))))
                                        (let ((_%hd153681153711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153680153708%_)))
                                              (_%tl153682153713%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153680153708%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153682153713%_))
                                              ((lambda (_%L153716%_
                                                        _%L153717%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self153667%_ _%L153716%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self153667%_ _%L153717%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp153732%_ ((_%rest153735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L153717%_ (cons _%L153716%_ '())))
                                (_%bind153737%_ '())
                                (_%args153738%_ '()))
               (let* ((_%rest153739153747%_ _%rest153735%_)
                      (_%else153741153755%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind153737%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args153738%_)
                                                 '()))))))
                      (_%K153743153841%_
                       (lambda (_%rest153758%_ _%e153759%_)
                         (let* ((_%__stx160759160760%_ _%e153759%_)
                                (_%g153764153782%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx160759160760%_)))))
                           (let ((_%__kont160761160762%_
                                  (lambda ()
                                    (_%lp153732%_
                                     _%rest153758%_
                                     _%bind153737%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e153759%_))
                                           _%args153738%_))))
                                 (_%__kont160763160764%_
                                  (lambda ()
                                    (_%lp153732%_
                                     _%rest153758%_
                                     _%bind153737%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e153759%_))
                                           _%args153738%_))))
                                 (_%__kont160765160766%_
                                  (lambda ()
                                    (let ((_%tmp153789%_
                                           (let ((__tmp161212
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp161212))))
                                      (_%lp153732%_
                                       _%rest153758%_
                                       (cons (cons _%tmp153789%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e153759%_))
                                                         '()))
                                             _%bind153737%_)
                                       (cons _%tmp153789%_ _%args153738%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx160759160760%_))
                                 (let ((_%e153766153820%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx160759160760%_))))
                                   (let ((_%tl153768153825%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e153766153820%_)))
                                         (_%hd153767153823%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e153766153820%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd153767153823%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd153767153823%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl153768153825%_))
                                                 (let ((_%e153769153828%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl153768153825%_))))
                                                   (let ((_%tl153771153833%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e153769153828%_)))
                                                         (_%hd153770153831%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e153769153828%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl153771153833%_))
                                                         (_%__kont160761160762%_)
                                                         (_%__kont160765160766%_))))
                                                 (_%__kont160765160766%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd153767153823%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl153768153825%_))
                                                     (let ((_%e153775153805%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl153768153825%_))))
                                                       (let ((_%tl153777153810%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e153775153805%_)))
                     (_%hd153776153808%_
                      (let () (declare (not safe)) (##car _%e153775153805%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl153777153810%_))
                     (_%__kont160763160764%_)
                     (_%__kont160765160766%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont160765160766%_))
                                                 (_%__kont160765160766%_)))
                                         (_%__kont160765160766%_))))
                                 (_%__kont160765160766%_)))))))
                 (if (pair? _%rest153739153747%_)
                     (let ((_%hd153744153844%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest153739153747%_)))
                           (_%tl153745153846%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest153739153747%_))))
                       (let* ((_%e153849%_ _%hd153744153844%_)
                              (_%rest153851%_ _%tl153745153846%_))
                         (_%K153743153841%_ _%rest153851%_ _%e153849%_)))
                     (_%else153741153755%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd153681153711%_
                                               _%hd153678153703%_)
                                              (_%g153670153687%_
                                               _%g153671153690%_))))
                                      (_%g153670153687%_ _%g153671153690%_))))
                              (_%g153670153687%_ _%g153671153690%_))))
                      (_%g153670153687%_ _%g153671153690%_)))))
          (_%g153669153853%_ _%stx153668%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self153478%_ _%stx153479%_)
        (let* ((_%g153481153498%_
                (lambda (_%g153482153495%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153482153495%_))))
               (_%g153480153664%_
                (lambda (_%g153482153501%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153482153501%_))
                      (let ((_%e153485153503%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153482153501%_))))
                        (let ((_%hd153486153506%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153485153503%_)))
                              (_%tl153487153508%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153485153503%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153487153508%_))
                              (let ((_%e153488153511%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153487153508%_))))
                                (let ((_%hd153489153514%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153488153511%_)))
                                      (_%tl153490153516%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153488153511%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153490153516%_))
                                      (let ((_%e153491153519%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153490153516%_))))
                                        (let ((_%hd153492153522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153491153519%_)))
                                              (_%tl153493153524%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153491153519%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153493153524%_))
                                              ((lambda (_%L153527%_
                                                        _%L153528%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self153478%_ _%L153527%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self153478%_ _%L153528%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp153543%_ ((_%rest153546%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L153528%_ (cons _%L153527%_ '())))
                                (_%bind153548%_ '())
                                (_%args153549%_ '()))
               (let* ((_%rest153550153558%_ _%rest153546%_)
                      (_%else153552153566%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind153548%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args153549%_)
                                                 '()))))))
                      (_%K153554153652%_
                       (lambda (_%rest153569%_ _%e153570%_)
                         (let* ((_%__stx160805160806%_ _%e153570%_)
                                (_%g153575153593%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx160805160806%_)))))
                           (let ((_%__kont160807160808%_
                                  (lambda ()
                                    (_%lp153543%_
                                     _%rest153569%_
                                     _%bind153548%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e153570%_))
                                           _%args153549%_))))
                                 (_%__kont160809160810%_
                                  (lambda ()
                                    (_%lp153543%_
                                     _%rest153569%_
                                     _%bind153548%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e153570%_))
                                           _%args153549%_))))
                                 (_%__kont160811160812%_
                                  (lambda ()
                                    (let ((_%tmp153600%_
                                           (let ((__tmp161213
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp161213))))
                                      (_%lp153543%_
                                       _%rest153569%_
                                       (cons (cons _%tmp153600%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e153570%_))
                                                         '()))
                                             _%bind153548%_)
                                       (cons _%tmp153600%_ _%args153549%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx160805160806%_))
                                 (let ((_%e153577153631%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx160805160806%_))))
                                   (let ((_%tl153579153636%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e153577153631%_)))
                                         (_%hd153578153634%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e153577153631%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd153578153634%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd153578153634%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl153579153636%_))
                                                 (let ((_%e153580153639%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl153579153636%_))))
                                                   (let ((_%tl153582153644%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e153580153639%_)))
                                                         (_%hd153581153642%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e153580153639%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl153582153644%_))
                                                         (_%__kont160807160808%_)
                                                         (_%__kont160811160812%_))))
                                                 (_%__kont160811160812%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd153578153634%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl153579153636%_))
                                                     (let ((_%e153586153616%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl153579153636%_))))
                                                       (let ((_%tl153588153621%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e153586153616%_)))
                     (_%hd153587153619%_
                      (let () (declare (not safe)) (##car _%e153586153616%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl153588153621%_))
                     (_%__kont160809160810%_)
                     (_%__kont160811160812%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont160811160812%_))
                                                 (_%__kont160811160812%_)))
                                         (_%__kont160811160812%_))))
                                 (_%__kont160811160812%_)))))))
                 (if (pair? _%rest153550153558%_)
                     (let ((_%hd153555153655%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest153550153558%_)))
                           (_%tl153556153657%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest153550153558%_))))
                       (let* ((_%e153660%_ _%hd153555153655%_)
                              (_%rest153662%_ _%tl153556153657%_))
                         (_%K153554153652%_ _%rest153662%_ _%e153660%_)))
                     (_%else153552153566%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd153492153522%_
                                               _%hd153489153514%_)
                                              (_%g153481153498%_
                                               _%g153482153501%_))))
                                      (_%g153481153498%_ _%g153482153501%_))))
                              (_%g153481153498%_ _%g153482153501%_))))
                      (_%g153481153498%_ _%g153482153501%_)))))
          (_%g153480153664%_ _%stx153479%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self153394%_ _%stx153395%_)
        (let* ((_%g153397153418%_
                (lambda (_%g153398153415%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153398153415%_))))
               (_%g153396153475%_
                (lambda (_%g153398153421%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153398153421%_))
                      (let ((_%e153402153423%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153398153421%_))))
                        (let ((_%hd153403153426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153402153423%_)))
                              (_%tl153404153428%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153402153423%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153404153428%_))
                              (let ((_%e153405153431%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153404153428%_))))
                                (let ((_%hd153406153434%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153405153431%_)))
                                      (_%tl153407153436%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153405153431%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153407153436%_))
                                      (let ((_%e153408153439%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153407153436%_))))
                                        (let ((_%hd153409153442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153408153439%_)))
                                              (_%tl153410153444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153408153439%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153410153444%_))
                                              (let ((_%e153411153447%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153410153444%_))))
                                                (let ((_%hd153412153450%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153411153447%_)))
                                                      (_%tl153413153452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153411153447%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl153413153452%_))
                                                      ((lambda (_%L153455%_
                                                                _%L153456%_
                                                                _%L153457%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self153394%_ _%L153455%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self153394%_
                                      _%L153456%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self153394%_
                                            _%L153457%_))
                                         (cons ''#f '()))))))
               _%hd153412153450%_
               _%hd153409153442%_
               _%hd153406153434%_)
              (_%g153397153418%_ _%g153398153421%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g153397153418%_
                                               _%g153398153421%_))))
                                      (_%g153397153418%_ _%g153398153421%_))))
                              (_%g153397153418%_ _%g153398153421%_))))
                      (_%g153397153418%_ _%g153398153421%_)))))
          (_%g153396153475%_ _%stx153395%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self153294%_ _%stx153295%_)
        (let* ((_%g153297153322%_
                (lambda (_%g153298153319%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153298153319%_))))
               (_%g153296153391%_
                (lambda (_%g153298153325%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153298153325%_))
                      (let ((_%e153303153327%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153298153325%_))))
                        (let ((_%hd153304153330%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153303153327%_)))
                              (_%tl153305153332%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153303153327%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153305153332%_))
                              (let ((_%e153306153335%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153305153332%_))))
                                (let ((_%hd153307153338%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153306153335%_)))
                                      (_%tl153308153340%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153306153335%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153308153340%_))
                                      (let ((_%e153309153343%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153308153340%_))))
                                        (let ((_%hd153310153346%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153309153343%_)))
                                              (_%tl153311153348%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153309153343%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153311153348%_))
                                              (let ((_%e153312153351%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153311153348%_))))
                                                (let ((_%hd153313153354%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153312153351%_)))
                                                      (_%tl153314153356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153312153351%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl153314153356%_))
                                                      (let ((_%e153315153359%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl153314153356%_))))
                (let ((_%hd153316153362%_
                       (let () (declare (not safe)) (##car _%e153315153359%_)))
                      (_%tl153317153364%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e153315153359%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl153317153364%_))
                      ((lambda (_%L153367%_
                                _%L153368%_
                                _%L153369%_
                                _%L153370%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self153294%_
                                        _%L153368%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self153294%_
                                              _%L153367%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self153294%_
                                                    _%L153369%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self153294%_
                                                          _%L153370%_))
                                                       (cons ''#f '())))))))
                       _%hd153316153362%_
                       _%hd153313153354%_
                       _%hd153310153346%_
                       _%hd153307153338%_)
                      (_%g153297153322%_ _%g153298153325%_))))
              (_%g153297153322%_ _%g153298153325%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g153297153322%_
                                               _%g153298153325%_))))
                                      (_%g153297153322%_ _%g153298153325%_))))
                              (_%g153297153322%_ _%g153298153325%_))))
                      (_%g153297153322%_ _%g153298153325%_)))))
          (_%g153296153391%_ _%stx153295%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self153210%_ _%stx153211%_)
        (let* ((_%g153213153234%_
                (lambda (_%g153214153231%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153214153231%_))))
               (_%g153212153291%_
                (lambda (_%g153214153237%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153214153237%_))
                      (let ((_%e153218153239%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153214153237%_))))
                        (let ((_%hd153219153242%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153218153239%_)))
                              (_%tl153220153244%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153218153239%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153220153244%_))
                              (let ((_%e153221153247%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153220153244%_))))
                                (let ((_%hd153222153250%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153221153247%_)))
                                      (_%tl153223153252%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153221153247%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153223153252%_))
                                      (let ((_%e153224153255%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153223153252%_))))
                                        (let ((_%hd153225153258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153224153255%_)))
                                              (_%tl153226153260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153224153255%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153226153260%_))
                                              (let ((_%e153227153263%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153226153260%_))))
                                                (let ((_%hd153228153266%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153227153263%_)))
                                                      (_%tl153229153268%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153227153263%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl153229153268%_))
                                                      ((lambda (_%L153271%_
                                                                _%L153272%_
                                                                _%L153273%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self153210%_ _%L153271%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self153210%_
                                      _%L153272%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self153210%_
                                            _%L153273%_))
                                         (cons ''#f '()))))))
               _%hd153228153266%_
               _%hd153225153258%_
               _%hd153222153250%_)
              (_%g153213153234%_ _%g153214153237%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g153213153234%_
                                               _%g153214153237%_))))
                                      (_%g153213153234%_ _%g153214153237%_))))
                              (_%g153213153234%_ _%g153214153237%_))))
                      (_%g153213153234%_ _%g153214153237%_)))))
          (_%g153212153291%_ _%stx153211%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self153110%_ _%stx153111%_)
        (let* ((_%g153113153138%_
                (lambda (_%g153114153135%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153114153135%_))))
               (_%g153112153207%_
                (lambda (_%g153114153141%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153114153141%_))
                      (let ((_%e153119153143%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153114153141%_))))
                        (let ((_%hd153120153146%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153119153143%_)))
                              (_%tl153121153148%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153119153143%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153121153148%_))
                              (let ((_%e153122153151%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153121153148%_))))
                                (let ((_%hd153123153154%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153122153151%_)))
                                      (_%tl153124153156%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153122153151%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153124153156%_))
                                      (let ((_%e153125153159%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153124153156%_))))
                                        (let ((_%hd153126153162%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153125153159%_)))
                                              (_%tl153127153164%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153125153159%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153127153164%_))
                                              (let ((_%e153128153167%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153127153164%_))))
                                                (let ((_%hd153129153170%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153128153167%_)))
                                                      (_%tl153130153172%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153128153167%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl153130153172%_))
                                                      (let ((_%e153131153175%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl153130153172%_))))
                (let ((_%hd153132153178%_
                       (let () (declare (not safe)) (##car _%e153131153175%_)))
                      (_%tl153133153180%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e153131153175%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl153133153180%_))
                      ((lambda (_%L153183%_
                                _%L153184%_
                                _%L153185%_
                                _%L153186%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self153110%_
                                        _%L153184%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self153110%_
                                              _%L153183%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self153110%_
                                                    _%L153185%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self153110%_
                                                          _%L153186%_))
                                                       (cons ''#f '())))))))
                       _%hd153132153178%_
                       _%hd153129153170%_
                       _%hd153126153162%_
                       _%hd153123153154%_)
                      (_%g153113153138%_ _%g153114153141%_))))
              (_%g153113153138%_ _%g153114153141%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g153113153138%_
                                               _%g153114153141%_))))
                                      (_%g153113153138%_ _%g153114153141%_))))
                              (_%g153113153138%_ _%g153114153141%_))))
                      (_%g153113153138%_ _%g153114153141%_)))))
          (_%g153112153207%_ _%stx153111%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self152905%_ _%stx152906%_)
        (let* ((_%g152908152929%_
                (lambda (_%g152909152926%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152909152926%_))))
               (_%g152907153107%_
                (lambda (_%g152909152932%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152909152932%_))
                      (let ((_%e152913152934%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152909152932%_))))
                        (let ((_%hd152914152937%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152913152934%_)))
                              (_%tl152915152939%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152913152934%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152915152939%_))
                              (let ((_%e152916152942%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152915152939%_))))
                                (let ((_%hd152917152945%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152916152942%_)))
                                      (_%tl152918152947%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152916152942%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152918152947%_))
                                      (let ((_%e152919152950%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152918152947%_))))
                                        (let ((_%hd152920152953%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152919152950%_)))
                                              (_%tl152921152955%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152919152950%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl152921152955%_))
                                              (let ((_%e152922152958%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl152921152955%_))))
                                                (let ((_%hd152923152961%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e152922152958%_)))
                                                      (_%tl152924152963%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e152922152958%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl152924152963%_))
                                                      ((lambda (_%L152966%_
                                                                _%L152967%_
                                                                _%L152968%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self152905%_
                                    _%L152966%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self152905%_
                                          _%L152967%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp152986%_ ((_%rest152989%_
                                         (cons _%L152967%_
                                               (cons _%L152966%_ '())))
                                        (_%bind152991%_ '())
                                        (_%args152992%_ '()))
                       (let* ((_%rest152993153001%_ _%rest152989%_)
                              (_%else152995153009%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind152991%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp161214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp161214 _%args152992%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K152997153095%_
                               (lambda (_%rest153012%_ _%e153013%_)
                                 (let* ((_%__stx160851160852%_ _%e153013%_)
                                        (_%g153018153036%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx160851160852%_)))))
                                   (let ((_%__kont160853160854%_
                                          (lambda ()
                                            (_%lp152986%_
                                             _%rest153012%_
                                             _%bind152991%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e153013%_))
                                                   _%args152992%_))))
                                         (_%__kont160855160856%_
                                          (lambda ()
                                            (_%lp152986%_
                                             _%rest153012%_
                                             _%bind152991%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e153013%_))
                                                   _%args152992%_))))
                                         (_%__kont160857160858%_
                                          (lambda ()
                                            (let ((_%tmp153043%_
                                                   (let ((__tmp161215
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp161215))))
                                              (_%lp152986%_
                                               _%rest153012%_
                                               (cons (cons _%tmp153043%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e153013%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind152991%_)
                                               (cons _%tmp153043%_
                                                     _%args152992%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx160851160852%_))
                                         (let ((_%e153020153074%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx160851160852%_))))
                                           (let ((_%tl153022153079%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e153020153074%_)))
                                                 (_%hd153021153077%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e153020153074%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd153021153077%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd153021153077%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl153022153079%_))
                                                         (let ((_%e153023153082%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl153022153079%_))))
                   (let ((_%tl153025153087%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e153023153082%_)))
                         (_%hd153024153085%_
                          (let ()
                            (declare (not safe))
                            (##car _%e153023153082%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl153025153087%_))
                         (_%__kont160853160854%_)
                         (_%__kont160857160858%_))))
                 (_%__kont160857160858%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd153021153077%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl153022153079%_))
                     (let ((_%e153029153059%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl153022153079%_))))
                       (let ((_%tl153031153064%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e153029153059%_)))
                             (_%hd153030153062%_
                              (let ()
                                (declare (not safe))
                                (##car _%e153029153059%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl153031153064%_))
                             (_%__kont160855160856%_)
                             (_%__kont160857160858%_))))
                     (_%__kont160857160858%_))
                 (_%__kont160857160858%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont160857160858%_))))
                                         (_%__kont160857160858%_)))))))
                         (if (pair? _%rest152993153001%_)
                             (let ((_%hd152998153098%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest152993153001%_)))
                                   (_%tl152999153100%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest152993153001%_))))
                               (let* ((_%e153103%_ _%hd152998153098%_)
                                      (_%rest153105%_ _%tl152999153100%_))
                                 (_%K152997153095%_
                                  _%rest153105%_
                                  _%e153103%_)))
                             (_%else152995153009%_))))))
               _%hd152923152961%_
               _%hd152920152953%_
               _%hd152917152945%_)
              (_%g152908152929%_ _%g152909152932%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g152908152929%_
                                               _%g152909152932%_))))
                                      (_%g152908152929%_ _%g152909152932%_))))
                              (_%g152908152929%_ _%g152909152932%_))))
                      (_%g152908152929%_ _%g152909152932%_)))))
          (_%g152907153107%_ _%stx152906%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self152684%_ _%stx152685%_)
        (let* ((_%g152687152712%_
                (lambda (_%g152688152709%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152688152709%_))))
               (_%g152686152902%_
                (lambda (_%g152688152715%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152688152715%_))
                      (let ((_%e152693152717%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152688152715%_))))
                        (let ((_%hd152694152720%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152693152717%_)))
                              (_%tl152695152722%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152693152717%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152695152722%_))
                              (let ((_%e152696152725%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152695152722%_))))
                                (let ((_%hd152697152728%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152696152725%_)))
                                      (_%tl152698152730%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152696152725%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152698152730%_))
                                      (let ((_%e152699152733%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152698152730%_))))
                                        (let ((_%hd152700152736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152699152733%_)))
                                              (_%tl152701152738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152699152733%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl152701152738%_))
                                              (let ((_%e152702152741%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl152701152738%_))))
                                                (let ((_%hd152703152744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e152702152741%_)))
                                                      (_%tl152704152746%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e152702152741%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl152704152746%_))
                                                      (let ((_%e152705152749%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl152704152746%_))))
                (let ((_%hd152706152752%_
                       (let () (declare (not safe)) (##car _%e152705152749%_)))
                      (_%tl152707152754%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e152705152749%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl152707152754%_))
                      ((lambda (_%L152757%_
                                _%L152758%_
                                _%L152759%_
                                _%L152760%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self152684%_
                                            _%L152758%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self152684%_
                                                  _%L152757%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self152684%_
                                                        _%L152759%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp152781%_ ((_%rest152784%_
                                                 (cons _%L152759%_
                                                       (cons _%L152757%_
                                                             (cons _%L152758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind152786%_ '())
                                                (_%args152787%_ '()))
                               (let* ((_%rest152788152796%_ _%rest152784%_)
                                      (_%else152790152804%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind152786%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp161216 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp161216 _%args152787%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K152792152890%_
                                       (lambda (_%rest152807%_ _%e152808%_)
                                         (let* ((_%__stx160897160898%_
                                                 _%e152808%_)
                                                (_%g152813152831%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx160897160898%_)))))
                                           (let ((_%__kont160899160900%_
                                                  (lambda ()
                                                    (_%lp152781%_
                                                     _%rest152807%_
                                                     _%bind152786%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e152808%_))
                                                           _%args152787%_))))
                                                 (_%__kont160901160902%_
                                                  (lambda ()
                                                    (_%lp152781%_
                                                     _%rest152807%_
                                                     _%bind152786%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e152808%_))
                                                           _%args152787%_))))
                                                 (_%__kont160903160904%_
                                                  (lambda ()
                                                    (let ((_%tmp152838%_
                                                           (let ((__tmp161217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp161217))))
              (_%lp152781%_
               _%rest152807%_
               (cons (cons _%tmp152838%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e152808%_))
                                 '()))
                     _%bind152786%_)
               (cons _%tmp152838%_ _%args152787%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx160897160898%_))
                                                 (let ((_%e152815152869%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx160897160898%_))))
                                                   (let ((_%tl152817152874%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e152815152869%_)))
                                                         (_%hd152816152872%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e152815152869%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd152816152872%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd152816152872%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl152817152874%_))
                         (let ((_%e152818152877%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl152817152874%_))))
                           (let ((_%tl152820152882%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e152818152877%_)))
                                 (_%hd152819152880%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e152818152877%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl152820152882%_))
                                 (_%__kont160899160900%_)
                                 (_%__kont160903160904%_))))
                         (_%__kont160903160904%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd152816152872%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl152817152874%_))
                             (let ((_%e152824152854%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl152817152874%_))))
                               (let ((_%tl152826152859%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e152824152854%_)))
                                     (_%hd152825152857%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e152824152854%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl152826152859%_))
                                     (_%__kont160901160902%_)
                                     (_%__kont160903160904%_))))
                             (_%__kont160903160904%_))
                         (_%__kont160903160904%_)))
                 (_%__kont160903160904%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont160903160904%_)))))))
                                 (if (pair? _%rest152788152796%_)
                                     (let ((_%hd152793152893%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest152788152796%_)))
                                           (_%tl152794152895%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest152788152796%_))))
                                       (let* ((_%e152898%_ _%hd152793152893%_)
                                              (_%rest152900%_
                                               _%tl152794152895%_))
                                         (_%K152792152890%_
                                          _%rest152900%_
                                          _%e152898%_)))
                                     (_%else152790152804%_))))))
                       _%hd152706152752%_
                       _%hd152703152744%_
                       _%hd152700152736%_
                       _%hd152697152728%_)
                      (_%g152687152712%_ _%g152688152715%_))))
              (_%g152687152712%_ _%g152688152715%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g152687152712%_
                                               _%g152688152715%_))))
                                      (_%g152687152712%_ _%g152688152715%_))))
                              (_%g152687152712%_ _%g152688152715%_))))
                      (_%g152687152712%_ _%g152688152715%_)))))
          (_%g152686152902%_ _%stx152685%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self152523%_ _%stx152524%_)
        (letrec ((_%import-set-template152526%_
                  (lambda (_%in152629%_ _%phi152630%_)
                    (let ((_%iphi152632%_
                           (fx+ _%phi152630%_
                                (##direct-structure-ref
                                 _%in152629%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports152633%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in152629%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp152635%_ ((_%rest152637%_ _%imports152633%_)
                                         (_%r152638%_ '()))
                        (let* ((_%rest152639152647%_ _%rest152637%_)
                               (_%else152641152655%_ (lambda () _%r152638%_))
                               (_%K152643152672%_
                                (lambda (_%rest152658%_ _%in152659%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in152659%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi152632%_))
                                          (_%lp152635%_
                                           _%rest152658%_
                                           (cons _%in152659%_ _%r152638%_))
                                          (_%lp152635%_
                                           _%rest152658%_
                                           _%r152638%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in152659%_
                                             'gx#module-import::t))
                                          (let ((_%iphi152663%_
                                                 (fx+ _%phi152630%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in152659%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi152663%_))
                                                (_%lp152635%_
                                                 _%rest152658%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in152659%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r152638%_))
                                                (_%lp152635%_
                                                 _%rest152658%_
                                                 _%r152638%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in152659%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi152666%_
                                                     (fx+ _%iphi152632%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in152659%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi152666%_))
                                                    (_%lp152635%_
                                                     _%rest152658%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in152659%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r152638%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi152666%_))
                                                        (_%lp152635%_
                                                         _%rest152658%_
                                                         (let ((__tmp161218
                                                                (_%import-set-template152526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in152659%_
                         _%iphi152632%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r152638%_ __tmp161218)))
                (_%lp152635%_ _%rest152658%_ _%r152638%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp152635%_
                                               _%rest152658%_
                                               _%r152638%_)))))))
                          (if (pair? _%rest152639152647%_)
                              (let ((_%hd152644152675%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest152639152647%_)))
                                    (_%tl152645152677%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest152639152647%_))))
                                (let* ((_%in152680%_ _%hd152644152675%_)
                                       (_%rest152682%_ _%tl152645152677%_))
                                  (_%K152643152672%_
                                   _%rest152682%_
                                   _%in152680%_)))
                              (_%else152641152655%_))))))))
          (let* ((_%g152528152538%_
                  (lambda (_%g152529152535%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g152529152535%_))))
                 (_%g152527152626%_
                  (lambda (_%g152529152541%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g152529152541%_))
                        (let ((_%e152531152543%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g152529152541%_))))
                          (let ((_%hd152532152546%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152531152543%_)))
                                (_%tl152533152548%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152531152543%_))))
                            ((lambda (_%L152551%_)
                               (let ((_%ht152562%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp152564%_ ((_%rest152566%_
                                                     _%L152551%_)
                                                    (_%loads152567%_ '()))
                                   (letrec ((_%K152569%_
                                             (lambda (_%ctx152619%_
                                                      _%rest152620%_)
                                               (let ((_%id152622%_
                                                      (##structure-ref
                                                       _%ctx152619%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht152562%_
                                                        _%id152622%_))
                                                     (_%lp152564%_
                                                      _%rest152620%_
                                                      _%loads152567%_)
                                                     (let ((_%rt152624%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id152622%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht152562%_
                                                          _%id152622%_
                                                          _%rt152624%_))
                                                       (_%lp152564%_
                                                        _%rest152620%_
                                                        (cons _%rt152624%_
                                                              _%loads152567%_))))))))
                                     (let* ((_%rest152570152578%_
                                             _%rest152566%_)
                                            (_%else152572152590%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp161220
                                                            (lambda (_%g152585152587%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g152585152587%_)))
                   (__tmp161219 (reverse _%loads152567%_)))
               (declare (not safe))
               (##map __tmp161220 __tmp161219)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K152574152607%_
                                             (lambda (_%rest152593%_
                                                      _%in152594%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in152594%_
                                                      'gx#module-context::t))
                                                   (_%K152569%_
                                                    _%in152594%_
                                                    _%rest152593%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in152594%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in152594%_
                               '3
                               '#f
                               '#f)))
                   (_%K152569%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in152594%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest152593%_)
                   (_%lp152564%_ _%rest152593%_ _%loads152567%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in152594%_
                      'gx#import-set::t))
                   (let ((_%phi152599%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in152594%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi152599%_)
                         (_%K152569%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in152594%_
                             '1
                             '#f
                             '#f))
                          _%rest152593%_)
                         (if (fxpositive? _%phi152599%_)
                             (let ((_%deps152603%_
                                    (_%import-set-template152526%_
                                     _%in152594%_
                                     '0)))
                               (_%lp152564%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest152593%_
                                   _%deps152603%_))
                                _%loads152567%_))
                             (_%lp152564%_ _%rest152593%_ _%loads152567%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx152524%_
                      _%in152594%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest152570152578%_)
                                           (let ((_%hd152575152610%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest152570152578%_)))
                                                 (_%tl152576152612%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest152570152578%_))))
                                             (let* ((_%in152615%_
                                                     _%hd152575152610%_)
                                                    (_%rest152617%_
                                                     _%tl152576152612%_))
                                               (_%K152574152607%_
                                                _%rest152617%_
                                                _%in152615%_)))
                                           (_%else152572152590%_)))))))
                             _%tl152533152548%_)))
                        (_%g152528152538%_ _%g152529152541%_)))))
            (_%g152527152626%_ _%stx152524%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self152336%_ _%stx152337%_)
        (letrec ((_%add-lift!152339%_
                  (lambda (_%expr152521%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr152521%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote152340%_
                  (lambda (_%id152518%_ _%marks152519%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id152518%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks152519%_
                                                        '()))))))))
                 (_%generate-simple152341%_
                  (lambda (_%stxq152513%_)
                    (let ((_%gid152515%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid152516%_
                           (gxc#generate-runtime-identifier _%stxq152513%_)))
                      (_%add-lift!152339%_
                       (cons 'define
                             (cons _%gid152515%_
                                   (cons (_%generate-syntax-quote152340%_
                                          _%qid152516%_
                                          ''())
                                         '()))))
                      (let ((__tmp161221
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp161221 _%stxq152513%_ _%gid152515%_))
                      _%gid152515%_)))
                 (_%generate-serialized152342%_
                  (lambda (_%stxq152503%_ _%marks152504%_)
                    (let* ((_%mark-refs152506%_
                            (map _%generate-mark152343%_ _%marks152504%_))
                           (_%gid152508%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid152510%_
                            (gxc#generate-runtime-identifier _%stxq152503%_)))
                      (_%add-lift!152339%_
                       (cons 'define
                             (cons _%gid152508%_
                                   (cons (_%generate-syntax-quote152340%_
                                          _%qid152510%_
                                          (cons 'list _%mark-refs152506%_))
                                         '()))))
                      (let ((__tmp161222
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp161222 _%stxq152503%_ _%gid152508%_))
                      _%gid152508%_)))
                 (_%generate-mark152343%_
                  (lambda (_%mark152488%_)
                    (let ((_%$e152490%_
                           (let ((__tmp161223
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp161223 _%mark152488%_))))
                      (if _%$e152490%_
                          _%$e152490%_
                          (let* ((_%gid152494%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr152496%_
                                  (_%serialize-mark152344%_ _%mark152488%_))
                                 (_%ctx152498%_
                                  (let ((__tmp161224
                                         (##structure-ref
                                          _%mark152488%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp161224)))
                                 (_%ctx-ref152500%_
                                  (if (eq? _%ctx152498%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref152345%_
                                                               _%ctx152498%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp161225
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp161225
                               _%mark152488%_
                               _%gid152494%_))
                            (_%add-lift!152339%_
                             (cons 'define
                                   (cons _%gid152494%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr152496%_ '()))
                   (cons _%ctx-ref152500%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid152494%_)))))
                 (_%serialize-mark152344%_
                  (lambda (_%mark152435%_)
                    (letrec ((_%quote-e152437%_
                              (lambda (_%sym152486%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym152486%_))
                                    _%sym152486%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym152486%_))))))
                      (let* ((_%mark152438152447%_ _%mark152435%_)
                             (_%E152440152451%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark152438152447%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K152441152463%_
                              (lambda (_%trace152454%_
                                       _%phi152455%_
                                       _%ctx152456%_
                                       _%subst152457%_)
                                (let ((_%subs152459%_
                                       (if _%subst152457%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst152457%_))
                                           '())))
                                  (cons _%phi152455%_
                                        (let ((__tmp161226
                                               (lambda (_%pair152461%_)
                                                 (cons (_%quote-e152437%_
                                                        (car _%pair152461%_))
                                                       (_%quote-e152437%_
                                                        (cdr _%pair152461%_))))))
                                          (declare (not safe))
                                          (##map __tmp161226
                                                 _%subs152459%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark152438152447%_
                               'gx#expander-mark::t))
                            (let* ((_%e152442152466%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark152438152447%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst152469%_ _%e152442152466%_)
                                   (_%e152443152471%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark152438152447%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx152474%_ _%e152443152471%_)
                                   (_%e152444152476%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark152438152447%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi152479%_ _%e152444152476%_)
                                   (_%e152445152481%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark152438152447%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace152484%_ _%e152445152481%_))
                              (_%K152441152463%_
                               _%trace152484%_
                               _%phi152479%_
                               _%ctx152474%_
                               _%subst152469%_))
                            (_%E152440152451%_))))))
                 (_%context-ref152345%_
                  (lambda (_%ctx152422%_)
                    (if (let ((__tmp161227
                               (##structure-ref
                                _%ctx152422%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp161227
                           'gx#module-context::t))
                        (let ((_%ctx-ref152424%_
                               (_%context-ref-nested152347%_ _%ctx152422%_))
                              (_%ctx-origin152425%_
                               (_%context-ref-origin152346%_ _%ctx152422%_))
                              (_%origin152426%_
                               (_%context-ref-origin152346%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin152426%_ _%ctx-origin152425%_)
                              (let ((_%ref152428%_
                                     (_%context-ref-nested152347%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp152430%_ ((_%ref152432%_
                                                    (cdr _%ref152428%_))
                                                   (_%ctx-ref152433%_
                                                    (cdr _%ctx-ref152424%_)))
                                  (if (and (pair? _%ref152432%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref152432%_))
                                                (car _%ctx-ref152433%_)))
                                      (_%lp152430%_
                                       (cdr _%ref152432%_)
                                       (cdr _%ctx-ref152433%_))
                                      (cons '#f _%ctx-ref152433%_))))
                              _%ctx-ref152424%_))
                        (let ((__tmp161228
                               (##structure-ref
                                _%ctx152422%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp161228)))))
                 (_%context-ref-origin152346%_
                  (lambda (_%ctx152414%_)
                    (let _%lp152416%_ ((_%ctx152418%_ _%ctx152414%_))
                      (let ((_%super152420%_
                             (##structure-ref
                              _%ctx152418%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super152420%_
                               'gx#module-context::t))
                            (_%lp152416%_ _%super152420%_)
                            _%ctx152418%_)))))
                 (_%context-ref-nested152347%_
                  (lambda (_%ctx152405%_)
                    (let _%lp152407%_ ((_%ctx152409%_ _%ctx152405%_)
                                       (_%r152410%_ '()))
                      (let ((_%super152412%_
                             (##structure-ref
                              _%ctx152409%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super152412%_
                               'gx#module-context::t))
                            (_%lp152407%_
                             _%super152412%_
                             (cons (car (##structure-ref
                                         _%ctx152409%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r152410%_))
                            (cons (let ((__tmp161229
                                         (##structure-ref
                                          _%ctx152409%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp161229))
                                  _%r152410%_)))))))
          (let* ((_%g152349152362%_
                  (lambda (_%g152350152359%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g152350152359%_))))
                 (_%g152348152402%_
                  (lambda (_%g152350152365%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g152350152365%_))
                        (let ((_%e152352152367%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g152350152365%_))))
                          (let ((_%hd152353152370%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152352152367%_)))
                                (_%tl152354152372%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152352152367%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl152354152372%_))
                                (let ((_%e152355152375%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl152354152372%_))))
                                  (let ((_%hd152356152378%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e152355152375%_)))
                                        (_%tl152357152380%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e152355152375%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl152357152380%_))
                                        ((lambda (_%L152383%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L152383%_))
                                               (let ((_%$e152396%_
                                                      (let ((__tmp161230
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp161230 _%L152383%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e152396%_
                                                     _%$e152396%_
                                                     (let ((_%marks152400%_
                                                            (##direct-structure-ref
                                                             _%L152383%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks152400%_)
                                                           (_%generate-simple152341%_
                                                            _%L152383%_)
                                                           (_%generate-serialized152342%_
                                                            _%L152383%_
                                                            _%marks152400%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L152383%_))))
                                         _%hd152356152378%_)
                                        (_%g152349152362%_
                                         _%g152350152365%_))))
                                (_%g152349152362%_ _%g152350152365%_))))
                        (_%g152349152362%_ _%g152350152365%_)))))
            (_%g152348152402%_ _%stx152337%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self152268%_ _%stx152269%_)
        (let* ((_%g152271152288%_
                (lambda (_%g152272152285%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152272152285%_))))
               (_%g152270152333%_
                (lambda (_%g152272152291%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152272152291%_))
                      (let ((_%e152275152293%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152272152291%_))))
                        (let ((_%hd152276152296%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152275152293%_)))
                              (_%tl152277152298%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152275152293%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152277152298%_))
                              (let ((_%e152278152301%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152277152298%_))))
                                (let ((_%hd152279152304%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152278152301%_)))
                                      (_%tl152280152306%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152278152301%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152280152306%_))
                                      (let ((_%e152281152309%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152280152306%_))))
                                        (let ((_%hd152282152312%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152281152309%_)))
                                              (_%tl152283152314%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152281152309%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl152283152314%_))
                                              ((lambda (_%L152317%_
                                                        _%L152318%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L152318%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self152268%_ _%L152317%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd152282152312%_
                                               _%hd152279152304%_)
                                              (_%g152271152288%_
                                               _%g152272152291%_))))
                                      (_%g152271152288%_ _%g152272152291%_))))
                              (_%g152271152288%_ _%g152272152291%_))))
                      (_%g152271152288%_ _%g152272152291%_)))))
          (_%g152270152333%_ _%stx152269%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self152217%_ _%stx152218%_)
        (let* ((_%g152220152230%_
                (lambda (_%g152221152227%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152221152227%_))))
               (_%g152219152265%_
                (lambda (_%g152221152233%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152221152233%_))
                      (let ((_%e152223152235%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152221152233%_))))
                        (let ((_%hd152224152238%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152223152235%_)))
                              (_%tl152225152240%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152223152235%_))))
                          ((lambda (_%L152243%_)
                             (let* ((_%c-body152257%_
                                     (map (lambda (_%g152252152254%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self152217%_
                                               _%g152252152254%_)))
                                          _%L152243%_))
                                    (_%c-body152262%_
                                     (let ((__tmp161231
                                            (lambda (_%$obj152259%_)
                                              (not (eq? _%$obj152259%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp161231
                                        _%c-body152257%_))))
                               (cons '%#begin _%c-body152262%_)))
                           _%tl152225152240%_)))
                      (_%g152220152230%_ _%g152221152233%_)))))
          (_%g152219152265%_ _%stx152218%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self152122%_ _%stx152123%_)
        (let* ((_%g152125152135%_
                (lambda (_%g152126152132%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152126152132%_))))
               (_%g152124152214%_
                (lambda (_%g152126152138%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152126152138%_))
                      (let ((_%e152128152140%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152126152138%_))))
                        (let ((_%hd152129152143%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152128152140%_)))
                              (_%tl152130152145%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152128152140%_))))
                          ((lambda (_%L152148%_)
                             (let* ((_%phi152158%_
                                     (let ((__tmp161232
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp161232 '1)))
                                    (_%block152160%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self152122%_ 'state))
                                      _%phi152158%_))
                                    (_%compiled152163%_
                                     (let ((__tmp161233
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self152122%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L152148%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp161233
                                        gx#current-expander-phi
                                        _%phi152158%_)))
                                    (_%g152166152176%_
                                     (lambda (_%g152167152173%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g152167152173%_))))
                                    (_%g152165152211%_
                                     (lambda (_%g152167152179%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g152167152179%_))
                                           (let ((_%e152169152181%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g152167152179%_))))
                                             (let ((_%hd152170152184%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e152169152181%_)))
                                                   (_%tl152171152186%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e152169152181%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd152170152184%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd152170152184%_))
                                                       ((lambda (_%L152189%_)
                                                          (let ((_%c-body152206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj152203%_)
                                   (not (eq? _%$obj152203%_ '#!void)))
                                 _%L152189%_)))
                    (if _%block152160%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block152160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body152206%_))
                        (if (null? _%c-body152206%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body152206%_)))))
                _%tl152171152186%_)
               (_%g152166152176%_ _%g152167152179%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g152166152176%_
                                                    _%g152167152179%_))))
                                           (_%g152166152176%_
                                            _%g152167152179%_)))))
                               (_%g152165152211%_ _%compiled152163%_)))
                           _%tl152130152145%_)))
                      (_%g152125152135%_ _%g152126152138%_)))))
          (_%g152124152214%_ _%stx152123%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self152053%_ _%stx152054%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self152053%_ 'state)))
        (let* ((_%g152056152070%_
                (lambda (_%g152057152067%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152057152067%_))))
               (_%g152055152119%_
                (lambda (_%g152057152073%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152057152073%_))
                      (let ((_%e152060152075%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152057152073%_))))
                        (let ((_%hd152061152078%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152060152075%_)))
                              (_%tl152062152080%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152060152075%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152062152080%_))
                              (let ((_%e152063152083%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152062152080%_))))
                                (let ((_%hd152064152086%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152063152083%_)))
                                      (_%tl152065152088%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152063152083%_))))
                                  ((lambda (_%L152091%_ _%L152092%_)
                                     (let ((_%key152105%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L152092%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key152105%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx152054%_
                                              _%L152092%_
                                              _%key152105%_)))
                                       (let* ((_%ctx152107%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L152092%_)))
                                              (_%code152110%_
                                               (let ((__tmp161234
                                                      (lambda ()
                                                        (let ((__tmp161235
                                                               (##structure-ref
                                                                _%ctx152107%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self152053%_
                                                           __tmp161235)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp161234
                                                  gx#current-expander-context
                                                  _%ctx152107%_)))
                                              (_%rt152112%_
                                               (let ((__tmp161236
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp161236
                                                  _%ctx152107%_)))
                                              (_%loader152114%_
                                               (if _%rt152112%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt152112%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid152116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L152092%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self152053%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid152116%_
                                                     (cons _%code152110%_
                                                           _%loader152114%_))))))
                                   _%tl152065152088%_
                                   _%hd152064152086%_)))
                              (_%g152056152070%_ _%g152057152073%_))))
                      (_%g152056152070%_ _%g152057152073%_)))))
          (_%g152055152119%_ _%stx152054%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx152040%_ _%context-chain152041%_)
        (let _%lp152043%_ ((_%ctx152045%_ _%ctx152040%_) (_%path152046%_ '()))
          (let ((_%super152048%_
                 (##structure-ref _%ctx152045%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super152048%_ _%context-chain152041%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx152045%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path152046%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super152048%_
                       'gx#module-context::t))
                    (_%lp152043%_
                     _%super152048%_
                     (cons (car (##structure-ref
                                 _%ctx152045%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path152046%_))
                    (cons (let ((__tmp161237
                                 (##structure-ref
                                  _%ctx152045%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp161237))
                          _%path152046%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp152033%_ ((_%ctx152035%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r152036%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx152035%_ 'gx#module-context::t))
              (_%lp152033%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx152035%_ '3 '#f '#f))
               (cons _%ctx152035%_ _%r152036%_))
              _%r152036%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self151796%_ _%stx151797%_)
        (letrec* ((_%context-chain151799%_ (gxc#current-context-chain))
                  (_%make-import-spec151800%_
                   (lambda (_%in151969%_)
                     (let* ((_%in151970151982%_ _%in151969%_)
                            (_%E151972151986%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in151970151982%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K151973151996%_
                             (lambda (_%phi151989%_
                                      _%name151990%_
                                      _%src-name151991%_
                                      _%src-phi151992%_
                                      _%src-key151993%_
                                      _%src-ctx151994%_)
                               (cons _%phi151989%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name151990%_)
                                           (cons _%src-phi151992%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name151991%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in151970151982%_
                              'gx#module-import::t))
                           (let ((_%e151974151999%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in151970151982%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e151974151999%_
                                    'gx#module-export::t))
                                 (let* ((_%e151977152002%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e151974151999%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx152005%_ _%e151977152002%_)
                                        (_%e151978152007%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e151974151999%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key152010%_ _%e151978152007%_)
                                        (_%e151979152012%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e151974151999%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi152015%_ _%e151979152012%_)
                                        (_%e151980152017%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e151974151999%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name152020%_ _%e151980152017%_)
                                        (_%e151975152022%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in151970151982%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name152025%_ _%e151975152022%_)
                                        (_%e151976152027%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in151970151982%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi152030%_ _%e151976152027%_))
                                   (_%K151973151996%_
                                    _%phi152030%_
                                    _%name152025%_
                                    _%src-name152020%_
                                    _%src-phi152015%_
                                    _%src-key152010%_
                                    _%src-ctx152005%_))
                                 (_%E151972151986%_)))
                           (_%E151972151986%_)))))
                  (_%make-import-path151801%_
                   (lambda (_%ctx151967%_)
                     (gxc#generate-meta-import-path
                      _%ctx151967%_
                      _%context-chain151799%_)))
                  (_%make-import-spec-in151802%_
                   (lambda (_%ctx151964%_ _%in151965%_)
                     (cons 'spec:
                           (cons (_%make-import-path151801%_ _%ctx151964%_)
                                 (reverse _%in151965%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self151796%_ 'state)))
          (let* ((_%g151804151814%_
                  (lambda (_%g151805151811%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151805151811%_))))
                 (_%g151803151961%_
                  (lambda (_%g151805151817%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151805151817%_))
                        (let ((_%e151807151819%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151805151817%_))))
                          (let ((_%hd151808151822%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151807151819%_)))
                                (_%tl151809151824%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151807151819%_))))
                            ((lambda (_%L151827%_)
                               (let _%lp151838%_ ((_%rest151840%_ _%L151827%_)
                                                  (_%current-src151841%_ '#f)
                                                  (_%current-in151842%_ '())
                                                  (_%r151843%_ '()))
                                 (let* ((_%rest151844151852%_ _%rest151840%_)
                                        (_%else151846151862%_
                                         (lambda ()
                                           (let ((_%r151860%_
                                                  (if _%current-src151841%_
                                                      (cons (_%make-import-spec-in151802%_
                                                             _%current-src151841%_
                                                             _%current-in151842%_)
                                                            _%r151843%_)
                                                      _%r151843%_)))
                                             (cons '%#import
                                                   (reverse _%r151860%_)))))
                                        (_%K151848151949%_
                                         (lambda (_%rest151865%_ _%in151866%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in151866%_
                                                  'gx#module-import::t))
                                               (let* ((_%in151868151875%_
                                                       _%in151866%_)
                                                      (_%E151870151879%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in151868151875%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K151871151887%_
               (lambda (_%src-ctx151882%_)
                 (if (eq? _%current-src151841%_ _%src-ctx151882%_)
                     (_%lp151838%_
                      _%rest151865%_
                      _%current-src151841%_
                      (cons (_%make-import-spec151800%_ _%in151866%_)
                            _%current-in151842%_)
                      _%r151843%_)
                     (if _%current-src151841%_
                         (_%lp151838%_
                          _%rest151865%_
                          _%src-ctx151882%_
                          (cons (_%make-import-spec151800%_ _%in151866%_) '())
                          (cons (_%make-import-spec-in151802%_
                                 _%current-src151841%_
                                 _%current-in151842%_)
                                _%r151843%_))
                         (_%lp151838%_
                          _%rest151865%_
                          _%src-ctx151882%_
                          (cons (_%make-import-spec151800%_ _%in151866%_) '())
                          _%r151843%_)))))
              (_%e151872151890%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in151868151875%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e151872151890%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e151873151893%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e151872151890%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx151896%_ _%e151873151893%_))
               (_%K151871151887%_ _%src-ctx151896%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E151870151879%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in151866%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi151899%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in151866%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src151901%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in151866%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in151941%_
                                                           (let* ((_%g151902151911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path151801%_ _%src151901%_))
                          (_%E151905151915%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g151902151911%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K151907151931%_
                            (lambda (_%path151929%_) _%path151929%_))
                           (_%K151906151921%_
                            (lambda (_%path151919%_)
                              (cons 'in: _%path151919%_))))
                       (if (pair? _%g151902151911%_)
                           (let ((_%tl151909151936%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g151902151911%_)))
                                 (_%hd151908151934%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g151902151911%_))))
                             (if (null? _%tl151909151936%_)
                                 (let ((_%path151939%_ _%hd151908151934%_))
                                   (_%K151907151931%_ _%path151939%_))
                                 (let ((_%path151924%_ _%g151902151911%_))
                                   (_%K151906151921%_ _%path151924%_))))
                           (let ((_%path151924%_ _%g151902151911%_))
                             (_%K151906151921%_ _%path151924%_))))))
                  (_%r151943%_
                   (if _%current-src151841%_
                       (cons (_%make-import-spec-in151802%_
                              _%current-src151841%_
                              _%current-in151842%_)
                             _%r151843%_)
                       _%r151843%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp151838%_
                                                      _%rest151865%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi151899%_)
                                                                _%src-in151941%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi151899%_
                                    (cons _%src-in151941%_ '()))))
                    _%r151943%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in151866%_
                                                          'gx#module-context::t))
                                                       (let ((_%r151947%_
                                                              (if _%current-src151841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in151802%_
                                 _%current-src151841%_
                                 _%current-in151842%_)
                                _%r151843%_)
                          _%r151843%_)))
                 (_%lp151838%_
                  _%rest151865%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path151801%_ _%in151866%_))
                        _%r151947%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest151844151852%_)
                                       (let ((_%hd151849151952%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest151844151852%_)))
                                             (_%tl151850151954%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest151844151852%_))))
                                         (let* ((_%in151957%_
                                                 _%hd151849151952%_)
                                                (_%rest151959%_
                                                 _%tl151850151954%_))
                                           (_%K151848151949%_
                                            _%rest151959%_
                                            _%in151957%_)))
                                       (_%else151846151862%_)))))
                             _%tl151809151824%_)))
                        (_%g151804151814%_ _%g151805151817%_)))))
            (_%g151803151961%_ _%stx151797%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self151606%_ _%stx151607%_)
        (letrec* ((_%context-chain151609%_ (gxc#current-context-chain))
                  (_%make-import-path151610%_
                   (lambda (_%ctx151794%_)
                     (gxc#generate-meta-import-path
                      _%ctx151794%_
                      _%context-chain151609%_))))
          (let* ((_%g151612151622%_
                  (lambda (_%g151613151619%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151613151619%_))))
                 (_%g151611151791%_
                  (lambda (_%g151613151625%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151613151625%_))
                        (let ((_%e151615151627%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151613151625%_))))
                          (let ((_%hd151616151630%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151615151627%_)))
                                (_%tl151617151632%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151615151627%_))))
                            ((lambda (_%L151635%_)
                               (let _%lp151646%_ ((_%rest151648%_ _%L151635%_)
                                                  (_%r151649%_ '()))
                                 (let* ((_%rest151650151658%_ _%rest151648%_)
                                        (_%else151652151666%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r151649%_))))
                                        (_%K151654151779%_
                                         (lambda (_%rest151669%_ _%out151670%_)
                                           (let* ((_%out151671151684%_
                                                   _%out151670%_)
                                                  (_%E151674151688%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out151671151684%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K151678151758%_
                                                    (lambda (_%name151754%_
                                                             _%phi151755%_
                                                             _%key151756%_)
                                                      (_%lp151646%_
                                                       _%rest151669%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi151755%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key151756%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name151754%_)
                                             '()))))
                     _%r151649%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K151675151738%_
                                                    (lambda (_%phi151692%_
                                                             _%src151693%_)
                                                      (let* ((_%out151733%_
                                                              (if _%src151693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g151694151703%_
                                              (_%make-import-path151610%_
                                               _%src151693%_))
                                             (_%E151697151707%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g151694151703%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K151699151723%_
                                               (lambda (_%path151721%_)
                                                 _%path151721%_))
                                              (_%K151698151713%_
                                               (lambda (_%path151711%_)
                                                 (cons 'in: _%path151711%_))))
                                          (if (pair? _%g151694151703%_)
                                              (let ((_%tl151701151728%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g151694151703%_)))
                                                    (_%hd151700151726%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g151694151703%_))))
                                                (if (null? _%tl151701151728%_)
                                                    (let ((_%path151731%_
                                                           _%hd151700151726%_))
                                                      (_%K151699151723%_
                                                       _%path151731%_))
                                                    (let ((_%path151716%_
                                                           _%g151694151703%_))
                                                      (_%K151698151713%_
                                                       _%path151716%_))))
                                              (let ((_%path151716%_
                                                     _%g151694151703%_))
                                                (_%K151698151713%_
                                                 _%path151716%_)))))
                                      '()))
                          '#t))
                     (_%out151735%_
                      (if (fxzero? _%phi151692%_)
                          _%out151733%_
                          (cons 'phi:
                                (cons _%phi151692%_
                                      (cons _%out151733%_ '()))))))
                (_%lp151646%_
                 _%rest151669%_
                 (cons _%out151735%_ _%r151649%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match151673151751%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out151671151684%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e151676151741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out151671151684%_
                               '1
                               '#f
                               '#f)))
                           (_%e151677151746%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out151671151684%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src151744%_ _%e151676151741%_)
                            (_%phi151749%_ _%e151677151746%_))
                        (_%K151675151738%_ _%phi151749%_ _%src151744%_)))
                    (_%E151674151688%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out151671151684%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e151679151761%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out151671151684%_
                        '1
                        '#f
                        '#f)))
                    (_%e151680151764%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out151671151684%_
                        '2
                        '#f
                        '#f)))
                    (_%e151681151769%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out151671151684%_
                        '3
                        '#f
                        '#f)))
                    (_%e151682151774%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out151671151684%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key151767%_ _%e151680151764%_)
                     (_%phi151772%_ _%e151681151769%_)
                     (_%name151777%_ _%e151682151774%_))
                 (_%K151678151758%_
                  _%name151777%_
                  _%phi151772%_
                  _%key151767%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match151673151751%_))))))))
                                   (if (pair? _%rest151650151658%_)
                                       (let ((_%hd151655151782%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest151650151658%_)))
                                             (_%tl151656151784%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest151650151658%_))))
                                         (let* ((_%out151787%_
                                                 _%hd151655151782%_)
                                                (_%rest151789%_
                                                 _%tl151656151784%_))
                                           (_%K151654151779%_
                                            _%rest151789%_
                                            _%out151787%_)))
                                       (_%else151652151666%_)))))
                             _%tl151617151632%_)))
                        (_%g151612151622%_ _%g151613151625%_)))))
            (_%g151611151791%_ _%stx151607%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self151567%_ _%stx151568%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self151567%_ 'state)))
        (let* ((_%g151570151580%_
                (lambda (_%g151571151577%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151571151577%_))))
               (_%g151569151603%_
                (lambda (_%g151571151583%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151571151583%_))
                      (let ((_%e151573151585%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151571151583%_))))
                        (let ((_%hd151574151588%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151573151585%_)))
                              (_%tl151575151590%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151573151585%_))))
                          ((lambda (_%L151593%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L151593%_)))
                           _%tl151575151590%_)))
                      (_%g151570151580%_ _%g151571151583%_)))))
          (_%g151569151603%_ _%stx151568%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self151438%_ _%stx151439%_)
        (letrec ((_%generate1151441%_
                  (lambda (_%id151562%_ _%eid151563%_)
                    (let ((_%eid151565%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid151563%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid151565%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx151439%_
                             _%eid151565%_)))
                      (cons (gxc#generate-runtime-identifier _%id151562%_)
                            (cons _%eid151565%_ '()))))))
          (let* ((_%g151443151471%_
                  (lambda (_%g151444151468%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151444151468%_))))
                 (_%g151442151559%_
                  (lambda (_%g151444151474%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151444151474%_))
                        (let ((_%e151447151476%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151444151474%_))))
                          (let ((_%hd151448151479%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151447151476%_)))
                                (_%tl151449151481%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151447151476%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl151449151481%_))
                                (let ((_g161238_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl151449151481%_
                                          '0))))
                                  (begin
                                    (let ((_g161239_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g161238_)
                                                 (##values-length _g161238_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g161239_ 2)))
                                          (error "Context expects 2 values"
                                                 _g161239_)))
                                    (let ((_%target151450151484%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g161238_ 0)))
                                          (_%tl151452151486%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g161238_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl151452151486%_))
                                          (letrec ((_%loop151453151489%_
                                                    (lambda (_%hd151451151492%_
                                                             _%eid151457151494%_
                                                             _%id151458151496%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd151451151492%_))
                                                          (let ((_%e151454151499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd151451151492%_))))
                    (let ((_%lp-hd151455151502%_
                           (let ()
                             (declare (not safe))
                             (##car _%e151454151499%_)))
                          (_%lp-tl151456151504%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e151454151499%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd151455151502%_))
                          (let ((_%e151461151507%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd151455151502%_))))
                            (let ((_%hd151462151510%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e151461151507%_)))
                                  (_%tl151463151512%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e151461151507%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl151463151512%_))
                                  (let ((_%e151464151515%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl151463151512%_))))
                                    (let ((_%hd151465151518%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e151464151515%_)))
                                          (_%tl151466151520%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e151464151515%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl151466151520%_))
                                          (_%loop151453151489%_
                                           _%lp-tl151456151504%_
                                           (cons _%hd151465151518%_
                                                 _%eid151457151494%_)
                                           (cons _%hd151462151510%_
                                                 _%id151458151496%_))
                                          (_%g151443151471%_
                                           _%g151444151474%_))))
                                  (_%g151443151471%_ _%g151444151474%_))))
                          (_%g151443151471%_ _%g151444151474%_))))
                  (let ((_%eid151459151523%_ (reverse _%eid151457151494%_))
                        (_%id151460151525%_ (reverse _%id151458151496%_)))
                    ((lambda (_%L151528%_ _%L151529%_)
                       (cons '%#extern
                             (map _%generate1151441%_
                                  (let ((__tmp161240
                                         (lambda (_%g151544151547%_
                                                  _%g151545151549%_)
                                           (cons _%g151544151547%_
                                                 _%g151545151549%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp161240 '() _%L151529%_))
                                  (let ((__tmp161241
                                         (lambda (_%g151551151554%_
                                                  _%g151552151556%_)
                                           (cons _%g151551151554%_
                                                 _%g151552151556%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp161241 '() _%L151528%_)))))
                     _%eid151459151523%_
                     _%id151460151525%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop151453151489%_
                                             _%target151450151484%_
                                             '()
                                             '()))
                                          (_%g151443151471%_
                                           _%g151444151474%_)))))
                                (_%g151443151471%_ _%g151444151474%_))))
                        (_%g151443151471%_ _%g151444151474%_)))))
            (_%g151442151559%_ _%stx151439%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self151228%_ _%stx151229%_)
        (letrec ((_%generate1151231%_
                  (lambda (_%id151433%_)
                    (let ((_%eid151435%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id151433%_)))
                          (_%ident151436%_
                           (gxc#generate-runtime-identifier _%id151433%_)))
                      (cons '%#define-runtime
                            (cons _%ident151436%_ (cons _%eid151435%_ '()))))))
                 (_%generate*151232%_
                  (lambda (_%all151401%_)
                    (let* ((_%all151402151410%_ _%all151401%_)
                           (_%else151404151418%_
                            (lambda () (cons '%#begin _%all151401%_)))
                           (_%K151406151423%_
                            (lambda (_%one151421%_) _%one151421%_)))
                      (if (pair? _%all151402151410%_)
                          (let ((_%hd151407151426%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all151402151410%_)))
                                (_%tl151408151428%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all151402151410%_))))
                            (let ((_%one151431%_ _%hd151407151426%_))
                              (if (null? _%tl151408151428%_)
                                  (_%K151406151423%_ _%one151431%_)
                                  (_%else151404151418%_))))
                          (_%else151404151418%_))))))
          (let* ((_%g151234151251%_
                  (lambda (_%g151235151248%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151235151248%_))))
                 (_%g151233151398%_
                  (lambda (_%g151235151254%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151235151254%_))
                        (let ((_%e151238151256%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151235151254%_))))
                          (let ((_%hd151239151259%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151238151256%_)))
                                (_%tl151240151261%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151238151256%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl151240151261%_))
                                (let ((_%e151241151264%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl151240151261%_))))
                                  (let ((_%hd151242151267%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151241151264%_)))
                                        (_%tl151243151269%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151241151264%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl151243151269%_))
                                        (let ((_%e151244151272%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl151243151269%_))))
                                          (let ((_%hd151245151275%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151244151272%_)))
                                                (_%tl151246151277%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151244151272%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl151246151277%_))
                                                ((lambda (_%L151280%_
                                                          _%L151281%_)
                                                   (let _%lp151297%_ ((_%rest151299%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L151281%_)
                              (_%r151300%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx160976160977%_
                                                             _%rest151299%_)
                                                            (_%g151305151322%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx160976160977%_)))))
               (let ((_%__kont160978160979%_
                      (lambda (_%L151385%_)
                        (_%lp151297%_ _%L151385%_ _%r151300%_)))
                     (_%__kont160980160981%_
                      (lambda (_%L151358%_ _%L151359%_)
                        (_%lp151297%_
                         _%L151358%_
                         (cons (_%generate1151231%_ _%L151359%_)
                               _%r151300%_))))
                     (_%__kont160982160983%_
                      (lambda (_%L151334%_)
                        (_%generate*151232%_
                         (let ((__tmp161242
                                (cons (_%generate1151231%_ _%L151334%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp161242 _%r151300%_)))))
                     (_%__kont160984160985%_
                      (lambda () (_%generate*151232%_ (reverse _%r151300%_)))))
                 (let ((_%g151303151345%_
                        (lambda ()
                          (let ((_%L151334%_ _%__stx160976160977%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L151334%_))
                                (_%__kont160982160983%_ _%L151334%_)
                                (_%__kont160984160985%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx160976160977%_))
                       (let ((_%e151308151374%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx160976160977%_))))
                         (let ((_%tl151310151379%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e151308151374%_)))
                               (_%hd151309151377%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e151308151374%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd151309151377%_))
                               (let ((_%e151311151382%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd151309151377%_))))
                                 (if (equal? _%e151311151382%_ '#f)
                                     (_%__kont160978160979%_
                                      _%tl151310151379%_)
                                     (_%__kont160980160981%_
                                      _%tl151310151379%_
                                      _%hd151309151377%_)))
                               (_%__kont160980160981%_
                                _%tl151310151379%_
                                _%hd151309151377%_))))
                       (let () (declare (not safe)) (_%g151303151345%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd151245151275%_
                                                 _%hd151242151267%_)
                                                (_%g151234151251%_
                                                 _%g151235151254%_))))
                                        (_%g151234151251%_
                                         _%g151235151254%_))))
                                (_%g151234151251%_ _%g151235151254%_))))
                        (_%g151234151251%_ _%g151235151254%_)))))
            (_%g151233151398%_ _%stx151229%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self151125%_ _%stx151126%_)
        (let* ((_%g151128151145%_
                (lambda (_%g151129151142%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151129151142%_))))
               (_%g151127151225%_
                (lambda (_%g151129151148%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151129151148%_))
                      (let ((_%e151132151150%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151129151148%_))))
                        (let ((_%hd151133151153%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151132151150%_)))
                              (_%tl151134151155%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151132151150%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151134151155%_))
                              (let ((_%e151135151158%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151134151155%_))))
                                (let ((_%hd151136151161%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151135151158%_)))
                                      (_%tl151137151163%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151135151158%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151137151163%_))
                                      (let ((_%e151138151166%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151137151163%_))))
                                        (let ((_%hd151139151169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151138151166%_)))
                                              (_%tl151140151171%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151138151166%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151140151171%_))
                                              ((lambda (_%L151174%_
                                                        _%L151175%_)
                                                 (let* ((_%eid151190%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L151175%_)))
                                                        (_%phi151192%_
                                                         (let ((__tmp161243
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp161243 '1)))
                (_%block151194%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self151125%_ 'state))
                  _%phi151192%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g151197151204%_
                                                           (lambda (_%g151198151201%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g151198151201%_))))
                  (_%g151196151222%_
                   (lambda (_%g151198151207%_)
                     ((lambda (_%L151209%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self151125%_ 'state))
                         _%phi151192%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L151209%_ (cons _%L151174%_ '())))))
                      _%g151198151207%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g151196151222%_
                                                      _%eid151190%_))
                                                   (if _%block151194%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block151194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L151175%_)
                                             (cons _%eid151190%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L151175%_)
                           (cons _%eid151190%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd151139151169%_
                                               _%hd151136151161%_)
                                              (_%g151128151145%_
                                               _%g151129151148%_))))
                                      (_%g151128151145%_ _%g151129151148%_))))
                              (_%g151128151145%_ _%g151129151148%_))))
                      (_%g151128151145%_ _%g151129151148%_)))))
          (_%g151127151225%_ _%stx151126%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self151057%_ _%stx151058%_)
        (let* ((_%g151060151077%_
                (lambda (_%g151061151074%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151061151074%_))))
               (_%g151059151122%_
                (lambda (_%g151061151080%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151061151080%_))
                      (let ((_%e151064151082%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151061151080%_))))
                        (let ((_%hd151065151085%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151064151082%_)))
                              (_%tl151066151087%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151064151082%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151066151087%_))
                              (let ((_%e151067151090%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151066151087%_))))
                                (let ((_%hd151068151093%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151067151090%_)))
                                      (_%tl151069151095%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151067151090%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151069151095%_))
                                      (let ((_%e151070151098%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151069151095%_))))
                                        (let ((_%hd151071151101%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151070151098%_)))
                                              (_%tl151072151103%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151070151098%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151072151103%_))
                                              ((lambda (_%L151106%_
                                                        _%L151107%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L151107%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L151106%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd151071151101%_
                                               _%hd151068151093%_)
                                              (_%g151060151077%_
                                               _%g151061151080%_))))
                                      (_%g151060151077%_ _%g151061151080%_))))
                              (_%g151060151077%_ _%g151061151080%_))))
                      (_%g151060151077%_ _%g151061151080%_)))))
          (_%g151059151122%_ _%stx151058%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self151054%_ _%stx151055%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self151054%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx151055%_)
        (gxc#generate-meta-define-values% _%self151054%_ _%stx151055%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self151051%_ _%stx151052%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self151051%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx151052%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp161245 (list)) (__tmp161244 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp161245
         '(src n open blocks)
         __tmp161244
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args151048%_
        (apply make-instance gxc#meta-state::t _%$args151048%_)))
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
      (lambda (_%self151034%_ _%ctx151035%_)
        (let ((_%self151038%_ _%self151034%_))
          (if (let ((__tmp161246
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self151038%_))))
                (declare (not safe))
                (##fx< '4 __tmp161246))
              (begin
                (let ((__tmp161247
                       (let ((__tmp161248
                              (##structure-ref
                               _%ctx151035%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp161248))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self151038%_
                   __tmp161247
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self151038%_ '1 '2 '#f '#f))
                (let ((__tmp161249
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self151038%_
                   __tmp161249
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self151038%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp161250
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self151038%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self151038%_
                       '4
                       __tmp161250))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp161252 (list)) (__tmp161251 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp161252
         '(ctx phi n code)
         __tmp161251
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args150909%_
        (apply make-instance gxc#meta-state-block::t _%$args150909%_)))
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
      (lambda (_%state150868%_ _%phi150869%_)
        (let* ((_%state150870150878%_ _%state150868%_)
               (_%E150872150882%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state150870150878%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K150873150891%_
                (lambda (_%open150885%_ _%n150886%_ _%src150887%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open150885%_ _%phi150869%_))
                      '#f
                      (let ((_%block-ref150889%_
                             (let ((__tmp161253 (number->string _%n150886%_)))
                               (declare (not safe))
                               (##string-append
                                _%src150887%_
                                '"~"
                                __tmp161253))))
                        (##structure-set!
                         _%state150868%_
                         (let () (declare (not safe)) (##fx+ _%n150886%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp161254
                               (let ((__tmp161255
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp161255
                                  _%phi150869%_
                                  _%n150886%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open150885%_ _%phi150869%_ __tmp161254))
                        _%block-ref150889%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state150870150878%_
                 'gxc#meta-state::t))
              (let* ((_%e150874150894%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state150870150878%_
                         '1
                         '#f
                         '#f)))
                     (_%src150897%_ _%e150874150894%_)
                     (_%e150875150899%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state150870150878%_
                         '2
                         '#f
                         '#f)))
                     (_%n150902%_ _%e150875150899%_)
                     (_%e150876150904%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state150870150878%_
                         '3
                         '#f
                         '#f)))
                     (_%open150907%_ _%e150876150904%_))
                (_%K150873150891%_ _%open150907%_ _%n150902%_ _%src150897%_))
              (_%E150872150882%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state150862%_ _%phi150863%_ _%stx150864%_)
        (let ((_%block150866%_
               (let ((__tmp161256
                      (##structure-ref
                       _%state150862%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp161256 _%phi150863%_))))
          (##structure-set!
           _%block150866%_
           (cons _%stx150864%_
                 (##structure-ref
                  _%block150866%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state150856%_)
        (##structure-set!
         _%state150856%_
         (let ((__tmp161259
                (lambda (_%_150858%_ _%block150859%_ _%r150860%_)
                  (cons _%block150859%_ _%r150860%_)))
               (__tmp161258
                (##structure-ref _%state150856%_ '4 gxc#meta-state::t '#f))
               (__tmp161257
                (##structure-ref _%state150856%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp161259 __tmp161258 __tmp161257))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state150856%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state150808%_)
        (gxc#meta-state-end-phi! _%state150808%_)
        (let ((__tmp161261
               (lambda (_%block150810%_ _%r150811%_)
                 (let* ((_%block150812150821%_ _%block150810%_)
                        (_%E150814150825%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block150812150821%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K150815150833%_
                         (lambda (_%code150828%_
                                  _%n150829%_
                                  _%phi150830%_
                                  _%ctx150831%_)
                           (if (null? _%code150828%_)
                               _%r150811%_
                               (cons (cons _%ctx150831%_
                                           (cons _%phi150830%_
                                                 (cons _%n150829%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code150828%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r150811%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block150812150821%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e150816150836%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block150812150821%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx150839%_ _%e150816150836%_)
                              (_%e150817150841%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block150812150821%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi150844%_ _%e150817150841%_)
                              (_%e150818150846%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block150812150821%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n150849%_ _%e150818150846%_)
                              (_%e150819150851%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block150812150821%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code150854%_ _%e150819150851%_))
                         (_%K150815150833%_
                          _%code150854%_
                          _%n150849%_
                          _%phi150844%_
                          _%ctx150839%_))
                       (_%E150814150825%_)))))
              (__tmp161260
               (##structure-ref _%state150808%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp161261 '() __tmp161260))))
    (define gxc#collect-expression-refs
      (lambda (_%stx150804%_)
        (let ((_%ht150806%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht150806%_ _%stx150804%_)
          _%ht150806%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self150747%_ _%stx150748%_)
        (let* ((_%g150750150763%_
                (lambda (_%g150751150760%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150751150760%_))))
               (_%g150749150801%_
                (lambda (_%g150751150766%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150751150766%_))
                      (let ((_%e150753150768%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150751150766%_))))
                        (let ((_%hd150754150771%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150753150768%_)))
                              (_%tl150755150773%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150753150768%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150755150773%_))
                              (let ((_%e150756150776%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150755150773%_))))
                                (let ((_%hd150757150779%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150756150776%_)))
                                      (_%tl150758150781%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150756150776%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150758150781%_))
                                      ((lambda (_%L150784%_)
                                         (let* ((_%bind150796%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L150784%_)))
                                                (_%eid150798%_
                                                 (if _%bind150796%_
                                                     (##structure-ref
                                                      _%bind150796%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L150784%_))))
                                                (__tmp161262
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self150747%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp161262
                                            _%eid150798%_
                                            _%eid150798%_)))
                                       _%hd150757150779%_)
                                      (_%g150750150763%_ _%g150751150766%_))))
                              (_%g150750150763%_ _%g150751150766%_))))
                      (_%g150750150763%_ _%g150751150766%_)))))
          (_%g150749150801%_ _%stx150748%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self150674%_ _%stx150675%_)
        (let* ((_%g150677150694%_
                (lambda (_%g150678150691%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150678150691%_))))
               (_%g150676150744%_
                (lambda (_%g150678150697%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150678150697%_))
                      (let ((_%e150681150699%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150678150697%_))))
                        (let ((_%hd150682150702%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150681150699%_)))
                              (_%tl150683150704%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150681150699%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150683150704%_))
                              (let ((_%e150684150707%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150683150704%_))))
                                (let ((_%hd150685150710%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150684150707%_)))
                                      (_%tl150686150712%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150684150707%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150686150712%_))
                                      (let ((_%e150687150715%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150686150712%_))))
                                        (let ((_%hd150688150718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150687150715%_)))
                                              (_%tl150689150720%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150687150715%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150689150720%_))
                                              ((lambda (_%L150723%_
                                                        _%L150724%_)
                                                 (let* ((_%bind150739%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L150724%_)))
                                                        (_%eid150741%_
                                                         (if _%bind150739%_
                                                             (##structure-ref
                                                              _%bind150739%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L150724%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp161263
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self150674%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp161263
                                                      _%eid150741%_
                                                      _%eid150741%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self150674%_
                                                      _%L150723%_))))
                                               _%hd150688150718%_
                                               _%hd150685150710%_)
                                              (_%g150677150694%_
                                               _%g150678150697%_))))
                                      (_%g150677150694%_ _%g150678150697%_))))
                              (_%g150677150694%_ _%g150678150697%_))))
                      (_%g150677150694%_ _%g150678150697%_)))))
          (_%g150676150744%_ _%stx150675%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self150631%_ _%stx150632%_)
        (let* ((_%g150634150644%_
                (lambda (_%g150635150641%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150635150641%_))))
               (_%g150633150671%_
                (lambda (_%g150635150647%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150635150647%_))
                      (let ((_%e150637150649%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150635150647%_))))
                        (let ((_%hd150638150652%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150637150649%_)))
                              (_%tl150639150654%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150637150649%_))))
                          ((lambda (_%L150657%_)
                             (let ((__tmp161264
                                    (lambda (_%g150666150668%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self150631%_
                                         _%g150666150668%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp161264 _%L150657%_)))
                           _%tl150639150654%_)))
                      (_%g150634150644%_ _%g150635150647%_)))))
          (_%g150633150671%_ _%stx150632%_))))
    (define gxc#count-values-single%
      (lambda (_%self150628%_ _%stx150629%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self150494%_ _%stx150495%_)
        (let* ((_%__stx161006161007%_ _%stx150495%_)
               (_%g150498150527%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx161006161007%_)))))
          (let ((_%__kont161008161009%_
                 (lambda (_%L150595%_ _%L150596%_)
                   (length (let ((__tmp161265
                                  (lambda (_%g150617150620%_ _%g150618150622%_)
                                    (cons _%g150617150620%_
                                          _%g150618150622%_))))
                             (declare (not safe))
                             (__foldr1 __tmp161265 '() _%L150595%_)))))
                (_%__kont161012161013%_ (lambda () '#f)))
            (let ((_%__match161051161052%_
                   (lambda (_%e150502150539%_
                            _%hd150503150542%_
                            _%tl150504150544%_
                            _%e150505150547%_
                            _%hd150506150550%_
                            _%tl150507150552%_
                            _%e150508150555%_
                            _%hd150509150558%_
                            _%tl150510150560%_
                            _%e150511150563%_
                            _%hd150512150566%_
                            _%tl150513150568%_
                            _%__splice161010161011%_
                            _%target150514150571%_
                            _%tl150516150573%_)
                     (letrec ((_%loop150517150576%_
                               (lambda (_%hd150515150579%_
                                        _%rand150521150581%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd150515150579%_))
                                     (let ((_%e150518150584%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd150515150579%_))))
                                       (let ((_%lp-tl150520150589%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e150518150584%_)))
                                             (_%lp-hd150519150587%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e150518150584%_))))
                                         (_%loop150517150576%_
                                          _%lp-tl150520150589%_
                                          (cons _%lp-hd150519150587%_
                                                _%rand150521150581%_))))
                                     (let ((_%rand150522150592%_
                                            (reverse _%rand150521150581%_)))
                                       (let ((_%L150595%_ _%rand150522150592%_)
                                             (_%L150596%_ _%hd150512150566%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L150596%_
                                                'values))
                                             (_%__kont161008161009%_
                                              _%L150595%_
                                              _%L150596%_)
                                             (_%__kont161012161013%_))))))))
                       (_%loop150517150576%_ _%target150514150571%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx161006161007%_))
                  (let ((_%e150502150539%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx161006161007%_))))
                    (let ((_%tl150504150544%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150502150539%_)))
                          (_%hd150503150542%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150502150539%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl150504150544%_))
                          (let ((_%e150505150547%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl150504150544%_))))
                            (let ((_%tl150507150552%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150505150547%_)))
                                  (_%hd150506150550%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150505150547%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd150506150550%_))
                                  (let ((_%e150508150555%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd150506150550%_))))
                                    (let ((_%tl150510150560%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e150508150555%_)))
                                          (_%hd150509150558%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e150508150555%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd150509150558%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd150509150558%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl150510150560%_))
                                                  (let ((_%e150511150563%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl150510150560%_))))
                                                    (let ((_%tl150513150568%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e150511150563%_)))
                                                          (_%hd150512150566%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e150511150563%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl150513150568%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl150507150552%_))
                      (let ((_%__splice161010161011%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl150507150552%_
                                '0))))
                        (let ((_%tl150516150573%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice161010161011%_ '1)))
                              (_%target150514150571%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice161010161011%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl150516150573%_))
                              (_%__match161051161052%_
                               _%e150502150539%_
                               _%hd150503150542%_
                               _%tl150504150544%_
                               _%e150505150547%_
                               _%hd150506150550%_
                               _%tl150507150552%_
                               _%e150508150555%_
                               _%hd150509150558%_
                               _%tl150510150560%_
                               _%e150511150563%_
                               _%hd150512150566%_
                               _%tl150513150568%_
                               _%__splice161010161011%_
                               _%target150514150571%_
                               _%tl150516150573%_)
                              (_%__kont161012161013%_))))
                      (_%__kont161012161013%_))
                  (_%__kont161012161013%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont161012161013%_))
                                              (_%__kont161012161013%_))
                                          (_%__kont161012161013%_))))
                                  (_%__kont161012161013%_))))
                          (_%__kont161012161013%_))))
                  (_%__kont161012161013%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self150397%_ _%stx150398%_)
        (let* ((_%g150400150421%_
                (lambda (_%g150401150418%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150401150418%_))))
               (_%g150399150491%_
                (lambda (_%g150401150424%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150401150424%_))
                      (let ((_%e150405150426%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150401150424%_))))
                        (let ((_%hd150406150429%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150405150426%_)))
                              (_%tl150407150431%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150405150426%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150407150431%_))
                              (let ((_%e150408150434%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150407150431%_))))
                                (let ((_%hd150409150437%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150408150434%_)))
                                      (_%tl150410150439%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150408150434%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150410150439%_))
                                      (let ((_%e150411150442%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150410150439%_))))
                                        (let ((_%hd150412150445%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150411150442%_)))
                                              (_%tl150413150447%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150411150442%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl150413150447%_))
                                              (let ((_%e150414150450%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl150413150447%_))))
                                                (let ((_%hd150415150453%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e150414150450%_)))
                                                      (_%tl150416150455%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e150414150450%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl150416150455%_))
                                                      ((lambda (_%L150458%_
                                                                _%L150459%_
                                                                _%L150460%_)
                                                         (let ((_%c1150477150479%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self150397%_ _%L150459%_))))
                   (if _%c1150477150479%_
                       (let* ((_%c1150482%_ _%c1150477150479%_)
                              (_%c2150483150485%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self150397%_
                                  _%L150458%_))))
                         (if _%c2150483150485%_
                             (let ((_%c2150488%_ _%c2150483150485%_))
                               (if (fx= _%c1150482%_ _%c2150488%_)
                                   _%c1150482%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd150415150453%_
               _%hd150412150445%_
               _%hd150409150437%_)
              (_%g150400150421%_ _%g150401150424%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g150400150421%_
                                               _%g150401150424%_))))
                                      (_%g150400150421%_ _%g150401150424%_))))
                              (_%g150400150421%_ _%g150401150424%_))))
                      (_%g150400150421%_ _%g150401150424%_)))))
          (_%g150399150491%_ _%stx150398%_))))))
