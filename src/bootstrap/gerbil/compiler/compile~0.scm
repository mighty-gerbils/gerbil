(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1712836658)
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
        (letrec ((_%hash-e145659%_
                  (lambda (_%id145661%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id145661%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e145659%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp147046 (list gxc#::void::t))
            (__tmp147045 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp147046
         '()
         __tmp147045
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args145655%_
        (apply make-instance gxc#::collect-bindings::t _%$args145655%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp147047
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
        (__make-promise __tmp147047)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx145647%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self145650%_
                (let ((__obj147021
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj147021))
               (__tmp147048
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145650%_ _%stx145647%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147048
           gxc#current-compile-method
           _%self145650%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp147050 (list gxc#::void::t))
            (__tmp147049 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp147050
         '(modules)
         __tmp147049
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args145644%_
        (apply make-instance gxc#::lift-modules::t _%$args145644%_)))
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
      (let ((__tmp147051
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
        (__make-promise __tmp147051)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords145618%_ _%modules145615145619%_ _%stx145621%_)
        (let ((_%modules145624%_
               (if (eq? _%modules145615145619%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules145615145619%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self145626%_
                  (let ((__obj147023
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147023
                       _%modules145624%_
                       '1
                       '#f
                       '#f))
                    __obj147023))
                 (__tmp147052
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145626%_ _%stx145621%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147052
             gxc#current-compile-method
             _%self145626%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords145633%_ . _%args145634%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords145633%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145633%_
                  'modules:
                  absent-value))
               _%args145634%_)))
    (define gxc#apply-lift-modules
      (lambda _%args145616145640%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args145616145640%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp147054 (list)) (__tmp147053 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp147054
         '()
         __tmp147053
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args145611%_
        (apply make-instance gxc#::find-runtime-code::t _%$args145611%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp147055
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
        (__make-promise __tmp147055)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx145603%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self145606%_
                (let ((__obj147025
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj147025))
               (__tmp147056
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145606%_ _%stx145603%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147056
           gxc#current-compile-method
           _%self145606%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp147058 (list gxc#::false::t))
            (__tmp147057 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp147058
         '()
         __tmp147057
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args145600%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args145600%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp147059
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
        (__make-promise __tmp147059)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx145592%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self145595%_
                (let ((__obj147027
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj147027))
               (__tmp147060
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145595%_ _%stx145592%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147060
           gxc#current-compile-method
           _%self145595%_))))
    (define gxc#::count-values::t
      (let ((__tmp147062 (list gxc#::false-expression::t))
            (__tmp147061 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp147062
         '()
         __tmp147061
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args145589%_
        (apply make-instance gxc#::count-values::t _%$args145589%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp147063
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
        (__make-promise __tmp147063)))
    (define gxc#apply-count-values
      (lambda (_%stx145581%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self145584%_
                (let ((__obj147029
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj147029))
               (__tmp147064
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145584%_ _%stx145581%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147064
           gxc#current-compile-method
           _%self145584%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp147065 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp147065
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args145578%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args145578%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp147066
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
        (__make-promise __tmp147066)))
    (define gxc#::generate-loader::t
      (let ((__tmp147068 (list gxc#::generate-runtime-empty::t))
            (__tmp147067 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp147068
         '()
         __tmp147067
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args145574%_
        (apply make-instance gxc#::generate-loader::t _%$args145574%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp147069
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
        (__make-promise __tmp147069)))
    (define gxc#apply-generate-loader
      (lambda (_%stx145566%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self145569%_
                (let ((__obj147032
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj147032))
               (__tmp147070
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145569%_ _%stx145566%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147070
           gxc#current-compile-method
           _%self145569%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp147071 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp147071
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args145563%_
        (apply make-instance gxc#::generate-runtime::t _%$args145563%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp147072
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
        (__make-promise __tmp147072)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx145555%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self145558%_
                (let ((__obj147034
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj147034))
               (__tmp147073
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145558%_ _%stx145555%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147073
           gxc#current-compile-method
           _%self145558%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp147075 (list gxc#::generate-runtime::t))
            (__tmp147074 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp147075
         '()
         __tmp147074
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args145552%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args145552%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp147076
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
        (__make-promise __tmp147076)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx145544%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self145547%_
                (let ((__obj147036
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj147036))
               (__tmp147077
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145547%_ _%stx145544%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147077
           gxc#current-compile-method
           _%self145547%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp147078 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp147078
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args145541%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args145541%_)))
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
      (let ((__tmp147079
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
        (__make-promise __tmp147079)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords145515%_ _%table145512145516%_ _%stx145518%_)
        (let ((_%table145521%_
               (if (eq? _%table145512145516%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table145512145516%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self145523%_
                  (let ((__obj147038
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147038
                       _%table145521%_
                       '1
                       '#f
                       '#f))
                    __obj147038))
                 (__tmp147080
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145523%_ _%stx145518%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147080
             gxc#current-compile-method
             _%self145523%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords145530%_ . _%args145531%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords145530%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145530%_
                  'table:
                  absent-value))
               _%args145531%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args145513145537%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args145513145537%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp147082 (list gxc#::void-expression::t))
            (__tmp147081 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp147082
         '(state)
         __tmp147081
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args145508%_
        (apply make-instance gxc#::generate-meta::t _%$args145508%_)))
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
      (let ((__tmp147083
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
        (__make-promise __tmp147083)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords145482%_ _%state145479145483%_ _%stx145485%_)
        (let ((_%state145488%_
               (if (eq? _%state145479145483%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state145479145483%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self145490%_
                  (let ((__obj147040
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147040
                       _%state145488%_
                       '1
                       '#f
                       '#f))
                    __obj147040))
                 (__tmp147084
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145490%_ _%stx145485%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147084
             gxc#current-compile-method
             _%self145490%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords145497%_ . _%args145498%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords145497%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145497%_
                  'state:
                  absent-value))
               _%args145498%_)))
    (define gxc#apply-generate-meta
      (lambda _%args145480145504%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args145480145504%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp147086 (list)) (__tmp147085 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp147086
         '(state)
         __tmp147085
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args145475%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args145475%_)))
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
      (let ((__tmp147087
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
        (__make-promise __tmp147087)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords145449%_ _%state145446145450%_ _%stx145452%_)
        (let ((_%state145455%_
               (if (eq? _%state145446145450%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state145446145450%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self145457%_
                  (let ((__obj147042
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147042
                       _%state145455%_
                       '1
                       '#f
                       '#f))
                    __obj147042))
                 (__tmp147088
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145457%_ _%stx145452%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147088
             gxc#current-compile-method
             _%self145457%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords145464%_ . _%args145465%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords145464%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145464%_
                  'state:
                  absent-value))
               _%args145465%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args145447145471%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args145447145471%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self145375%_ _%stx145376%_)
        (let* ((_%g145378145395%_
                (lambda (_%g145379145392%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145379145392%_))))
               (_%g145377145442%_
                (lambda (_%g145379145398%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145379145398%_))
                      (let ((_%e145382145400%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145379145398%_))))
                        (let ((_%hd145383145403%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145382145400%_)))
                              (_%tl145384145405%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145382145400%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145384145405%_))
                              (let ((_%e145385145408%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145384145405%_))))
                                (let ((_%hd145386145411%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145385145408%_)))
                                      (_%tl145387145413%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145385145408%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145387145413%_))
                                      (let ((_%e145388145416%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145387145413%_))))
                                        (let ((_%hd145389145419%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145388145416%_)))
                                              (_%tl145390145421%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145388145416%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145390145421%_))
                                              ((lambda (_%L145424%_
                                                        _%L145425%_)
                                                 (let ((__tmp147089
                                                        (lambda (_%bind145440%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind145440%_))
                      (gxc#add-module-binding! _%bind145440%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp147089
                                                    _%L145425%_)))
                                               _%hd145389145419%_
                                               _%hd145386145411%_)
                                              (_%g145378145395%_
                                               _%g145379145398%_))))
                                      (_%g145378145395%_ _%g145379145398%_))))
                              (_%g145378145395%_ _%g145379145398%_))))
                      (_%g145378145395%_ _%g145379145398%_)))))
          (_%g145377145442%_ _%stx145376%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self145307%_ _%stx145308%_)
        (let* ((_%g145310145327%_
                (lambda (_%g145311145324%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145311145324%_))))
               (_%g145309145372%_
                (lambda (_%g145311145330%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145311145330%_))
                      (let ((_%e145314145332%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145311145330%_))))
                        (let ((_%hd145315145335%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145314145332%_)))
                              (_%tl145316145337%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145314145332%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145316145337%_))
                              (let ((_%e145317145340%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145316145337%_))))
                                (let ((_%hd145318145343%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145317145340%_)))
                                      (_%tl145319145345%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145317145340%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145319145345%_))
                                      (let ((_%e145320145348%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145319145345%_))))
                                        (let ((_%hd145321145351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145320145348%_)))
                                              (_%tl145322145353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145320145348%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145322145353%_))
                                              ((lambda (_%L145356%_
                                                        _%L145357%_)
                                                 (gxc#add-module-binding!
                                                  _%L145357%_
                                                  '#t))
                                               _%hd145321145351%_
                                               _%hd145318145343%_)
                                              (_%g145310145327%_
                                               _%g145311145330%_))))
                                      (_%g145310145327%_ _%g145311145330%_))))
                              (_%g145310145327%_ _%g145311145330%_))))
                      (_%g145310145327%_ _%g145311145330%_)))))
          (_%g145309145372%_ _%stx145308%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self145249%_ _%stx145250%_)
        (let* ((_%g145252145266%_
                (lambda (_%g145253145263%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145253145263%_))))
               (_%g145251145304%_
                (lambda (_%g145253145269%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145253145269%_))
                      (let ((_%e145256145271%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145253145269%_))))
                        (let ((_%hd145257145274%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145256145271%_)))
                              (_%tl145258145276%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145256145271%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145258145276%_))
                              (let ((_%e145259145279%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145258145276%_))))
                                (let ((_%hd145260145282%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145259145279%_)))
                                      (_%tl145261145284%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145259145279%_))))
                                  ((lambda (_%L145287%_ _%L145288%_)
                                     (let ((_%ctx145301%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L145288%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self145249%_
                                           'modules))
                                        (cons _%ctx145301%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self145249%_
                                                        'modules)))))
                                       (let ((__tmp147090
                                              (lambda ()
                                                (let ((__tmp147091
                                                       (##structure-ref
                                                        _%ctx145301%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self145249%_
                                                   __tmp147091)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp147090
                                          gx#current-expander-context
                                          _%ctx145301%_))))
                                   _%tl145261145284%_
                                   _%hd145260145282%_)))
                              (_%g145252145266%_ _%g145253145269%_))))
                      (_%g145252145266%_ _%g145253145269%_)))))
          (_%g145251145304%_ _%stx145250%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls145202145204%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls145202145204%_
              (let ((_%decls145207%_ _%decls145202145204%_))
                (let _%lp145209%_ ((_%rest145211%_ _%decls145207%_))
                  (let* ((_%rest145212145220%_ _%rest145211%_)
                         (_%else145214145228%_ (lambda () '#f))
                         (_%K145216145237%_
                          (lambda (_%decls145231%_ _%decl145232%_)
                            (if (equal? _%decl145232%_ '(not safe))
                                '#t
                                (if (equal? _%decl145232%_ '(safe))
                                    '#f
                                    (_%lp145209%_ _%decls145231%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest145212145220%_))
                        (let ((_%hd145217145240%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest145212145220%_)))
                              (_%tl145218145242%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest145212145220%_))))
                          (let* ((_%decl145245%_ _%hd145217145240%_)
                                 (_%decls145247%_ _%tl145218145242%_))
                            (_%K145216145237%_
                             _%decls145247%_
                             _%decl145245%_)))
                        (_%else145214145228%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id145196%_ _%syntax?145197%_)
        (let ((_%eid145199%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id145196%_))
                '1
                gx#binding::t
                '#f))
              (_%ht145200%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid145199%_))
              '#!void
              (let ((__tmp147092
                     (let ((__tmp147093
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid145199%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp147093 _%syntax?145197%_))))
                (declare (not safe))
                (hash-put! _%ht145200%_ _%eid145199%_ __tmp147092))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id145194%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id145194%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key145149%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key145149%_))
            _%key145149%_
            (if (uninterned-symbol? _%key145149%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key145149%_))
                (let* ((_%key145153145160%_ _%key145149%_)
                       (_%E145155145164%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key145153145160%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K145156145182%_
                        (lambda (_%mark145167%_ _%eid145168%_)
                          (let ((_%$e145170%_
                                 (##structure-ref
                                  _%mark145167%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e145170%_
                                ((lambda (_%ht145173%_)
                                   (let ((_%$e145175%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht145173%_
                                             _%eid145168%_))))
                                     (if _%$e145175%_
                                         ((lambda (_%id145178%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id145178%_))
                                                _%id145178%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id145178%_))))
                                          _%$e145175%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid145168%_))))
                                 _%$e145170%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid145168%_))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%key145153145160%_))
                      (let ((_%hd145157145185%_
                             (let ()
                               (declare (not safe))
                               (##car _%key145153145160%_)))
                            (_%tl145158145187%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key145153145160%_))))
                        (let* ((_%eid145190%_ _%hd145157145185%_)
                               (_%mark145192%_ _%tl145158145187%_))
                          (_%K145156145182%_ _%mark145192%_ _%eid145190%_)))
                      (_%E145155145164%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self145146%_ _%stx145147%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self144993%_ _%stx144994%_)
        (letrec ((_%simplify144996%_
                  (lambda (_%body145044%_)
                    (let _%lp145046%_ ((_%rest145048%_ _%body145044%_)
                                       (_%r145049%_ '()))
                      (let* ((_%rest145050145058%_ _%rest145048%_)
                             (_%else145052145066%_
                              (lambda () (reverse _%r145049%_)))
                             (_%K145054145134%_
                              (lambda (_%rest145069%_ _%hd145070%_)
                                (let* ((_%hd145071145087%_ _%hd145070%_)
                                       (_%else145075145095%_
                                        (lambda ()
                                          (_%lp145046%_
                                           _%rest145069%_
                                           (cons _%hd145070%_ _%r145049%_)))))
                                  (let ((_%K145083145124%_
                                         (lambda (_%exprs145122%_)
                                           (_%lp145046%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest145069%_
                                               _%exprs145122%_))
                                            _%r145049%_)))
                                        (_%K145078145108%_
                                         (lambda ()
                                           (if (null? _%rest145069%_)
                                               (_%lp145046%_
                                                _%rest145069%_
                                                (cons _%hd145070%_
                                                      _%r145049%_))
                                               (_%lp145046%_
                                                _%rest145069%_
                                                _%r145049%_))))
                                        (_%K145077145100%_
                                         (lambda ()
                                           (if (null? _%rest145069%_)
                                               (_%lp145046%_
                                                _%rest145069%_
                                                (cons _%hd145070%_
                                                      _%r145049%_))
                                               (_%lp145046%_
                                                _%rest145069%_
                                                _%r145049%_)))))
                                    (let ((_%try-match145074145103%_
                                           (lambda ()
                                             (if (symbol? _%hd145071145087%_)
                                                 (_%K145077145100%_)
                                                 (_%else145075145095%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd145071145087%_))
                                          (let ((_%tl145085145129%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd145071145087%_)))
                                                (_%hd145084145127%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd145071145087%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd145084145127%_
                                                         'begin))
                                                (let ((_%exprs145132%_
                                                       _%tl145085145129%_))
                                                  (_%K145083145124%_
                                                   _%exprs145132%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd145084145127%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl145085145129%_))
                                                        (let ((_%tl145082145116%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl145085145129%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl145082145116%_))
                      (_%K145078145108%_)
                      (_%try-match145074145103%_)))
                (_%try-match145074145103%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match145074145103%_))))
                                          (_%try-match145074145103%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest145050145058%_))
                            (let ((_%hd145055145137%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest145050145058%_)))
                                  (_%tl145056145139%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest145050145058%_))))
                              (let* ((_%hd145142%_ _%hd145055145137%_)
                                     (_%rest145144%_ _%tl145056145139%_))
                                (_%K145054145134%_
                                 _%rest145144%_
                                 _%hd145142%_)))
                            (_%else145052145066%_)))))))
          (let* ((_%g144998145008%_
                  (lambda (_%g144999145005%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144999145005%_))))
                 (_%g144997145041%_
                  (lambda (_%g144999145011%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144999145011%_))
                        (let ((_%e145001145013%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144999145011%_))))
                          (let ((_%hd145002145016%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145001145013%_)))
                                (_%tl145003145018%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145001145013%_))))
                            ((lambda (_%L145021%_)
                               (let* ((_%body145036%_
                                       (map (lambda (_%g145031145033%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self144993%_
                                                 _%g145031145033%_)))
                                            _%L145021%_))
                                      (_%body145038%_
                                       (_%simplify144996%_ _%body145036%_)))
                                 (if (let ((__tmp147094
                                            (length _%body145038%_)))
                                       (declare (not safe))
                                       (##fx= __tmp147094 '1))
                                     (car _%body145038%_)
                                     (cons 'begin _%body145038%_))))
                             _%tl145003145018%_)))
                        (_%g144998145008%_ _%g144999145011%_)))))
            (_%g144997145041%_ _%stx144994%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self144954%_ _%stx144955%_)
        (let* ((_%g144957144967%_
                (lambda (_%g144958144964%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144958144964%_))))
               (_%g144956144990%_
                (lambda (_%g144958144970%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144958144970%_))
                      (let ((_%e144960144972%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144958144970%_))))
                        (let ((_%hd144961144975%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144960144972%_)))
                              (_%tl144962144977%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144960144972%_))))
                          ((lambda (_%L144980%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L144980%_))))
                           _%tl144962144977%_)))
                      (_%g144957144967%_ _%g144958144970%_)))))
          (_%g144956144990%_ _%stx144955%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self144718%_ _%stx144719%_)
        (let* ((_%__stx145684145685%_ _%stx144719%_)
               (_%g144723144775%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx145684145685%_)))))
          (let ((_%__kont145686145687%_
                 (lambda (_%L144936%_ _%L144937%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self144718%_ _%L144936%_))))
                (_%__kont145688145689%_
                 (lambda (_%L144884%_ _%L144885%_ _%L144886%_)
                   (if (let ((__tmp147095
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L144886%_))))
                         (declare (not safe))
                         (##memq __tmp147095 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self144718%_ _%L144884%_)))))
                (_%__kont145692145693%_
                 (lambda (_%L144804%_ _%L144805%_)
                   (let ((_%decls144820%_ (map gx#syntax->datum _%L144805%_)))
                     (let ((__tmp147098
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls144820%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self144718%_
                                                   _%L144804%_))
                                                '())))))
                           (__tmp147096
                            (let ((__tmp147097
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp147097 _%decls144820%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp147098
                        gxc#current-compile-decls
                        __tmp147096))))))
            (let* ((_%__match145739145740%_
                    (lambda (_%e144739144828%_
                             _%hd144740144831%_
                             _%tl144741144833%_
                             _%e144742144836%_
                             _%hd144743144839%_
                             _%tl144744144841%_
                             _%e144745144844%_
                             _%hd144746144847%_
                             _%tl144747144849%_
                             _%__splice145690145691%_
                             _%target144748144852%_
                             _%tl144750144854%_)
                      (letrec ((_%loop144751144857%_
                                (lambda (_%hd144749144860%_
                                         _%param144755144862%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd144749144860%_))
                                      (let ((_%e144752144865%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd144749144860%_))))
                                        (let ((_%lp-tl144754144870%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144752144865%_)))
                                              (_%lp-hd144753144868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144752144865%_))))
                                          (_%loop144751144857%_
                                           _%lp-tl144754144870%_
                                           (cons _%lp-hd144753144868%_
                                                 _%param144755144862%_))))
                                      (let ((_%param144756144873%_
                                             (reverse _%param144755144862%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl144744144841%_))
                                            (let ((_%e144757144876%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl144744144841%_))))
                                              (let ((_%tl144759144881%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144757144876%_)))
                                                    (_%hd144758144879%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144757144876%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl144759144881%_))
                                                    (let ((_%L144884%_
                                                           _%hd144758144879%_)
                                                          (_%L144885%_
                                                           _%param144756144873%_)
                                                          (_%L144886%_
                                                           _%hd144746144847%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L144886%_))
                       (not (let ((__tmp147099
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L144886%_))))
                              (declare (not safe))
                              (##memq __tmp147099 gxc#gambit-annotations))))
                  (_%__kont145688145689%_ _%L144884%_ _%L144885%_ _%L144886%_)
                  (_%__kont145692145693%_
                   _%hd144758144879%_
                   _%hd144743144839%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g144723144775%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g144723144775%_))))))))
                        (_%loop144751144857%_ _%target144748144852%_ '()))))
                   (_%__match145713145714%_
                    (lambda (_%e144727144912%_
                             _%hd144728144915%_
                             _%tl144729144917%_
                             _%e144730144920%_
                             _%hd144731144923%_
                             _%tl144732144925%_
                             _%e144733144928%_
                             _%hd144734144931%_
                             _%tl144735144933%_)
                      (let ((_%L144936%_ _%hd144734144931%_)
                            (_%L144937%_ _%hd144731144923%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L144937%_))
                            (_%__kont145686145687%_ _%L144936%_ _%L144937%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd144731144923%_))
                                (let ((_%e144745144844%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd144731144923%_))))
                                  (let ((_%tl144747144849%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144745144844%_)))
                                        (_%hd144746144847%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144745144844%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl144747144849%_))
                                        (let ((_%__splice145690145691%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl144747144849%_
                                                  '0))))
                                          (let ((_%tl144750144854%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice145690145691%_
                                                    '1)))
                                                (_%target144748144852%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice145690145691%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144750144854%_))
                                                (_%__match145739145740%_
                                                 _%e144727144912%_
                                                 _%hd144728144915%_
                                                 _%tl144729144917%_
                                                 _%e144730144920%_
                                                 _%hd144731144923%_
                                                 _%tl144732144925%_
                                                 _%e144745144844%_
                                                 _%hd144746144847%_
                                                 _%tl144747144849%_
                                                 _%__splice145690145691%_
                                                 _%target144748144852%_
                                                 _%tl144750144854%_)
                                                (_%__kont145692145693%_
                                                 _%hd144734144931%_
                                                 _%hd144731144923%_))))
                                        (_%__kont145692145693%_
                                         _%hd144734144931%_
                                         _%hd144731144923%_))))
                                (_%__kont145692145693%_
                                 _%hd144734144931%_
                                 _%hd144731144923%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx145684145685%_))
                  (let ((_%e144727144912%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx145684145685%_))))
                    (let ((_%tl144729144917%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e144727144912%_)))
                          (_%hd144728144915%_
                           (let ()
                             (declare (not safe))
                             (##car _%e144727144912%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl144729144917%_))
                          (let ((_%e144730144920%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl144729144917%_))))
                            (let ((_%tl144732144925%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e144730144920%_)))
                                  (_%hd144731144923%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e144730144920%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl144732144925%_))
                                  (let ((_%e144733144928%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl144732144925%_))))
                                    (let ((_%tl144735144933%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e144733144928%_)))
                                          (_%hd144734144931%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e144733144928%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl144735144933%_))
                                          (_%__match145713145714%_
                                           _%e144727144912%_
                                           _%hd144728144915%_
                                           _%tl144729144917%_
                                           _%e144730144920%_
                                           _%hd144731144923%_
                                           _%tl144732144925%_
                                           _%e144733144928%_
                                           _%hd144734144931%_
                                           _%tl144735144933%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd144731144923%_))
                                              (let ((_%e144745144844%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd144731144923%_))))
                                                (let ((_%tl144747144849%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144745144844%_)))
                                                      (_%hd144746144847%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144745144844%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl144747144849%_))
                                                      (let ((_%__splice145690145691%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl144747144849%_ '0))))
                (let ((_%tl144750144854%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice145690145691%_ '1)))
                      (_%target144748144852%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice145690145691%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl144750144854%_))
                      (_%__match145739145740%_
                       _%e144727144912%_
                       _%hd144728144915%_
                       _%tl144729144917%_
                       _%e144730144920%_
                       _%hd144731144923%_
                       _%tl144732144925%_
                       _%e144745144844%_
                       _%hd144746144847%_
                       _%tl144747144849%_
                       _%__splice145690145691%_
                       _%target144748144852%_
                       _%tl144750144854%_)
                      (let () (declare (not safe)) (_%g144723144775%_)))))
              (let () (declare (not safe)) (_%g144723144775%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g144723144775%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd144731144923%_))
                                      (let ((_%e144745144844%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd144731144923%_))))
                                        (let ((_%tl144747144849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144745144844%_)))
                                              (_%hd144746144847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144745144844%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl144747144849%_))
                                              (let ((_%__splice145690145691%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl144747144849%_
                                                        '0))))
                                                (let ((_%tl144750144854%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice145690145691%_
                                                          '1)))
                                                      (_%target144748144852%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice145690145691%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl144750144854%_))
                                                      (_%__match145739145740%_
                                                       _%e144727144912%_
                                                       _%hd144728144915%_
                                                       _%tl144729144917%_
                                                       _%e144730144920%_
                                                       _%hd144731144923%_
                                                       _%tl144732144925%_
                                                       _%e144745144844%_
                                                       _%hd144746144847%_
                                                       _%tl144747144849%_
                                                       _%__splice145690145691%_
                                                       _%target144748144852%_
                                                       _%tl144750144854%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g144723144775%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g144723144775%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g144723144775%_))))))
                          (let () (declare (not safe)) (_%g144723144775%_)))))
                  (let () (declare (not safe)) (_%g144723144775%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self144677%_ _%stx144678%_)
        (let* ((_%g144680144690%_
                (lambda (_%g144681144687%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144681144687%_))))
               (_%g144679144715%_
                (lambda (_%g144681144693%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144681144693%_))
                      (let ((_%e144683144695%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144681144693%_))))
                        (let ((_%hd144684144698%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144683144695%_)))
                              (_%tl144685144700%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144683144695%_))))
                          ((lambda (_%L144703%_)
                             (let ((_%decls144713%_
                                    (map gx#syntax->datum _%L144703%_)))
                               (let ((__tmp147100
                                      (let ((__tmp147101
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp147101
                                         _%decls144713%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp147100))
                               (cons 'declare _%decls144713%_)))
                           _%tl144685144700%_)))
                      (_%g144680144690%_ _%g144681144693%_)))))
          (_%g144679144715%_ _%stx144678%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self144423%_ _%stx144424%_)
        (let* ((_%g144426144443%_
                (lambda (_%g144427144440%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144427144440%_))))
               (_%g144425144674%_
                (lambda (_%g144427144446%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144427144446%_))
                      (let ((_%e144430144448%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144427144446%_))))
                        (let ((_%hd144431144451%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144430144448%_)))
                              (_%tl144432144453%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144430144448%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144432144453%_))
                              (let ((_%e144433144456%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144432144453%_))))
                                (let ((_%hd144434144459%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144433144456%_)))
                                      (_%tl144435144461%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144433144456%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144435144461%_))
                                      (let ((_%e144436144464%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144435144461%_))))
                                        (let ((_%hd144437144467%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144436144464%_)))
                                              (_%tl144438144469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144436144464%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144438144469%_))
                                              ((lambda (_%L144472%_
                                                        _%L144473%_)
                                                 (let* ((_%__stx145792145793%_
                                                         _%L144473%_)
                                                        (_%g144490144504%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx145792145793%_)))))
                                                   (let ((_%__kont145794145795%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self144423%_
                                                               _%L144472%_))))
                                                         (_%__kont145796145797%_
                                                          (lambda (_%L144636%_)
                                                            (let ((_%eid144645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L144636%_))))
                      (let ((_%lambda-expr144646144648%_
                             (gxc#apply-find-lambda-expression _%L144472%_)))
                        (if _%lambda-expr144646144648%_
                            (let* ((_%lambda-expr144651%_
                                    _%lambda-expr144646144648%_)
                                   (__tmp147102
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp147102
                               _%lambda-expr144651%_
                               _%eid144645%_))
                            '#f))
                      (cons 'define
                            (cons _%eid144645%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self144423%_
                                           _%L144472%_))
                                        '()))))))
                 (_%__kont145798145799%_
                  (lambda ()
                    (let* ((_%tmp144511%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body144620%_
                            (let _%lp144513%_ ((_%rest144515%_ _%L144473%_)
                                               (_%k144516%_ '0)
                                               (_%r144517%_ '()))
                              (let* ((_%__stx145762145763%_ _%rest144515%_)
                                     (_%g144522144539%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx145762145763%_)))))
                                (let ((_%__kont145764145765%_
                                       (lambda (_%L144607%_)
                                         (_%lp144513%_
                                          _%L144607%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k144516%_ '1))
                                          _%r144517%_)))
                                      (_%__kont145766145767%_
                                       (lambda (_%L144580%_ _%L144581%_)
                                         (_%lp144513%_
                                          _%L144580%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k144516%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L144581%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp144511%_
                           _%k144516%_
                           _%L144580%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r144517%_))))
                                      (_%__kont145768145769%_
                                       (lambda (_%L144551%_)
                                         (let ((__tmp147103
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L144551%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp144511%_
                                 _%k144516%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp147103
                                            _%r144517%_))))
                                      (_%__kont145770145771%_
                                       (lambda () (reverse _%r144517%_))))
                                  (let ((_%g144520144567%_
                                         (lambda ()
                                           (let ((_%L144551%_
                                                  _%__stx145762145763%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L144551%_))
                                                 (_%__kont145768145769%_
                                                  _%L144551%_)
                                                 (_%__kont145770145771%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx145762145763%_))
                                        (let ((_%e144525144596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx145762145763%_))))
                                          (let ((_%tl144527144601%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144525144596%_)))
                                                (_%hd144526144599%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144525144596%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd144526144599%_))
                                                (let ((_%e144528144604%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd144526144599%_))))
                                                  (if (equal? _%e144528144604%_
                                                              '#f)
                                                      (_%__kont145764145765%_
                                                       _%tl144527144601%_)
                                                      (_%__kont145766145767%_
                                                       _%tl144527144601%_
                                                       _%hd144526144599%_)))
                                                (_%__kont145766145767%_
                                                 _%tl144527144601%_
                                                 _%hd144526144599%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g144520144567%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp144511%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self144423%_
                                                       _%L144472%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp144511%_
                                         _%L144473%_
                                         _%L144472%_)
                                        _%body144620%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx145792145793%_))
                                                         (let ((_%e144492144658%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx145792145793%_))))
                   (let ((_%tl144494144663%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e144492144658%_)))
                         (_%hd144493144661%_
                          (let ()
                            (declare (not safe))
                            (##car _%e144492144658%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd144493144661%_))
                         (let ((_%e144495144666%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd144493144661%_))))
                           (if (equal? _%e144495144666%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl144494144663%_))
                                   (_%__kont145794145795%_)
                                   (_%__kont145798145799%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl144494144663%_))
                                   (_%__kont145796145797%_ _%hd144493144661%_)
                                   (_%__kont145798145799%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144494144663%_))
                             (_%__kont145796145797%_ _%hd144493144661%_)
                             (_%__kont145798145799%_)))))
                 (_%__kont145798145799%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd144437144467%_
                                               _%hd144434144459%_)
                                              (_%g144426144443%_
                                               _%g144427144446%_))))
                                      (_%g144426144443%_ _%g144427144446%_))))
                              (_%g144426144443%_ _%g144427144446%_))))
                      (_%g144426144443%_ _%g144427144446%_)))))
          (_%g144425144674%_ _%stx144424%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals144398%_ _%hd144399%_ _%expr144400%_)
        (let ((_%$e144402%_ (gxc#apply-count-values _%expr144400%_)))
          (if _%$e144402%_
              ((lambda (_%count144405%_)
                 (let ((_%len144407%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd144399%_)))
                       (_%cmp144408%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd144399%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len144407%_ '0))
                           (_%cmp144408%_ _%count144405%_ _%len144407%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr144400%_
                          _%hd144399%_)))))
               _%$e144402%_)
              (let* ((_%len144414%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd144399%_)))
                     (_%cmp144416%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd144399%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg144418%_
                      (let ((__tmp147105
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd144399%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp147104 (number->string _%len144414%_)))
                        (declare (not safe))
                        (##string-append __tmp147105 __tmp147104 '" values")))
                     (_%count144420%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd144399%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len144414%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count144420%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals144398%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp144416%_
                                (cons _%count144420%_
                                      (cons _%len144414%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp144416%_
                                                        (cons _%count144420%_
                                                              (cons _%len144414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg144418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count144420%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var144393%_)
        (letrec ((_%generate-inline144395%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var144393%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var144393%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline144395%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline144395%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var144386%_ _%i144387%_ _%rest144388%_)
        (letrec ((_%generate-inline144390%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i144387%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest144388%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var144386%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var144386%_
                                                      (cons '0 '())))
                                          (cons _%var144386%_ '()))))
                        (cons '##vector-ref
                              (cons _%var144386%_ (cons _%i144387%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline144390%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline144390%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var144380%_ _%i144381%_)
        (if (let () (declare (not safe)) (##fx= _%i144381%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var144380%_ '()))
                            (cons (cons '##vector->list
                                        (cons _%var144380%_ '()))
                                  (cons (cons 'list (cons _%var144380%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var144380%_
                                                                '()))
                                                    (cons (cons '##vector->list
                                                                (cons _%var144380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var144380%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i144381%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var144380%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##vector->list
                                                        (cons _%var144380%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var144380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##vector->list
                                        (cons _%var144380%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##vector->list (cons _%var144380%_ '()))
                                (cons _%i144381%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##vector->list
                                                              (cons _%var144380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i144381%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self144312%_ _%stx144313%_)
        (let* ((_%g144315144332%_
                (lambda (_%g144316144329%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144316144329%_))))
               (_%g144314144377%_
                (lambda (_%g144316144335%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144316144335%_))
                      (let ((_%e144319144337%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144316144335%_))))
                        (let ((_%hd144320144340%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144319144337%_)))
                              (_%tl144321144342%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144319144337%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144321144342%_))
                              (let ((_%e144322144345%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144321144342%_))))
                                (let ((_%hd144323144348%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144322144345%_)))
                                      (_%tl144324144350%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144322144345%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144324144350%_))
                                      (let ((_%e144325144353%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144324144350%_))))
                                        (let ((_%hd144326144356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144325144353%_)))
                                              (_%tl144327144358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144325144353%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144327144358%_))
                                              ((lambda (_%L144361%_
                                                        _%L144362%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self144312%_
                                                  _%L144362%_
                                                  _%L144361%_))
                                               _%hd144326144356%_
                                               _%hd144323144348%_)
                                              (_%g144315144332%_
                                               _%g144316144335%_))))
                                      (_%g144315144332%_ _%g144316144335%_))))
                              (_%g144315144332%_ _%g144316144335%_))))
                      (_%g144315144332%_ _%g144316144335%_)))))
          (_%g144314144377%_ _%stx144313%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self144271%_ _%hd144272%_ _%body144273%_)
        (let* ((_%hd144275%_ (gxc#generate-runtime-lambda-head _%hd144272%_))
               (_%body144277%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self144271%_ _%body144273%_)))
               (_%body144309%_
                (let* ((_%body144278144286%_ _%body144277%_)
                       (_%else144280144294%_
                        (lambda () (cons _%body144277%_ '())))
                       (_%K144282144299%_
                        (lambda (_%exprs144297%_) _%exprs144297%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body144278144286%_))
                      (let ((_%hd144283144302%_
                             (let ()
                               (declare (not safe))
                               (##car _%body144278144286%_)))
                            (_%tl144284144304%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body144278144286%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd144283144302%_ 'begin))
                            (let ((_%exprs144307%_ _%tl144284144304%_))
                              (_%K144282144299%_ _%exprs144307%_))
                            (_%else144280144294%_)))
                      (_%else144280144294%_)))))
          (cons 'lambda (cons _%hd144275%_ _%body144309%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd144269%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd144269%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self142808%_ _%stx142809%_)
        (letrec ((_%dispatch-case?142811%_
                  (lambda (_%hd143499%_ _%body143500%_)
                    (let* ((_%form143502%_
                            (cons _%hd143499%_ (cons _%body143500%_ '())))
                           (_%__stx145824145825%_ _%form143502%_)
                           (_%g143507143664%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx145824145825%_)))))
                      (let ((_%__kont145826145827%_
                             (lambda (_%L144189%_ _%L144190%_ _%L144191%_)
                               '#t))
                            (_%__kont145832145833%_
                             (lambda (_%L143977%_
                                      _%L143978%_
                                      _%L143979%_
                                      _%L143980%_
                                      _%L143981%_
                                      _%L143982%_)
                               '#t))
                            (_%__kont145838145839%_
                             (lambda (_%L143772%_
                                      _%L143773%_
                                      _%L143774%_
                                      _%L143775%_)
                               '#t))
                            (_%__kont145840145841%_ (lambda () '#f)))
                        (let* ((_%__match145965145966%_
                                (lambda (_%e143624143676%_
                                         _%hd143625143679%_
                                         _%tl143626143681%_
                                         _%e143627143684%_
                                         _%hd143628143687%_
                                         _%tl143629143689%_
                                         _%e143630143692%_
                                         _%hd143631143695%_
                                         _%tl143632143697%_
                                         _%e143633143700%_
                                         _%hd143634143703%_
                                         _%tl143635143705%_
                                         _%e143636143708%_
                                         _%hd143637143711%_
                                         _%tl143638143713%_
                                         _%e143639143716%_
                                         _%hd143640143719%_
                                         _%tl143641143721%_
                                         _%e143642143724%_
                                         _%hd143643143727%_
                                         _%tl143644143729%_
                                         _%e143645143732%_
                                         _%hd143646143735%_
                                         _%tl143647143737%_
                                         _%e143648143740%_
                                         _%hd143649143743%_
                                         _%tl143650143745%_
                                         _%e143651143748%_
                                         _%hd143652143751%_
                                         _%tl143653143753%_
                                         _%e143654143756%_
                                         _%hd143655143759%_
                                         _%tl143656143761%_
                                         _%e143657143764%_
                                         _%hd143658143767%_
                                         _%tl143659143769%_)
                                  (let ((_%L143772%_ _%hd143658143767%_)
                                        (_%L143773%_ _%hd143649143743%_)
                                        (_%L143774%_ _%hd143640143719%_)
                                        (_%L143775%_ _%hd143625143679%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L143775%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L143774%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L143775%_
                                                _%L143772%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L143773%_
                                                     _%L143775%_))))
                                        (_%__kont145838145839%_
                                         _%L143772%_
                                         _%L143773%_
                                         _%L143774%_
                                         _%L143775%_)
                                        (_%__kont145840145841%_)))))
                               (_%__match145937145938%_
                                (lambda (_%e143624143676%_
                                         _%hd143625143679%_
                                         _%tl143626143681%_
                                         _%e143627143684%_
                                         _%hd143628143687%_
                                         _%tl143629143689%_
                                         _%e143630143692%_
                                         _%hd143631143695%_
                                         _%tl143632143697%_
                                         _%e143633143700%_
                                         _%hd143634143703%_
                                         _%tl143635143705%_
                                         _%e143636143708%_
                                         _%hd143637143711%_
                                         _%tl143638143713%_
                                         _%e143639143716%_
                                         _%hd143640143719%_
                                         _%tl143641143721%_
                                         _%e143642143724%_
                                         _%hd143643143727%_
                                         _%tl143644143729%_
                                         _%e143645143732%_
                                         _%hd143646143735%_
                                         _%tl143647143737%_
                                         _%e143648143740%_
                                         _%hd143649143743%_
                                         _%tl143650143745%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143644143729%_))
                                      (let ((_%e143651143748%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143644143729%_))))
                                        (let ((_%tl143653143753%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143651143748%_)))
                                              (_%hd143652143751%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143651143748%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd143652143751%_))
                                              (let ((_%e143654143756%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd143652143751%_))))
                                                (let ((_%tl143656143761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143654143756%_)))
                                                      (_%hd143655143759%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143654143756%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd143655143759%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd143655143759%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl143656143761%_))
                      (let ((_%e143657143764%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl143656143761%_))))
                        (let ((_%tl143659143769%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143657143764%_)))
                              (_%hd143658143767%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143657143764%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl143659143769%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl143653143753%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl143629143689%_))
                                      (_%__match145965145966%_
                                       _%e143624143676%_
                                       _%hd143625143679%_
                                       _%tl143626143681%_
                                       _%e143627143684%_
                                       _%hd143628143687%_
                                       _%tl143629143689%_
                                       _%e143630143692%_
                                       _%hd143631143695%_
                                       _%tl143632143697%_
                                       _%e143633143700%_
                                       _%hd143634143703%_
                                       _%tl143635143705%_
                                       _%e143636143708%_
                                       _%hd143637143711%_
                                       _%tl143638143713%_
                                       _%e143639143716%_
                                       _%hd143640143719%_
                                       _%tl143641143721%_
                                       _%e143642143724%_
                                       _%hd143643143727%_
                                       _%tl143644143729%_
                                       _%e143645143732%_
                                       _%hd143646143735%_
                                       _%tl143647143737%_
                                       _%e143648143740%_
                                       _%hd143649143743%_
                                       _%tl143650143745%_
                                       _%e143651143748%_
                                       _%hd143652143751%_
                                       _%tl143653143753%_
                                       _%e143654143756%_
                                       _%hd143655143759%_
                                       _%tl143656143761%_
                                       _%e143657143764%_
                                       _%hd143658143767%_
                                       _%tl143659143769%_)
                                      (_%__kont145840145841%_))
                                  (_%__kont145840145841%_))
                              (_%__kont145840145841%_))))
                      (_%__kont145840145841%_))
                  (_%__kont145840145841%_))
              (_%__kont145840145841%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont145840145841%_))))
                                      (_%__kont145840145841%_))))
                               (_%__match145867145868%_
                                (lambda (_%e143560143817%_
                                         _%hd143561143820%_
                                         _%tl143562143822%_
                                         _%__splice145834145835%_
                                         _%target143563143825%_
                                         _%tl143565143827%_)
                                  (letrec ((_%loop143566143830%_
                                            (lambda (_%hd143564143833%_
                                                     _%arg143570143835%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143564143833%_))
                                                  (let ((_%e143567143838%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143564143833%_))))
                                                    (let ((_%lp-tl143569143843%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143567143838%_)))
                                                          (_%lp-hd143568143841%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143567143838%_))))
                                                      (_%loop143566143830%_
                                                       _%lp-tl143569143843%_
                                                       (cons _%lp-hd143568143841%_
                                                             _%arg143570143835%_))))
                                                  (let ((_%arg143571143846%_
                                                         (reverse _%arg143570143835%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143562143822%_))
                                                        (let ((_%e143572143849%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143562143822%_))))
                  (let ((_%tl143574143854%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143572143849%_)))
                        (_%hd143573143852%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143572143849%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143573143852%_))
                        (let ((_%e143575143857%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143573143852%_))))
                          (let ((_%tl143577143862%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143575143857%_)))
                                (_%hd143576143860%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143575143857%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143576143860%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143576143860%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143577143862%_))
                                        (let ((_%e143578143865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143577143862%_))))
                                          (let ((_%tl143580143870%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143578143865%_)))
                                                (_%hd143579143868%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143578143865%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143579143868%_))
                                                (let ((_%e143581143873%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143579143868%_))))
                                                  (let ((_%tl143583143878%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143581143873%_)))
                                                        (_%hd143582143876%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143581143873%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143582143876%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143582143876%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143583143878%_))
                        (let ((_%e143584143881%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143583143878%_))))
                          (let ((_%tl143586143886%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143584143881%_)))
                                (_%hd143585143884%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143584143881%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143586143886%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl143580143870%_))
                                    (let ((_%e143587143889%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl143580143870%_))))
                                      (let ((_%tl143589143894%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e143587143889%_)))
                                            (_%hd143588143892%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e143587143889%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd143588143892%_))
                                            (let ((_%e143590143897%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd143588143892%_))))
                                              (let ((_%tl143592143902%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143590143897%_)))
                                                    (_%hd143591143900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143590143897%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd143591143900%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd143591143900%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl143592143902%_))
                                                            (let ((_%e143593143905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl143592143902%_))))
                      (let ((_%tl143595143910%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143593143905%_)))
                            (_%hd143594143908%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143593143905%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl143595143910%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl143589143894%_))
                                (if (let ((__tmp147106
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl143589143894%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp147106 '1))
                                    (let ((_%__splice145836145837%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl143589143894%_
                                              '1))))
                                      (let ((_%tl143598143915%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145836145837%_
                                                '1)))
                                            (_%target143596143913%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145836145837%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143598143915%_))
                                            (let ((_%e143605143918%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143598143915%_))))
                                              (let ((_%tl143607143923%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143605143918%_)))
                                                    (_%hd143606143921%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143605143918%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd143606143921%_))
                                                    (let ((_%e143608143926%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd143606143921%_))))
                                                      (let ((_%tl143610143931%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e143608143926%_)))
                    (_%hd143609143929%_
                     (let () (declare (not safe)) (##car _%e143608143926%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd143609143929%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd143609143929%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl143610143931%_))
                            (let ((_%e143611143934%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl143610143931%_))))
                              (let ((_%tl143613143939%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e143611143934%_)))
                                    (_%hd143612143937%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e143611143934%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl143613143939%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl143607143923%_))
                                        (letrec ((_%loop143599143942%_
                                                  (lambda (_%hd143597143945%_
                                                           _%xarg143603143947%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd143597143945%_))
                                                        (let ((_%e143600143950%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd143597143945%_))))
                  (let ((_%lp-tl143602143955%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143600143950%_)))
                        (_%lp-hd143601143953%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143600143950%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd143601143953%_))
                        (let ((_%e143614143958%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd143601143953%_))))
                          (let ((_%tl143616143963%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143614143958%_)))
                                (_%hd143615143961%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143614143958%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143615143961%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd143615143961%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143616143963%_))
                                        (let ((_%e143617143966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143616143963%_))))
                                          (let ((_%tl143619143971%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143617143966%_)))
                                                (_%hd143618143969%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143617143966%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143619143971%_))
                                                (_%loop143599143942%_
                                                 _%lp-tl143602143955%_
                                                 (cons _%hd143618143969%_
                                                       _%xarg143603143947%_))
                                                (_%__match145937145938%_
                                                 _%e143560143817%_
                                                 _%hd143561143820%_
                                                 _%tl143562143822%_
                                                 _%e143572143849%_
                                                 _%hd143573143852%_
                                                 _%tl143574143854%_
                                                 _%e143575143857%_
                                                 _%hd143576143860%_
                                                 _%tl143577143862%_
                                                 _%e143578143865%_
                                                 _%hd143579143868%_
                                                 _%tl143580143870%_
                                                 _%e143581143873%_
                                                 _%hd143582143876%_
                                                 _%tl143583143878%_
                                                 _%e143584143881%_
                                                 _%hd143585143884%_
                                                 _%tl143586143886%_
                                                 _%e143587143889%_
                                                 _%hd143588143892%_
                                                 _%tl143589143894%_
                                                 _%e143590143897%_
                                                 _%hd143591143900%_
                                                 _%tl143592143902%_
                                                 _%e143593143905%_
                                                 _%hd143594143908%_
                                                 _%tl143595143910%_))))
                                        (_%__match145937145938%_
                                         _%e143560143817%_
                                         _%hd143561143820%_
                                         _%tl143562143822%_
                                         _%e143572143849%_
                                         _%hd143573143852%_
                                         _%tl143574143854%_
                                         _%e143575143857%_
                                         _%hd143576143860%_
                                         _%tl143577143862%_
                                         _%e143578143865%_
                                         _%hd143579143868%_
                                         _%tl143580143870%_
                                         _%e143581143873%_
                                         _%hd143582143876%_
                                         _%tl143583143878%_
                                         _%e143584143881%_
                                         _%hd143585143884%_
                                         _%tl143586143886%_
                                         _%e143587143889%_
                                         _%hd143588143892%_
                                         _%tl143589143894%_
                                         _%e143590143897%_
                                         _%hd143591143900%_
                                         _%tl143592143902%_
                                         _%e143593143905%_
                                         _%hd143594143908%_
                                         _%tl143595143910%_))
                                    (_%__match145937145938%_
                                     _%e143560143817%_
                                     _%hd143561143820%_
                                     _%tl143562143822%_
                                     _%e143572143849%_
                                     _%hd143573143852%_
                                     _%tl143574143854%_
                                     _%e143575143857%_
                                     _%hd143576143860%_
                                     _%tl143577143862%_
                                     _%e143578143865%_
                                     _%hd143579143868%_
                                     _%tl143580143870%_
                                     _%e143581143873%_
                                     _%hd143582143876%_
                                     _%tl143583143878%_
                                     _%e143584143881%_
                                     _%hd143585143884%_
                                     _%tl143586143886%_
                                     _%e143587143889%_
                                     _%hd143588143892%_
                                     _%tl143589143894%_
                                     _%e143590143897%_
                                     _%hd143591143900%_
                                     _%tl143592143902%_
                                     _%e143593143905%_
                                     _%hd143594143908%_
                                     _%tl143595143910%_))
                                (_%__match145937145938%_
                                 _%e143560143817%_
                                 _%hd143561143820%_
                                 _%tl143562143822%_
                                 _%e143572143849%_
                                 _%hd143573143852%_
                                 _%tl143574143854%_
                                 _%e143575143857%_
                                 _%hd143576143860%_
                                 _%tl143577143862%_
                                 _%e143578143865%_
                                 _%hd143579143868%_
                                 _%tl143580143870%_
                                 _%e143581143873%_
                                 _%hd143582143876%_
                                 _%tl143583143878%_
                                 _%e143584143881%_
                                 _%hd143585143884%_
                                 _%tl143586143886%_
                                 _%e143587143889%_
                                 _%hd143588143892%_
                                 _%tl143589143894%_
                                 _%e143590143897%_
                                 _%hd143591143900%_
                                 _%tl143592143902%_
                                 _%e143593143905%_
                                 _%hd143594143908%_
                                 _%tl143595143910%_))))
                        (_%__match145937145938%_
                         _%e143560143817%_
                         _%hd143561143820%_
                         _%tl143562143822%_
                         _%e143572143849%_
                         _%hd143573143852%_
                         _%tl143574143854%_
                         _%e143575143857%_
                         _%hd143576143860%_
                         _%tl143577143862%_
                         _%e143578143865%_
                         _%hd143579143868%_
                         _%tl143580143870%_
                         _%e143581143873%_
                         _%hd143582143876%_
                         _%tl143583143878%_
                         _%e143584143881%_
                         _%hd143585143884%_
                         _%tl143586143886%_
                         _%e143587143889%_
                         _%hd143588143892%_
                         _%tl143589143894%_
                         _%e143590143897%_
                         _%hd143591143900%_
                         _%tl143592143902%_
                         _%e143593143905%_
                         _%hd143594143908%_
                         _%tl143595143910%_))))
                (let ((_%xarg143604143974%_ (reverse _%xarg143603143947%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl143574143854%_))
                      (let ((_%L143977%_ _%hd143612143937%_)
                            (_%L143978%_ _%xarg143604143974%_)
                            (_%L143979%_ _%hd143594143908%_)
                            (_%L143980%_ _%hd143585143884%_)
                            (_%L143981%_ _%tl143565143827%_)
                            (_%L143982%_ _%arg143571143846%_))
                        (if (and (let ((__tmp147107
                                        (let ((__tmp147108
                                               (lambda (_%g144025144028%_
                                                        _%g144026144030%_)
                                                 (cons _%g144025144028%_
                                                       _%g144026144030%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp147108
                                           '()
                                           _%L143982%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp147107))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L143981%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L143980%_
                                    'apply))
                                 (let ((__tmp147111
                                        (length (let ((__tmp147112
                                                       (lambda (_%g144032144035%_
                                                                _%g144033144037%_)
                                                         (cons _%g144032144035%_
                                                               _%g144033144037%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp147112
                                                   '()
                                                   _%L143982%_))))
                                       (__tmp147109
                                        (length (let ((__tmp147110
                                                       (lambda (_%g144039144042%_
                                                                _%g144040144044%_)
                                                         (cons _%g144039144042%_
                                                               _%g144040144044%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp147110
                                                   '()
                                                   _%L143978%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp147111 __tmp147109))
                                 (let ((__tmp147115
                                        (let ((__tmp147116
                                               (lambda (_%g144046144049%_
                                                        _%g144047144051%_)
                                                 (cons _%g144046144049%_
                                                       _%g144047144051%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp147116
                                           '()
                                           _%L143982%_)))
                                       (__tmp147113
                                        (let ((__tmp147114
                                               (lambda (_%g144053144056%_
                                                        _%g144054144058%_)
                                                 (cons _%g144053144056%_
                                                       _%g144054144058%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp147114
                                           '()
                                           _%L143978%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp147115
                                    __tmp147113))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L143981%_
                                    _%L143977%_))
                                 (not (let ((__tmp147120
                                             (lambda (_%g144060144062%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g144060144062%_
                                                  _%L143979%_))))
                                            (__tmp147117
                                             (let ((__tmp147119
                                                    (lambda (_%g144064144067%_
                                                             _%g144065144069%_)
                                                      (cons _%g144064144067%_
                                                            _%g144065144069%_)))
                                                   (__tmp147118
                                                    (cons _%L143981%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp147119
                                                __tmp147118
                                                _%L143982%_))))
                                        (declare (not safe))
                                        (__find __tmp147120 __tmp147117))))
                            (_%__kont145832145833%_
                             _%L143977%_
                             _%L143978%_
                             _%L143979%_
                             _%L143980%_
                             _%L143981%_
                             _%L143982%_)
                            (_%__match145937145938%_
                             _%e143560143817%_
                             _%hd143561143820%_
                             _%tl143562143822%_
                             _%e143572143849%_
                             _%hd143573143852%_
                             _%tl143574143854%_
                             _%e143575143857%_
                             _%hd143576143860%_
                             _%tl143577143862%_
                             _%e143578143865%_
                             _%hd143579143868%_
                             _%tl143580143870%_
                             _%e143581143873%_
                             _%hd143582143876%_
                             _%tl143583143878%_
                             _%e143584143881%_
                             _%hd143585143884%_
                             _%tl143586143886%_
                             _%e143587143889%_
                             _%hd143588143892%_
                             _%tl143589143894%_
                             _%e143590143897%_
                             _%hd143591143900%_
                             _%tl143592143902%_
                             _%e143593143905%_
                             _%hd143594143908%_
                             _%tl143595143910%_)))
                      (_%__match145937145938%_
                       _%e143560143817%_
                       _%hd143561143820%_
                       _%tl143562143822%_
                       _%e143572143849%_
                       _%hd143573143852%_
                       _%tl143574143854%_
                       _%e143575143857%_
                       _%hd143576143860%_
                       _%tl143577143862%_
                       _%e143578143865%_
                       _%hd143579143868%_
                       _%tl143580143870%_
                       _%e143581143873%_
                       _%hd143582143876%_
                       _%tl143583143878%_
                       _%e143584143881%_
                       _%hd143585143884%_
                       _%tl143586143886%_
                       _%e143587143889%_
                       _%hd143588143892%_
                       _%tl143589143894%_
                       _%e143590143897%_
                       _%hd143591143900%_
                       _%tl143592143902%_
                       _%e143593143905%_
                       _%hd143594143908%_
                       _%tl143595143910%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop143599143942%_
                                           _%target143596143913%_
                                           '()))
                                        (_%__match145937145938%_
                                         _%e143560143817%_
                                         _%hd143561143820%_
                                         _%tl143562143822%_
                                         _%e143572143849%_
                                         _%hd143573143852%_
                                         _%tl143574143854%_
                                         _%e143575143857%_
                                         _%hd143576143860%_
                                         _%tl143577143862%_
                                         _%e143578143865%_
                                         _%hd143579143868%_
                                         _%tl143580143870%_
                                         _%e143581143873%_
                                         _%hd143582143876%_
                                         _%tl143583143878%_
                                         _%e143584143881%_
                                         _%hd143585143884%_
                                         _%tl143586143886%_
                                         _%e143587143889%_
                                         _%hd143588143892%_
                                         _%tl143589143894%_
                                         _%e143590143897%_
                                         _%hd143591143900%_
                                         _%tl143592143902%_
                                         _%e143593143905%_
                                         _%hd143594143908%_
                                         _%tl143595143910%_))
                                    (_%__match145937145938%_
                                     _%e143560143817%_
                                     _%hd143561143820%_
                                     _%tl143562143822%_
                                     _%e143572143849%_
                                     _%hd143573143852%_
                                     _%tl143574143854%_
                                     _%e143575143857%_
                                     _%hd143576143860%_
                                     _%tl143577143862%_
                                     _%e143578143865%_
                                     _%hd143579143868%_
                                     _%tl143580143870%_
                                     _%e143581143873%_
                                     _%hd143582143876%_
                                     _%tl143583143878%_
                                     _%e143584143881%_
                                     _%hd143585143884%_
                                     _%tl143586143886%_
                                     _%e143587143889%_
                                     _%hd143588143892%_
                                     _%tl143589143894%_
                                     _%e143590143897%_
                                     _%hd143591143900%_
                                     _%tl143592143902%_
                                     _%e143593143905%_
                                     _%hd143594143908%_
                                     _%tl143595143910%_))))
                            (_%__match145937145938%_
                             _%e143560143817%_
                             _%hd143561143820%_
                             _%tl143562143822%_
                             _%e143572143849%_
                             _%hd143573143852%_
                             _%tl143574143854%_
                             _%e143575143857%_
                             _%hd143576143860%_
                             _%tl143577143862%_
                             _%e143578143865%_
                             _%hd143579143868%_
                             _%tl143580143870%_
                             _%e143581143873%_
                             _%hd143582143876%_
                             _%tl143583143878%_
                             _%e143584143881%_
                             _%hd143585143884%_
                             _%tl143586143886%_
                             _%e143587143889%_
                             _%hd143588143892%_
                             _%tl143589143894%_
                             _%e143590143897%_
                             _%hd143591143900%_
                             _%tl143592143902%_
                             _%e143593143905%_
                             _%hd143594143908%_
                             _%tl143595143910%_))
                        (_%__match145937145938%_
                         _%e143560143817%_
                         _%hd143561143820%_
                         _%tl143562143822%_
                         _%e143572143849%_
                         _%hd143573143852%_
                         _%tl143574143854%_
                         _%e143575143857%_
                         _%hd143576143860%_
                         _%tl143577143862%_
                         _%e143578143865%_
                         _%hd143579143868%_
                         _%tl143580143870%_
                         _%e143581143873%_
                         _%hd143582143876%_
                         _%tl143583143878%_
                         _%e143584143881%_
                         _%hd143585143884%_
                         _%tl143586143886%_
                         _%e143587143889%_
                         _%hd143588143892%_
                         _%tl143589143894%_
                         _%e143590143897%_
                         _%hd143591143900%_
                         _%tl143592143902%_
                         _%e143593143905%_
                         _%hd143594143908%_
                         _%tl143595143910%_))
                    (_%__match145937145938%_
                     _%e143560143817%_
                     _%hd143561143820%_
                     _%tl143562143822%_
                     _%e143572143849%_
                     _%hd143573143852%_
                     _%tl143574143854%_
                     _%e143575143857%_
                     _%hd143576143860%_
                     _%tl143577143862%_
                     _%e143578143865%_
                     _%hd143579143868%_
                     _%tl143580143870%_
                     _%e143581143873%_
                     _%hd143582143876%_
                     _%tl143583143878%_
                     _%e143584143881%_
                     _%hd143585143884%_
                     _%tl143586143886%_
                     _%e143587143889%_
                     _%hd143588143892%_
                     _%tl143589143894%_
                     _%e143590143897%_
                     _%hd143591143900%_
                     _%tl143592143902%_
                     _%e143593143905%_
                     _%hd143594143908%_
                     _%tl143595143910%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match145937145938%_
                                                     _%e143560143817%_
                                                     _%hd143561143820%_
                                                     _%tl143562143822%_
                                                     _%e143572143849%_
                                                     _%hd143573143852%_
                                                     _%tl143574143854%_
                                                     _%e143575143857%_
                                                     _%hd143576143860%_
                                                     _%tl143577143862%_
                                                     _%e143578143865%_
                                                     _%hd143579143868%_
                                                     _%tl143580143870%_
                                                     _%e143581143873%_
                                                     _%hd143582143876%_
                                                     _%tl143583143878%_
                                                     _%e143584143881%_
                                                     _%hd143585143884%_
                                                     _%tl143586143886%_
                                                     _%e143587143889%_
                                                     _%hd143588143892%_
                                                     _%tl143589143894%_
                                                     _%e143590143897%_
                                                     _%hd143591143900%_
                                                     _%tl143592143902%_
                                                     _%e143593143905%_
                                                     _%hd143594143908%_
                                                     _%tl143595143910%_))))
                                            (_%__match145937145938%_
                                             _%e143560143817%_
                                             _%hd143561143820%_
                                             _%tl143562143822%_
                                             _%e143572143849%_
                                             _%hd143573143852%_
                                             _%tl143574143854%_
                                             _%e143575143857%_
                                             _%hd143576143860%_
                                             _%tl143577143862%_
                                             _%e143578143865%_
                                             _%hd143579143868%_
                                             _%tl143580143870%_
                                             _%e143581143873%_
                                             _%hd143582143876%_
                                             _%tl143583143878%_
                                             _%e143584143881%_
                                             _%hd143585143884%_
                                             _%tl143586143886%_
                                             _%e143587143889%_
                                             _%hd143588143892%_
                                             _%tl143589143894%_
                                             _%e143590143897%_
                                             _%hd143591143900%_
                                             _%tl143592143902%_
                                             _%e143593143905%_
                                             _%hd143594143908%_
                                             _%tl143595143910%_))))
                                    (_%__match145937145938%_
                                     _%e143560143817%_
                                     _%hd143561143820%_
                                     _%tl143562143822%_
                                     _%e143572143849%_
                                     _%hd143573143852%_
                                     _%tl143574143854%_
                                     _%e143575143857%_
                                     _%hd143576143860%_
                                     _%tl143577143862%_
                                     _%e143578143865%_
                                     _%hd143579143868%_
                                     _%tl143580143870%_
                                     _%e143581143873%_
                                     _%hd143582143876%_
                                     _%tl143583143878%_
                                     _%e143584143881%_
                                     _%hd143585143884%_
                                     _%tl143586143886%_
                                     _%e143587143889%_
                                     _%hd143588143892%_
                                     _%tl143589143894%_
                                     _%e143590143897%_
                                     _%hd143591143900%_
                                     _%tl143592143902%_
                                     _%e143593143905%_
                                     _%hd143594143908%_
                                     _%tl143595143910%_))
                                (_%__match145937145938%_
                                 _%e143560143817%_
                                 _%hd143561143820%_
                                 _%tl143562143822%_
                                 _%e143572143849%_
                                 _%hd143573143852%_
                                 _%tl143574143854%_
                                 _%e143575143857%_
                                 _%hd143576143860%_
                                 _%tl143577143862%_
                                 _%e143578143865%_
                                 _%hd143579143868%_
                                 _%tl143580143870%_
                                 _%e143581143873%_
                                 _%hd143582143876%_
                                 _%tl143583143878%_
                                 _%e143584143881%_
                                 _%hd143585143884%_
                                 _%tl143586143886%_
                                 _%e143587143889%_
                                 _%hd143588143892%_
                                 _%tl143589143894%_
                                 _%e143590143897%_
                                 _%hd143591143900%_
                                 _%tl143592143902%_
                                 _%e143593143905%_
                                 _%hd143594143908%_
                                 _%tl143595143910%_))
                            (_%__kont145840145841%_))))
                    (_%__kont145840145841%_))
                (_%__kont145840145841%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont145840145841%_))))
                                            (_%__kont145840145841%_))))
                                    (_%__kont145840145841%_))
                                (_%__kont145840145841%_))))
                        (_%__kont145840145841%_))
                    (_%__kont145840145841%_))
                (_%__kont145840145841%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont145840145841%_))))
                                        (_%__kont145840145841%_))
                                    (_%__kont145840145841%_))
                                (_%__kont145840145841%_))))
                        (_%__kont145840145841%_))))
                (_%__kont145840145841%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143566143830%_
                                     _%target143563143825%_
                                     '()))))
                               (_%__match145855145856%_
                                (lambda (_%e143512144077%_
                                         _%hd143513144080%_
                                         _%tl143514144082%_
                                         _%__splice145828145829%_
                                         _%target143515144085%_
                                         _%tl143517144087%_)
                                  (letrec ((_%loop143518144090%_
                                            (lambda (_%hd143516144093%_
                                                     _%arg143522144095%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143516144093%_))
                                                  (let ((_%e143519144098%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143516144093%_))))
                                                    (let ((_%lp-tl143521144103%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143519144098%_)))
                                                          (_%lp-hd143520144101%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143519144098%_))))
                                                      (_%loop143518144090%_
                                                       _%lp-tl143521144103%_
                                                       (cons _%lp-hd143520144101%_
                                                             _%arg143522144095%_))))
                                                  (let ((_%arg143523144106%_
                                                         (reverse _%arg143522144095%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143514144082%_))
                                                        (let ((_%e143524144109%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143514144082%_))))
                  (let ((_%tl143526144114%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143524144109%_)))
                        (_%hd143525144112%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143524144109%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143525144112%_))
                        (let ((_%e143527144117%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143525144112%_))))
                          (let ((_%tl143529144122%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143527144117%_)))
                                (_%hd143528144120%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143527144117%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143528144120%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143528144120%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143529144122%_))
                                        (let ((_%e143530144125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143529144122%_))))
                                          (let ((_%tl143532144130%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143530144125%_)))
                                                (_%hd143531144128%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143530144125%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143531144128%_))
                                                (let ((_%e143533144133%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143531144128%_))))
                                                  (let ((_%tl143535144138%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143533144133%_)))
                                                        (_%hd143534144136%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143533144133%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143534144136%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143534144136%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143535144138%_))
                        (let ((_%e143536144141%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143535144138%_))))
                          (let ((_%tl143538144146%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143536144141%_)))
                                (_%hd143537144144%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143536144141%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143538144146%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl143532144130%_))
                                    (let ((_%__splice145830145831%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl143532144130%_
                                              '0))))
                                      (let ((_%tl143541144151%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145830145831%_
                                                '1)))
                                            (_%target143539144149%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145830145831%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl143541144151%_))
                                            (letrec ((_%loop143542144154%_
                                                      (lambda (_%hd143540144157%_
                                                               _%xarg143546144159%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd143540144157%_))
                                                            (let ((_%e143543144162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd143540144157%_))))
                      (let ((_%lp-tl143545144167%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143543144162%_)))
                            (_%lp-hd143544144165%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143543144162%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd143544144165%_))
                            (let ((_%e143548144170%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd143544144165%_))))
                              (let ((_%tl143550144175%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e143548144170%_)))
                                    (_%hd143549144173%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e143548144170%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd143549144173%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd143549144173%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143550144175%_))
                                            (let ((_%e143551144178%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143550144175%_))))
                                              (let ((_%tl143553144183%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143551144178%_)))
                                                    (_%hd143552144181%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143551144178%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl143553144183%_))
                                                    (_%loop143542144154%_
                                                     _%lp-tl143545144167%_
                                                     (cons _%hd143552144181%_
                                                           _%xarg143546144159%_))
                                                    (_%__match145867145868%_
                                                     _%e143512144077%_
                                                     _%hd143513144080%_
                                                     _%tl143514144082%_
                                                     _%__splice145828145829%_
                                                     _%target143515144085%_
                                                     _%tl143517144087%_))))
                                            (_%__match145867145868%_
                                             _%e143512144077%_
                                             _%hd143513144080%_
                                             _%tl143514144082%_
                                             _%__splice145828145829%_
                                             _%target143515144085%_
                                             _%tl143517144087%_))
                                        (_%__match145867145868%_
                                         _%e143512144077%_
                                         _%hd143513144080%_
                                         _%tl143514144082%_
                                         _%__splice145828145829%_
                                         _%target143515144085%_
                                         _%tl143517144087%_))
                                    (_%__match145867145868%_
                                     _%e143512144077%_
                                     _%hd143513144080%_
                                     _%tl143514144082%_
                                     _%__splice145828145829%_
                                     _%target143515144085%_
                                     _%tl143517144087%_))))
                            (_%__match145867145868%_
                             _%e143512144077%_
                             _%hd143513144080%_
                             _%tl143514144082%_
                             _%__splice145828145829%_
                             _%target143515144085%_
                             _%tl143517144087%_))))
                    (let ((_%xarg143547144186%_
                           (reverse _%xarg143546144159%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl143526144114%_))
                          (let ((_%L144189%_ _%xarg143547144186%_)
                                (_%L144190%_ _%hd143537144144%_)
                                (_%L144191%_ _%arg143523144106%_))
                            (if (and (let ((__tmp147121
                                            (let ((__tmp147122
                                                   (lambda (_%g144219144222%_
                                                            _%g144220144224%_)
                                                     (cons _%g144219144222%_
                                                           _%g144220144224%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147122
                                               '()
                                               _%L144191%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp147121))
                                     (let ((__tmp147125
                                            (length (let ((__tmp147126
                                                           (lambda (_%g144226144229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g144227144231%_)
                     (cons _%g144226144229%_ _%g144227144231%_))))
              (declare (not safe))
              (__foldr1 __tmp147126 '() _%L144191%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp147123
                                            (length (let ((__tmp147124
                                                           (lambda (_%g144233144236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g144234144238%_)
                     (cons _%g144233144236%_ _%g144234144238%_))))
              (declare (not safe))
              (__foldr1 __tmp147124 '() _%L144189%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp147125 __tmp147123))
                                     (let ((__tmp147129
                                            (let ((__tmp147130
                                                   (lambda (_%g144240144243%_
                                                            _%g144241144245%_)
                                                     (cons _%g144240144243%_
                                                           _%g144241144245%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147130
                                               '()
                                               _%L144191%_)))
                                           (__tmp147127
                                            (let ((__tmp147128
                                                   (lambda (_%g144247144250%_
                                                            _%g144248144252%_)
                                                     (cons _%g144247144250%_
                                                           _%g144248144252%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147128
                                               '()
                                               _%L144189%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp147129
                                        __tmp147127))
                                     (not (let ((__tmp147133
                                                 (lambda (_%g144254144256%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g144254144256%_
                                                      _%L144190%_))))
                                                (__tmp147131
                                                 (let ((__tmp147132
                                                        (lambda (_%g144258144261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g144259144263%_)
                  (cons _%g144258144261%_ _%g144259144263%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp147132
                                                    '()
                                                    _%L144191%_))))
                                            (declare (not safe))
                                            (__find __tmp147133 __tmp147131))))
                                (_%__kont145826145827%_
                                 _%L144189%_
                                 _%L144190%_
                                 _%L144191%_)
                                (_%__match145867145868%_
                                 _%e143512144077%_
                                 _%hd143513144080%_
                                 _%tl143514144082%_
                                 _%__splice145828145829%_
                                 _%target143515144085%_
                                 _%tl143517144087%_)))
                          (_%__match145867145868%_
                           _%e143512144077%_
                           _%hd143513144080%_
                           _%tl143514144082%_
                           _%__splice145828145829%_
                           _%target143515144085%_
                           _%tl143517144087%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop143542144154%_
                                               _%target143539144149%_
                                               '()))
                                            (_%__match145867145868%_
                                             _%e143512144077%_
                                             _%hd143513144080%_
                                             _%tl143514144082%_
                                             _%__splice145828145829%_
                                             _%target143515144085%_
                                             _%tl143517144087%_))))
                                    (_%__match145867145868%_
                                     _%e143512144077%_
                                     _%hd143513144080%_
                                     _%tl143514144082%_
                                     _%__splice145828145829%_
                                     _%target143515144085%_
                                     _%tl143517144087%_))
                                (_%__match145867145868%_
                                 _%e143512144077%_
                                 _%hd143513144080%_
                                 _%tl143514144082%_
                                 _%__splice145828145829%_
                                 _%target143515144085%_
                                 _%tl143517144087%_))))
                        (_%__match145867145868%_
                         _%e143512144077%_
                         _%hd143513144080%_
                         _%tl143514144082%_
                         _%__splice145828145829%_
                         _%target143515144085%_
                         _%tl143517144087%_))
                    (_%__match145867145868%_
                     _%e143512144077%_
                     _%hd143513144080%_
                     _%tl143514144082%_
                     _%__splice145828145829%_
                     _%target143515144085%_
                     _%tl143517144087%_))
                (_%__match145867145868%_
                 _%e143512144077%_
                 _%hd143513144080%_
                 _%tl143514144082%_
                 _%__splice145828145829%_
                 _%target143515144085%_
                 _%tl143517144087%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match145867145868%_
                                                 _%e143512144077%_
                                                 _%hd143513144080%_
                                                 _%tl143514144082%_
                                                 _%__splice145828145829%_
                                                 _%target143515144085%_
                                                 _%tl143517144087%_))))
                                        (_%__match145867145868%_
                                         _%e143512144077%_
                                         _%hd143513144080%_
                                         _%tl143514144082%_
                                         _%__splice145828145829%_
                                         _%target143515144085%_
                                         _%tl143517144087%_))
                                    (_%__match145867145868%_
                                     _%e143512144077%_
                                     _%hd143513144080%_
                                     _%tl143514144082%_
                                     _%__splice145828145829%_
                                     _%target143515144085%_
                                     _%tl143517144087%_))
                                (_%__match145867145868%_
                                 _%e143512144077%_
                                 _%hd143513144080%_
                                 _%tl143514144082%_
                                 _%__splice145828145829%_
                                 _%target143515144085%_
                                 _%tl143517144087%_))))
                        (_%__match145867145868%_
                         _%e143512144077%_
                         _%hd143513144080%_
                         _%tl143514144082%_
                         _%__splice145828145829%_
                         _%target143515144085%_
                         _%tl143517144087%_))))
                (_%__match145867145868%_
                 _%e143512144077%_
                 _%hd143513144080%_
                 _%tl143514144082%_
                 _%__splice145828145829%_
                 _%target143515144085%_
                 _%tl143517144087%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143518144090%_
                                     _%target143515144085%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx145824145825%_))
                              (let ((_%e143512144077%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx145824145825%_))))
                                (let ((_%tl143514144082%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143512144077%_)))
                                      (_%hd143513144080%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143512144077%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd143513144080%_))
                                      (let ((_%__splice145828145829%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd143513144080%_
                                                '0))))
                                        (let ((_%tl143517144087%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice145828145829%_
                                                  '1)))
                                              (_%target143515144085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice145828145829%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143517144087%_))
                                              (_%__match145855145856%_
                                               _%e143512144077%_
                                               _%hd143513144080%_
                                               _%tl143514144082%_
                                               _%__splice145828145829%_
                                               _%target143515144085%_
                                               _%tl143517144087%_)
                                              (_%__match145867145868%_
                                               _%e143512144077%_
                                               _%hd143513144080%_
                                               _%tl143514144082%_
                                               _%__splice145828145829%_
                                               _%target143515144085%_
                                               _%tl143517144087%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl143514144082%_))
                                          (let ((_%e143627143684%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl143514144082%_))))
                                            (let ((_%tl143629143689%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e143627143684%_)))
                                                  (_%hd143628143687%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e143627143684%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143628143687%_))
                                                  (let ((_%e143630143692%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143628143687%_))))
                                                    (let ((_%tl143632143697%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143630143692%_)))
                                                          (_%hd143631143695%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143630143692%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd143631143695%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd143631143695%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143632143697%_))
                          (let ((_%e143633143700%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143632143697%_))))
                            (let ((_%tl143635143705%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143633143700%_)))
                                  (_%hd143634143703%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143633143700%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd143634143703%_))
                                  (let ((_%e143636143708%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd143634143703%_))))
                                    (let ((_%tl143638143713%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143636143708%_)))
                                          (_%hd143637143711%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143636143708%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd143637143711%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd143637143711%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl143638143713%_))
                                                  (let ((_%e143639143716%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl143638143713%_))))
                                                    (let ((_%tl143641143721%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143639143716%_)))
                                                          (_%hd143640143719%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143639143716%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl143641143721%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl143635143705%_))
                      (let ((_%e143642143724%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl143635143705%_))))
                        (let ((_%tl143644143729%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143642143724%_)))
                              (_%hd143643143727%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143642143724%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd143643143727%_))
                              (let ((_%e143645143732%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd143643143727%_))))
                                (let ((_%tl143647143737%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143645143732%_)))
                                      (_%hd143646143735%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143645143732%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd143646143735%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd143646143735%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl143647143737%_))
                                              (let ((_%e143648143740%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl143647143737%_))))
                                                (let ((_%tl143650143745%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143648143740%_)))
                                                      (_%hd143649143743%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143648143740%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143650143745%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl143644143729%_))
                                                          (let ((_%e143651143748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl143644143729%_))))
                    (let ((_%tl143653143753%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143651143748%_)))
                          (_%hd143652143751%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143651143748%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd143652143751%_))
                          (let ((_%e143654143756%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd143652143751%_))))
                            (let ((_%tl143656143761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143654143756%_)))
                                  (_%hd143655143759%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143654143756%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd143655143759%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd143655143759%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl143656143761%_))
                                          (let ((_%e143657143764%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl143656143761%_))))
                                            (let ((_%tl143659143769%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e143657143764%_)))
                                                  (_%hd143658143767%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e143657143764%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl143659143769%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143653143753%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl143629143689%_))
                                                          (_%__match145965145966%_
                                                           _%e143512144077%_
                                                           _%hd143513144080%_
                                                           _%tl143514144082%_
                                                           _%e143627143684%_
                                                           _%hd143628143687%_
                                                           _%tl143629143689%_
                                                           _%e143630143692%_
                                                           _%hd143631143695%_
                                                           _%tl143632143697%_
                                                           _%e143633143700%_
                                                           _%hd143634143703%_
                                                           _%tl143635143705%_
                                                           _%e143636143708%_
                                                           _%hd143637143711%_
                                                           _%tl143638143713%_
                                                           _%e143639143716%_
                                                           _%hd143640143719%_
                                                           _%tl143641143721%_
                                                           _%e143642143724%_
                                                           _%hd143643143727%_
                                                           _%tl143644143729%_
                                                           _%e143645143732%_
                                                           _%hd143646143735%_
                                                           _%tl143647143737%_
                                                           _%e143648143740%_
                                                           _%hd143649143743%_
                                                           _%tl143650143745%_
                                                           _%e143651143748%_
                                                           _%hd143652143751%_
                                                           _%tl143653143753%_
                                                           _%e143654143756%_
                                                           _%hd143655143759%_
                                                           _%tl143656143761%_
                                                           _%e143657143764%_
                                                           _%hd143658143767%_
                                                           _%tl143659143769%_)
                                                          (_%__kont145840145841%_))
                                                      (_%__kont145840145841%_))
                                                  (_%__kont145840145841%_))))
                                          (_%__kont145840145841%_))
                                      (_%__kont145840145841%_))
                                  (_%__kont145840145841%_))))
                          (_%__kont145840145841%_))))
                  (_%__kont145840145841%_))
              (_%__kont145840145841%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont145840145841%_))
                                          (_%__kont145840145841%_))
                                      (_%__kont145840145841%_))))
                              (_%__kont145840145841%_))))
                      (_%__kont145840145841%_))
                  (_%__kont145840145841%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145840145841%_))
                                              (_%__kont145840145841%_))
                                          (_%__kont145840145841%_))))
                                  (_%__kont145840145841%_))))
                          (_%__kont145840145841%_))
                      (_%__kont145840145841%_))
                  (_%__kont145840145841%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145840145841%_))))
                                          (_%__kont145840145841%_)))))
                              (_%__kont145840145841%_)))))))
                 (_%dispatch-case-e142812%_
                  (lambda (_%hd142963%_ _%body142964%_)
                    (let* ((_%form142966%_
                            (cons _%hd142963%_ (cons _%body142964%_ '())))
                           (_%__stx145968145969%_ _%form142966%_)
                           (_%g142970143094%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx145968145969%_)))))
                      (let ((_%__kont145970145971%_
                             (lambda (_%L143465%_ _%L143466%_ _%L143467%_)
                               (let ((__tmp147134
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L143466%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self142808%_
                                  __tmp147134))))
                            (_%__kont145976145977%_
                             (lambda (_%L143313%_
                                      _%L143314%_
                                      _%L143315%_
                                      _%L143316%_)
                               (let ((__tmp147135
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L143313%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self142808%_
                                  __tmp147135))))
                            (_%__kont145980145981%_
                             (lambda (_%L143179%_ _%L143180%_ _%L143181%_)
                               (let ((__tmp147136
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L143179%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self142808%_
                                  __tmp147136)))))
                        (let* ((_%__match146077146078%_
                                (lambda (_%e143060143099%_
                                         _%hd143061143102%_
                                         _%tl143062143104%_
                                         _%e143063143107%_
                                         _%hd143064143110%_
                                         _%tl143065143112%_
                                         _%e143066143115%_
                                         _%hd143067143118%_
                                         _%tl143068143120%_
                                         _%e143069143123%_
                                         _%hd143070143126%_
                                         _%tl143071143128%_
                                         _%e143072143131%_
                                         _%hd143073143134%_
                                         _%tl143074143136%_
                                         _%e143075143139%_
                                         _%hd143076143142%_
                                         _%tl143077143144%_
                                         _%e143078143147%_
                                         _%hd143079143150%_
                                         _%tl143080143152%_
                                         _%e143081143155%_
                                         _%hd143082143158%_
                                         _%tl143083143160%_
                                         _%e143084143163%_
                                         _%hd143085143166%_
                                         _%tl143086143168%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143080143152%_))
                                      (let ((_%e143087143171%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143080143152%_))))
                                        (let ((_%tl143089143176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143087143171%_)))
                                              (_%hd143088143174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143087143171%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143089143176%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl143065143112%_))
                                                  (_%__kont145980145981%_
                                                   _%hd143085143166%_
                                                   _%hd143076143142%_
                                                   _%hd143061143102%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g142970143094%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g142970143094%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142970143094%_)))))
                               (_%__match146007146008%_
                                (lambda (_%e143021143217%_
                                         _%hd143022143220%_
                                         _%tl143023143222%_
                                         _%__splice145978145979%_
                                         _%target143024143225%_
                                         _%tl143026143227%_)
                                  (letrec ((_%loop143027143230%_
                                            (lambda (_%hd143025143233%_
                                                     _%arg143031143235%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143025143233%_))
                                                  (let ((_%e143028143238%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143025143233%_))))
                                                    (let ((_%lp-tl143030143243%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143028143238%_)))
                                                          (_%lp-hd143029143241%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143028143238%_))))
                                                      (_%loop143027143230%_
                                                       _%lp-tl143030143243%_
                                                       (cons _%lp-hd143029143241%_
                                                             _%arg143031143235%_))))
                                                  (let ((_%arg143032143246%_
                                                         (reverse _%arg143031143235%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143023143222%_))
                                                        (let ((_%e143033143249%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143023143222%_))))
                  (let ((_%tl143035143254%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143033143249%_)))
                        (_%hd143034143252%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143033143249%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143034143252%_))
                        (let ((_%e143036143257%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143034143252%_))))
                          (let ((_%tl143038143262%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143036143257%_)))
                                (_%hd143037143260%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143036143257%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143037143260%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143037143260%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143038143262%_))
                                        (let ((_%e143039143265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143038143262%_))))
                                          (let ((_%tl143041143270%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143039143265%_)))
                                                (_%hd143040143268%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143039143265%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143040143268%_))
                                                (let ((_%e143042143273%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143040143268%_))))
                                                  (let ((_%tl143044143278%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143042143273%_)))
                                                        (_%hd143043143276%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143042143273%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143043143276%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143043143276%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143044143278%_))
                        (let ((_%e143045143281%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143044143278%_))))
                          (let ((_%tl143047143286%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143045143281%_)))
                                (_%hd143046143284%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143045143281%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143047143286%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl143041143270%_))
                                    (let ((_%e143048143289%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl143041143270%_))))
                                      (let ((_%tl143050143294%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e143048143289%_)))
                                            (_%hd143049143292%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e143048143289%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd143049143292%_))
                                            (let ((_%e143051143297%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd143049143292%_))))
                                              (let ((_%tl143053143302%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143051143297%_)))
                                                    (_%hd143052143300%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143051143297%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd143052143300%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd143052143300%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl143053143302%_))
                                                            (let ((_%e143054143305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl143053143302%_))))
                      (let ((_%tl143056143310%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143054143305%_)))
                            (_%hd143055143308%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143054143305%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl143056143310%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143035143254%_))
                                (_%__kont145976145977%_
                                 _%hd143055143308%_
                                 _%hd143046143284%_
                                 _%tl143026143227%_
                                 _%arg143032143246%_)
                                (_%__match146077146078%_
                                 _%e143021143217%_
                                 _%hd143022143220%_
                                 _%tl143023143222%_
                                 _%e143033143249%_
                                 _%hd143034143252%_
                                 _%tl143035143254%_
                                 _%e143036143257%_
                                 _%hd143037143260%_
                                 _%tl143038143262%_
                                 _%e143039143265%_
                                 _%hd143040143268%_
                                 _%tl143041143270%_
                                 _%e143042143273%_
                                 _%hd143043143276%_
                                 _%tl143044143278%_
                                 _%e143045143281%_
                                 _%hd143046143284%_
                                 _%tl143047143286%_
                                 _%e143048143289%_
                                 _%hd143049143292%_
                                 _%tl143050143294%_
                                 _%e143051143297%_
                                 _%hd143052143300%_
                                 _%tl143053143302%_
                                 _%e143054143305%_
                                 _%hd143055143308%_
                                 _%tl143056143310%_))
                            (let ()
                              (declare (not safe))
                              (_%g142970143094%_)))))
                    (let () (declare (not safe)) (_%g142970143094%_)))
                (let () (declare (not safe)) (_%g142970143094%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g142970143094%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g142970143094%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g142970143094%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g142970143094%_)))))
                        (let () (declare (not safe)) (_%g142970143094%_)))
                    (let () (declare (not safe)) (_%g142970143094%_)))
                (let () (declare (not safe)) (_%g142970143094%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g142970143094%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g142970143094%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g142970143094%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g142970143094%_)))))
                        (let () (declare (not safe)) (_%g142970143094%_)))))
                (let () (declare (not safe)) (_%g142970143094%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143027143230%_
                                     _%target143024143225%_
                                     '()))))
                               (_%__match145995145996%_
                                (lambda (_%e142975143353%_
                                         _%hd142976143356%_
                                         _%tl142977143358%_
                                         _%__splice145972145973%_
                                         _%target142978143361%_
                                         _%tl142980143363%_)
                                  (letrec ((_%loop142981143366%_
                                            (lambda (_%hd142979143369%_
                                                     _%arg142985143371%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142979143369%_))
                                                  (let ((_%e142982143374%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142979143369%_))))
                                                    (let ((_%lp-tl142984143379%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142982143374%_)))
                                                          (_%lp-hd142983143377%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142982143374%_))))
                                                      (_%loop142981143366%_
                                                       _%lp-tl142984143379%_
                                                       (cons _%lp-hd142983143377%_
                                                             _%arg142985143371%_))))
                                                  (let ((_%arg142986143382%_
                                                         (reverse _%arg142985143371%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142977143358%_))
                                                        (let ((_%e142987143385%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142977143358%_))))
                  (let ((_%tl142989143390%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142987143385%_)))
                        (_%hd142988143388%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142987143385%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142988143388%_))
                        (let ((_%e142990143393%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142988143388%_))))
                          (let ((_%tl142992143398%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142990143393%_)))
                                (_%hd142991143396%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142990143393%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142991143396%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd142991143396%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142992143398%_))
                                        (let ((_%e142993143401%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142992143398%_))))
                                          (let ((_%tl142995143406%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142993143401%_)))
                                                (_%hd142994143404%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142993143401%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd142994143404%_))
                                                (let ((_%e142996143409%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142994143404%_))))
                                                  (let ((_%tl142998143414%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142996143409%_)))
                                                        (_%hd142997143412%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142996143409%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd142997143412%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd142997143412%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl142998143414%_))
                        (let ((_%e142999143417%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl142998143414%_))))
                          (let ((_%tl143001143422%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142999143417%_)))
                                (_%hd143000143420%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142999143417%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143001143422%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl142995143406%_))
                                    (let ((_%__splice145974145975%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl142995143406%_
                                              '0))))
                                      (let ((_%tl143004143427%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145974145975%_
                                                '1)))
                                            (_%target143002143425%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145974145975%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl143004143427%_))
                                            (letrec ((_%loop143005143430%_
                                                      (lambda (_%hd143003143433%_
                                                               _%xarg143009143435%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd143003143433%_))
                                                            (let ((_%e143006143438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd143003143433%_))))
                      (let ((_%lp-tl143008143443%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143006143438%_)))
                            (_%lp-hd143007143441%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143006143438%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd143007143441%_))
                            (let ((_%e143011143446%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd143007143441%_))))
                              (let ((_%tl143013143451%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e143011143446%_)))
                                    (_%hd143012143449%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e143011143446%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd143012143449%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd143012143449%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143013143451%_))
                                            (let ((_%e143014143454%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143013143451%_))))
                                              (let ((_%tl143016143459%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143014143454%_)))
                                                    (_%hd143015143457%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143014143454%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl143016143459%_))
                                                    (_%loop143005143430%_
                                                     _%lp-tl143008143443%_
                                                     (cons _%hd143015143457%_
                                                           _%xarg143009143435%_))
                                                    (_%__match146007146008%_
                                                     _%e142975143353%_
                                                     _%hd142976143356%_
                                                     _%tl142977143358%_
                                                     _%__splice145972145973%_
                                                     _%target142978143361%_
                                                     _%tl142980143363%_))))
                                            (_%__match146007146008%_
                                             _%e142975143353%_
                                             _%hd142976143356%_
                                             _%tl142977143358%_
                                             _%__splice145972145973%_
                                             _%target142978143361%_
                                             _%tl142980143363%_))
                                        (_%__match146007146008%_
                                         _%e142975143353%_
                                         _%hd142976143356%_
                                         _%tl142977143358%_
                                         _%__splice145972145973%_
                                         _%target142978143361%_
                                         _%tl142980143363%_))
                                    (_%__match146007146008%_
                                     _%e142975143353%_
                                     _%hd142976143356%_
                                     _%tl142977143358%_
                                     _%__splice145972145973%_
                                     _%target142978143361%_
                                     _%tl142980143363%_))))
                            (_%__match146007146008%_
                             _%e142975143353%_
                             _%hd142976143356%_
                             _%tl142977143358%_
                             _%__splice145972145973%_
                             _%target142978143361%_
                             _%tl142980143363%_))))
                    (let ((_%xarg143010143462%_
                           (reverse _%xarg143009143435%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl142989143390%_))
                          (_%__kont145970145971%_
                           _%xarg143010143462%_
                           _%hd143000143420%_
                           _%arg142986143382%_)
                          (_%__match146007146008%_
                           _%e142975143353%_
                           _%hd142976143356%_
                           _%tl142977143358%_
                           _%__splice145972145973%_
                           _%target142978143361%_
                           _%tl142980143363%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop143005143430%_
                                               _%target143002143425%_
                                               '()))
                                            (_%__match146007146008%_
                                             _%e142975143353%_
                                             _%hd142976143356%_
                                             _%tl142977143358%_
                                             _%__splice145972145973%_
                                             _%target142978143361%_
                                             _%tl142980143363%_))))
                                    (_%__match146007146008%_
                                     _%e142975143353%_
                                     _%hd142976143356%_
                                     _%tl142977143358%_
                                     _%__splice145972145973%_
                                     _%target142978143361%_
                                     _%tl142980143363%_))
                                (_%__match146007146008%_
                                 _%e142975143353%_
                                 _%hd142976143356%_
                                 _%tl142977143358%_
                                 _%__splice145972145973%_
                                 _%target142978143361%_
                                 _%tl142980143363%_))))
                        (_%__match146007146008%_
                         _%e142975143353%_
                         _%hd142976143356%_
                         _%tl142977143358%_
                         _%__splice145972145973%_
                         _%target142978143361%_
                         _%tl142980143363%_))
                    (_%__match146007146008%_
                     _%e142975143353%_
                     _%hd142976143356%_
                     _%tl142977143358%_
                     _%__splice145972145973%_
                     _%target142978143361%_
                     _%tl142980143363%_))
                (_%__match146007146008%_
                 _%e142975143353%_
                 _%hd142976143356%_
                 _%tl142977143358%_
                 _%__splice145972145973%_
                 _%target142978143361%_
                 _%tl142980143363%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match146007146008%_
                                                 _%e142975143353%_
                                                 _%hd142976143356%_
                                                 _%tl142977143358%_
                                                 _%__splice145972145973%_
                                                 _%target142978143361%_
                                                 _%tl142980143363%_))))
                                        (_%__match146007146008%_
                                         _%e142975143353%_
                                         _%hd142976143356%_
                                         _%tl142977143358%_
                                         _%__splice145972145973%_
                                         _%target142978143361%_
                                         _%tl142980143363%_))
                                    (_%__match146007146008%_
                                     _%e142975143353%_
                                     _%hd142976143356%_
                                     _%tl142977143358%_
                                     _%__splice145972145973%_
                                     _%target142978143361%_
                                     _%tl142980143363%_))
                                (_%__match146007146008%_
                                 _%e142975143353%_
                                 _%hd142976143356%_
                                 _%tl142977143358%_
                                 _%__splice145972145973%_
                                 _%target142978143361%_
                                 _%tl142980143363%_))))
                        (_%__match146007146008%_
                         _%e142975143353%_
                         _%hd142976143356%_
                         _%tl142977143358%_
                         _%__splice145972145973%_
                         _%target142978143361%_
                         _%tl142980143363%_))))
                (_%__match146007146008%_
                 _%e142975143353%_
                 _%hd142976143356%_
                 _%tl142977143358%_
                 _%__splice145972145973%_
                 _%target142978143361%_
                 _%tl142980143363%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop142981143366%_
                                     _%target142978143361%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx145968145969%_))
                              (let ((_%e142975143353%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx145968145969%_))))
                                (let ((_%tl142977143358%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142975143353%_)))
                                      (_%hd142976143356%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142975143353%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd142976143356%_))
                                      (let ((_%__splice145972145973%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd142976143356%_
                                                '0))))
                                        (let ((_%tl142980143363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice145972145973%_
                                                  '1)))
                                              (_%target142978143361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice145972145973%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142980143363%_))
                                              (_%__match145995145996%_
                                               _%e142975143353%_
                                               _%hd142976143356%_
                                               _%tl142977143358%_
                                               _%__splice145972145973%_
                                               _%target142978143361%_
                                               _%tl142980143363%_)
                                              (_%__match146007146008%_
                                               _%e142975143353%_
                                               _%hd142976143356%_
                                               _%tl142977143358%_
                                               _%__splice145972145973%_
                                               _%target142978143361%_
                                               _%tl142980143363%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl142977143358%_))
                                          (let ((_%e143063143107%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl142977143358%_))))
                                            (let ((_%tl143065143112%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e143063143107%_)))
                                                  (_%hd143064143110%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e143063143107%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143064143110%_))
                                                  (let ((_%e143066143115%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143064143110%_))))
                                                    (let ((_%tl143068143120%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143066143115%_)))
                                                          (_%hd143067143118%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143066143115%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd143067143118%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd143067143118%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143068143120%_))
                          (let ((_%e143069143123%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143068143120%_))))
                            (let ((_%tl143071143128%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143069143123%_)))
                                  (_%hd143070143126%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143069143123%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd143070143126%_))
                                  (let ((_%e143072143131%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd143070143126%_))))
                                    (let ((_%tl143074143136%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143072143131%_)))
                                          (_%hd143073143134%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143072143131%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd143073143134%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd143073143134%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl143074143136%_))
                                                  (let ((_%e143075143139%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl143074143136%_))))
                                                    (let ((_%tl143077143144%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143075143139%_)))
                                                          (_%hd143076143142%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143075143139%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl143077143144%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl143071143128%_))
                      (let ((_%e143078143147%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl143071143128%_))))
                        (let ((_%tl143080143152%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143078143147%_)))
                              (_%hd143079143150%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143078143147%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd143079143150%_))
                              (let ((_%e143081143155%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd143079143150%_))))
                                (let ((_%tl143083143160%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143081143155%_)))
                                      (_%hd143082143158%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143081143155%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd143082143158%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd143082143158%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl143083143160%_))
                                              (let ((_%e143084143163%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl143083143160%_))))
                                                (let ((_%tl143086143168%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143084143163%_)))
                                                      (_%hd143085143166%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143084143163%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143086143168%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl143080143152%_))
                                                          (let ((_%e143087143171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl143080143152%_))))
                    (let ((_%tl143089143176%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143087143171%_)))
                          (_%hd143088143174%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143087143171%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl143089143176%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl143065143112%_))
                              (_%__kont145980145981%_
                               _%hd143085143166%_
                               _%hd143076143142%_
                               _%hd142976143356%_)
                              (let ()
                                (declare (not safe))
                                (_%g142970143094%_)))
                          (let () (declare (not safe)) (_%g142970143094%_)))))
                  (let () (declare (not safe)) (_%g142970143094%_)))
              (let () (declare (not safe)) (_%g142970143094%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g142970143094%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g142970143094%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142970143094%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g142970143094%_)))))
                      (let () (declare (not safe)) (_%g142970143094%_)))
                  (let () (declare (not safe)) (_%g142970143094%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g142970143094%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g142970143094%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g142970143094%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g142970143094%_)))))
                          (let () (declare (not safe)) (_%g142970143094%_)))
                      (let () (declare (not safe)) (_%g142970143094%_)))
                  (let () (declare (not safe)) (_%g142970143094%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g142970143094%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g142970143094%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g142970143094%_))))))))
                 (_%generate1142813%_
                  (lambda (_%args142948%_
                           _%arglen142949%_
                           _%hd142950%_
                           _%body142951%_)
                    (let* ((_%len142953%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd142950%_)))
                           (_%condition142958%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd142950%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen142949%_
                                                (cons _%len142953%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen142949%_ (cons _%len142953%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len142953%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen142949%_
                                                    (cons _%len142953%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen142949%_ (cons _%len142953%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch142960%_
                            (if (_%dispatch-case?142811%_
                                 _%hd142950%_
                                 _%body142951%_)
                                (_%dispatch-case-e142812%_
                                 _%hd142950%_
                                 _%body142951%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self142808%_
                                 _%hd142950%_
                                 _%body142951%_))))
                      (cons _%condition142958%_
                            (cons (cons 'apply
                                        (cons _%dispatch142960%_
                                              (cons _%args142948%_ '())))
                                  '()))))))
          (let* ((_%g142815142843%_
                  (lambda (_%g142816142840%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142816142840%_))))
                 (_%g142814142945%_
                  (lambda (_%g142816142846%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142816142846%_))
                        (let ((_%e142819142848%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142816142846%_))))
                          (let ((_%hd142820142851%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142819142848%_)))
                                (_%tl142821142853%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142819142848%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl142821142853%_))
                                (let ((_g147137_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl142821142853%_
                                          '0))))
                                  (begin
                                    (let ((_g147138_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g147137_)
                                                 (##vector-length _g147137_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g147138_ 2)))
                                          (error "Context expects 2 values"
                                                 _g147138_)))
                                    (let ((_%target142822142856%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147137_ 0)))
                                          (_%tl142824142858%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147137_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl142824142858%_))
                                          (letrec ((_%loop142825142861%_
                                                    (lambda (_%hd142823142864%_
                                                             _%body142829142866%_
                                                             _%hd142830142868%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd142823142864%_))
                                                          (let ((_%e142826142871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd142823142864%_))))
                    (let ((_%lp-hd142827142874%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142826142871%_)))
                          (_%lp-tl142828142876%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142826142871%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd142827142874%_))
                          (let ((_%e142833142879%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd142827142874%_))))
                            (let ((_%hd142834142882%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142833142879%_)))
                                  (_%tl142835142884%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142833142879%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl142835142884%_))
                                  (let ((_%e142836142887%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl142835142884%_))))
                                    (let ((_%hd142837142890%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142836142887%_)))
                                          (_%tl142838142892%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142836142887%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl142838142892%_))
                                          (_%loop142825142861%_
                                           _%lp-tl142828142876%_
                                           (cons _%hd142837142890%_
                                                 _%body142829142866%_)
                                           (cons _%hd142834142882%_
                                                 _%hd142830142868%_))
                                          (_%g142815142843%_
                                           _%g142816142846%_))))
                                  (_%g142815142843%_ _%g142816142846%_))))
                          (_%g142815142843%_ _%g142816142846%_))))
                  (let ((_%body142831142895%_ (reverse _%body142829142866%_))
                        (_%hd142832142897%_ (reverse _%hd142830142868%_)))
                    ((lambda (_%L142900%_ _%L142901%_)
                       (let ((_%args142920%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen142921%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name142922%_
                              (let ((_%$e142917%_
                                     (let ((__tmp147139
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp147139 _%stx142809%_))))
                                (if _%$e142917%_
                                    _%$e142917%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args142920%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen142921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args142920%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args142920%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp147143
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name142922%_
                                                                (cons _%args142920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp147140
                                  (map (lambda (_%g142923142926%_
                                                _%g142924142928%_)
                                         (_%generate1142813%_
                                          _%args142920%_
                                          _%arglen142921%_
                                          _%g142923142926%_
                                          _%g142924142928%_))
                                       (let ((__tmp147141
                                              (lambda (_%g142930142933%_
                                                       _%g142931142935%_)
                                                (cons _%g142930142933%_
                                                      _%g142931142935%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp147141
                                          '()
                                          _%L142901%_))
                                       (let ((__tmp147142
                                              (lambda (_%g142937142940%_
                                                       _%g142938142942%_)
                                                (cons _%g142937142940%_
                                                      _%g142938142942%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp147142
                                          '()
                                          _%L142900%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp147143 __tmp147140)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body142831142895%_
                     _%hd142832142897%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop142825142861%_
                                             _%target142822142856%_
                                             '()
                                             '()))
                                          (_%g142815142843%_
                                           _%g142816142846%_)))))
                                (_%g142815142843%_ _%g142816142846%_))))
                        (_%g142815142843%_ _%g142816142846%_)))))
            (_%g142814142945%_ _%stx142809%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self142045%_ _%stx142046%_ _%compiled-body?142047%_)
        (letrec ((_%generate-simple142049%_
                  (lambda (_%hd142793%_ _%body142794%_)
                    (_%coalesce-boolean142050%_
                     (_%simplify-let142051%_
                      (gxc#generate-runtime-simple-let
                       _%self142045%_
                       'let
                       _%hd142793%_
                       _%body142794%_
                       _%compiled-body?142047%_)))))
                 (_%coalesce-boolean142050%_
                  (lambda (_%code142654%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code142655142681%_ _%code142654%_)
                               (_%else142657142689%_
                                (lambda () _%code142654%_))
                               (_%K142659142726%_
                                (lambda (_%expr2142692%_
                                         _%expr1142693%_
                                         _%id142694%_)
                                  (let* ((_%expr2142695142703%_
                                          _%expr2142692%_)
                                         (_%else142697142711%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1142693%_
                                                        (cons _%expr2142692%_
                                                              '())))))
                                         (_%K142699142716%_
                                          (lambda (_%exprs142714%_)
                                            (cons 'or
                                                  (cons _%expr1142693%_
                                                        _%exprs142714%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2142695142703%_))
                                        (let ((_%hd142700142719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2142695142703%_)))
                                              (_%tl142701142721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2142695142703%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd142700142719%_ 'or))
                                              (let ((_%exprs142724%_
                                                     _%tl142701142721%_))
                                                (_%K142699142716%_
                                                 _%exprs142724%_))
                                              (_%else142697142711%_)))
                                        (_%else142697142711%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code142655142681%_))
                              (let ((_%hd142660142729%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code142655142681%_)))
                                    (_%tl142661142731%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code142655142681%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd142660142729%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl142661142731%_))
                                        (let ((_%hd142662142734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl142661142731%_)))
                                              (_%tl142663142736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl142661142731%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd142662142734%_))
                                              (let ((_%hd142674142739%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd142662142734%_)))
                                                    (_%tl142675142741%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd142662142734%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd142674142739%_))
                                                    (let ((_%hd142676142744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd142674142739%_)))
                                                          (_%tl142677142746%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd142674142739%_))))
                                                      (let ((_%id142749%_
                                                             _%hd142676142744%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl142677142746%_))
                                                            (let ((_%hd142678142751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl142677142746%_)))
                          (_%tl142679142753%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl142677142746%_))))
                      (let ((_%expr1142756%_ _%hd142678142751%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl142679142753%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl142675142741%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl142663142736%_))
                                    (let ((_%hd142664142758%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl142663142736%_)))
                                          (_%tl142665142760%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl142663142736%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd142664142758%_))
                                          (let ((_%hd142666142763%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd142664142758%_)))
                                                (_%tl142667142765%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd142664142758%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd142666142763%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl142667142765%_))
                                                    (let ((_%hd142668142768%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl142667142765%_)))
                                                          (_%tl142669142770%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl142667142765%_))))
                                                      (if ((lambda (_%g142772142774%_)
                                                             (eq? _%g142772142774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id142749%_))
                   _%hd142668142768%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl142669142770%_))
                      (let ((_%hd142670142777%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl142669142770%_)))
                            (_%tl142671142779%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl142669142770%_))))
                        (if ((lambda (_%g142781142783%_)
                               (eq? _%g142781142783%_ _%id142749%_))
                             _%hd142670142777%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl142671142779%_))
                                (let ((_%hd142672142786%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl142671142779%_)))
                                      (_%tl142673142788%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl142671142779%_))))
                                  (let ((_%expr2142791%_ _%hd142672142786%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl142673142788%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl142665142760%_))
                                            (_%K142659142726%_
                                             _%expr2142791%_
                                             _%expr1142756%_
                                             _%id142749%_)
                                            (_%else142657142689%_))
                                        (_%else142657142689%_))))
                                (_%else142657142689%_))
                            (_%else142657142689%_)))
                      (_%else142657142689%_))
                  (_%else142657142689%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else142657142689%_))
                                                (_%else142657142689%_)))
                                          (_%else142657142689%_)))
                                    (_%else142657142689%_))
                                (_%else142657142689%_))
                            (_%else142657142689%_))))
                    (_%else142657142689%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else142657142689%_)))
                                              (_%else142657142689%_)))
                                        (_%else142657142689%_))
                                    (_%else142657142689%_)))
                              (_%else142657142689%_)))
                        _%code142654%_)))
                 (_%simplify-let142051%_
                  (lambda (_%code142353%_)
                    (let* ((_%code142354142426%_ _%code142353%_)
                           (_%else142359142434%_ (lambda () _%code142353%_)))
                      (let ((_%K142418142634%_
                             (lambda (_%expr142632%_) _%expr142632%_))
                            (_%K142401142580%_
                             (lambda (_%body142576%_
                                      _%expr142577%_
                                      _%id142578%_)
                               (cons 'let
                                     (cons (cons (cons _%id142578%_
                                                       (cons _%expr142577%_
                                                             '()))
                                                 '())
                                           _%body142576%_))))
                            (_%K142378142504%_
                             (lambda (_%body142498%_
                                      _%expr2142499%_
                                      _%id2142500%_
                                      _%expr1142501%_
                                      _%id1142502%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1142502%_
                                                       (cons _%expr1142501%_
                                                             '()))
                                                 (cons (cons _%id2142500%_
                                                             (cons _%expr2142499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body142498%_))))
                            (_%K142361142443%_
                             (lambda (_%body142438%_
                                      _%bind142439%_
                                      _%expr1142440%_
                                      _%id1142441%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1142441%_
                                                       (cons _%expr1142440%_
                                                             '()))
                                                 _%bind142439%_)
                                           _%body142438%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code142354142426%_))
                            (let ((_%tl142420142639%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code142354142426%_)))
                                  (_%hd142419142637%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code142354142426%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd142419142637%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl142420142639%_))
                                      (let ((_%tl142422142644%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl142420142639%_)))
                                            (_%hd142421142642%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl142420142639%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%hd142421142642%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tl142422142644%_))
                                                (let ((_%tl142424142649%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl142422142644%_)))
                                                      (_%hd142423142647%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl142422142644%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _%tl142424142649%_))
                                                      (let ((_%expr142652%_
                                                             _%hd142423142647%_))
                                                        (_%K142418142634%_
                                                         _%expr142652%_))
                                                      (_%else142359142434%_)))
                                                (_%else142359142434%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd142421142642%_))
                                                (let ((_%tl142413142595%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd142421142642%_)))
                                                      (_%hd142412142593%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd142421142642%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd142412142593%_))
                                                      (let ((_%tl142415142600%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd142412142593%_)))
                    (_%hd142414142598%_
                     (let () (declare (not safe)) (##car _%hd142412142593%_))))
                (if (let () (declare (not safe)) (##pair? _%tl142415142600%_))
                    (let ((_%tl142417142607%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl142415142600%_)))
                          (_%hd142416142605%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl142415142600%_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl142417142607%_))
                          (if (let ()
                                (declare (not safe))
                                (##null? _%tl142413142595%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl142422142644%_))
                                  (let ((_%tl142407142614%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl142422142644%_)))
                                        (_%hd142406142612%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl142422142644%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%hd142406142612%_))
                                        (let ((_%tl142409142619%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd142406142612%_)))
                                              (_%hd142408142617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd142406142612%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd142408142617%_
                                                       'let))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl142409142619%_))
                                                  (let ((_%tl142411142624%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl142409142619%_)))
                                                        (_%hd142410142622%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl142409142619%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%hd142410142622%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##null? _%tl142407142614%_))
                                                            (let ((_%id142603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd142414142598%_)
                          (_%expr142610%_ _%hd142416142605%_)
                          (_%body142627%_ _%tl142411142624%_))
                      (_%K142401142580%_
                       _%body142627%_
                       _%expr142610%_
                       _%id142603%_))
                    (_%else142359142434%_))
                (if (let () (declare (not safe)) (##pair? _%hd142410142622%_))
                    (let ((_%tl142390142553%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd142410142622%_)))
                          (_%hd142389142551%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd142410142622%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd142389142551%_))
                          (let ((_%tl142392142558%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd142389142551%_)))
                                (_%hd142391142556%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd142389142551%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl142392142558%_))
                                (let ((_%tl142394142565%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl142392142558%_)))
                                      (_%hd142393142563%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl142392142558%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl142394142565%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl142390142553%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl142407142614%_))
                                              (let ((_%id1142527%_
                                                     _%hd142414142598%_)
                                                    (_%expr1142534%_
                                                     _%hd142416142605%_)
                                                    (_%id2142561%_
                                                     _%hd142391142556%_)
                                                    (_%expr2142568%_
                                                     _%hd142393142563%_)
                                                    (_%body142570%_
                                                     _%tl142411142624%_))
                                                (_%K142378142504%_
                                                 _%body142570%_
                                                 _%expr2142568%_
                                                 _%id2142561%_
                                                 _%expr1142534%_
                                                 _%id1142527%_))
                                              (_%else142359142434%_))
                                          (_%else142359142434%_))
                                      (_%else142359142434%_)))
                                (_%else142359142434%_)))
                          (_%else142359142434%_)))
                    (_%else142359142434%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else142359142434%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd142408142617%_
                                                           'let*))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%tl142409142619%_))
                                                      (let ((_%tl142371142487%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl142409142619%_)))
                    (_%hd142370142485%_
                     (let () (declare (not safe)) (##car _%tl142409142619%_))))
                (if (let () (declare (not safe)) (##null? _%tl142407142614%_))
                    (let ((_%id1142466%_ _%hd142414142598%_)
                          (_%expr1142473%_ _%hd142416142605%_)
                          (_%bind142490%_ _%hd142370142485%_)
                          (_%body142492%_ _%tl142371142487%_))
                      (_%K142361142443%_
                       _%body142492%_
                       _%bind142490%_
                       _%expr1142473%_
                       _%id1142466%_))
                    (_%else142359142434%_)))
              (_%else142359142434%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else142359142434%_))))
                                        (_%else142359142434%_)))
                                  (_%else142359142434%_))
                              (_%else142359142434%_))
                          (_%else142359142434%_)))
                    (_%else142359142434%_)))
              (_%else142359142434%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else142359142434%_))))
                                      (_%else142359142434%_))
                                  (_%else142359142434%_)))
                            (_%else142359142434%_))))))
                 (_%generate-values142052%_
                  (lambda (_%hd142166%_ _%body142167%_)
                    (let _%lp142169%_ ((_%rest142171%_ _%hd142166%_)
                                       (_%bind142172%_ '())
                                       (_%check142173%_ '())
                                       (_%post142174%_ '()))
                      (let* ((_%__stx146297146298%_ _%rest142171%_)
                             (_%g142177142188%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx146297146298%_)))))
                        (let ((_%__kont146299146300%_
                               (lambda (_%L142215%_ _%L142216%_)
                                 (let* ((_%__stx146253146254%_ _%L142216%_)
                                        (_%g142231142256%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx146253146254%_)))))
                                   (let ((_%__kont146255146256%_
                                          (lambda (_%L142329%_ _%L142330%_)
                                            (let ((_%eid142344%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L142330%_)))
                                                  (_%expr142345%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self142045%_
                                                      _%L142329%_))))
                                              (_%lp142169%_
                                               _%L142215%_
                                               (cons (cons _%eid142344%_
                                                           (cons _%expr142345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind142172%_)
                                               _%check142173%_
                                               _%post142174%_))))
                                         (_%__kont146257146258%_
                                          (lambda (_%L142277%_ _%L142278%_)
                                            (let* ((_%vals142291%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values142293%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals142291%_
                                                     _%L142278%_
                                                     _%L142277%_))
                                                   (_%refs142295%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals142291%_
                                                     _%L142278%_))
                                                   (_%expr142297%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self142045%_
                                                       _%L142277%_))))
                                              (_%lp142169%_
                                               _%L142215%_
                                               (cons (cons _%vals142291%_
                                                           (cons _%expr142297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind142172%_)
                                               (cons _%check-values142293%_
                                                     _%check142173%_)
                                               (cons _%refs142295%_
                                                     _%post142174%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx146253146254%_))
                                         (let ((_%e142235142305%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx146253146254%_))))
                                           (let ((_%tl142237142310%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e142235142305%_)))
                                                 (_%hd142236142308%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e142235142305%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd142236142308%_))
                                                 (let ((_%e142238142313%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd142236142308%_))))
                                                   (let ((_%tl142240142318%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e142238142313%_)))
                                                         (_%hd142239142316%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e142238142313%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl142240142318%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl142237142310%_))
                     (let ((_%e142241142321%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142237142310%_))))
                       (let ((_%tl142243142326%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142241142321%_)))
                             (_%hd142242142324%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142241142321%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142243142326%_))
                             (_%__kont146255146256%_
                              _%hd142242142324%_
                              _%hd142239142316%_)
                             (let ()
                               (declare (not safe))
                               (_%g142231142256%_)))))
                     (let () (declare (not safe)) (_%g142231142256%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl142237142310%_))
                     (let ((_%e142249142269%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142237142310%_))))
                       (let ((_%tl142251142274%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142249142269%_)))
                             (_%hd142250142272%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142249142269%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142251142274%_))
                             (_%__kont146257146258%_
                              _%hd142250142272%_
                              _%hd142236142308%_)
                             (let ()
                               (declare (not safe))
                               (_%g142231142256%_)))))
                     (let () (declare (not safe)) (_%g142231142256%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl142237142310%_))
                                                     (let ((_%e142249142269%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl142237142310%_))))
                                                       (let ((_%tl142251142274%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e142249142269%_)))
                     (_%hd142250142272%_
                      (let () (declare (not safe)) (##car _%e142249142269%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl142251142274%_))
                     (_%__kont146257146258%_
                      _%hd142250142272%_
                      _%hd142236142308%_)
                     (let () (declare (not safe)) (_%g142231142256%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g142231142256%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g142231142256%_)))))))
                              (_%__kont146301146302%_
                               (lambda ()
                                 (let* ((_%body142195%_
                                         (if _%compiled-body?142047%_
                                             _%body142167%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self142045%_
                                                _%body142167%_))))
                                        (_%body142197%_
                                         (_%generate-values-post142053%_
                                          _%post142174%_
                                          _%body142195%_))
                                        (_%body142199%_
                                         (_%generate-values-check142054%_
                                          _%check142173%_
                                          _%body142197%_)))
                                   (cons 'let
                                         (cons (reverse _%bind142172%_)
                                               (cons _%body142199%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx146297146298%_))
                              (let ((_%e142181142207%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx146297146298%_))))
                                (let ((_%tl142183142212%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142181142207%_)))
                                      (_%hd142182142210%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142181142207%_))))
                                  (_%__kont146299146300%_
                                   _%tl142183142212%_
                                   _%hd142182142210%_)))
                              (_%__kont146301146302%_)))))))
                 (_%generate-values-post142053%_
                  (lambda (_%post142125%_ _%body142126%_)
                    (let _%lp142128%_ ((_%rest142130%_ _%post142125%_)
                                       (_%body142131%_ _%body142126%_))
                      (let* ((_%rest142132142140%_ _%rest142130%_)
                             (_%else142134142148%_ (lambda () _%body142131%_))
                             (_%K142136142154%_
                              (lambda (_%rest142151%_ _%bind142152%_)
                                (_%lp142128%_
                                 _%rest142151%_
                                 (cons 'let
                                       (cons _%bind142152%_
                                             (cons _%body142131%_ '())))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest142132142140%_))
                            (let ((_%hd142137142157%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest142132142140%_)))
                                  (_%tl142138142159%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest142132142140%_))))
                              (let* ((_%bind142162%_ _%hd142137142157%_)
                                     (_%rest142164%_ _%tl142138142159%_))
                                (_%K142136142154%_
                                 _%rest142164%_
                                 _%bind142162%_)))
                            (_%else142134142148%_))))))
                 (_%generate-values-check142054%_
                  (lambda (_%check142122%_ _%body142123%_)
                    (cons 'begin
                          (let ((__tmp147145 (cons _%body142123%_ '()))
                                (__tmp147144 (reverse _%check142122%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp147145 __tmp147144))))))
          (let* ((_%g142056142073%_
                  (lambda (_%g142057142070%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142057142070%_))))
                 (_%g142055142119%_
                  (lambda (_%g142057142076%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142057142076%_))
                        (let ((_%e142060142078%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142057142076%_))))
                          (let ((_%hd142061142081%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142060142078%_)))
                                (_%tl142062142083%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142060142078%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142062142083%_))
                                (let ((_%e142063142086%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142062142083%_))))
                                  (let ((_%hd142064142089%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142063142086%_)))
                                        (_%tl142065142091%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142063142086%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142065142091%_))
                                        (let ((_%e142066142094%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142065142091%_))))
                                          (let ((_%hd142067142097%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142066142094%_)))
                                                (_%tl142068142099%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142066142094%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142068142099%_))
                                                ((lambda (_%L142102%_
                                                          _%L142103%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L142103%_)
                                                       (_%generate-simple142049%_
                                                        _%L142103%_
                                                        _%L142102%_)
                                                       (_%generate-values142052%_
                                                        _%L142103%_
                                                        _%L142102%_)))
                                                 _%hd142067142097%_
                                                 _%hd142064142089%_)
                                                (_%g142056142073%_
                                                 _%g142057142076%_))))
                                        (_%g142056142073%_
                                         _%g142057142076%_))))
                                (_%g142056142073%_ _%g142057142076%_))))
                        (_%g142056142073%_ _%g142057142076%_)))))
            (_%g142055142119%_ _%stx142046%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self142799%_ _%stx142800%_)
        (let ((_%compiled-body?142802%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self142799%_
           _%stx142800%_
           _%compiled-body?142802%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g147147_
        (let ((_g147146_ (let () (declare (not safe)) (##length _g147147_))))
          (cond ((let () (declare (not safe)) (##fx= _g147146_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g147147_))
                ((let () (declare (not safe)) (##fx= _g147146_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g147147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g147147_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals141939%_ _%hd141940%_)
        (let _%lp141942%_ ((_%rest141944%_ _%hd141940%_)
                           (_%k141945%_ '0)
                           (_%r141946%_ '()))
          (let* ((_%__stx146311146312%_ _%rest141944%_)
                 (_%g141951141968%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx146311146312%_)))))
            (let ((_%__kont146313146314%_
                   (lambda (_%L142031%_)
                     (_%lp141942%_
                      _%L142031%_
                      (let () (declare (not safe)) (##fx+ _%k141945%_ '1))
                      _%r141946%_)))
                  (_%__kont146315146316%_
                   (lambda (_%L142004%_ _%L142005%_)
                     (_%lp141942%_
                      _%L142004%_
                      (let () (declare (not safe)) (##fx+ _%k141945%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L142005%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals141939%_
                                         _%k141945%_
                                         _%L142004%_)
                                        '()))
                            _%r141946%_))))
                  (_%__kont146317146318%_
                   (lambda (_%L141980%_)
                     (let ((__tmp147148
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L141980%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals141939%_
                                               _%k141945%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp147148 _%r141946%_))))
                  (_%__kont146319146320%_ (lambda () (reverse _%r141946%_))))
              (let ((_%g141949141991%_
                     (lambda ()
                       (let ((_%L141980%_ _%__stx146311146312%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L141980%_))
                             (_%__kont146317146318%_ _%L141980%_)
                             (_%__kont146319146320%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx146311146312%_))
                    (let ((_%e141954142020%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx146311146312%_))))
                      (let ((_%tl141956142025%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141954142020%_)))
                            (_%hd141955142023%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141954142020%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd141955142023%_))
                            (let ((_%e141957142028%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd141955142023%_))))
                              (if (equal? _%e141957142028%_ '#f)
                                  (_%__kont146313146314%_ _%tl141956142025%_)
                                  (_%__kont146315146316%_
                                   _%tl141956142025%_
                                   _%hd141955142023%_)))
                            (_%__kont146315146316%_
                             _%tl141956142025%_
                             _%hd141955142023%_))))
                    (let () (declare (not safe)) (_%g141949141991%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self141618%_ _%stx141619%_ _%compiled-body?141620%_)
        (letrec ((_%generate-simple141622%_
                  (lambda (_%hd141924%_ _%body141925%_)
                    (gxc#generate-runtime-simple-let
                     _%self141618%_
                     'letrec
                     _%hd141924%_
                     _%body141925%_
                     _%compiled-body?141620%_)))
                 (_%generate-values141623%_
                  (lambda (_%hd141703%_ _%body141704%_)
                    (let _%lp141706%_ ((_%rest141708%_ _%hd141703%_)
                                       (_%bind141709%_ '())
                                       (_%check141710%_ '())
                                       (_%post141711%_ '()))
                      (let* ((_%__stx146385146386%_ _%rest141708%_)
                             (_%g141714141725%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx146385146386%_)))))
                        (let ((_%__kont146387146388%_
                               (lambda (_%L141752%_ _%L141753%_)
                                 (let* ((_%__stx146341146342%_ _%L141753%_)
                                        (_%g141768141793%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx146341146342%_)))))
                                   (let ((_%__kont146343146344%_
                                          (lambda (_%L141900%_ _%L141901%_)
                                            (let ((_%eid141915%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L141901%_)))
                                                  (_%expr141916%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self141618%_
                                                      _%L141900%_))))
                                              (_%lp141706%_
                                               _%L141752%_
                                               (cons (cons _%eid141915%_
                                                           (cons _%expr141916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind141709%_)
                                               _%check141710%_
                                               _%post141711%_))))
                                         (_%__kont146345146346%_
                                          (lambda (_%L141814%_ _%L141815%_)
                                            (let* ((_%vals141828%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values141830%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals141828%_
                                                     _%L141815%_
                                                     _%L141814%_))
                                                   (_%refs141832%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals141828%_
                                                     _%L141815%_))
                                                   (_%expr141834%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self141618%_
                                                       _%L141814%_))))
                                              (_%lp141706%_
                                               _%L141752%_
                                               (let ((__tmp147150
                                                      (cons (cons _%vals141828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr141834%_ '()))
                    _%bind141709%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp147149
                                                      (map (lambda (_%e141836141838%_)
                                                             (let* ((_%g141840141849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e141836141838%_)
                            (_%E141842141853%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g141840141849%_
                                        '([eid _])))
                               '#!void))
                            (_%K141843141858%_
                             (lambda (_%eid141856%_)
                               (cons _%eid141856%_ (cons '#!void '())))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g141840141849%_))
                           (let ((_%hd141844141861%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g141840141849%_)))
                                 (_%tl141845141863%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g141840141849%_))))
                             (let ((_%eid141866%_ _%hd141844141861%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _%tl141845141863%_))
                                   (let ((_%tl141847141868%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl141845141863%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _%tl141847141868%_))
                                         (_%K141843141858%_ _%eid141866%_)
                                         (_%E141842141853%_)))
                                   (_%E141842141853%_))))
                           (_%E141842141853%_))))
                   _%refs141832%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp147150
                                                  __tmp147149))
                                               (cons _%check-values141830%_
                                                     _%check141710%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs141832%_
                                                  _%post141711%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx146341146342%_))
                                         (let ((_%e141772141876%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx146341146342%_))))
                                           (let ((_%tl141774141881%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e141772141876%_)))
                                                 (_%hd141773141879%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e141772141876%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd141773141879%_))
                                                 (let ((_%e141775141884%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd141773141879%_))))
                                                   (let ((_%tl141777141889%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e141775141884%_)))
                                                         (_%hd141776141887%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e141775141884%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl141777141889%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl141774141881%_))
                     (let ((_%e141778141892%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl141774141881%_))))
                       (let ((_%tl141780141897%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e141778141892%_)))
                             (_%hd141779141895%_
                              (let ()
                                (declare (not safe))
                                (##car _%e141778141892%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl141780141897%_))
                             (_%__kont146343146344%_
                              _%hd141779141895%_
                              _%hd141776141887%_)
                             (let ()
                               (declare (not safe))
                               (_%g141768141793%_)))))
                     (let () (declare (not safe)) (_%g141768141793%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl141774141881%_))
                     (let ((_%e141786141806%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl141774141881%_))))
                       (let ((_%tl141788141811%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e141786141806%_)))
                             (_%hd141787141809%_
                              (let ()
                                (declare (not safe))
                                (##car _%e141786141806%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl141788141811%_))
                             (_%__kont146345146346%_
                              _%hd141787141809%_
                              _%hd141773141879%_)
                             (let ()
                               (declare (not safe))
                               (_%g141768141793%_)))))
                     (let () (declare (not safe)) (_%g141768141793%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl141774141881%_))
                                                     (let ((_%e141786141806%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl141774141881%_))))
                                                       (let ((_%tl141788141811%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e141786141806%_)))
                     (_%hd141787141809%_
                      (let () (declare (not safe)) (##car _%e141786141806%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl141788141811%_))
                     (_%__kont146345146346%_
                      _%hd141787141809%_
                      _%hd141773141879%_)
                     (let () (declare (not safe)) (_%g141768141793%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g141768141793%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g141768141793%_)))))))
                              (_%__kont146389146390%_
                               (lambda ()
                                 (let* ((_%body141732%_
                                         (if _%compiled-body?141620%_
                                             _%body141704%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self141618%_
                                                _%body141704%_))))
                                        (_%body141734%_
                                         (_%generate-values-post141625%_
                                          _%post141711%_
                                          _%body141732%_))
                                        (_%body141736%_
                                         (_%generate-values-check141624%_
                                          _%check141710%_
                                          _%body141734%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind141709%_)
                                               (cons _%body141736%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx146385146386%_))
                              (let ((_%e141718141744%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx146385146386%_))))
                                (let ((_%tl141720141749%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141718141744%_)))
                                      (_%hd141719141747%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141718141744%_))))
                                  (_%__kont146387146388%_
                                   _%tl141720141749%_
                                   _%hd141719141747%_)))
                              (_%__kont146389146390%_)))))))
                 (_%generate-values-check141624%_
                  (lambda (_%check141700%_ _%body141701%_)
                    (cons 'begin
                          (let ((__tmp147152 (cons _%body141701%_ '()))
                                (__tmp147151 (reverse _%check141700%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp147152 __tmp147151)))))
                 (_%generate-values-post141625%_
                  (lambda (_%post141693%_ _%body141694%_)
                    (cons 'begin
                          (let ((__tmp147156 (cons _%body141694%_ '()))
                                (__tmp147153
                                 (let ((__tmp147155
                                        (lambda (_%g141695141697%_)
                                          (cons 'set! _%g141695141697%_)))
                                       (__tmp147154 (reverse _%post141693%_)))
                                   (declare (not safe))
                                   (##map __tmp147155 __tmp147154))))
                            (declare (not safe))
                            (__foldr1 cons __tmp147156 __tmp147153))))))
          (let* ((_%g141627141644%_
                  (lambda (_%g141628141641%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141628141641%_))))
                 (_%g141626141690%_
                  (lambda (_%g141628141647%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141628141647%_))
                        (let ((_%e141631141649%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141628141647%_))))
                          (let ((_%hd141632141652%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141631141649%_)))
                                (_%tl141633141654%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141631141649%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141633141654%_))
                                (let ((_%e141634141657%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141633141654%_))))
                                  (let ((_%hd141635141660%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141634141657%_)))
                                        (_%tl141636141662%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141634141657%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141636141662%_))
                                        (let ((_%e141637141665%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141636141662%_))))
                                          (let ((_%hd141638141668%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141637141665%_)))
                                                (_%tl141639141670%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141637141665%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141639141670%_))
                                                ((lambda (_%L141673%_
                                                          _%L141674%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L141674%_)
                                                       (_%generate-simple141622%_
                                                        _%L141674%_
                                                        _%L141673%_)
                                                       (_%generate-values141623%_
                                                        _%L141674%_
                                                        _%L141673%_)))
                                                 _%hd141638141668%_
                                                 _%hd141635141660%_)
                                                (_%g141627141644%_
                                                 _%g141628141647%_))))
                                        (_%g141627141644%_
                                         _%g141628141647%_))))
                                (_%g141627141644%_ _%g141628141647%_))))
                        (_%g141627141644%_ _%g141628141647%_)))))
            (_%g141626141690%_ _%stx141619%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self141930%_ _%stx141931%_)
        (let ((_%compiled-body?141933%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self141930%_
           _%stx141931%_
           _%compiled-body?141933%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g147158_
        (let ((_g147157_ (let () (declare (not safe)) (##length _g147158_))))
          (cond ((let () (declare (not safe)) (##fx= _g147157_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g147158_))
                ((let () (declare (not safe)) (##fx= _g147157_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g147158_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g147158_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self141199%_ _%stx141200%_)
        (letrec ((_%generate-values141202%_
                  (lambda (_%hd141445%_ _%body141446%_)
                    (let _%lp141448%_ ((_%rest141450%_ _%hd141445%_)
                                       (_%bind141451%_ '()))
                      (let* ((_%rest141452141460%_ _%rest141450%_)
                             (_%else141454141471%_
                              (lambda ()
                                (let ((_%bind141468%_ (reverse _%bind141451%_))
                                      (_%body141469%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self141199%_
                                          _%body141446%_))))
                                  (cons 'letrec*
                                        (cons _%bind141468%_
                                              (cons _%body141469%_ '()))))))
                             (_%K141456141605%_
                              (lambda (_%rest141474%_ _%hd-bind141475%_)
                                (let* ((_%__stx146399146400%_
                                        _%hd-bind141475%_)
                                       (_%g141478141503%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx146399146400%_)))))
                                  (let ((_%__kont146401146402%_
                                         (lambda (_%L141584%_ _%L141585%_)
                                           (let ((_%eid141599%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L141585%_)))
                                                 (_%expr141600%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self141199%_
                                                     _%L141584%_))))
                                             (_%lp141448%_
                                              _%rest141474%_
                                              (cons (cons _%eid141599%_
                                                          (cons _%expr141600%_
                                                                '()))
                                                    _%bind141451%_)))))
                                        (_%__kont146403146404%_
                                         (lambda (_%L141524%_ _%L141525%_)
                                           (let* ((_%vals141544%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp141546%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values141548%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp141546%_
                                                    _%L141525%_
                                                    _%L141524%_))
                                                  (_%refs141550%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals141544%_
                                                    _%L141525%_))
                                                  (_%expr141552%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self141199%_
                                                      _%L141524%_))))
                                             (_%lp141448%_
                                              _%rest141474%_
                                              (let ((__tmp147159
                                                     (cons (cons _%vals141544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp141546%_
                                                       (cons _%expr141552%_
                                                             '()))
                                                 '())
                                           (cons _%check-values141548%_
                                                 (cons _%tmp141546%_ '()))))
                               '()))
                   _%bind141451%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp147159
                                                 _%refs141550%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx146399146400%_))
                                        (let ((_%e141482141560%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx146399146400%_))))
                                          (let ((_%tl141484141565%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141482141560%_)))
                                                (_%hd141483141563%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141482141560%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141483141563%_))
                                                (let ((_%e141485141568%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141483141563%_))))
                                                  (let ((_%tl141487141573%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141485141568%_)))
                                                        (_%hd141486141571%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141485141568%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl141487141573%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141484141565%_))
                                                            (let ((_%e141488141576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141484141565%_))))
                      (let ((_%tl141490141581%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141488141576%_)))
                            (_%hd141489141579%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141488141576%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141490141581%_))
                            (_%__kont146401146402%_
                             _%hd141489141579%_
                             _%hd141486141571%_)
                            (let ()
                              (declare (not safe))
                              (_%g141478141503%_)))))
                    (let () (declare (not safe)) (_%g141478141503%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl141484141565%_))
                    (let ((_%e141496141516%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141484141565%_))))
                      (let ((_%tl141498141521%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141496141516%_)))
                            (_%hd141497141519%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141496141516%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141498141521%_))
                            (_%__kont146403146404%_
                             _%hd141497141519%_
                             _%hd141483141563%_)
                            (let ()
                              (declare (not safe))
                              (_%g141478141503%_)))))
                    (let () (declare (not safe)) (_%g141478141503%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl141484141565%_))
                                                    (let ((_%e141496141516%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl141484141565%_))))
                                                      (let ((_%tl141498141521%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e141496141516%_)))
                    (_%hd141497141519%_
                     (let () (declare (not safe)) (##car _%e141496141516%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl141498141521%_))
                    (_%__kont146403146404%_
                     _%hd141497141519%_
                     _%hd141483141563%_)
                    (let () (declare (not safe)) (_%g141478141503%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g141478141503%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g141478141503%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest141452141460%_))
                            (let ((_%hd141457141608%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest141452141460%_)))
                                  (_%tl141458141610%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest141452141460%_))))
                              (let* ((_%hd-bind141613%_ _%hd141457141608%_)
                                     (_%rest141615%_ _%tl141458141610%_))
                                (_%K141456141605%_
                                 _%rest141615%_
                                 _%hd-bind141613%_)))
                            (_%else141454141471%_))))))
                 (_%generate-letrec?141203%_
                  (lambda (_%hd141335%_)
                    (let _%lp141337%_ ((_%rest141339%_ _%hd141335%_))
                      (let* ((_%rest141340141348%_ _%rest141339%_)
                             (_%else141342141356%_ (lambda () '#t))
                             (_%K141344141433%_
                              (lambda (_%rest141359%_ _%hd-bind141360%_)
                                (let* ((_%g141362141379%_
                                        (lambda (_%g141363141376%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g141363141376%_))))
                                       (_%g141361141430%_
                                        (lambda (_%g141363141382%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g141363141382%_))
                                              (let ((_%e141366141384%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g141363141382%_))))
                                                (let ((_%hd141367141387%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141366141384%_)))
                                                      (_%tl141368141389%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141366141384%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd141367141387%_))
                                                      (let ((_%e141369141392%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd141367141387%_))))
                (let ((_%hd141370141395%_
                       (let () (declare (not safe)) (##car _%e141369141392%_)))
                      (_%tl141371141397%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e141369141392%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141371141397%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141368141389%_))
                          (let ((_%e141372141400%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141368141389%_))))
                            (let ((_%hd141373141403%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141372141400%_)))
                                  (_%tl141374141405%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141372141400%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl141374141405%_))
                                  ((lambda (_%L141408%_ _%L141409%_)
                                     (if (_%is-lambda-expr?141204%_
                                          _%L141408%_)
                                         (_%lp141337%_ _%rest141359%_)
                                         '#f))
                                   _%hd141373141403%_
                                   _%hd141370141395%_)
                                  (_%g141362141379%_ _%g141363141382%_))))
                          (_%g141362141379%_ _%g141363141382%_))
                      (_%g141362141379%_ _%g141363141382%_))))
              (_%g141362141379%_ _%g141363141382%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141362141379%_
                                               _%g141363141382%_)))))
                                  (_%g141361141430%_ _%hd-bind141360%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest141340141348%_))
                            (let ((_%hd141345141436%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest141340141348%_)))
                                  (_%tl141346141438%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest141340141348%_))))
                              (let* ((_%hd-bind141441%_ _%hd141345141436%_)
                                     (_%rest141443%_ _%tl141346141438%_))
                                (_%K141344141433%_
                                 _%rest141443%_
                                 _%hd-bind141441%_)))
                            (_%else141342141356%_))))))
                 (_%is-lambda-expr?141204%_
                  (lambda (_%expr141272%_)
                    (let* ((_%__stx146443146444%_ _%expr141272%_)
                           (_%g141275141289%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx146443146444%_)))))
                      (let ((_%__kont146445146446%_
                             (lambda (_%L141317%_ _%L141318%_) '#t))
                            (_%__kont146447146448%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx146443146444%_))
                            (let ((_%e141279141301%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx146443146444%_))))
                              (let ((_%tl141281141306%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141279141301%_)))
                                    (_%hd141280141304%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141279141301%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141280141304%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd141280141304%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141281141306%_))
                                            (let ((_%e141282141309%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141281141306%_))))
                                              (let ((_%tl141284141314%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141282141309%_)))
                                                    (_%hd141283141312%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141282141309%_))))
                                                (_%__kont146445146446%_
                                                 _%tl141284141314%_
                                                 _%hd141283141312%_)))
                                            (_%__kont146447146448%_))
                                        (_%__kont146447146448%_))
                                    (_%__kont146447146448%_))))
                            (_%__kont146447146448%_)))))))
          (let* ((_%g141206141223%_
                  (lambda (_%g141207141220%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141207141220%_))))
                 (_%g141205141269%_
                  (lambda (_%g141207141226%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141207141226%_))
                        (let ((_%e141210141228%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141207141226%_))))
                          (let ((_%hd141211141231%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141210141228%_)))
                                (_%tl141212141233%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141210141228%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141212141233%_))
                                (let ((_%e141213141236%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141212141233%_))))
                                  (let ((_%hd141214141239%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141213141236%_)))
                                        (_%tl141215141241%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141213141236%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141215141241%_))
                                        (let ((_%e141216141244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141215141241%_))))
                                          (let ((_%hd141217141247%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141216141244%_)))
                                                (_%tl141218141249%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141216141244%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141218141249%_))
                                                ((lambda (_%L141252%_
                                                          _%L141253%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L141253%_)
                                                       (if (_%generate-letrec?141203%_
                                                            _%L141253%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self141199%_
                                                            'letrec
                                                            _%L141253%_
                                                            _%L141252%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self141199%_
                                                            'letrec*
                                                            _%L141253%_
                                                            _%L141252%_
                                                            '#f))
                                                       (_%generate-values141202%_
                                                        _%L141253%_
                                                        _%L141252%_)))
                                                 _%hd141217141247%_
                                                 _%hd141214141239%_)
                                                (_%g141206141223%_
                                                 _%g141207141226%_))))
                                        (_%g141206141223%_
                                         _%g141207141226%_))))
                                (_%g141206141223%_ _%g141207141226%_))))
                        (_%g141206141223%_ _%g141207141226%_)))))
            (_%g141205141269%_ _%stx141200%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd141136%_)
        (let _%lp141138%_ ((_%rest141140%_ _%hd141136%_))
          (let* ((_%rest141141141157%_ _%rest141140%_)
                 (_%else141144141165%_ (lambda () '#f)))
            (let ((_%K141147141178%_
                   (lambda (_%rest141176%_) (_%lp141138%_ _%rest141176%_)))
                  (_%K141146141170%_ (lambda () '#t)))
              (let ((_%try-match141143141173%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest141141141157%_))
                           (_%K141146141170%_)
                           (_%else141144141165%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest141141141157%_))
                    (let ((_%tl141149141183%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest141141141157%_)))
                          (_%hd141148141181%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest141141141157%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd141148141181%_))
                          (let ((_%tl141151141188%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd141148141181%_)))
                                (_%hd141150141186%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd141148141181%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd141150141186%_))
                                (let ((_%tl141155141191%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd141150141186%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl141155141191%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl141151141188%_))
                                          (let ((_%tl141153141194%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl141151141188%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl141153141194%_))
                                                (let ((_%rest141197%_
                                                       _%tl141149141183%_))
                                                  (_%lp141138%_
                                                   _%rest141197%_))
                                                (_%else141144141165%_)))
                                          (_%else141144141165%_))
                                      (_%else141144141165%_)))
                                (_%else141144141165%_)))
                          (_%else141144141165%_)))
                    (_%try-match141143141173%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self141047%_
               _%form141048%_
               _%hd141049%_
               _%body141050%_
               _%compiled-body?141051%_)
        (letrec ((_%generate1141053%_
                  (lambda (_%bind141092%_)
                    (let* ((_%bind141093141104%_ _%bind141092%_)
                           (_%E141095141108%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind141093141104%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K141096141114%_
                            (lambda (_%expr141111%_ _%id141112%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id141112%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self141047%_
                                             _%expr141111%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind141093141104%_))
                          (let ((_%hd141097141117%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind141093141104%_)))
                                (_%tl141098141119%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind141093141104%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd141097141117%_))
                                (let ((_%hd141101141122%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd141097141117%_)))
                                      (_%tl141102141124%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd141097141117%_))))
                                  (let ((_%id141127%_ _%hd141101141122%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl141102141124%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl141098141119%_))
                                            (let ((_%hd141099141129%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl141098141119%_)))
                                                  (_%tl141100141131%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl141098141119%_))))
                                              (let ((_%expr141134%_
                                                     _%hd141099141129%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl141100141131%_))
                                                    (_%K141096141114%_
                                                     _%expr141134%_
                                                     _%id141127%_)
                                                    (_%E141095141108%_))))
                                            (_%E141095141108%_))
                                        (_%E141095141108%_))))
                                (_%E141095141108%_)))
                          (_%E141095141108%_))))))
          (let* ((_%bind141055%_ (map _%generate1141053%_ _%hd141049%_))
                 (_%body141057%_
                  (if _%compiled-body?141051%_
                      _%body141050%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self141047%_ _%body141050%_))))
                 (_%body141089%_
                  (let* ((_%body141058141066%_ _%body141057%_)
                         (_%else141060141074%_
                          (lambda () (cons _%body141057%_ '())))
                         (_%K141062141079%_
                          (lambda (_%exprs141077%_) _%exprs141077%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body141058141066%_))
                        (let ((_%hd141063141082%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body141058141066%_)))
                              (_%tl141064141084%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body141058141066%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd141063141082%_ 'begin))
                              (let ((_%exprs141087%_ _%tl141064141084%_))
                                (_%K141062141079%_ _%exprs141087%_))
                              (_%else141060141074%_)))
                        (_%else141060141074%_)))))
            (cons _%form141048%_ (cons _%bind141055%_ _%body141089%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self140947%_ _%stx140948%_)
        (letrec ((_%generate1140950%_
                  (lambda (_%datum141002%_)
                    (if (or (null? _%datum141002%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum141002%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum141002%_))
                            (eof-object? _%datum141002%_))
                        _%datum141002%_
                        (if (uninterned-symbol? _%datum141002%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum141002%_
                               '#t))
                            (if (pair? _%datum141002%_)
                                (cons (_%generate1140950%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum141002%_)))
                                      (_%generate1140950%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum141002%_))))
                                (if (box? _%datum141002%_)
                                    (box (_%generate1140950%_
                                          (unbox _%datum141002%_)))
                                    (if (vector? _%datum141002%_)
                                        (vector-map
                                         _%generate1140950%_
                                         _%datum141002%_)
                                        (if (or (s8vector? _%datum141002%_)
                                                (u8vector? _%datum141002%_)
                                                (s16vector? _%datum141002%_)
                                                (u16vector? _%datum141002%_)
                                                (s32vector? _%datum141002%_)
                                                (u32vector? _%datum141002%_)
                                                (s64vector? _%datum141002%_)
                                                (u64vector? _%datum141002%_)
                                                (f32vector? _%datum141002%_)
                                                (f64vector? _%datum141002%_))
                                            _%datum141002%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx140948%_)))))))))))
          (let* ((_%g140952140965%_
                  (lambda (_%g140953140962%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140953140962%_))))
                 (_%g140951140999%_
                  (lambda (_%g140953140968%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140953140968%_))
                        (let ((_%e140955140970%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140953140968%_))))
                          (let ((_%hd140956140973%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140955140970%_)))
                                (_%tl140957140975%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140955140970%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140957140975%_))
                                (let ((_%e140958140978%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140957140975%_))))
                                  (let ((_%hd140959140981%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140958140978%_)))
                                        (_%tl140960140983%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140958140978%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl140960140983%_))
                                        ((lambda (_%L140986%_)
                                           (cons 'quote
                                                 (cons (_%generate1140950%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L140986%_)))
                                                       '())))
                                         _%hd140959140981%_)
                                        (_%g140952140965%_
                                         _%g140953140968%_))))
                                (_%g140952140965%_ _%g140953140968%_))))
                        (_%g140952140965%_ _%g140953140968%_)))))
            (_%g140951140999%_ _%stx140948%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self140388%_ _%stx140389%_)
        (letrec ((_%compile-call140391%_
                  (lambda (_%rator140680%_ _%rands140681%_)
                    (let ((_%rator140687%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self140388%_
                              _%rator140680%_)))
                          (_%rands140688%_
                           (map (lambda (_%g140682140684%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self140388%_
                                     _%g140682140684%_)))
                                _%rands140681%_)))
                      (let* ((_%__stx146490146491%_ _%rator140687%_)
                             (_%g140691140743%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx146490146491%_)))))
                        (let ((_%__kont146492146493%_
                               (lambda (_%L140867%_
                                        _%L140868%_
                                        _%L140869%_
                                        _%L140870%_)
                                 (if (let ((__tmp147162
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands140688%_)))
                                           (__tmp147160
                                            (length (let ((__tmp147161
                                                           (lambda (_%g140906140909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g140907140911%_)
                     (cons _%g140906140909%_ _%g140907140911%_))))
              (declare (not safe))
              (__foldr1 __tmp147161 '() _%L140869%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp147162 __tmp147160))
                                     (let* ((_%id140914%_ _%L140870%_)
                                            (_%args140923%_
                                             (let ((__tmp147163
                                                    (lambda (_%g140915140918%_
                                                             _%g140916140920%_)
                                                      (cons _%g140915140918%_
                                                            _%g140916140920%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp147163
                                                '()
                                                _%L140869%_)))
                                            (_%body140932%_
                                             (let ((__tmp147164
                                                    (lambda (_%g140924140927%_
                                                             _%g140925140929%_)
                                                      (cons _%g140924140927%_
                                                            _%g140925140929%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp147164
                                                '()
                                                _%L140868%_)))
                                            (_%init140934%_
                                             (map list
                                                  _%args140923%_
                                                  _%rands140688%_)))
                                       (cons 'let
                                             (cons _%id140914%_
                                                   (cons _%init140934%_
                                                         _%body140932%_))))
                                     (let ((__tmp147165
                                            (let ((__tmp147166
                                                   (lambda (_%g140936140939%_
                                                            _%g140937140941%_)
                                                     (cons _%g140936140939%_
                                                           _%g140937140941%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147166
                                               '()
                                               _%L140869%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx140389%_
                                        __tmp147165
                                        _%rands140688%_)))))
                              (_%__kont146498146499%_
                               (lambda ()
                                 (cons _%rator140687%_ _%rands140688%_))))
                          (let ((_%__match146557146558%_
                                 (lambda (_%e140697140755%_
                                          _%hd140698140758%_
                                          _%tl140699140760%_
                                          _%e140700140763%_
                                          _%hd140701140766%_
                                          _%tl140702140768%_
                                          _%e140703140771%_
                                          _%hd140704140774%_
                                          _%tl140705140776%_
                                          _%e140706140779%_
                                          _%hd140707140782%_
                                          _%tl140708140784%_
                                          _%e140709140787%_
                                          _%hd140710140790%_
                                          _%tl140711140792%_
                                          _%e140712140795%_
                                          _%hd140713140798%_
                                          _%tl140714140800%_
                                          _%e140715140803%_
                                          _%hd140716140806%_
                                          _%tl140717140808%_
                                          _%__splice146494146495%_
                                          _%target140718140811%_
                                          _%tl140720140813%_)
                                   (letrec ((_%loop140721140816%_
                                             (lambda (_%hd140719140819%_
                                                      _%arg140725140821%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd140719140819%_))
                                                   (let ((_%e140722140824%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd140719140819%_))))
                                                     (let ((_%lp-tl140724140829%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e140722140824%_)))
                                                           (_%lp-hd140723140827%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e140722140824%_))))
                                                       (_%loop140721140816%_
                                                        _%lp-tl140724140829%_
                                                        (cons _%lp-hd140723140827%_
                                                              _%arg140725140821%_))))
                                                   (let ((_%arg140726140832%_
                                                          (reverse _%arg140725140821%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl140717140808%_))
                                                         (let ((_%__splice146496146497%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl140717140808%_ '0))))
                   (let ((_%tl140729140837%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice146496146497%_ '1)))
                         (_%target140727140835%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice146496146497%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl140729140837%_))
                         (letrec ((_%loop140730140840%_
                                   (lambda (_%hd140728140843%_
                                            _%body140734140845%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd140728140843%_))
                                         (let ((_%e140731140848%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd140728140843%_))))
                                           (let ((_%lp-tl140733140853%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140731140848%_)))
                                                 (_%lp-hd140732140851%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140731140848%_))))
                                             (_%loop140730140840%_
                                              _%lp-tl140733140853%_
                                              (cons _%lp-hd140732140851%_
                                                    _%body140734140845%_))))
                                         (let ((_%body140735140856%_
                                                (reverse _%body140734140845%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl140711140792%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl140705140776%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl140702140768%_))
                                                       (let ((_%e140736140859%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl140702140768%_))))
                 (let ((_%tl140738140864%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e140736140859%_)))
                       (_%hd140737140862%_
                        (let ()
                          (declare (not safe))
                          (##car _%e140736140859%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl140738140864%_))
                       (let ((_%L140867%_ _%hd140737140862%_)
                             (_%L140868%_ _%body140735140856%_)
                             (_%L140869%_ _%arg140726140832%_)
                             (_%L140870%_ _%hd140707140782%_))
                         (if (eq? _%L140870%_ _%L140867%_)
                             (_%__kont146492146493%_
                              _%L140867%_
                              _%L140868%_
                              _%L140869%_
                              _%L140870%_)
                             (_%__kont146498146499%_)))
                       (_%__kont146498146499%_))))
               (_%__kont146498146499%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont146498146499%_))
                                               (_%__kont146498146499%_)))))))
                           (_%loop140730140840%_ _%target140727140835%_ '()))
                         (_%__kont146498146499%_))))
                 (_%__kont146498146499%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop140721140816%_
                                      _%target140718140811%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx146490146491%_))
                                (let ((_%e140697140755%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx146490146491%_))))
                                  (let ((_%tl140699140760%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140697140755%_)))
                                        (_%hd140698140758%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140697140755%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd140698140758%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd140698140758%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl140699140760%_))
                                                (let ((_%e140700140763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl140699140760%_))))
                                                  (let ((_%tl140702140768%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140700140763%_)))
                                                        (_%hd140701140766%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140700140763%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd140701140766%_))
                                                        (let ((_%e140703140771%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd140701140766%_))))
                  (let ((_%tl140705140776%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140703140771%_)))
                        (_%hd140704140774%_
                         (let ()
                           (declare (not safe))
                           (##car _%e140703140771%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd140704140774%_))
                        (let ((_%e140706140779%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd140704140774%_))))
                          (let ((_%tl140708140784%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140706140779%_)))
                                (_%hd140707140782%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140706140779%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140708140784%_))
                                (let ((_%e140709140787%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140708140784%_))))
                                  (let ((_%tl140711140792%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140709140787%_)))
                                        (_%hd140710140790%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140709140787%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd140710140790%_))
                                        (let ((_%e140712140795%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd140710140790%_))))
                                          (let ((_%tl140714140800%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140712140795%_)))
                                                (_%hd140713140798%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140712140795%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd140713140798%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd140713140798%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl140714140800%_))
                                                        (let ((_%e140715140803%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl140714140800%_))))
                  (let ((_%tl140717140808%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140715140803%_)))
                        (_%hd140716140806%_
                         (let ()
                           (declare (not safe))
                           (##car _%e140715140803%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd140716140806%_))
                        (let ((_%__splice146494146495%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd140716140806%_
                                  '0))))
                          (let ((_%tl140720140813%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice146494146495%_ '1)))
                                (_%target140718140811%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice146494146495%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl140720140813%_))
                                (_%__match146557146558%_
                                 _%e140697140755%_
                                 _%hd140698140758%_
                                 _%tl140699140760%_
                                 _%e140700140763%_
                                 _%hd140701140766%_
                                 _%tl140702140768%_
                                 _%e140703140771%_
                                 _%hd140704140774%_
                                 _%tl140705140776%_
                                 _%e140706140779%_
                                 _%hd140707140782%_
                                 _%tl140708140784%_
                                 _%e140709140787%_
                                 _%hd140710140790%_
                                 _%tl140711140792%_
                                 _%e140712140795%_
                                 _%hd140713140798%_
                                 _%tl140714140800%_
                                 _%e140715140803%_
                                 _%hd140716140806%_
                                 _%tl140717140808%_
                                 _%__splice146494146495%_
                                 _%target140718140811%_
                                 _%tl140720140813%_)
                                (_%__kont146498146499%_))))
                        (_%__kont146498146499%_))))
                (_%__kont146498146499%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont146498146499%_))
                                                (_%__kont146498146499%_))))
                                        (_%__kont146498146499%_))))
                                (_%__kont146498146499%_))))
                        (_%__kont146498146499%_))))
                (_%__kont146498146499%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont146498146499%_))
                                            (_%__kont146498146499%_))
                                        (_%__kont146498146499%_))))
                                (_%__kont146498146499%_)))))))))
          (let* ((_%g140393140416%_
                  (lambda (_%g140394140413%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140394140413%_))))
                 (_%g140392140677%_
                  (lambda (_%g140394140419%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140394140419%_))
                        (let ((_%e140397140421%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140394140419%_))))
                          (let ((_%hd140398140424%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140397140421%_)))
                                (_%tl140399140426%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140397140421%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140399140426%_))
                                (let ((_%e140400140429%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140399140426%_))))
                                  (let ((_%hd140401140432%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140400140429%_)))
                                        (_%tl140402140434%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140400140429%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl140402140434%_))
                                        (let ((_g147167_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl140402140434%_
                                                  '0))))
                                          (begin
                                            (let ((_g147168_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g147167_)
                                                         (##vector-length
                                                          _g147167_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g147168_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g147168_)))
                                            (let ((_%target140403140437%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g147167_
                                                      0)))
                                                  (_%tl140405140439%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g147167_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl140405140439%_))
                                                  (letrec ((_%loop140406140442%_
                                                            (lambda (_%hd140404140445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand140410140447%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd140404140445%_))
                          (let ((_%e140407140450%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd140404140445%_))))
                            (let ((_%lp-hd140408140453%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140407140450%_)))
                                  (_%lp-tl140409140455%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140407140450%_))))
                              (_%loop140406140442%_
                               _%lp-tl140409140455%_
                               (cons _%lp-hd140408140453%_
                                     _%rand140410140447%_))))
                          (let ((_%rand140411140458%_
                                 (reverse _%rand140410140447%_)))
                            ((lambda (_%L140461%_ _%L140462%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call140391%_
                                    _%L140462%_
                                    (let ((__tmp147169
                                           (lambda (_%g140479140482%_
                                                    _%g140480140484%_)
                                             (cons _%g140479140482%_
                                                   _%g140480140484%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp147169 '() _%L140461%_)))
                                   (let* ((_%__stx146606146607%_ _%L140462%_)
                                          (_%g140488140500%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx146606146607%_)))))
                                     (let ((_%__kont146608146609%_
                                            (lambda ()
                                              (let ((_%f140537%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self140388%_
                                                        _%L140462%_))))
                                                (if (and (let ((__tmp147170
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f140537%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp147170))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f140537%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp140539%_ ((_%rest140542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp147172
                                                (lambda (_%g140659140662%_
                                                         _%g140660140664%_)
                                                  (cons _%g140659140662%_
                                                        _%g140660140664%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp147172
                                            '()
                                            _%L140461%_))))
                               (_%bind140544%_ '())
                               (_%args140545%_ '()))
              (let* ((_%rest140546140554%_ _%rest140542%_)
                     (_%else140548140562%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind140544%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f140537%_
                                                      _%args140545%_)
                                                '()))))))
                     (_%K140550140648%_
                      (lambda (_%rest140565%_ _%e140566%_)
                        (let* ((_%__stx146560146561%_ _%e140566%_)
                               (_%g140571140589%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx146560146561%_)))))
                          (let ((_%__kont146562146563%_
                                 (lambda ()
                                   (_%lp140539%_
                                    _%rest140565%_
                                    _%bind140544%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e140566%_))
                                          _%args140545%_))))
                                (_%__kont146564146565%_
                                 (lambda ()
                                   (_%lp140539%_
                                    _%rest140565%_
                                    _%bind140544%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e140566%_))
                                          _%args140545%_))))
                                (_%__kont146566146567%_
                                 (lambda ()
                                   (let ((_%tmp140596%_
                                          (let ((__tmp147171
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp147171))))
                                     (_%lp140539%_
                                      _%rest140565%_
                                      (cons (cons _%tmp140596%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e140566%_))
                                                        '()))
                                            _%bind140544%_)
                                      (cons _%tmp140596%_ _%args140545%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx146560146561%_))
                                (let ((_%e140573140627%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx146560146561%_))))
                                  (let ((_%tl140575140632%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140573140627%_)))
                                        (_%hd140574140630%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140573140627%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd140574140630%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd140574140630%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl140575140632%_))
                                                (let ((_%e140576140635%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl140575140632%_))))
                                                  (let ((_%tl140578140640%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140576140635%_)))
                                                        (_%hd140577140638%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140576140635%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl140578140640%_))
                                                        (_%__kont146562146563%_)
                                                        (_%__kont146566146567%_))))
                                                (_%__kont146566146567%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd140574140630%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl140575140632%_))
                                                    (let ((_%e140582140612%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl140575140632%_))))
                                                      (let ((_%tl140584140617%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e140582140612%_)))
                    (_%hd140583140615%_
                     (let () (declare (not safe)) (##car _%e140582140612%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl140584140617%_))
                    (_%__kont146564146565%_)
                    (_%__kont146566146567%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont146566146567%_))
                                                (_%__kont146566146567%_)))
                                        (_%__kont146566146567%_))))
                                (_%__kont146566146567%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest140546140554%_))
                    (let ((_%hd140551140651%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest140546140554%_)))
                          (_%tl140552140653%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest140546140554%_))))
                      (let* ((_%e140656%_ _%hd140551140651%_)
                             (_%rest140658%_ _%tl140552140653%_))
                        (_%K140550140648%_ _%rest140658%_ _%e140656%_)))
                    (_%else140548140562%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call140391%_
                                                     _%L140462%_
                                                     (let ((__tmp147173
                                                            (lambda (_%g140666140669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g140667140671%_)
                      (cons _%g140666140669%_ _%g140667140671%_))))
               (declare (not safe))
               (__foldr1 __tmp147173 '() _%L140461%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont146610146611%_
                                            (lambda ()
                                              (_%compile-call140391%_
                                               _%L140462%_
                                               (let ((__tmp147174
                                                      (lambda (_%g140506140509%_
                                                               _%g140507140511%_)
                                                        (cons _%g140506140509%_
                                                              _%g140507140511%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp147174
                                                  '()
                                                  _%L140461%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx146606146607%_))
                                           (let ((_%e140490140519%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx146606146607%_))))
                                             (let ((_%tl140492140524%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e140490140519%_)))
                                                   (_%hd140491140522%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e140490140519%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd140491140522%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd140491140522%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl140492140524%_))
                                                           (let ((_%e140493140527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl140492140524%_))))
                     (let ((_%tl140495140532%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e140493140527%_)))
                           (_%hd140494140530%_
                            (let ()
                              (declare (not safe))
                              (##car _%e140493140527%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl140495140532%_))
                           (_%__kont146608146609%_)
                           (_%__kont146610146611%_))))
                   (_%__kont146610146611%_))
               (_%__kont146610146611%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont146610146611%_))))
                                           (_%__kont146610146611%_))))))
                             _%rand140411140458%_
                             _%hd140401140432%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop140406140442%_
                                                     _%target140403140437%_
                                                     '()))
                                                  (_%g140393140416%_
                                                   _%g140394140419%_)))))
                                        (_%g140393140416%_
                                         _%g140394140419%_))))
                                (_%g140393140416%_ _%g140394140419%_))))
                        (_%g140393140416%_ _%g140394140419%_)))))
            (_%g140392140677%_ _%stx140389%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self140131%_ _%stx140132%_)
        (let* ((_%__stx146678146679%_ _%stx140132%_)
               (_%g140135140164%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx146678146679%_)))))
          (let ((_%__kont146680146681%_
                 (lambda (_%L140232%_ _%L140233%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self140131%_
                        _%stx140132%_)
                       (let ((_%f140255%_
                              (let ((__tmp147175
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L140233%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self140131%_
                                 __tmp147175))))
                         (let _%lp140257%_ ((_%rest140260%_
                                             (reverse (let ((__tmp147177
                                                             (lambda (_%g140377140380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g140378140382%_)
                       (cons _%g140377140380%_ _%g140378140382%_))))
                (declare (not safe))
                (__foldr1 __tmp147177 '() _%L140232%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind140262%_ '())
                                            (_%args140263%_ '()))
                           (let* ((_%rest140264140272%_ _%rest140260%_)
                                  (_%else140266140280%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind140262%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f140255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args140263%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K140268140366%_
                                   (lambda (_%rest140283%_ _%e140284%_)
                                     (let* ((_%__stx146632146633%_ _%e140284%_)
                                            (_%g140289140307%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx146632146633%_)))))
                                       (let ((_%__kont146634146635%_
                                              (lambda ()
                                                (_%lp140257%_
                                                 _%rest140283%_
                                                 _%bind140262%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e140284%_))
                                                       _%args140263%_))))
                                             (_%__kont146636146637%_
                                              (lambda ()
                                                (_%lp140257%_
                                                 _%rest140283%_
                                                 _%bind140262%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e140284%_))
                                                       _%args140263%_))))
                                             (_%__kont146638146639%_
                                              (lambda ()
                                                (let ((_%tmp140314%_
                                                       (let ((__tmp147176
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp147176))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp140257%_
                                                   _%rest140283%_
                                                   (cons (cons _%tmp140314%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e140284%_))
                             '()))
                 _%bind140262%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp140314%_
                                                         _%args140263%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx146632146633%_))
                                             (let ((_%e140291140345%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx146632146633%_))))
                                               (let ((_%tl140293140350%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e140291140345%_)))
                                                     (_%hd140292140348%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e140291140345%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd140292140348%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd140292140348%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140293140350%_))
                     (let ((_%e140294140353%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140293140350%_))))
                       (let ((_%tl140296140358%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140294140353%_)))
                             (_%hd140295140356%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140294140353%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140296140358%_))
                             (_%__kont146634146635%_)
                             (_%__kont146638146639%_))))
                     (_%__kont146638146639%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd140292140348%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl140293140350%_))
                         (let ((_%e140300140330%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl140293140350%_))))
                           (let ((_%tl140302140335%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e140300140330%_)))
                                 (_%hd140301140333%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e140300140330%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl140302140335%_))
                                 (_%__kont146636146637%_)
                                 (_%__kont146638146639%_))))
                         (_%__kont146638146639%_))
                     (_%__kont146638146639%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont146638146639%_))))
                                             (_%__kont146638146639%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest140264140272%_))
                                 (let ((_%hd140269140369%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest140264140272%_)))
                                       (_%tl140270140371%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest140264140272%_))))
                                   (let* ((_%e140374%_ _%hd140269140369%_)
                                          (_%rest140376%_ _%tl140270140371%_))
                                     (_%K140268140366%_
                                      _%rest140376%_
                                      _%e140374%_)))
                                 (_%else140266140280%_))))))))
                (_%__kont146684146685%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self140131%_ _%stx140132%_))))
            (let ((_%__match146723146724%_
                   (lambda (_%e140139140176%_
                            _%hd140140140179%_
                            _%tl140141140181%_
                            _%e140142140184%_
                            _%hd140143140187%_
                            _%tl140144140189%_
                            _%e140145140192%_
                            _%hd140146140195%_
                            _%tl140147140197%_
                            _%e140148140200%_
                            _%hd140149140203%_
                            _%tl140150140205%_
                            _%__splice146682146683%_
                            _%target140151140208%_
                            _%tl140153140210%_)
                     (letrec ((_%loop140154140213%_
                               (lambda (_%hd140152140216%_
                                        _%rand140158140218%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd140152140216%_))
                                     (let ((_%e140155140221%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd140152140216%_))))
                                       (let ((_%lp-tl140157140226%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e140155140221%_)))
                                             (_%lp-hd140156140224%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e140155140221%_))))
                                         (_%loop140154140213%_
                                          _%lp-tl140157140226%_
                                          (cons _%lp-hd140156140224%_
                                                _%rand140158140218%_))))
                                     (let ((_%rand140159140229%_
                                            (reverse _%rand140158140218%_)))
                                       (_%__kont146680146681%_
                                        _%rand140159140229%_
                                        _%hd140149140203%_))))))
                       (_%loop140154140213%_ _%target140151140208%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx146678146679%_))
                  (let ((_%e140139140176%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx146678146679%_))))
                    (let ((_%tl140141140181%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140139140176%_)))
                          (_%hd140140140179%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140139140176%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl140141140181%_))
                          (let ((_%e140142140184%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl140141140181%_))))
                            (let ((_%tl140144140189%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140142140184%_)))
                                  (_%hd140143140187%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140142140184%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd140143140187%_))
                                  (let ((_%e140145140192%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd140143140187%_))))
                                    (let ((_%tl140147140197%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140145140192%_)))
                                          (_%hd140146140195%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140145140192%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd140146140195%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd140146140195%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl140147140197%_))
                                                  (let ((_%e140148140200%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl140147140197%_))))
                                                    (let ((_%tl140150140205%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140148140200%_)))
                                                          (_%hd140149140203%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140148140200%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl140150140205%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl140144140189%_))
                      (let ((_%__splice146682146683%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl140144140189%_
                                '0))))
                        (let ((_%tl140153140210%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice146682146683%_ '1)))
                              (_%target140151140208%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice146682146683%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl140153140210%_))
                              (_%__match146723146724%_
                               _%e140139140176%_
                               _%hd140140140179%_
                               _%tl140141140181%_
                               _%e140142140184%_
                               _%hd140143140187%_
                               _%tl140144140189%_
                               _%e140145140192%_
                               _%hd140146140195%_
                               _%tl140147140197%_
                               _%e140148140200%_
                               _%hd140149140203%_
                               _%tl140150140205%_
                               _%__splice146682146683%_
                               _%target140151140208%_
                               _%tl140153140210%_)
                              (_%__kont146684146685%_))))
                      (_%__kont146684146685%_))
                  (_%__kont146684146685%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont146684146685%_))
                                              (_%__kont146684146685%_))
                                          (_%__kont146684146685%_))))
                                  (_%__kont146684146685%_))))
                          (_%__kont146684146685%_))))
                  (_%__kont146684146685%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self139943%_ _%stx139944%_)
        (letrec ((_%simplify139946%_
                  (lambda (_%code140031%_)
                    (let* ((_%code140032140050%_ _%code140031%_)
                           (_%else140034140058%_ (lambda () _%code140031%_))
                           (_%K140036140094%_
                            (lambda (_%expr140061%_ _%test140062%_)
                              (let* ((_%expr140063140071%_ _%expr140061%_)
                                     (_%else140065140079%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test140062%_
                                                    (cons _%expr140061%_
                                                          '())))))
                                     (_%K140067140084%_
                                      (lambda (_%exprs140082%_)
                                        (cons 'and
                                              (cons _%test140062%_
                                                    _%exprs140082%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr140063140071%_))
                                    (let ((_%hd140068140087%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr140063140071%_)))
                                          (_%tl140069140089%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr140063140071%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd140068140087%_ 'and))
                                          (let ((_%exprs140092%_
                                                 _%tl140069140089%_))
                                            (_%K140067140084%_
                                             _%exprs140092%_))
                                          (_%else140065140079%_)))
                                    (_%else140065140079%_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code140032140050%_))
                          (let ((_%hd140037140097%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code140032140050%_)))
                                (_%tl140038140099%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code140032140050%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd140037140097%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl140038140099%_))
                                    (let ((_%hd140039140102%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl140038140099%_)))
                                          (_%tl140040140104%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl140038140099%_))))
                                      (let ((_%test140107%_
                                             _%hd140039140102%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl140040140104%_))
                                            (let ((_%hd140041140109%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl140040140104%_)))
                                                  (_%tl140042140111%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl140040140104%_))))
                                              (let ((_%expr140114%_
                                                     _%hd140041140109%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl140042140111%_))
                                                    (let ((_%hd140043140116%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl140042140111%_)))
                                                          (_%tl140044140118%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl140042140111%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd140043140116%_))
                                                          (let ((_%hd140045140121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd140043140116%_)))
                        (_%tl140046140123%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd140043140116%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd140045140121%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl140046140123%_))
                            (let ((_%hd140047140126%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl140046140123%_)))
                                  (_%tl140048140128%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl140046140123%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd140047140126%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl140048140128%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl140044140118%_))
                                          (_%K140036140094%_
                                           _%expr140114%_
                                           _%test140107%_)
                                          (_%else140034140058%_))
                                      (_%else140034140058%_))
                                  (_%else140034140058%_)))
                            (_%else140034140058%_))
                        (_%else140034140058%_)))
                  (_%else140034140058%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else140034140058%_))))
                                            (_%else140034140058%_))))
                                    (_%else140034140058%_))
                                (_%else140034140058%_)))
                          (_%else140034140058%_))))))
          (let* ((_%g139948139969%_
                  (lambda (_%g139949139966%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139949139966%_))))
                 (_%g139947140028%_
                  (lambda (_%g139949139972%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139949139972%_))
                        (let ((_%e139953139974%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139949139972%_))))
                          (let ((_%hd139954139977%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139953139974%_)))
                                (_%tl139955139979%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139953139974%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139955139979%_))
                                (let ((_%e139956139982%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139955139979%_))))
                                  (let ((_%hd139957139985%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139956139982%_)))
                                        (_%tl139958139987%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139956139982%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139958139987%_))
                                        (let ((_%e139959139990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139958139987%_))))
                                          (let ((_%hd139960139993%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139959139990%_)))
                                                (_%tl139961139995%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139959139990%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl139961139995%_))
                                                (let ((_%e139962139998%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl139961139995%_))))
                                                  (let ((_%hd139963140001%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139962139998%_)))
                                                        (_%tl139964140003%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139962139998%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139964140003%_))
                                                        ((lambda (_%L140006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L140007%_
                          _%L140008%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify139946%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self139943%_
                                       _%L140008%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self139943%_
                                             _%L140007%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self139943%_
                                                   _%L140006%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp147178
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self139943%_
                                               _%L140008%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp147178
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self139943%_
                                            _%L140007%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self139943%_
                                                  _%L140006%_))
                                               '()))))))
                 _%hd139963140001%_
                 _%hd139960139993%_
                 _%hd139957139985%_)
                (_%g139948139969%_ _%g139949139972%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g139948139969%_
                                                 _%g139949139972%_))))
                                        (_%g139948139969%_
                                         _%g139949139972%_))))
                                (_%g139948139969%_ _%g139949139972%_))))
                        (_%g139948139969%_ _%g139949139972%_)))))
            (_%g139947140028%_ _%stx139944%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self139891%_ _%stx139892%_)
        (let* ((_%g139894139907%_
                (lambda (_%g139895139904%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139895139904%_))))
               (_%g139893139940%_
                (lambda (_%g139895139910%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139895139910%_))
                      (let ((_%e139897139912%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139895139910%_))))
                        (let ((_%hd139898139915%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139897139912%_)))
                              (_%tl139899139917%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139897139912%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139899139917%_))
                              (let ((_%e139900139920%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139899139917%_))))
                                (let ((_%hd139901139923%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139900139920%_)))
                                      (_%tl139902139925%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139900139920%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl139902139925%_))
                                      ((lambda (_%L139928%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L139928%_)))
                                       _%hd139901139923%_)
                                      (_%g139894139907%_ _%g139895139910%_))))
                              (_%g139894139907%_ _%g139895139910%_))))
                      (_%g139894139907%_ _%g139895139910%_)))))
          (_%g139893139940%_ _%stx139892%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self139823%_ _%stx139824%_)
        (let* ((_%g139826139843%_
                (lambda (_%g139827139840%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139827139840%_))))
               (_%g139825139888%_
                (lambda (_%g139827139846%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139827139846%_))
                      (let ((_%e139830139848%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139827139846%_))))
                        (let ((_%hd139831139851%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139830139848%_)))
                              (_%tl139832139853%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139830139848%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139832139853%_))
                              (let ((_%e139833139856%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139832139853%_))))
                                (let ((_%hd139834139859%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139833139856%_)))
                                      (_%tl139835139861%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139833139856%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139835139861%_))
                                      (let ((_%e139836139864%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139835139861%_))))
                                        (let ((_%hd139837139867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139836139864%_)))
                                              (_%tl139838139869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139836139864%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139838139869%_))
                                              ((lambda (_%L139872%_
                                                        _%L139873%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L139873%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self139823%_ _%L139872%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139837139867%_
                                               _%hd139834139859%_)
                                              (_%g139826139843%_
                                               _%g139827139846%_))))
                                      (_%g139826139843%_ _%g139827139846%_))))
                              (_%g139826139843%_ _%g139827139846%_))))
                      (_%g139826139843%_ _%g139827139846%_)))))
          (_%g139825139888%_ _%stx139824%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self139634%_ _%stx139635%_)
        (let* ((_%g139637139654%_
                (lambda (_%g139638139651%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139638139651%_))))
               (_%g139636139820%_
                (lambda (_%g139638139657%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139638139657%_))
                      (let ((_%e139641139659%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139638139657%_))))
                        (let ((_%hd139642139662%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139641139659%_)))
                              (_%tl139643139664%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139641139659%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139643139664%_))
                              (let ((_%e139644139667%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139643139664%_))))
                                (let ((_%hd139645139670%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139644139667%_)))
                                      (_%tl139646139672%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139644139667%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139646139672%_))
                                      (let ((_%e139647139675%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139646139672%_))))
                                        (let ((_%hd139648139678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139647139675%_)))
                                              (_%tl139649139680%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139647139675%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139649139680%_))
                                              ((lambda (_%L139683%_
                                                        _%L139684%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self139634%_ _%L139683%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self139634%_ _%L139684%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp139699%_ ((_%rest139702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L139684%_ (cons _%L139683%_ '())))
                                (_%bind139704%_ '())
                                (_%args139705%_ '()))
               (let* ((_%rest139706139714%_ _%rest139702%_)
                      (_%else139708139722%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind139704%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args139705%_)
                                                 '()))))))
                      (_%K139710139808%_
                       (lambda (_%rest139725%_ _%e139726%_)
                         (let* ((_%__stx146726146727%_ _%e139726%_)
                                (_%g139731139749%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx146726146727%_)))))
                           (let ((_%__kont146728146729%_
                                  (lambda ()
                                    (_%lp139699%_
                                     _%rest139725%_
                                     _%bind139704%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e139726%_))
                                           _%args139705%_))))
                                 (_%__kont146730146731%_
                                  (lambda ()
                                    (_%lp139699%_
                                     _%rest139725%_
                                     _%bind139704%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e139726%_))
                                           _%args139705%_))))
                                 (_%__kont146732146733%_
                                  (lambda ()
                                    (let ((_%tmp139756%_
                                           (let ((__tmp147179
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp147179))))
                                      (_%lp139699%_
                                       _%rest139725%_
                                       (cons (cons _%tmp139756%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e139726%_))
                                                         '()))
                                             _%bind139704%_)
                                       (cons _%tmp139756%_ _%args139705%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx146726146727%_))
                                 (let ((_%e139733139787%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx146726146727%_))))
                                   (let ((_%tl139735139792%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e139733139787%_)))
                                         (_%hd139734139790%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e139733139787%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd139734139790%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd139734139790%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl139735139792%_))
                                                 (let ((_%e139736139795%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl139735139792%_))))
                                                   (let ((_%tl139738139800%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139736139795%_)))
                                                         (_%hd139737139798%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139736139795%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl139738139800%_))
                                                         (_%__kont146728146729%_)
                                                         (_%__kont146732146733%_))))
                                                 (_%__kont146732146733%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd139734139790%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl139735139792%_))
                                                     (let ((_%e139742139772%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl139735139792%_))))
                                                       (let ((_%tl139744139777%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e139742139772%_)))
                     (_%hd139743139775%_
                      (let () (declare (not safe)) (##car _%e139742139772%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl139744139777%_))
                     (_%__kont146730146731%_)
                     (_%__kont146732146733%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont146732146733%_))
                                                 (_%__kont146732146733%_)))
                                         (_%__kont146732146733%_))))
                                 (_%__kont146732146733%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest139706139714%_))
                     (let ((_%hd139711139811%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest139706139714%_)))
                           (_%tl139712139813%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest139706139714%_))))
                       (let* ((_%e139816%_ _%hd139711139811%_)
                              (_%rest139818%_ _%tl139712139813%_))
                         (_%K139710139808%_ _%rest139818%_ _%e139816%_)))
                     (_%else139708139722%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139648139678%_
                                               _%hd139645139670%_)
                                              (_%g139637139654%_
                                               _%g139638139657%_))))
                                      (_%g139637139654%_ _%g139638139657%_))))
                              (_%g139637139654%_ _%g139638139657%_))))
                      (_%g139637139654%_ _%g139638139657%_)))))
          (_%g139636139820%_ _%stx139635%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self139445%_ _%stx139446%_)
        (let* ((_%g139448139465%_
                (lambda (_%g139449139462%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139449139462%_))))
               (_%g139447139631%_
                (lambda (_%g139449139468%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139449139468%_))
                      (let ((_%e139452139470%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139449139468%_))))
                        (let ((_%hd139453139473%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139452139470%_)))
                              (_%tl139454139475%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139452139470%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139454139475%_))
                              (let ((_%e139455139478%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139454139475%_))))
                                (let ((_%hd139456139481%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139455139478%_)))
                                      (_%tl139457139483%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139455139478%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139457139483%_))
                                      (let ((_%e139458139486%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139457139483%_))))
                                        (let ((_%hd139459139489%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139458139486%_)))
                                              (_%tl139460139491%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139458139486%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139460139491%_))
                                              ((lambda (_%L139494%_
                                                        _%L139495%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self139445%_ _%L139494%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self139445%_ _%L139495%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp139510%_ ((_%rest139513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L139495%_ (cons _%L139494%_ '())))
                                (_%bind139515%_ '())
                                (_%args139516%_ '()))
               (let* ((_%rest139517139525%_ _%rest139513%_)
                      (_%else139519139533%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind139515%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args139516%_)
                                                 '()))))))
                      (_%K139521139619%_
                       (lambda (_%rest139536%_ _%e139537%_)
                         (let* ((_%__stx146772146773%_ _%e139537%_)
                                (_%g139542139560%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx146772146773%_)))))
                           (let ((_%__kont146774146775%_
                                  (lambda ()
                                    (_%lp139510%_
                                     _%rest139536%_
                                     _%bind139515%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e139537%_))
                                           _%args139516%_))))
                                 (_%__kont146776146777%_
                                  (lambda ()
                                    (_%lp139510%_
                                     _%rest139536%_
                                     _%bind139515%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e139537%_))
                                           _%args139516%_))))
                                 (_%__kont146778146779%_
                                  (lambda ()
                                    (let ((_%tmp139567%_
                                           (let ((__tmp147180
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp147180))))
                                      (_%lp139510%_
                                       _%rest139536%_
                                       (cons (cons _%tmp139567%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e139537%_))
                                                         '()))
                                             _%bind139515%_)
                                       (cons _%tmp139567%_ _%args139516%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx146772146773%_))
                                 (let ((_%e139544139598%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx146772146773%_))))
                                   (let ((_%tl139546139603%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e139544139598%_)))
                                         (_%hd139545139601%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e139544139598%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd139545139601%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd139545139601%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl139546139603%_))
                                                 (let ((_%e139547139606%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl139546139603%_))))
                                                   (let ((_%tl139549139611%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139547139606%_)))
                                                         (_%hd139548139609%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139547139606%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl139549139611%_))
                                                         (_%__kont146774146775%_)
                                                         (_%__kont146778146779%_))))
                                                 (_%__kont146778146779%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd139545139601%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl139546139603%_))
                                                     (let ((_%e139553139583%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl139546139603%_))))
                                                       (let ((_%tl139555139588%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e139553139583%_)))
                     (_%hd139554139586%_
                      (let () (declare (not safe)) (##car _%e139553139583%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl139555139588%_))
                     (_%__kont146776146777%_)
                     (_%__kont146778146779%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont146778146779%_))
                                                 (_%__kont146778146779%_)))
                                         (_%__kont146778146779%_))))
                                 (_%__kont146778146779%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest139517139525%_))
                     (let ((_%hd139522139622%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest139517139525%_)))
                           (_%tl139523139624%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest139517139525%_))))
                       (let* ((_%e139627%_ _%hd139522139622%_)
                              (_%rest139629%_ _%tl139523139624%_))
                         (_%K139521139619%_ _%rest139629%_ _%e139627%_)))
                     (_%else139519139533%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139459139489%_
                                               _%hd139456139481%_)
                                              (_%g139448139465%_
                                               _%g139449139468%_))))
                                      (_%g139448139465%_ _%g139449139468%_))))
                              (_%g139448139465%_ _%g139449139468%_))))
                      (_%g139448139465%_ _%g139449139468%_)))))
          (_%g139447139631%_ _%stx139446%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self139361%_ _%stx139362%_)
        (let* ((_%g139364139385%_
                (lambda (_%g139365139382%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139365139382%_))))
               (_%g139363139442%_
                (lambda (_%g139365139388%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139365139388%_))
                      (let ((_%e139369139390%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139365139388%_))))
                        (let ((_%hd139370139393%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139369139390%_)))
                              (_%tl139371139395%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139369139390%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139371139395%_))
                              (let ((_%e139372139398%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139371139395%_))))
                                (let ((_%hd139373139401%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139372139398%_)))
                                      (_%tl139374139403%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139372139398%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139374139403%_))
                                      (let ((_%e139375139406%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139374139403%_))))
                                        (let ((_%hd139376139409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139375139406%_)))
                                              (_%tl139377139411%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139375139406%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139377139411%_))
                                              (let ((_%e139378139414%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139377139411%_))))
                                                (let ((_%hd139379139417%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139378139414%_)))
                                                      (_%tl139380139419%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139378139414%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl139380139419%_))
                                                      ((lambda (_%L139422%_
                                                                _%L139423%_
                                                                _%L139424%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self139361%_ _%L139422%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self139361%_
                                      _%L139423%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self139361%_
                                            _%L139424%_))
                                         (cons ''#f '()))))))
               _%hd139379139417%_
               _%hd139376139409%_
               _%hd139373139401%_)
              (_%g139364139385%_ _%g139365139388%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139364139385%_
                                               _%g139365139388%_))))
                                      (_%g139364139385%_ _%g139365139388%_))))
                              (_%g139364139385%_ _%g139365139388%_))))
                      (_%g139364139385%_ _%g139365139388%_)))))
          (_%g139363139442%_ _%stx139362%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self139261%_ _%stx139262%_)
        (let* ((_%g139264139289%_
                (lambda (_%g139265139286%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139265139286%_))))
               (_%g139263139358%_
                (lambda (_%g139265139292%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139265139292%_))
                      (let ((_%e139270139294%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139265139292%_))))
                        (let ((_%hd139271139297%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139270139294%_)))
                              (_%tl139272139299%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139270139294%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139272139299%_))
                              (let ((_%e139273139302%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139272139299%_))))
                                (let ((_%hd139274139305%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139273139302%_)))
                                      (_%tl139275139307%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139273139302%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139275139307%_))
                                      (let ((_%e139276139310%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139275139307%_))))
                                        (let ((_%hd139277139313%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139276139310%_)))
                                              (_%tl139278139315%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139276139310%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139278139315%_))
                                              (let ((_%e139279139318%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139278139315%_))))
                                                (let ((_%hd139280139321%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139279139318%_)))
                                                      (_%tl139281139323%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139279139318%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl139281139323%_))
                                                      (let ((_%e139282139326%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl139281139323%_))))
                (let ((_%hd139283139329%_
                       (let () (declare (not safe)) (##car _%e139282139326%_)))
                      (_%tl139284139331%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139282139326%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139284139331%_))
                      ((lambda (_%L139334%_
                                _%L139335%_
                                _%L139336%_
                                _%L139337%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self139261%_
                                        _%L139335%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self139261%_
                                              _%L139334%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self139261%_
                                                    _%L139336%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self139261%_
                                                          _%L139337%_))
                                                       (cons ''#f '())))))))
                       _%hd139283139329%_
                       _%hd139280139321%_
                       _%hd139277139313%_
                       _%hd139274139305%_)
                      (_%g139264139289%_ _%g139265139292%_))))
              (_%g139264139289%_ _%g139265139292%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139264139289%_
                                               _%g139265139292%_))))
                                      (_%g139264139289%_ _%g139265139292%_))))
                              (_%g139264139289%_ _%g139265139292%_))))
                      (_%g139264139289%_ _%g139265139292%_)))))
          (_%g139263139358%_ _%stx139262%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self139177%_ _%stx139178%_)
        (let* ((_%g139180139201%_
                (lambda (_%g139181139198%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139181139198%_))))
               (_%g139179139258%_
                (lambda (_%g139181139204%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139181139204%_))
                      (let ((_%e139185139206%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139181139204%_))))
                        (let ((_%hd139186139209%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139185139206%_)))
                              (_%tl139187139211%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139185139206%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139187139211%_))
                              (let ((_%e139188139214%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139187139211%_))))
                                (let ((_%hd139189139217%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139188139214%_)))
                                      (_%tl139190139219%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139188139214%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139190139219%_))
                                      (let ((_%e139191139222%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139190139219%_))))
                                        (let ((_%hd139192139225%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139191139222%_)))
                                              (_%tl139193139227%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139191139222%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139193139227%_))
                                              (let ((_%e139194139230%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139193139227%_))))
                                                (let ((_%hd139195139233%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139194139230%_)))
                                                      (_%tl139196139235%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139194139230%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl139196139235%_))
                                                      ((lambda (_%L139238%_
                                                                _%L139239%_
                                                                _%L139240%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self139177%_ _%L139238%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self139177%_
                                      _%L139239%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self139177%_
                                            _%L139240%_))
                                         (cons ''#f '()))))))
               _%hd139195139233%_
               _%hd139192139225%_
               _%hd139189139217%_)
              (_%g139180139201%_ _%g139181139204%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139180139201%_
                                               _%g139181139204%_))))
                                      (_%g139180139201%_ _%g139181139204%_))))
                              (_%g139180139201%_ _%g139181139204%_))))
                      (_%g139180139201%_ _%g139181139204%_)))))
          (_%g139179139258%_ _%stx139178%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self139077%_ _%stx139078%_)
        (let* ((_%g139080139105%_
                (lambda (_%g139081139102%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139081139102%_))))
               (_%g139079139174%_
                (lambda (_%g139081139108%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139081139108%_))
                      (let ((_%e139086139110%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139081139108%_))))
                        (let ((_%hd139087139113%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139086139110%_)))
                              (_%tl139088139115%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139086139110%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139088139115%_))
                              (let ((_%e139089139118%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139088139115%_))))
                                (let ((_%hd139090139121%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139089139118%_)))
                                      (_%tl139091139123%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139089139118%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139091139123%_))
                                      (let ((_%e139092139126%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139091139123%_))))
                                        (let ((_%hd139093139129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139092139126%_)))
                                              (_%tl139094139131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139092139126%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139094139131%_))
                                              (let ((_%e139095139134%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139094139131%_))))
                                                (let ((_%hd139096139137%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139095139134%_)))
                                                      (_%tl139097139139%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139095139134%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl139097139139%_))
                                                      (let ((_%e139098139142%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl139097139139%_))))
                (let ((_%hd139099139145%_
                       (let () (declare (not safe)) (##car _%e139098139142%_)))
                      (_%tl139100139147%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139098139142%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139100139147%_))
                      ((lambda (_%L139150%_
                                _%L139151%_
                                _%L139152%_
                                _%L139153%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self139077%_
                                        _%L139151%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self139077%_
                                              _%L139150%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self139077%_
                                                    _%L139152%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self139077%_
                                                          _%L139153%_))
                                                       (cons ''#f '())))))))
                       _%hd139099139145%_
                       _%hd139096139137%_
                       _%hd139093139129%_
                       _%hd139090139121%_)
                      (_%g139080139105%_ _%g139081139108%_))))
              (_%g139080139105%_ _%g139081139108%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139080139105%_
                                               _%g139081139108%_))))
                                      (_%g139080139105%_ _%g139081139108%_))))
                              (_%g139080139105%_ _%g139081139108%_))))
                      (_%g139080139105%_ _%g139081139108%_)))))
          (_%g139079139174%_ _%stx139078%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self138872%_ _%stx138873%_)
        (let* ((_%g138875138896%_
                (lambda (_%g138876138893%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138876138893%_))))
               (_%g138874139074%_
                (lambda (_%g138876138899%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138876138899%_))
                      (let ((_%e138880138901%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138876138899%_))))
                        (let ((_%hd138881138904%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138880138901%_)))
                              (_%tl138882138906%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138880138901%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138882138906%_))
                              (let ((_%e138883138909%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138882138906%_))))
                                (let ((_%hd138884138912%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138883138909%_)))
                                      (_%tl138885138914%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138883138909%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138885138914%_))
                                      (let ((_%e138886138917%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138885138914%_))))
                                        (let ((_%hd138887138920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138886138917%_)))
                                              (_%tl138888138922%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138886138917%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl138888138922%_))
                                              (let ((_%e138889138925%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl138888138922%_))))
                                                (let ((_%hd138890138928%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e138889138925%_)))
                                                      (_%tl138891138930%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e138889138925%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl138891138930%_))
                                                      ((lambda (_%L138933%_
                                                                _%L138934%_
                                                                _%L138935%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self138872%_
                                    _%L138933%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self138872%_
                                          _%L138934%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp138953%_ ((_%rest138956%_
                                         (cons _%L138934%_
                                               (cons _%L138933%_ '())))
                                        (_%bind138958%_ '())
                                        (_%args138959%_ '()))
                       (let* ((_%rest138960138968%_ _%rest138956%_)
                              (_%else138962138976%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind138958%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp147181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp147181 _%args138959%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K138964139062%_
                               (lambda (_%rest138979%_ _%e138980%_)
                                 (let* ((_%__stx146818146819%_ _%e138980%_)
                                        (_%g138985139003%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx146818146819%_)))))
                                   (let ((_%__kont146820146821%_
                                          (lambda ()
                                            (_%lp138953%_
                                             _%rest138979%_
                                             _%bind138958%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e138980%_))
                                                   _%args138959%_))))
                                         (_%__kont146822146823%_
                                          (lambda ()
                                            (_%lp138953%_
                                             _%rest138979%_
                                             _%bind138958%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e138980%_))
                                                   _%args138959%_))))
                                         (_%__kont146824146825%_
                                          (lambda ()
                                            (let ((_%tmp139010%_
                                                   (let ((__tmp147182
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp147182))))
                                              (_%lp138953%_
                                               _%rest138979%_
                                               (cons (cons _%tmp139010%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e138980%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind138958%_)
                                               (cons _%tmp139010%_
                                                     _%args138959%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx146818146819%_))
                                         (let ((_%e138987139041%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx146818146819%_))))
                                           (let ((_%tl138989139046%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e138987139041%_)))
                                                 (_%hd138988139044%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e138987139041%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd138988139044%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd138988139044%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl138989139046%_))
                                                         (let ((_%e138990139049%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl138989139046%_))))
                   (let ((_%tl138992139054%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e138990139049%_)))
                         (_%hd138991139052%_
                          (let ()
                            (declare (not safe))
                            (##car _%e138990139049%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl138992139054%_))
                         (_%__kont146820146821%_)
                         (_%__kont146824146825%_))))
                 (_%__kont146824146825%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd138988139044%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl138989139046%_))
                     (let ((_%e138996139026%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl138989139046%_))))
                       (let ((_%tl138998139031%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e138996139026%_)))
                             (_%hd138997139029%_
                              (let ()
                                (declare (not safe))
                                (##car _%e138996139026%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl138998139031%_))
                             (_%__kont146822146823%_)
                             (_%__kont146824146825%_))))
                     (_%__kont146824146825%_))
                 (_%__kont146824146825%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont146824146825%_))))
                                         (_%__kont146824146825%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest138960138968%_))
                             (let ((_%hd138965139065%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest138960138968%_)))
                                   (_%tl138966139067%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest138960138968%_))))
                               (let* ((_%e139070%_ _%hd138965139065%_)
                                      (_%rest139072%_ _%tl138966139067%_))
                                 (_%K138964139062%_
                                  _%rest139072%_
                                  _%e139070%_)))
                             (_%else138962138976%_))))))
               _%hd138890138928%_
               _%hd138887138920%_
               _%hd138884138912%_)
              (_%g138875138896%_ _%g138876138899%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g138875138896%_
                                               _%g138876138899%_))))
                                      (_%g138875138896%_ _%g138876138899%_))))
                              (_%g138875138896%_ _%g138876138899%_))))
                      (_%g138875138896%_ _%g138876138899%_)))))
          (_%g138874139074%_ _%stx138873%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self138651%_ _%stx138652%_)
        (let* ((_%g138654138679%_
                (lambda (_%g138655138676%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138655138676%_))))
               (_%g138653138869%_
                (lambda (_%g138655138682%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138655138682%_))
                      (let ((_%e138660138684%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138655138682%_))))
                        (let ((_%hd138661138687%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138660138684%_)))
                              (_%tl138662138689%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138660138684%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138662138689%_))
                              (let ((_%e138663138692%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138662138689%_))))
                                (let ((_%hd138664138695%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138663138692%_)))
                                      (_%tl138665138697%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138663138692%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138665138697%_))
                                      (let ((_%e138666138700%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138665138697%_))))
                                        (let ((_%hd138667138703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138666138700%_)))
                                              (_%tl138668138705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138666138700%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl138668138705%_))
                                              (let ((_%e138669138708%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl138668138705%_))))
                                                (let ((_%hd138670138711%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e138669138708%_)))
                                                      (_%tl138671138713%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e138669138708%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl138671138713%_))
                                                      (let ((_%e138672138716%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl138671138713%_))))
                (let ((_%hd138673138719%_
                       (let () (declare (not safe)) (##car _%e138672138716%_)))
                      (_%tl138674138721%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e138672138716%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl138674138721%_))
                      ((lambda (_%L138724%_
                                _%L138725%_
                                _%L138726%_
                                _%L138727%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self138651%_
                                            _%L138725%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self138651%_
                                                  _%L138724%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self138651%_
                                                        _%L138726%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp138748%_ ((_%rest138751%_
                                                 (cons _%L138726%_
                                                       (cons _%L138724%_
                                                             (cons _%L138725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind138753%_ '())
                                                (_%args138754%_ '()))
                               (let* ((_%rest138755138763%_ _%rest138751%_)
                                      (_%else138757138771%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind138753%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp147183 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp147183 _%args138754%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K138759138857%_
                                       (lambda (_%rest138774%_ _%e138775%_)
                                         (let* ((_%__stx146864146865%_
                                                 _%e138775%_)
                                                (_%g138780138798%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx146864146865%_)))))
                                           (let ((_%__kont146866146867%_
                                                  (lambda ()
                                                    (_%lp138748%_
                                                     _%rest138774%_
                                                     _%bind138753%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e138775%_))
                                                           _%args138754%_))))
                                                 (_%__kont146868146869%_
                                                  (lambda ()
                                                    (_%lp138748%_
                                                     _%rest138774%_
                                                     _%bind138753%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e138775%_))
                                                           _%args138754%_))))
                                                 (_%__kont146870146871%_
                                                  (lambda ()
                                                    (let ((_%tmp138805%_
                                                           (let ((__tmp147184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp147184))))
              (_%lp138748%_
               _%rest138774%_
               (cons (cons _%tmp138805%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e138775%_))
                                 '()))
                     _%bind138753%_)
               (cons _%tmp138805%_ _%args138754%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx146864146865%_))
                                                 (let ((_%e138782138836%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx146864146865%_))))
                                                   (let ((_%tl138784138841%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e138782138836%_)))
                                                         (_%hd138783138839%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e138782138836%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd138783138839%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd138783138839%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl138784138841%_))
                         (let ((_%e138785138844%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl138784138841%_))))
                           (let ((_%tl138787138849%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e138785138844%_)))
                                 (_%hd138786138847%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e138785138844%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl138787138849%_))
                                 (_%__kont146866146867%_)
                                 (_%__kont146870146871%_))))
                         (_%__kont146870146871%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd138783138839%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl138784138841%_))
                             (let ((_%e138791138821%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl138784138841%_))))
                               (let ((_%tl138793138826%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e138791138821%_)))
                                     (_%hd138792138824%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e138791138821%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl138793138826%_))
                                     (_%__kont146868146869%_)
                                     (_%__kont146870146871%_))))
                             (_%__kont146870146871%_))
                         (_%__kont146870146871%_)))
                 (_%__kont146870146871%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont146870146871%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest138755138763%_))
                                     (let ((_%hd138760138860%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest138755138763%_)))
                                           (_%tl138761138862%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest138755138763%_))))
                                       (let* ((_%e138865%_ _%hd138760138860%_)
                                              (_%rest138867%_
                                               _%tl138761138862%_))
                                         (_%K138759138857%_
                                          _%rest138867%_
                                          _%e138865%_)))
                                     (_%else138757138771%_))))))
                       _%hd138673138719%_
                       _%hd138670138711%_
                       _%hd138667138703%_
                       _%hd138664138695%_)
                      (_%g138654138679%_ _%g138655138682%_))))
              (_%g138654138679%_ _%g138655138682%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g138654138679%_
                                               _%g138655138682%_))))
                                      (_%g138654138679%_ _%g138655138682%_))))
                              (_%g138654138679%_ _%g138655138682%_))))
                      (_%g138654138679%_ _%g138655138682%_)))))
          (_%g138653138869%_ _%stx138652%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self138490%_ _%stx138491%_)
        (letrec ((_%import-set-template138493%_
                  (lambda (_%in138596%_ _%phi138597%_)
                    (let ((_%iphi138599%_
                           (fx+ _%phi138597%_
                                (##direct-structure-ref
                                 _%in138596%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports138600%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in138596%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp138602%_ ((_%rest138604%_ _%imports138600%_)
                                         (_%r138605%_ '()))
                        (let* ((_%rest138606138614%_ _%rest138604%_)
                               (_%else138608138622%_ (lambda () _%r138605%_))
                               (_%K138610138639%_
                                (lambda (_%rest138625%_ _%in138626%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in138626%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi138599%_))
                                          (_%lp138602%_
                                           _%rest138625%_
                                           (cons _%in138626%_ _%r138605%_))
                                          (_%lp138602%_
                                           _%rest138625%_
                                           _%r138605%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in138626%_
                                             'gx#module-import::t))
                                          (let ((_%iphi138630%_
                                                 (fx+ _%phi138597%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in138626%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi138630%_))
                                                (_%lp138602%_
                                                 _%rest138625%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in138626%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r138605%_))
                                                (_%lp138602%_
                                                 _%rest138625%_
                                                 _%r138605%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in138626%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi138633%_
                                                     (fx+ _%iphi138599%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in138626%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi138633%_))
                                                    (_%lp138602%_
                                                     _%rest138625%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in138626%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r138605%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi138633%_))
                                                        (_%lp138602%_
                                                         _%rest138625%_
                                                         (let ((__tmp147185
                                                                (_%import-set-template138493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in138626%_
                         _%iphi138599%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r138605%_ __tmp147185)))
                (_%lp138602%_ _%rest138625%_ _%r138605%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp138602%_
                                               _%rest138625%_
                                               _%r138605%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest138606138614%_))
                              (let ((_%hd138611138642%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest138606138614%_)))
                                    (_%tl138612138644%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest138606138614%_))))
                                (let* ((_%in138647%_ _%hd138611138642%_)
                                       (_%rest138649%_ _%tl138612138644%_))
                                  (_%K138610138639%_
                                   _%rest138649%_
                                   _%in138647%_)))
                              (_%else138608138622%_))))))))
          (let* ((_%g138495138505%_
                  (lambda (_%g138496138502%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138496138502%_))))
                 (_%g138494138593%_
                  (lambda (_%g138496138508%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138496138508%_))
                        (let ((_%e138498138510%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138496138508%_))))
                          (let ((_%hd138499138513%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138498138510%_)))
                                (_%tl138500138515%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138498138510%_))))
                            ((lambda (_%L138518%_)
                               (let ((_%ht138529%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp138531%_ ((_%rest138533%_
                                                     _%L138518%_)
                                                    (_%loads138534%_ '()))
                                   (letrec ((_%K138536%_
                                             (lambda (_%ctx138586%_
                                                      _%rest138587%_)
                                               (let ((_%id138589%_
                                                      (##structure-ref
                                                       _%ctx138586%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _%ht138529%_
                                                        _%id138589%_))
                                                     (_%lp138531%_
                                                      _%rest138587%_
                                                      _%loads138534%_)
                                                     (let ((_%rt138591%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id138589%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%ht138529%_
                                                          _%id138589%_
                                                          _%rt138591%_))
                                                       (_%lp138531%_
                                                        _%rest138587%_
                                                        (cons _%rt138591%_
                                                              _%loads138534%_))))))))
                                     (let* ((_%rest138537138545%_
                                             _%rest138533%_)
                                            (_%else138539138557%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp147187
                                                            (lambda (_%g138552138554%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g138552138554%_)))
                   (__tmp147186 (reverse _%loads138534%_)))
               (declare (not safe))
               (##map __tmp147187 __tmp147186)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K138541138574%_
                                             (lambda (_%rest138560%_
                                                      _%in138561%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in138561%_
                                                      'gx#module-context::t))
                                                   (_%K138536%_
                                                    _%in138561%_
                                                    _%rest138560%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in138561%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in138561%_
                               '3
                               '#f
                               '#f)))
                   (_%K138536%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in138561%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest138560%_)
                   (_%lp138531%_ _%rest138560%_ _%loads138534%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in138561%_
                      'gx#import-set::t))
                   (let ((_%phi138566%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in138561%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi138566%_)
                         (_%K138536%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in138561%_
                             '1
                             '#f
                             '#f))
                          _%rest138560%_)
                         (if (fxpositive? _%phi138566%_)
                             (let ((_%deps138570%_
                                    (_%import-set-template138493%_
                                     _%in138561%_
                                     '0)))
                               (_%lp138531%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest138560%_
                                   _%deps138570%_))
                                _%loads138534%_))
                             (_%lp138531%_ _%rest138560%_ _%loads138534%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx138491%_
                      _%in138561%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest138537138545%_))
                                           (let ((_%hd138542138577%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest138537138545%_)))
                                                 (_%tl138543138579%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest138537138545%_))))
                                             (let* ((_%in138582%_
                                                     _%hd138542138577%_)
                                                    (_%rest138584%_
                                                     _%tl138543138579%_))
                                               (_%K138541138574%_
                                                _%rest138584%_
                                                _%in138582%_)))
                                           (_%else138539138557%_)))))))
                             _%tl138500138515%_)))
                        (_%g138495138505%_ _%g138496138508%_)))))
            (_%g138494138593%_ _%stx138491%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self138303%_ _%stx138304%_)
        (letrec ((_%add-lift!138306%_
                  (lambda (_%expr138488%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr138488%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote138307%_
                  (lambda (_%id138485%_ _%marks138486%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id138485%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks138486%_
                                                        '()))))))))
                 (_%generate-simple138308%_
                  (lambda (_%stxq138480%_)
                    (let ((_%gid138482%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid138483%_
                           (gxc#generate-runtime-identifier _%stxq138480%_)))
                      (_%add-lift!138306%_
                       (cons 'define
                             (cons _%gid138482%_
                                   (cons (_%generate-syntax-quote138307%_
                                          _%qid138483%_
                                          ''())
                                         '()))))
                      (let ((__tmp147188
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp147188 _%stxq138480%_ _%gid138482%_))
                      _%gid138482%_)))
                 (_%generate-serialized138309%_
                  (lambda (_%stxq138470%_ _%marks138471%_)
                    (let* ((_%mark-refs138473%_
                            (map _%generate-mark138310%_ _%marks138471%_))
                           (_%gid138475%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid138477%_
                            (gxc#generate-runtime-identifier _%stxq138470%_)))
                      (_%add-lift!138306%_
                       (cons 'define
                             (cons _%gid138475%_
                                   (cons (_%generate-syntax-quote138307%_
                                          _%qid138477%_
                                          (cons 'list _%mark-refs138473%_))
                                         '()))))
                      (let ((__tmp147189
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp147189 _%stxq138470%_ _%gid138475%_))
                      _%gid138475%_)))
                 (_%generate-mark138310%_
                  (lambda (_%mark138455%_)
                    (let ((_%$e138457%_
                           (let ((__tmp147190
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp147190 _%mark138455%_))))
                      (if _%$e138457%_
                          (values _%$e138457%_)
                          (let* ((_%gid138461%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr138463%_
                                  (_%serialize-mark138311%_ _%mark138455%_))
                                 (_%ctx138465%_
                                  (let ((__tmp147191
                                         (##structure-ref
                                          _%mark138455%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp147191)))
                                 (_%ctx-ref138467%_
                                  (if (eq? _%ctx138465%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref138312%_
                                                               _%ctx138465%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp147192
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp147192
                               _%mark138455%_
                               _%gid138461%_))
                            (_%add-lift!138306%_
                             (cons 'define
                                   (cons _%gid138461%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr138463%_ '()))
                   (cons _%ctx-ref138467%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid138461%_)))))
                 (_%serialize-mark138311%_
                  (lambda (_%mark138402%_)
                    (letrec ((_%quote-e138404%_
                              (lambda (_%sym138453%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym138453%_))
                                    _%sym138453%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym138453%_))))))
                      (let* ((_%mark138405138414%_ _%mark138402%_)
                             (_%E138407138418%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark138405138414%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K138408138430%_
                              (lambda (_%trace138421%_
                                       _%phi138422%_
                                       _%ctx138423%_
                                       _%subst138424%_)
                                (let ((_%subs138426%_
                                       (if _%subst138424%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst138424%_))
                                           '())))
                                  (cons _%phi138422%_
                                        (map (lambda (_%pair138428%_)
                                               (cons (_%quote-e138404%_
                                                      (car _%pair138428%_))
                                                     (_%quote-e138404%_
                                                      (cdr _%pair138428%_))))
                                             _%subs138426%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark138405138414%_
                               'gx#expander-mark::t))
                            (let* ((_%e138409138433%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138405138414%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst138436%_ _%e138409138433%_)
                                   (_%e138410138438%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138405138414%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx138441%_ _%e138410138438%_)
                                   (_%e138411138443%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138405138414%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi138446%_ _%e138411138443%_)
                                   (_%e138412138448%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138405138414%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace138451%_ _%e138412138448%_))
                              (_%K138408138430%_
                               _%trace138451%_
                               _%phi138446%_
                               _%ctx138441%_
                               _%subst138436%_))
                            (_%E138407138418%_))))))
                 (_%context-ref138312%_
                  (lambda (_%ctx138389%_)
                    (if (let ((__tmp147193
                               (##structure-ref
                                _%ctx138389%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp147193
                           'gx#module-context::t))
                        (let ((_%ctx-ref138391%_
                               (_%context-ref-nested138314%_ _%ctx138389%_))
                              (_%ctx-origin138392%_
                               (_%context-ref-origin138313%_ _%ctx138389%_))
                              (_%origin138393%_
                               (_%context-ref-origin138313%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin138393%_ _%ctx-origin138392%_)
                              (let ((_%ref138395%_
                                     (_%context-ref-nested138314%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp138397%_ ((_%ref138399%_
                                                    (cdr _%ref138395%_))
                                                   (_%ctx-ref138400%_
                                                    (cdr _%ctx-ref138391%_)))
                                  (if (and (pair? _%ref138399%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref138399%_))
                                                (car _%ctx-ref138400%_)))
                                      (_%lp138397%_
                                       (cdr _%ref138399%_)
                                       (cdr _%ctx-ref138400%_))
                                      (cons '#f _%ctx-ref138400%_))))
                              _%ctx-ref138391%_))
                        (let ((__tmp147194
                               (##structure-ref
                                _%ctx138389%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp147194)))))
                 (_%context-ref-origin138313%_
                  (lambda (_%ctx138381%_)
                    (let _%lp138383%_ ((_%ctx138385%_ _%ctx138381%_))
                      (let ((_%super138387%_
                             (##structure-ref
                              _%ctx138385%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super138387%_
                               'gx#module-context::t))
                            (_%lp138383%_ _%super138387%_)
                            _%ctx138385%_)))))
                 (_%context-ref-nested138314%_
                  (lambda (_%ctx138372%_)
                    (let _%lp138374%_ ((_%ctx138376%_ _%ctx138372%_)
                                       (_%r138377%_ '()))
                      (let ((_%super138379%_
                             (##structure-ref
                              _%ctx138376%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super138379%_
                               'gx#module-context::t))
                            (_%lp138374%_
                             _%super138379%_
                             (cons (car (##structure-ref
                                         _%ctx138376%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r138377%_))
                            (cons (let ((__tmp147195
                                         (##structure-ref
                                          _%ctx138376%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp147195))
                                  _%r138377%_)))))))
          (let* ((_%g138316138329%_
                  (lambda (_%g138317138326%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138317138326%_))))
                 (_%g138315138369%_
                  (lambda (_%g138317138332%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138317138332%_))
                        (let ((_%e138319138334%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138317138332%_))))
                          (let ((_%hd138320138337%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138319138334%_)))
                                (_%tl138321138339%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138319138334%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138321138339%_))
                                (let ((_%e138322138342%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138321138339%_))))
                                  (let ((_%hd138323138345%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138322138342%_)))
                                        (_%tl138324138347%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138322138342%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138324138347%_))
                                        ((lambda (_%L138350%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L138350%_))
                                               (let ((_%$e138363%_
                                                      (let ((__tmp147196
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp147196 _%L138350%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e138363%_
                                                     (values _%$e138363%_)
                                                     (let ((_%marks138367%_
                                                            (##direct-structure-ref
                                                             _%L138350%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks138367%_)
                                                           (_%generate-simple138308%_
                                                            _%L138350%_)
                                                           (_%generate-serialized138309%_
                                                            _%L138350%_
                                                            _%marks138367%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L138350%_))))
                                         _%hd138323138345%_)
                                        (_%g138316138329%_
                                         _%g138317138332%_))))
                                (_%g138316138329%_ _%g138317138332%_))))
                        (_%g138316138329%_ _%g138317138332%_)))))
            (_%g138315138369%_ _%stx138304%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self138235%_ _%stx138236%_)
        (let* ((_%g138238138255%_
                (lambda (_%g138239138252%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138239138252%_))))
               (_%g138237138300%_
                (lambda (_%g138239138258%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138239138258%_))
                      (let ((_%e138242138260%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138239138258%_))))
                        (let ((_%hd138243138263%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138242138260%_)))
                              (_%tl138244138265%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138242138260%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138244138265%_))
                              (let ((_%e138245138268%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138244138265%_))))
                                (let ((_%hd138246138271%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138245138268%_)))
                                      (_%tl138247138273%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138245138268%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138247138273%_))
                                      (let ((_%e138248138276%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138247138273%_))))
                                        (let ((_%hd138249138279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138248138276%_)))
                                              (_%tl138250138281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138248138276%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138250138281%_))
                                              ((lambda (_%L138284%_
                                                        _%L138285%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L138285%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self138235%_ _%L138284%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138249138279%_
                                               _%hd138246138271%_)
                                              (_%g138238138255%_
                                               _%g138239138258%_))))
                                      (_%g138238138255%_ _%g138239138258%_))))
                              (_%g138238138255%_ _%g138239138258%_))))
                      (_%g138238138255%_ _%g138239138258%_)))))
          (_%g138237138300%_ _%stx138236%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self138184%_ _%stx138185%_)
        (let* ((_%g138187138197%_
                (lambda (_%g138188138194%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138188138194%_))))
               (_%g138186138232%_
                (lambda (_%g138188138200%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138188138200%_))
                      (let ((_%e138190138202%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138188138200%_))))
                        (let ((_%hd138191138205%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138190138202%_)))
                              (_%tl138192138207%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138190138202%_))))
                          ((lambda (_%L138210%_)
                             (let* ((_%c-body138224%_
                                     (map (lambda (_%g138219138221%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self138184%_
                                               _%g138219138221%_)))
                                          _%L138210%_))
                                    (_%c-body138229%_
                                     (let ((__tmp147197
                                            (lambda (_%$obj138226%_)
                                              (not (eq? _%$obj138226%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp147197
                                        _%c-body138224%_))))
                               (cons '%#begin _%c-body138229%_)))
                           _%tl138192138207%_)))
                      (_%g138187138197%_ _%g138188138200%_)))))
          (_%g138186138232%_ _%stx138185%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self138089%_ _%stx138090%_)
        (let* ((_%g138092138102%_
                (lambda (_%g138093138099%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138093138099%_))))
               (_%g138091138181%_
                (lambda (_%g138093138105%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138093138105%_))
                      (let ((_%e138095138107%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138093138105%_))))
                        (let ((_%hd138096138110%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138095138107%_)))
                              (_%tl138097138112%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138095138107%_))))
                          ((lambda (_%L138115%_)
                             (let* ((_%phi138125%_
                                     (let ((__tmp147198
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp147198 '1)))
                                    (_%block138127%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self138089%_ 'state))
                                      _%phi138125%_))
                                    (_%compiled138130%_
                                     (let ((__tmp147199
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self138089%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L138115%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp147199
                                        gx#current-expander-phi
                                        _%phi138125%_)))
                                    (_%g138133138143%_
                                     (lambda (_%g138134138140%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g138134138140%_))))
                                    (_%g138132138178%_
                                     (lambda (_%g138134138146%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g138134138146%_))
                                           (let ((_%e138136138148%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g138134138146%_))))
                                             (let ((_%hd138137138151%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e138136138148%_)))
                                                   (_%tl138138138153%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e138136138148%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd138137138151%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd138137138151%_))
                                                       ((lambda (_%L138156%_)
                                                          (let ((_%c-body138173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj138170%_)
                                   (not (eq? _%$obj138170%_ '#!void)))
                                 _%L138156%_)))
                    (if _%block138127%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block138127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body138173%_))
                        (if (null? _%c-body138173%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body138173%_)))))
                _%tl138138138153%_)
               (_%g138133138143%_ _%g138134138146%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g138133138143%_
                                                    _%g138134138146%_))))
                                           (_%g138133138143%_
                                            _%g138134138146%_)))))
                               (_%g138132138178%_ _%compiled138130%_)))
                           _%tl138097138112%_)))
                      (_%g138092138102%_ _%g138093138105%_)))))
          (_%g138091138181%_ _%stx138090%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self138020%_ _%stx138021%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self138020%_ 'state)))
        (let* ((_%g138023138037%_
                (lambda (_%g138024138034%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138024138034%_))))
               (_%g138022138086%_
                (lambda (_%g138024138040%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138024138040%_))
                      (let ((_%e138027138042%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138024138040%_))))
                        (let ((_%hd138028138045%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138027138042%_)))
                              (_%tl138029138047%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138027138042%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138029138047%_))
                              (let ((_%e138030138050%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138029138047%_))))
                                (let ((_%hd138031138053%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138030138050%_)))
                                      (_%tl138032138055%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138030138050%_))))
                                  ((lambda (_%L138058%_ _%L138059%_)
                                     (let ((_%key138072%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L138059%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key138072%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx138021%_
                                              _%L138059%_
                                              _%key138072%_)))
                                       (let* ((_%ctx138074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L138059%_)))
                                              (_%code138077%_
                                               (let ((__tmp147200
                                                      (lambda ()
                                                        (let ((__tmp147201
                                                               (##structure-ref
                                                                _%ctx138074%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self138020%_
                                                           __tmp147201)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp147200
                                                  gx#current-expander-context
                                                  _%ctx138074%_)))
                                              (_%rt138079%_
                                               (let ((__tmp147202
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp147202
                                                  _%ctx138074%_)))
                                              (_%loader138081%_
                                               (if _%rt138079%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt138079%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid138083%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L138059%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self138020%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid138083%_
                                                     (cons _%code138077%_
                                                           _%loader138081%_))))))
                                   _%tl138032138055%_
                                   _%hd138031138053%_)))
                              (_%g138023138037%_ _%g138024138040%_))))
                      (_%g138023138037%_ _%g138024138040%_)))))
          (_%g138022138086%_ _%stx138021%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx138007%_ _%context-chain138008%_)
        (let _%lp138010%_ ((_%ctx138012%_ _%ctx138007%_) (_%path138013%_ '()))
          (let ((_%super138015%_
                 (##structure-ref _%ctx138012%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super138015%_ _%context-chain138008%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx138012%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path138013%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super138015%_
                       'gx#module-context::t))
                    (_%lp138010%_
                     _%super138015%_
                     (cons (car (##structure-ref
                                 _%ctx138012%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path138013%_))
                    (cons (let ((__tmp147203
                                 (##structure-ref
                                  _%ctx138012%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp147203))
                          _%path138013%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp138000%_ ((_%ctx138002%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r138003%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx138002%_ 'gx#module-context::t))
              (_%lp138000%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx138002%_ '3 '#f '#f))
               (cons _%ctx138002%_ _%r138003%_))
              _%r138003%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self137763%_ _%stx137764%_)
        (letrec* ((_%context-chain137766%_ (gxc#current-context-chain))
                  (_%make-import-spec137767%_
                   (lambda (_%in137936%_)
                     (let* ((_%in137937137949%_ _%in137936%_)
                            (_%E137939137953%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in137937137949%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K137940137963%_
                             (lambda (_%phi137956%_
                                      _%name137957%_
                                      _%src-name137958%_
                                      _%src-phi137959%_
                                      _%src-key137960%_
                                      _%src-ctx137961%_)
                               (cons _%phi137956%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name137957%_)
                                           (cons _%src-phi137959%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name137958%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in137937137949%_
                              'gx#module-import::t))
                           (let ((_%e137941137966%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in137937137949%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e137941137966%_
                                    'gx#module-export::t))
                                 (let* ((_%e137944137969%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e137941137966%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx137972%_ _%e137944137969%_)
                                        (_%e137945137974%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e137941137966%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key137977%_ _%e137945137974%_)
                                        (_%e137946137979%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e137941137966%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi137982%_ _%e137946137979%_)
                                        (_%e137947137984%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e137941137966%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name137987%_ _%e137947137984%_)
                                        (_%e137942137989%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in137937137949%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name137992%_ _%e137942137989%_)
                                        (_%e137943137994%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in137937137949%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi137997%_ _%e137943137994%_))
                                   (_%K137940137963%_
                                    _%phi137997%_
                                    _%name137992%_
                                    _%src-name137987%_
                                    _%src-phi137982%_
                                    _%src-key137977%_
                                    _%src-ctx137972%_))
                                 (_%E137939137953%_)))
                           (_%E137939137953%_)))))
                  (_%make-import-path137768%_
                   (lambda (_%ctx137934%_)
                     (gxc#generate-meta-import-path
                      _%ctx137934%_
                      _%context-chain137766%_)))
                  (_%make-import-spec-in137769%_
                   (lambda (_%ctx137931%_ _%in137932%_)
                     (cons 'spec:
                           (cons (_%make-import-path137768%_ _%ctx137931%_)
                                 (reverse _%in137932%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self137763%_ 'state)))
          (let* ((_%g137771137781%_
                  (lambda (_%g137772137778%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137772137778%_))))
                 (_%g137770137928%_
                  (lambda (_%g137772137784%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137772137784%_))
                        (let ((_%e137774137786%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137772137784%_))))
                          (let ((_%hd137775137789%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137774137786%_)))
                                (_%tl137776137791%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137774137786%_))))
                            ((lambda (_%L137794%_)
                               (let _%lp137805%_ ((_%rest137807%_ _%L137794%_)
                                                  (_%current-src137808%_ '#f)
                                                  (_%current-in137809%_ '())
                                                  (_%r137810%_ '()))
                                 (let* ((_%rest137811137819%_ _%rest137807%_)
                                        (_%else137813137829%_
                                         (lambda ()
                                           (let ((_%r137827%_
                                                  (if _%current-src137808%_
                                                      (cons (_%make-import-spec-in137769%_
                                                             _%current-src137808%_
                                                             _%current-in137809%_)
                                                            _%r137810%_)
                                                      _%r137810%_)))
                                             (cons '%#import
                                                   (reverse _%r137827%_)))))
                                        (_%K137815137916%_
                                         (lambda (_%rest137832%_ _%in137833%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in137833%_
                                                  'gx#module-import::t))
                                               (let* ((_%in137835137842%_
                                                       _%in137833%_)
                                                      (_%E137837137846%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in137835137842%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K137838137854%_
               (lambda (_%src-ctx137849%_)
                 (if (eq? _%current-src137808%_ _%src-ctx137849%_)
                     (_%lp137805%_
                      _%rest137832%_
                      _%current-src137808%_
                      (cons (_%make-import-spec137767%_ _%in137833%_)
                            _%current-in137809%_)
                      _%r137810%_)
                     (if _%current-src137808%_
                         (_%lp137805%_
                          _%rest137832%_
                          _%src-ctx137849%_
                          (cons (_%make-import-spec137767%_ _%in137833%_) '())
                          (cons (_%make-import-spec-in137769%_
                                 _%current-src137808%_
                                 _%current-in137809%_)
                                _%r137810%_))
                         (_%lp137805%_
                          _%rest137832%_
                          _%src-ctx137849%_
                          (cons (_%make-import-spec137767%_ _%in137833%_) '())
                          _%r137810%_)))))
              (_%e137839137857%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in137835137842%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e137839137857%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e137840137860%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e137839137857%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx137863%_ _%e137840137860%_))
               (_%K137838137854%_ _%src-ctx137863%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E137837137846%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in137833%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi137866%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in137833%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src137868%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in137833%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in137908%_
                                                           (let* ((_%g137869137878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path137768%_ _%src137868%_))
                          (_%E137872137882%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g137869137878%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K137874137898%_
                            (lambda (_%path137896%_) _%path137896%_))
                           (_%K137873137888%_
                            (lambda (_%path137886%_)
                              (cons 'in: _%path137886%_))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g137869137878%_))
                           (let ((_%tl137876137903%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g137869137878%_)))
                                 (_%hd137875137901%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g137869137878%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tl137876137903%_))
                                 (let ((_%path137906%_ _%hd137875137901%_))
                                   (_%K137874137898%_ _%path137906%_))
                                 (let ((_%path137891%_ _%g137869137878%_))
                                   (_%K137873137888%_ _%path137891%_))))
                           (let ((_%path137891%_ _%g137869137878%_))
                             (_%K137873137888%_ _%path137891%_))))))
                  (_%r137910%_
                   (if _%current-src137808%_
                       (cons (_%make-import-spec-in137769%_
                              _%current-src137808%_
                              _%current-in137809%_)
                             _%r137810%_)
                       _%r137810%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp137805%_
                                                      _%rest137832%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi137866%_)
                                                                _%src-in137908%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi137866%_
                                    (cons _%src-in137908%_ '()))))
                    _%r137910%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in137833%_
                                                          'gx#module-context::t))
                                                       (let ((_%r137914%_
                                                              (if _%current-src137808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in137769%_
                                 _%current-src137808%_
                                 _%current-in137809%_)
                                _%r137810%_)
                          _%r137810%_)))
                 (_%lp137805%_
                  _%rest137832%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path137768%_ _%in137833%_))
                        _%r137914%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest137811137819%_))
                                       (let ((_%hd137816137919%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest137811137819%_)))
                                             (_%tl137817137921%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest137811137819%_))))
                                         (let* ((_%in137924%_
                                                 _%hd137816137919%_)
                                                (_%rest137926%_
                                                 _%tl137817137921%_))
                                           (_%K137815137916%_
                                            _%rest137926%_
                                            _%in137924%_)))
                                       (_%else137813137829%_)))))
                             _%tl137776137791%_)))
                        (_%g137771137781%_ _%g137772137784%_)))))
            (_%g137770137928%_ _%stx137764%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self137573%_ _%stx137574%_)
        (letrec* ((_%context-chain137576%_ (gxc#current-context-chain))
                  (_%make-import-path137577%_
                   (lambda (_%ctx137761%_)
                     (gxc#generate-meta-import-path
                      _%ctx137761%_
                      _%context-chain137576%_))))
          (let* ((_%g137579137589%_
                  (lambda (_%g137580137586%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137580137586%_))))
                 (_%g137578137758%_
                  (lambda (_%g137580137592%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137580137592%_))
                        (let ((_%e137582137594%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137580137592%_))))
                          (let ((_%hd137583137597%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137582137594%_)))
                                (_%tl137584137599%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137582137594%_))))
                            ((lambda (_%L137602%_)
                               (let _%lp137613%_ ((_%rest137615%_ _%L137602%_)
                                                  (_%r137616%_ '()))
                                 (let* ((_%rest137617137625%_ _%rest137615%_)
                                        (_%else137619137633%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r137616%_))))
                                        (_%K137621137746%_
                                         (lambda (_%rest137636%_ _%out137637%_)
                                           (let* ((_%out137638137651%_
                                                   _%out137637%_)
                                                  (_%E137641137655%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out137638137651%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K137645137725%_
                                                    (lambda (_%name137721%_
                                                             _%phi137722%_
                                                             _%key137723%_)
                                                      (_%lp137613%_
                                                       _%rest137636%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi137722%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key137723%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name137721%_)
                                             '()))))
                     _%r137616%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K137642137705%_
                                                    (lambda (_%phi137659%_
                                                             _%src137660%_)
                                                      (let* ((_%out137700%_
                                                              (if _%src137660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g137661137670%_
                                              (_%make-import-path137577%_
                                               _%src137660%_))
                                             (_%E137664137674%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g137661137670%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K137666137690%_
                                               (lambda (_%path137688%_)
                                                 _%path137688%_))
                                              (_%K137665137680%_
                                               (lambda (_%path137678%_)
                                                 (cons 'in: _%path137678%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g137661137670%_))
                                              (let ((_%tl137668137695%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g137661137670%_)))
                                                    (_%hd137667137693%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g137661137670%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl137668137695%_))
                                                    (let ((_%path137698%_
                                                           _%hd137667137693%_))
                                                      (_%K137666137690%_
                                                       _%path137698%_))
                                                    (let ((_%path137683%_
                                                           _%g137661137670%_))
                                                      (_%K137665137680%_
                                                       _%path137683%_))))
                                              (let ((_%path137683%_
                                                     _%g137661137670%_))
                                                (_%K137665137680%_
                                                 _%path137683%_)))))
                                      '()))
                          '#t))
                     (_%out137702%_
                      (if (fxzero? _%phi137659%_)
                          _%out137700%_
                          (cons 'phi:
                                (cons _%phi137659%_
                                      (cons _%out137700%_ '()))))))
                (_%lp137613%_
                 _%rest137636%_
                 (cons _%out137702%_ _%r137616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match137640137718%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out137638137651%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e137643137708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out137638137651%_
                               '1
                               '#f
                               '#f)))
                           (_%e137644137713%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out137638137651%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src137711%_ _%e137643137708%_)
                            (_%phi137716%_ _%e137644137713%_))
                        (_%K137642137705%_ _%phi137716%_ _%src137711%_)))
                    (_%E137641137655%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out137638137651%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e137646137728%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out137638137651%_
                        '1
                        '#f
                        '#f)))
                    (_%e137647137731%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out137638137651%_
                        '2
                        '#f
                        '#f)))
                    (_%e137648137736%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out137638137651%_
                        '3
                        '#f
                        '#f)))
                    (_%e137649137741%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out137638137651%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key137734%_ _%e137647137731%_)
                     (_%phi137739%_ _%e137648137736%_)
                     (_%name137744%_ _%e137649137741%_))
                 (_%K137645137725%_
                  _%name137744%_
                  _%phi137739%_
                  _%key137734%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match137640137718%_))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest137617137625%_))
                                       (let ((_%hd137622137749%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest137617137625%_)))
                                             (_%tl137623137751%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest137617137625%_))))
                                         (let* ((_%out137754%_
                                                 _%hd137622137749%_)
                                                (_%rest137756%_
                                                 _%tl137623137751%_))
                                           (_%K137621137746%_
                                            _%rest137756%_
                                            _%out137754%_)))
                                       (_%else137619137633%_)))))
                             _%tl137584137599%_)))
                        (_%g137579137589%_ _%g137580137592%_)))))
            (_%g137578137758%_ _%stx137574%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self137534%_ _%stx137535%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self137534%_ 'state)))
        (let* ((_%g137537137547%_
                (lambda (_%g137538137544%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137538137544%_))))
               (_%g137536137570%_
                (lambda (_%g137538137550%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137538137550%_))
                      (let ((_%e137540137552%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137538137550%_))))
                        (let ((_%hd137541137555%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137540137552%_)))
                              (_%tl137542137557%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137540137552%_))))
                          ((lambda (_%L137560%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L137560%_)))
                           _%tl137542137557%_)))
                      (_%g137537137547%_ _%g137538137550%_)))))
          (_%g137536137570%_ _%stx137535%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self137405%_ _%stx137406%_)
        (letrec ((_%generate1137408%_
                  (lambda (_%id137529%_ _%eid137530%_)
                    (let ((_%eid137532%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid137530%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid137532%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx137406%_
                             _%eid137532%_)))
                      (cons (gxc#generate-runtime-identifier _%id137529%_)
                            (cons _%eid137532%_ '()))))))
          (let* ((_%g137410137438%_
                  (lambda (_%g137411137435%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137411137435%_))))
                 (_%g137409137526%_
                  (lambda (_%g137411137441%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137411137441%_))
                        (let ((_%e137414137443%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137411137441%_))))
                          (let ((_%hd137415137446%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137414137443%_)))
                                (_%tl137416137448%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137414137443%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl137416137448%_))
                                (let ((_g147204_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl137416137448%_
                                          '0))))
                                  (begin
                                    (let ((_g147205_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g147204_)
                                                 (##vector-length _g147204_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g147205_ 2)))
                                          (error "Context expects 2 values"
                                                 _g147205_)))
                                    (let ((_%target137417137451%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147204_ 0)))
                                          (_%tl137419137453%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147204_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl137419137453%_))
                                          (letrec ((_%loop137420137456%_
                                                    (lambda (_%hd137418137459%_
                                                             _%eid137424137461%_
                                                             _%id137425137463%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd137418137459%_))
                                                          (let ((_%e137421137466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd137418137459%_))))
                    (let ((_%lp-hd137422137469%_
                           (let ()
                             (declare (not safe))
                             (##car _%e137421137466%_)))
                          (_%lp-tl137423137471%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e137421137466%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd137422137469%_))
                          (let ((_%e137428137474%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd137422137469%_))))
                            (let ((_%hd137429137477%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e137428137474%_)))
                                  (_%tl137430137479%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e137428137474%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl137430137479%_))
                                  (let ((_%e137431137482%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl137430137479%_))))
                                    (let ((_%hd137432137485%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e137431137482%_)))
                                          (_%tl137433137487%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e137431137482%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl137433137487%_))
                                          (_%loop137420137456%_
                                           _%lp-tl137423137471%_
                                           (cons _%hd137432137485%_
                                                 _%eid137424137461%_)
                                           (cons _%hd137429137477%_
                                                 _%id137425137463%_))
                                          (_%g137410137438%_
                                           _%g137411137441%_))))
                                  (_%g137410137438%_ _%g137411137441%_))))
                          (_%g137410137438%_ _%g137411137441%_))))
                  (let ((_%eid137426137490%_ (reverse _%eid137424137461%_))
                        (_%id137427137492%_ (reverse _%id137425137463%_)))
                    ((lambda (_%L137495%_ _%L137496%_)
                       (cons '%#extern
                             (map _%generate1137408%_
                                  (let ((__tmp147206
                                         (lambda (_%g137511137514%_
                                                  _%g137512137516%_)
                                           (cons _%g137511137514%_
                                                 _%g137512137516%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp147206 '() _%L137496%_))
                                  (let ((__tmp147207
                                         (lambda (_%g137518137521%_
                                                  _%g137519137523%_)
                                           (cons _%g137518137521%_
                                                 _%g137519137523%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp147207 '() _%L137495%_)))))
                     _%eid137426137490%_
                     _%id137427137492%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop137420137456%_
                                             _%target137417137451%_
                                             '()
                                             '()))
                                          (_%g137410137438%_
                                           _%g137411137441%_)))))
                                (_%g137410137438%_ _%g137411137441%_))))
                        (_%g137410137438%_ _%g137411137441%_)))))
            (_%g137409137526%_ _%stx137406%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self137195%_ _%stx137196%_)
        (letrec ((_%generate1137198%_
                  (lambda (_%id137400%_)
                    (let ((_%eid137402%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id137400%_)))
                          (_%ident137403%_
                           (gxc#generate-runtime-identifier _%id137400%_)))
                      (cons '%#define-runtime
                            (cons _%ident137403%_ (cons _%eid137402%_ '()))))))
                 (_%generate*137199%_
                  (lambda (_%all137368%_)
                    (let* ((_%all137369137377%_ _%all137368%_)
                           (_%else137371137385%_
                            (lambda () (cons '%#begin _%all137368%_)))
                           (_%K137373137390%_
                            (lambda (_%one137388%_) _%one137388%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all137369137377%_))
                          (let ((_%hd137374137393%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all137369137377%_)))
                                (_%tl137375137395%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all137369137377%_))))
                            (let ((_%one137398%_ _%hd137374137393%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl137375137395%_))
                                  (_%K137373137390%_ _%one137398%_)
                                  (_%else137371137385%_))))
                          (_%else137371137385%_))))))
          (let* ((_%g137201137218%_
                  (lambda (_%g137202137215%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137202137215%_))))
                 (_%g137200137365%_
                  (lambda (_%g137202137221%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137202137221%_))
                        (let ((_%e137205137223%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137202137221%_))))
                          (let ((_%hd137206137226%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137205137223%_)))
                                (_%tl137207137228%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137205137223%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl137207137228%_))
                                (let ((_%e137208137231%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl137207137228%_))))
                                  (let ((_%hd137209137234%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137208137231%_)))
                                        (_%tl137210137236%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137208137231%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl137210137236%_))
                                        (let ((_%e137211137239%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl137210137236%_))))
                                          (let ((_%hd137212137242%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e137211137239%_)))
                                                (_%tl137213137244%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e137211137239%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137213137244%_))
                                                ((lambda (_%L137247%_
                                                          _%L137248%_)
                                                   (let _%lp137264%_ ((_%rest137266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L137248%_)
                              (_%r137267%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx146943146944%_
                                                             _%rest137266%_)
                                                            (_%g137272137289%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx146943146944%_)))))
               (let ((_%__kont146945146946%_
                      (lambda (_%L137352%_)
                        (_%lp137264%_ _%L137352%_ _%r137267%_)))
                     (_%__kont146947146948%_
                      (lambda (_%L137325%_ _%L137326%_)
                        (_%lp137264%_
                         _%L137325%_
                         (cons (_%generate1137198%_ _%L137326%_)
                               _%r137267%_))))
                     (_%__kont146949146950%_
                      (lambda (_%L137301%_)
                        (_%generate*137199%_
                         (let ((__tmp147208
                                (cons (_%generate1137198%_ _%L137301%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp147208 _%r137267%_)))))
                     (_%__kont146951146952%_
                      (lambda () (_%generate*137199%_ (reverse _%r137267%_)))))
                 (let ((_%g137270137312%_
                        (lambda ()
                          (let ((_%L137301%_ _%__stx146943146944%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L137301%_))
                                (_%__kont146949146950%_ _%L137301%_)
                                (_%__kont146951146952%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx146943146944%_))
                       (let ((_%e137275137341%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx146943146944%_))))
                         (let ((_%tl137277137346%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e137275137341%_)))
                               (_%hd137276137344%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e137275137341%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd137276137344%_))
                               (let ((_%e137278137349%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd137276137344%_))))
                                 (if (equal? _%e137278137349%_ '#f)
                                     (_%__kont146945146946%_
                                      _%tl137277137346%_)
                                     (_%__kont146947146948%_
                                      _%tl137277137346%_
                                      _%hd137276137344%_)))
                               (_%__kont146947146948%_
                                _%tl137277137346%_
                                _%hd137276137344%_))))
                       (let () (declare (not safe)) (_%g137270137312%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd137212137242%_
                                                 _%hd137209137234%_)
                                                (_%g137201137218%_
                                                 _%g137202137221%_))))
                                        (_%g137201137218%_
                                         _%g137202137221%_))))
                                (_%g137201137218%_ _%g137202137221%_))))
                        (_%g137201137218%_ _%g137202137221%_)))))
            (_%g137200137365%_ _%stx137196%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self137092%_ _%stx137093%_)
        (let* ((_%g137095137112%_
                (lambda (_%g137096137109%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137096137109%_))))
               (_%g137094137192%_
                (lambda (_%g137096137115%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137096137115%_))
                      (let ((_%e137099137117%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137096137115%_))))
                        (let ((_%hd137100137120%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137099137117%_)))
                              (_%tl137101137122%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137099137117%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137101137122%_))
                              (let ((_%e137102137125%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137101137122%_))))
                                (let ((_%hd137103137128%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137102137125%_)))
                                      (_%tl137104137130%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137102137125%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137104137130%_))
                                      (let ((_%e137105137133%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137104137130%_))))
                                        (let ((_%hd137106137136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137105137133%_)))
                                              (_%tl137107137138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137105137133%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137107137138%_))
                                              ((lambda (_%L137141%_
                                                        _%L137142%_)
                                                 (let* ((_%eid137157%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L137142%_)))
                                                        (_%phi137159%_
                                                         (let ((__tmp147209
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp147209 '1)))
                (_%block137161%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self137092%_ 'state))
                  _%phi137159%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g137164137171%_
                                                           (lambda (_%g137165137168%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g137165137168%_))))
                  (_%g137163137189%_
                   (lambda (_%g137165137174%_)
                     ((lambda (_%L137176%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self137092%_ 'state))
                         _%phi137159%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L137176%_ (cons _%L137141%_ '())))))
                      _%g137165137174%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g137163137189%_
                                                      _%eid137157%_))
                                                   (if _%block137161%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block137161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L137142%_)
                                             (cons _%eid137157%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L137142%_)
                           (cons _%eid137157%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137106137136%_
                                               _%hd137103137128%_)
                                              (_%g137095137112%_
                                               _%g137096137115%_))))
                                      (_%g137095137112%_ _%g137096137115%_))))
                              (_%g137095137112%_ _%g137096137115%_))))
                      (_%g137095137112%_ _%g137096137115%_)))))
          (_%g137094137192%_ _%stx137093%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self137024%_ _%stx137025%_)
        (let* ((_%g137027137044%_
                (lambda (_%g137028137041%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137028137041%_))))
               (_%g137026137089%_
                (lambda (_%g137028137047%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137028137047%_))
                      (let ((_%e137031137049%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137028137047%_))))
                        (let ((_%hd137032137052%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137031137049%_)))
                              (_%tl137033137054%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137031137049%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137033137054%_))
                              (let ((_%e137034137057%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137033137054%_))))
                                (let ((_%hd137035137060%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137034137057%_)))
                                      (_%tl137036137062%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137034137057%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137036137062%_))
                                      (let ((_%e137037137065%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137036137062%_))))
                                        (let ((_%hd137038137068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137037137065%_)))
                                              (_%tl137039137070%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137037137065%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137039137070%_))
                                              ((lambda (_%L137073%_
                                                        _%L137074%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L137074%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L137073%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137038137068%_
                                               _%hd137035137060%_)
                                              (_%g137027137044%_
                                               _%g137028137047%_))))
                                      (_%g137027137044%_ _%g137028137047%_))))
                              (_%g137027137044%_ _%g137028137047%_))))
                      (_%g137027137044%_ _%g137028137047%_)))))
          (_%g137026137089%_ _%stx137025%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self137021%_ _%stx137022%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self137021%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx137022%_)
        (gxc#generate-meta-define-values% _%self137021%_ _%stx137022%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self137018%_ _%stx137019%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self137018%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx137019%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp147211 (list)) (__tmp147210 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp147211
         '(src n open blocks)
         __tmp147210
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args137015%_
        (apply make-instance gxc#meta-state::t _%$args137015%_)))
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
      (lambda (_%self136360136999%_ _%ctx137001%_)
        (let* ((_%self137003%_ _%self136360136999%_)
               (_%self137005%_ _%self137003%_))
          (if (let ((__tmp147212
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self137005%_))))
                (declare (not safe))
                (##fx< '4 __tmp147212))
              (begin
                (let ((__tmp147213
                       (let ((__tmp147214
                              (##structure-ref
                               _%ctx137001%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp147214))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self137005%_
                   __tmp147213
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self137005%_ '1 '2 '#f '#f))
                (let ((__tmp147215
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self137005%_
                   __tmp147215
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self137005%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp147216
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self137005%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self137005%_
                       '4
                       __tmp147216))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp147218 (list)) (__tmp147217 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp147218
         '(ctx phi n code)
         __tmp147217
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args136874%_
        (apply make-instance gxc#meta-state-block::t _%$args136874%_)))
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
      (lambda (_%state136833%_ _%phi136834%_)
        (let* ((_%state136835136843%_ _%state136833%_)
               (_%E136837136847%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state136835136843%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K136838136856%_
                (lambda (_%open136850%_ _%n136851%_ _%src136852%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open136850%_ _%phi136834%_))
                      '#f
                      (let ((_%block-ref136854%_
                             (let ((__tmp147219 (number->string _%n136851%_)))
                               (declare (not safe))
                               (##string-append
                                _%src136852%_
                                '"~"
                                __tmp147219))))
                        (##structure-set!
                         _%state136833%_
                         (let () (declare (not safe)) (##fx+ _%n136851%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp147220
                               (let ((__tmp147221
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp147221
                                  _%phi136834%_
                                  _%n136851%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open136850%_ _%phi136834%_ __tmp147220))
                        _%block-ref136854%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state136835136843%_
                 'gxc#meta-state::t))
              (let* ((_%e136839136859%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state136835136843%_
                         '1
                         '#f
                         '#f)))
                     (_%src136862%_ _%e136839136859%_)
                     (_%e136840136864%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state136835136843%_
                         '2
                         '#f
                         '#f)))
                     (_%n136867%_ _%e136840136864%_)
                     (_%e136841136869%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state136835136843%_
                         '3
                         '#f
                         '#f)))
                     (_%open136872%_ _%e136841136869%_))
                (_%K136838136856%_ _%open136872%_ _%n136867%_ _%src136862%_))
              (_%E136837136847%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state136827%_ _%phi136828%_ _%stx136829%_)
        (let ((_%block136831%_
               (let ((__tmp147222
                      (##structure-ref
                       _%state136827%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp147222 _%phi136828%_))))
          (##structure-set!
           _%block136831%_
           (cons _%stx136829%_
                 (##structure-ref
                  _%block136831%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state136821%_)
        (##structure-set!
         _%state136821%_
         (let ((__tmp147225
                (lambda (_%_136823%_ _%block136824%_ _%r136825%_)
                  (cons _%block136824%_ _%r136825%_)))
               (__tmp147224
                (##structure-ref _%state136821%_ '4 gxc#meta-state::t '#f))
               (__tmp147223
                (##structure-ref _%state136821%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp147225 __tmp147224 __tmp147223))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state136821%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state136773%_)
        (gxc#meta-state-end-phi! _%state136773%_)
        (let ((__tmp147227
               (lambda (_%block136775%_ _%r136776%_)
                 (let* ((_%block136777136786%_ _%block136775%_)
                        (_%E136779136790%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block136777136786%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K136780136798%_
                         (lambda (_%code136793%_
                                  _%n136794%_
                                  _%phi136795%_
                                  _%ctx136796%_)
                           (if (null? _%code136793%_)
                               _%r136776%_
                               (cons (cons _%ctx136796%_
                                           (cons _%phi136795%_
                                                 (cons _%n136794%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code136793%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r136776%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block136777136786%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e136781136801%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block136777136786%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx136804%_ _%e136781136801%_)
                              (_%e136782136806%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block136777136786%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi136809%_ _%e136782136806%_)
                              (_%e136783136811%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block136777136786%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n136814%_ _%e136783136811%_)
                              (_%e136784136816%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block136777136786%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code136819%_ _%e136784136816%_))
                         (_%K136780136798%_
                          _%code136819%_
                          _%n136814%_
                          _%phi136809%_
                          _%ctx136804%_))
                       (_%E136779136790%_)))))
              (__tmp147226
               (##structure-ref _%state136773%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp147227 '() __tmp147226))))
    (define gxc#collect-expression-refs
      (lambda (_%stx136769%_)
        (let ((_%ht136771%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht136771%_ _%stx136769%_)
          _%ht136771%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self136712%_ _%stx136713%_)
        (let* ((_%g136715136728%_
                (lambda (_%g136716136725%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136716136725%_))))
               (_%g136714136766%_
                (lambda (_%g136716136731%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136716136731%_))
                      (let ((_%e136718136733%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136716136731%_))))
                        (let ((_%hd136719136736%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136718136733%_)))
                              (_%tl136720136738%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136718136733%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136720136738%_))
                              (let ((_%e136721136741%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136720136738%_))))
                                (let ((_%hd136722136744%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136721136741%_)))
                                      (_%tl136723136746%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136721136741%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl136723136746%_))
                                      ((lambda (_%L136749%_)
                                         (let* ((_%bind136761%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L136749%_)))
                                                (_%eid136763%_
                                                 (if _%bind136761%_
                                                     (##structure-ref
                                                      _%bind136761%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L136749%_))))
                                                (__tmp147228
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self136712%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp147228
                                            _%eid136763%_
                                            _%eid136763%_)))
                                       _%hd136722136744%_)
                                      (_%g136715136728%_ _%g136716136731%_))))
                              (_%g136715136728%_ _%g136716136731%_))))
                      (_%g136715136728%_ _%g136716136731%_)))))
          (_%g136714136766%_ _%stx136713%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self136639%_ _%stx136640%_)
        (let* ((_%g136642136659%_
                (lambda (_%g136643136656%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136643136656%_))))
               (_%g136641136709%_
                (lambda (_%g136643136662%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136643136662%_))
                      (let ((_%e136646136664%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136643136662%_))))
                        (let ((_%hd136647136667%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136646136664%_)))
                              (_%tl136648136669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136646136664%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136648136669%_))
                              (let ((_%e136649136672%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136648136669%_))))
                                (let ((_%hd136650136675%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136649136672%_)))
                                      (_%tl136651136677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136649136672%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136651136677%_))
                                      (let ((_%e136652136680%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136651136677%_))))
                                        (let ((_%hd136653136683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136652136680%_)))
                                              (_%tl136654136685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136652136680%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136654136685%_))
                                              ((lambda (_%L136688%_
                                                        _%L136689%_)
                                                 (let* ((_%bind136704%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L136689%_)))
                                                        (_%eid136706%_
                                                         (if _%bind136704%_
                                                             (##structure-ref
                                                              _%bind136704%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L136689%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp147229
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self136639%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp147229
                                                      _%eid136706%_
                                                      _%eid136706%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self136639%_
                                                      _%L136688%_))))
                                               _%hd136653136683%_
                                               _%hd136650136675%_)
                                              (_%g136642136659%_
                                               _%g136643136662%_))))
                                      (_%g136642136659%_ _%g136643136662%_))))
                              (_%g136642136659%_ _%g136643136662%_))))
                      (_%g136642136659%_ _%g136643136662%_)))))
          (_%g136641136709%_ _%stx136640%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self136596%_ _%stx136597%_)
        (let* ((_%g136599136609%_
                (lambda (_%g136600136606%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136600136606%_))))
               (_%g136598136636%_
                (lambda (_%g136600136612%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136600136612%_))
                      (let ((_%e136602136614%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136600136612%_))))
                        (let ((_%hd136603136617%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136602136614%_)))
                              (_%tl136604136619%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136602136614%_))))
                          ((lambda (_%L136622%_)
                             (let ((__tmp147230
                                    (lambda (_%g136631136633%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self136596%_
                                         _%g136631136633%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp147230 _%L136622%_)))
                           _%tl136604136619%_)))
                      (_%g136599136609%_ _%g136600136612%_)))))
          (_%g136598136636%_ _%stx136597%_))))
    (define gxc#count-values-single%
      (lambda (_%self136593%_ _%stx136594%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self136459%_ _%stx136460%_)
        (let* ((_%__stx146973146974%_ _%stx136460%_)
               (_%g136463136492%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx146973146974%_)))))
          (let ((_%__kont146975146976%_
                 (lambda (_%L136560%_ _%L136561%_)
                   (length (let ((__tmp147231
                                  (lambda (_%g136582136585%_ _%g136583136587%_)
                                    (cons _%g136582136585%_
                                          _%g136583136587%_))))
                             (declare (not safe))
                             (__foldr1 __tmp147231 '() _%L136560%_)))))
                (_%__kont146979146980%_ (lambda () '#f)))
            (let ((_%__match147018147019%_
                   (lambda (_%e136467136504%_
                            _%hd136468136507%_
                            _%tl136469136509%_
                            _%e136470136512%_
                            _%hd136471136515%_
                            _%tl136472136517%_
                            _%e136473136520%_
                            _%hd136474136523%_
                            _%tl136475136525%_
                            _%e136476136528%_
                            _%hd136477136531%_
                            _%tl136478136533%_
                            _%__splice146977146978%_
                            _%target136479136536%_
                            _%tl136481136538%_)
                     (letrec ((_%loop136482136541%_
                               (lambda (_%hd136480136544%_
                                        _%rand136486136546%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd136480136544%_))
                                     (let ((_%e136483136549%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd136480136544%_))))
                                       (let ((_%lp-tl136485136554%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e136483136549%_)))
                                             (_%lp-hd136484136552%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e136483136549%_))))
                                         (_%loop136482136541%_
                                          _%lp-tl136485136554%_
                                          (cons _%lp-hd136484136552%_
                                                _%rand136486136546%_))))
                                     (let ((_%rand136487136557%_
                                            (reverse _%rand136486136546%_)))
                                       (let ((_%L136560%_ _%rand136487136557%_)
                                             (_%L136561%_ _%hd136477136531%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L136561%_
                                                'values))
                                             (_%__kont146975146976%_
                                              _%L136560%_
                                              _%L136561%_)
                                             (_%__kont146979146980%_))))))))
                       (_%loop136482136541%_ _%target136479136536%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx146973146974%_))
                  (let ((_%e136467136504%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx146973146974%_))))
                    (let ((_%tl136469136509%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e136467136504%_)))
                          (_%hd136468136507%_
                           (let ()
                             (declare (not safe))
                             (##car _%e136467136504%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl136469136509%_))
                          (let ((_%e136470136512%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl136469136509%_))))
                            (let ((_%tl136472136517%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e136470136512%_)))
                                  (_%hd136471136515%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e136470136512%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd136471136515%_))
                                  (let ((_%e136473136520%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd136471136515%_))))
                                    (let ((_%tl136475136525%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e136473136520%_)))
                                          (_%hd136474136523%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e136473136520%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd136474136523%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd136474136523%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl136475136525%_))
                                                  (let ((_%e136476136528%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl136475136525%_))))
                                                    (let ((_%tl136478136533%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e136476136528%_)))
                                                          (_%hd136477136531%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e136476136528%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl136478136533%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl136472136517%_))
                      (let ((_%__splice146977146978%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl136472136517%_
                                '0))))
                        (let ((_%tl136481136538%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice146977146978%_ '1)))
                              (_%target136479136536%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice146977146978%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl136481136538%_))
                              (_%__match147018147019%_
                               _%e136467136504%_
                               _%hd136468136507%_
                               _%tl136469136509%_
                               _%e136470136512%_
                               _%hd136471136515%_
                               _%tl136472136517%_
                               _%e136473136520%_
                               _%hd136474136523%_
                               _%tl136475136525%_
                               _%e136476136528%_
                               _%hd136477136531%_
                               _%tl136478136533%_
                               _%__splice146977146978%_
                               _%target136479136536%_
                               _%tl136481136538%_)
                              (_%__kont146979146980%_))))
                      (_%__kont146979146980%_))
                  (_%__kont146979146980%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont146979146980%_))
                                              (_%__kont146979146980%_))
                                          (_%__kont146979146980%_))))
                                  (_%__kont146979146980%_))))
                          (_%__kont146979146980%_))))
                  (_%__kont146979146980%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self136362%_ _%stx136363%_)
        (let* ((_%g136365136386%_
                (lambda (_%g136366136383%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136366136383%_))))
               (_%g136364136456%_
                (lambda (_%g136366136389%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136366136389%_))
                      (let ((_%e136370136391%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136366136389%_))))
                        (let ((_%hd136371136394%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136370136391%_)))
                              (_%tl136372136396%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136370136391%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136372136396%_))
                              (let ((_%e136373136399%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136372136396%_))))
                                (let ((_%hd136374136402%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136373136399%_)))
                                      (_%tl136375136404%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136373136399%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136375136404%_))
                                      (let ((_%e136376136407%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136375136404%_))))
                                        (let ((_%hd136377136410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136376136407%_)))
                                              (_%tl136378136412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136376136407%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136378136412%_))
                                              (let ((_%e136379136415%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136378136412%_))))
                                                (let ((_%hd136380136418%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136379136415%_)))
                                                      (_%tl136381136420%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136379136415%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl136381136420%_))
                                                      ((lambda (_%L136423%_
                                                                _%L136424%_
                                                                _%L136425%_)
                                                         (let ((_%c1136442136444%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self136362%_ _%L136424%_))))
                   (if _%c1136442136444%_
                       (let* ((_%c1136447%_ _%c1136442136444%_)
                              (_%c2136448136450%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self136362%_
                                  _%L136423%_))))
                         (if _%c2136448136450%_
                             (let ((_%c2136453%_ _%c2136448136450%_))
                               (if (fx= _%c1136447%_ _%c2136453%_)
                                   _%c1136447%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd136380136418%_
               _%hd136377136410%_
               _%hd136374136402%_)
              (_%g136365136386%_ _%g136366136389%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g136365136386%_
                                               _%g136366136389%_))))
                                      (_%g136365136386%_ _%g136366136389%_))))
                              (_%g136365136386%_ _%g136366136389%_))))
                      (_%g136365136386%_ _%g136366136389%_)))))
          (_%g136364136456%_ _%stx136363%_))))))
