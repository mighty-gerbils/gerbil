(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1734279329)
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
        (letrec ((_%hash-e148657%_
                  (lambda (_%id148659%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id148659%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e148657%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp150044 (list gxc#::void::t))
            (__tmp150043 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp150044
         '()
         __tmp150043
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args148653%_
        (apply make-instance gxc#::collect-bindings::t _%$args148653%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp150045
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
        (__make-promise __tmp150045)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx148645%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self148648%_
                (let ((__obj150019
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj150019))
               (__tmp150046
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148648%_ _%stx148645%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150046
           gxc#current-compile-method
           _%self148648%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp150048 (list gxc#::void::t))
            (__tmp150047 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp150048
         '(modules)
         __tmp150047
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args148642%_
        (apply make-instance gxc#::lift-modules::t _%$args148642%_)))
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
      (let ((__tmp150049
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
        (__make-promise __tmp150049)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords148616%_ _%modules148613148617%_ _%stx148619%_)
        (let ((_%modules148622%_
               (if (eq? _%modules148613148617%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules148613148617%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self148624%_
                  (let ((__obj150021
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150021
                       _%modules148622%_
                       '1
                       '#f
                       '#f))
                    __obj150021))
                 (__tmp150050
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self148624%_ _%stx148619%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150050
             gxc#current-compile-method
             _%self148624%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords148631%_ . _%args148632%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords148631%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148631%_
                  'modules:
                  absent-value))
               _%args148632%_)))
    (define gxc#apply-lift-modules
      (lambda _%args148614148638%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args148614148638%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp150052 (list)) (__tmp150051 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp150052
         '()
         __tmp150051
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args148609%_
        (apply make-instance gxc#::find-runtime-code::t _%$args148609%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp150053
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
        (__make-promise __tmp150053)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx148601%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self148604%_
                (let ((__obj150023
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj150023))
               (__tmp150054
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148604%_ _%stx148601%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150054
           gxc#current-compile-method
           _%self148604%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp150056 (list gxc#::false::t))
            (__tmp150055 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp150056
         '()
         __tmp150055
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args148598%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args148598%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp150057
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
        (__make-promise __tmp150057)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx148590%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self148593%_
                (let ((__obj150025
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj150025))
               (__tmp150058
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148593%_ _%stx148590%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150058
           gxc#current-compile-method
           _%self148593%_))))
    (define gxc#::count-values::t
      (let ((__tmp150060 (list gxc#::false-expression::t))
            (__tmp150059 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp150060
         '()
         __tmp150059
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args148587%_
        (apply make-instance gxc#::count-values::t _%$args148587%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp150061
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
        (__make-promise __tmp150061)))
    (define gxc#apply-count-values
      (lambda (_%stx148579%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self148582%_
                (let ((__obj150027
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj150027))
               (__tmp150062
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148582%_ _%stx148579%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150062
           gxc#current-compile-method
           _%self148582%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp150063 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp150063
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args148576%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args148576%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp150064
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
        (__make-promise __tmp150064)))
    (define gxc#::generate-loader::t
      (let ((__tmp150066 (list gxc#::generate-runtime-empty::t))
            (__tmp150065 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp150066
         '()
         __tmp150065
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args148572%_
        (apply make-instance gxc#::generate-loader::t _%$args148572%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp150067
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
        (__make-promise __tmp150067)))
    (define gxc#apply-generate-loader
      (lambda (_%stx148564%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self148567%_
                (let ((__obj150030
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj150030))
               (__tmp150068
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148567%_ _%stx148564%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150068
           gxc#current-compile-method
           _%self148567%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp150069 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp150069
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args148561%_
        (apply make-instance gxc#::generate-runtime::t _%$args148561%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp150070
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
        (__make-promise __tmp150070)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx148553%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self148556%_
                (let ((__obj150032
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj150032))
               (__tmp150071
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148556%_ _%stx148553%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150071
           gxc#current-compile-method
           _%self148556%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp150073 (list gxc#::generate-runtime::t))
            (__tmp150072 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp150073
         '()
         __tmp150072
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args148550%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args148550%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp150074
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
        (__make-promise __tmp150074)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx148542%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self148545%_
                (let ((__obj150034
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj150034))
               (__tmp150075
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148545%_ _%stx148542%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150075
           gxc#current-compile-method
           _%self148545%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp150076 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp150076
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args148539%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args148539%_)))
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
      (let ((__tmp150077
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
        (__make-promise __tmp150077)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords148513%_ _%table148510148514%_ _%stx148516%_)
        (let ((_%table148519%_
               (if (eq? _%table148510148514%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table148510148514%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self148521%_
                  (let ((__obj150036
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150036
                       _%table148519%_
                       '1
                       '#f
                       '#f))
                    __obj150036))
                 (__tmp150078
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self148521%_ _%stx148516%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150078
             gxc#current-compile-method
             _%self148521%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords148528%_ . _%args148529%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords148528%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148528%_
                  'table:
                  absent-value))
               _%args148529%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args148511148535%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args148511148535%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp150080 (list gxc#::void-expression::t))
            (__tmp150079 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp150080
         '(state)
         __tmp150079
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args148506%_
        (apply make-instance gxc#::generate-meta::t _%$args148506%_)))
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
      (let ((__tmp150081
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
        (__make-promise __tmp150081)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords148480%_ _%state148477148481%_ _%stx148483%_)
        (let ((_%state148486%_
               (if (eq? _%state148477148481%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state148477148481%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self148488%_
                  (let ((__obj150038
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150038
                       _%state148486%_
                       '1
                       '#f
                       '#f))
                    __obj150038))
                 (__tmp150082
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self148488%_ _%stx148483%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150082
             gxc#current-compile-method
             _%self148488%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords148495%_ . _%args148496%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords148495%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148495%_
                  'state:
                  absent-value))
               _%args148496%_)))
    (define gxc#apply-generate-meta
      (lambda _%args148478148502%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args148478148502%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp150084 (list)) (__tmp150083 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp150084
         '(state)
         __tmp150083
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args148473%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args148473%_)))
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
      (let ((__tmp150085
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
        (__make-promise __tmp150085)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords148447%_ _%state148444148448%_ _%stx148450%_)
        (let ((_%state148453%_
               (if (eq? _%state148444148448%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state148444148448%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self148455%_
                  (let ((__obj150040
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150040
                       _%state148453%_
                       '1
                       '#f
                       '#f))
                    __obj150040))
                 (__tmp150086
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self148455%_ _%stx148450%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150086
             gxc#current-compile-method
             _%self148455%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords148462%_ . _%args148463%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords148462%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148462%_
                  'state:
                  absent-value))
               _%args148463%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args148445148469%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args148445148469%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self148373%_ _%stx148374%_)
        (let* ((_%g148376148393%_
                (lambda (_%g148377148390%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148377148390%_))))
               (_%g148375148440%_
                (lambda (_%g148377148396%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148377148396%_))
                      (let ((_%e148380148398%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148377148396%_))))
                        (let ((_%hd148381148401%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148380148398%_)))
                              (_%tl148382148403%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148380148398%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148382148403%_))
                              (let ((_%e148383148406%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148382148403%_))))
                                (let ((_%hd148384148409%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148383148406%_)))
                                      (_%tl148385148411%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148383148406%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148385148411%_))
                                      (let ((_%e148386148414%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148385148411%_))))
                                        (let ((_%hd148387148417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148386148414%_)))
                                              (_%tl148388148419%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148386148414%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148388148419%_))
                                              ((lambda (_%L148422%_
                                                        _%L148423%_)
                                                 (let ((__tmp150087
                                                        (lambda (_%bind148438%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind148438%_))
                      (gxc#add-module-binding! _%bind148438%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp150087
                                                    _%L148423%_)))
                                               _%hd148387148417%_
                                               _%hd148384148409%_)
                                              (_%g148376148393%_
                                               _%g148377148396%_))))
                                      (_%g148376148393%_ _%g148377148396%_))))
                              (_%g148376148393%_ _%g148377148396%_))))
                      (_%g148376148393%_ _%g148377148396%_)))))
          (_%g148375148440%_ _%stx148374%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self148305%_ _%stx148306%_)
        (let* ((_%g148308148325%_
                (lambda (_%g148309148322%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148309148322%_))))
               (_%g148307148370%_
                (lambda (_%g148309148328%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148309148328%_))
                      (let ((_%e148312148330%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148309148328%_))))
                        (let ((_%hd148313148333%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148312148330%_)))
                              (_%tl148314148335%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148312148330%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148314148335%_))
                              (let ((_%e148315148338%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148314148335%_))))
                                (let ((_%hd148316148341%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148315148338%_)))
                                      (_%tl148317148343%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148315148338%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148317148343%_))
                                      (let ((_%e148318148346%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148317148343%_))))
                                        (let ((_%hd148319148349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148318148346%_)))
                                              (_%tl148320148351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148318148346%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148320148351%_))
                                              ((lambda (_%L148354%_
                                                        _%L148355%_)
                                                 (gxc#add-module-binding!
                                                  _%L148355%_
                                                  '#t))
                                               _%hd148319148349%_
                                               _%hd148316148341%_)
                                              (_%g148308148325%_
                                               _%g148309148328%_))))
                                      (_%g148308148325%_ _%g148309148328%_))))
                              (_%g148308148325%_ _%g148309148328%_))))
                      (_%g148308148325%_ _%g148309148328%_)))))
          (_%g148307148370%_ _%stx148306%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self148247%_ _%stx148248%_)
        (let* ((_%g148250148264%_
                (lambda (_%g148251148261%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148251148261%_))))
               (_%g148249148302%_
                (lambda (_%g148251148267%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148251148267%_))
                      (let ((_%e148254148269%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148251148267%_))))
                        (let ((_%hd148255148272%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148254148269%_)))
                              (_%tl148256148274%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148254148269%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148256148274%_))
                              (let ((_%e148257148277%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148256148274%_))))
                                (let ((_%hd148258148280%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148257148277%_)))
                                      (_%tl148259148282%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148257148277%_))))
                                  ((lambda (_%L148285%_ _%L148286%_)
                                     (let ((_%ctx148299%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L148286%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self148247%_
                                           'modules))
                                        (cons _%ctx148299%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self148247%_
                                                        'modules)))))
                                       (let ((__tmp150088
                                              (lambda ()
                                                (let ((__tmp150089
                                                       (##structure-ref
                                                        _%ctx148299%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self148247%_
                                                   __tmp150089)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp150088
                                          gx#current-expander-context
                                          _%ctx148299%_))))
                                   _%tl148259148282%_
                                   _%hd148258148280%_)))
                              (_%g148250148264%_ _%g148251148267%_))))
                      (_%g148250148264%_ _%g148251148267%_)))))
          (_%g148249148302%_ _%stx148248%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls148200148202%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls148200148202%_
              (let ((_%decls148205%_ _%decls148200148202%_))
                (let _%lp148207%_ ((_%rest148209%_ _%decls148205%_))
                  (let* ((_%rest148210148218%_ _%rest148209%_)
                         (_%else148212148226%_ (lambda () '#f))
                         (_%K148214148235%_
                          (lambda (_%decls148229%_ _%decl148230%_)
                            (if (equal? _%decl148230%_ '(not safe))
                                '#t
                                (if (equal? _%decl148230%_ '(safe))
                                    '#f
                                    (_%lp148207%_ _%decls148229%_))))))
                    (if (pair? _%rest148210148218%_)
                        (let ((_%hd148215148238%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest148210148218%_)))
                              (_%tl148216148240%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest148210148218%_))))
                          (let* ((_%decl148243%_ _%hd148215148238%_)
                                 (_%decls148245%_ _%tl148216148240%_))
                            (_%K148214148235%_
                             _%decls148245%_
                             _%decl148243%_)))
                        (_%else148212148226%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id148194%_ _%syntax?148195%_)
        (let ((_%eid148197%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id148194%_))
                '1
                gx#binding::t
                '#f))
              (_%ht148198%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid148197%_))
              '#!void
              (let ((__tmp150090
                     (let ((__tmp150091
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid148197%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp150091 _%syntax?148195%_))))
                (declare (not safe))
                (hash-put! _%ht148198%_ _%eid148197%_ __tmp150090))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id148192%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id148192%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key148147%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key148147%_))
            _%key148147%_
            (if (uninterned-symbol? _%key148147%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key148147%_))
                (let* ((_%key148151148158%_ _%key148147%_)
                       (_%E148153148162%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key148151148158%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K148154148180%_
                        (lambda (_%mark148165%_ _%eid148166%_)
                          (let ((_%$e148168%_
                                 (##structure-ref
                                  _%mark148165%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e148168%_
                                ((lambda (_%ht148171%_)
                                   (let ((_%$e148173%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht148171%_
                                             _%eid148166%_))))
                                     (if _%$e148173%_
                                         ((lambda (_%id148176%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id148176%_))
                                                _%id148176%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id148176%_))))
                                          _%$e148173%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid148166%_))))
                                 _%$e148168%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid148166%_))))))
                  (if (pair? _%key148151148158%_)
                      (let ((_%hd148155148183%_
                             (let ()
                               (declare (not safe))
                               (##car _%key148151148158%_)))
                            (_%tl148156148185%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key148151148158%_))))
                        (let* ((_%eid148188%_ _%hd148155148183%_)
                               (_%mark148190%_ _%tl148156148185%_))
                          (_%K148154148180%_ _%mark148190%_ _%eid148188%_)))
                      (_%E148153148162%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self148144%_ _%stx148145%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self147991%_ _%stx147992%_)
        (letrec ((_%simplify147994%_
                  (lambda (_%body148042%_)
                    (let _%lp148044%_ ((_%rest148046%_ _%body148042%_)
                                       (_%r148047%_ '()))
                      (let* ((_%rest148048148056%_ _%rest148046%_)
                             (_%else148050148064%_
                              (lambda () (reverse _%r148047%_)))
                             (_%K148052148132%_
                              (lambda (_%rest148067%_ _%hd148068%_)
                                (let* ((_%hd148069148085%_ _%hd148068%_)
                                       (_%else148073148093%_
                                        (lambda ()
                                          (_%lp148044%_
                                           _%rest148067%_
                                           (cons _%hd148068%_ _%r148047%_)))))
                                  (let ((_%K148081148122%_
                                         (lambda (_%exprs148120%_)
                                           (_%lp148044%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest148067%_
                                               _%exprs148120%_))
                                            _%r148047%_)))
                                        (_%K148076148106%_
                                         (lambda ()
                                           (if (null? _%rest148067%_)
                                               (_%lp148044%_
                                                _%rest148067%_
                                                (cons _%hd148068%_
                                                      _%r148047%_))
                                               (_%lp148044%_
                                                _%rest148067%_
                                                _%r148047%_))))
                                        (_%K148075148098%_
                                         (lambda ()
                                           (if (null? _%rest148067%_)
                                               (_%lp148044%_
                                                _%rest148067%_
                                                (cons _%hd148068%_
                                                      _%r148047%_))
                                               (_%lp148044%_
                                                _%rest148067%_
                                                _%r148047%_)))))
                                    (let ((_%try-match148072148101%_
                                           (lambda ()
                                             (if (symbol? _%hd148069148085%_)
                                                 (_%K148075148098%_)
                                                 (_%else148073148093%_)))))
                                      (if (pair? _%hd148069148085%_)
                                          (let ((_%tl148083148127%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd148069148085%_)))
                                                (_%hd148082148125%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd148069148085%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd148082148125%_
                                                         'begin))
                                                (let ((_%exprs148130%_
                                                       _%tl148083148127%_))
                                                  (_%K148081148122%_
                                                   _%exprs148130%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd148082148125%_
                                                             'quote))
                                                    (if (pair? _%tl148083148127%_)
                                                        (let ((_%tl148080148114%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl148083148127%_))))
                  (if (null? _%tl148080148114%_)
                      (_%K148076148106%_)
                      (_%try-match148072148101%_)))
                (_%try-match148072148101%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match148072148101%_))))
                                          (_%try-match148072148101%_))))))))
                        (if (pair? _%rest148048148056%_)
                            (let ((_%hd148053148135%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest148048148056%_)))
                                  (_%tl148054148137%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest148048148056%_))))
                              (let* ((_%hd148140%_ _%hd148053148135%_)
                                     (_%rest148142%_ _%tl148054148137%_))
                                (_%K148052148132%_
                                 _%rest148142%_
                                 _%hd148140%_)))
                            (_%else148050148064%_)))))))
          (let* ((_%g147996148006%_
                  (lambda (_%g147997148003%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g147997148003%_))))
                 (_%g147995148039%_
                  (lambda (_%g147997148009%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g147997148009%_))
                        (let ((_%e147999148011%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g147997148009%_))))
                          (let ((_%hd148000148014%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e147999148011%_)))
                                (_%tl148001148016%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e147999148011%_))))
                            ((lambda (_%L148019%_)
                               (let* ((_%body148034%_
                                       (map (lambda (_%g148029148031%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self147991%_
                                                 _%g148029148031%_)))
                                            _%L148019%_))
                                      (_%body148036%_
                                       (_%simplify147994%_ _%body148034%_)))
                                 (if (let ((__tmp150092
                                            (length _%body148036%_)))
                                       (declare (not safe))
                                       (##fx= __tmp150092 '1))
                                     (car _%body148036%_)
                                     (cons 'begin _%body148036%_))))
                             _%tl148001148016%_)))
                        (_%g147996148006%_ _%g147997148009%_)))))
            (_%g147995148039%_ _%stx147992%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self147952%_ _%stx147953%_)
        (let* ((_%g147955147965%_
                (lambda (_%g147956147962%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147956147962%_))))
               (_%g147954147988%_
                (lambda (_%g147956147968%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147956147968%_))
                      (let ((_%e147958147970%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147956147968%_))))
                        (let ((_%hd147959147973%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147958147970%_)))
                              (_%tl147960147975%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147958147970%_))))
                          ((lambda (_%L147978%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L147978%_))))
                           _%tl147960147975%_)))
                      (_%g147955147965%_ _%g147956147968%_)))))
          (_%g147954147988%_ _%stx147953%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self147716%_ _%stx147717%_)
        (let* ((_%__stx148682148683%_ _%stx147717%_)
               (_%g147721147773%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx148682148683%_)))))
          (let ((_%__kont148684148685%_
                 (lambda (_%L147934%_ _%L147935%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self147716%_ _%L147934%_))))
                (_%__kont148686148687%_
                 (lambda (_%L147882%_ _%L147883%_ _%L147884%_)
                   (if (let ((__tmp150093
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L147884%_))))
                         (declare (not safe))
                         (##memq __tmp150093 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self147716%_ _%L147882%_)))))
                (_%__kont148690148691%_
                 (lambda (_%L147802%_ _%L147803%_)
                   (let ((_%decls147818%_ (map gx#syntax->datum _%L147803%_)))
                     (let ((__tmp150096
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls147818%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self147716%_
                                                   _%L147802%_))
                                                '())))))
                           (__tmp150094
                            (let ((__tmp150095
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp150095 _%decls147818%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp150096
                        gxc#current-compile-decls
                        __tmp150094))))))
            (let* ((_%__match148737148738%_
                    (lambda (_%e147737147826%_
                             _%hd147738147829%_
                             _%tl147739147831%_
                             _%e147740147834%_
                             _%hd147741147837%_
                             _%tl147742147839%_
                             _%e147743147842%_
                             _%hd147744147845%_
                             _%tl147745147847%_
                             _%__splice148688148689%_
                             _%target147746147850%_
                             _%tl147748147852%_)
                      (letrec ((_%loop147749147855%_
                                (lambda (_%hd147747147858%_
                                         _%param147753147860%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd147747147858%_))
                                      (let ((_%e147750147863%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd147747147858%_))))
                                        (let ((_%lp-tl147752147868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147750147863%_)))
                                              (_%lp-hd147751147866%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147750147863%_))))
                                          (_%loop147749147855%_
                                           _%lp-tl147752147868%_
                                           (cons _%lp-hd147751147866%_
                                                 _%param147753147860%_))))
                                      (let ((_%param147754147871%_
                                             (reverse _%param147753147860%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl147742147839%_))
                                            (let ((_%e147755147874%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl147742147839%_))))
                                              (let ((_%tl147757147879%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e147755147874%_)))
                                                    (_%hd147756147877%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e147755147874%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl147757147879%_))
                                                    (let ((_%L147882%_
                                                           _%hd147756147877%_)
                                                          (_%L147883%_
                                                           _%param147754147871%_)
                                                          (_%L147884%_
                                                           _%hd147744147845%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L147884%_))
                       (not (let ((__tmp150097
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L147884%_))))
                              (declare (not safe))
                              (##memq __tmp150097 gxc#gambit-annotations))))
                  (_%__kont148686148687%_ _%L147882%_ _%L147883%_ _%L147884%_)
                  (_%__kont148690148691%_
                   _%hd147756147877%_
                   _%hd147741147837%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g147721147773%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g147721147773%_))))))))
                        (_%loop147749147855%_ _%target147746147850%_ '()))))
                   (_%__match148711148712%_
                    (lambda (_%e147725147910%_
                             _%hd147726147913%_
                             _%tl147727147915%_
                             _%e147728147918%_
                             _%hd147729147921%_
                             _%tl147730147923%_
                             _%e147731147926%_
                             _%hd147732147929%_
                             _%tl147733147931%_)
                      (let ((_%L147934%_ _%hd147732147929%_)
                            (_%L147935%_ _%hd147729147921%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L147935%_))
                            (_%__kont148684148685%_ _%L147934%_ _%L147935%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd147729147921%_))
                                (let ((_%e147743147842%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd147729147921%_))))
                                  (let ((_%tl147745147847%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e147743147842%_)))
                                        (_%hd147744147845%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e147743147842%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl147745147847%_))
                                        (let ((_%__splice148688148689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl147745147847%_
                                                  '0))))
                                          (let ((_%tl147748147852%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice148688148689%_
                                                    '1)))
                                                (_%target147746147850%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice148688148689%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl147748147852%_))
                                                (_%__match148737148738%_
                                                 _%e147725147910%_
                                                 _%hd147726147913%_
                                                 _%tl147727147915%_
                                                 _%e147728147918%_
                                                 _%hd147729147921%_
                                                 _%tl147730147923%_
                                                 _%e147743147842%_
                                                 _%hd147744147845%_
                                                 _%tl147745147847%_
                                                 _%__splice148688148689%_
                                                 _%target147746147850%_
                                                 _%tl147748147852%_)
                                                (_%__kont148690148691%_
                                                 _%hd147732147929%_
                                                 _%hd147729147921%_))))
                                        (_%__kont148690148691%_
                                         _%hd147732147929%_
                                         _%hd147729147921%_))))
                                (_%__kont148690148691%_
                                 _%hd147732147929%_
                                 _%hd147729147921%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx148682148683%_))
                  (let ((_%e147725147910%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx148682148683%_))))
                    (let ((_%tl147727147915%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e147725147910%_)))
                          (_%hd147726147913%_
                           (let ()
                             (declare (not safe))
                             (##car _%e147725147910%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl147727147915%_))
                          (let ((_%e147728147918%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl147727147915%_))))
                            (let ((_%tl147730147923%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e147728147918%_)))
                                  (_%hd147729147921%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e147728147918%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl147730147923%_))
                                  (let ((_%e147731147926%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl147730147923%_))))
                                    (let ((_%tl147733147931%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e147731147926%_)))
                                          (_%hd147732147929%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e147731147926%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl147733147931%_))
                                          (_%__match148711148712%_
                                           _%e147725147910%_
                                           _%hd147726147913%_
                                           _%tl147727147915%_
                                           _%e147728147918%_
                                           _%hd147729147921%_
                                           _%tl147730147923%_
                                           _%e147731147926%_
                                           _%hd147732147929%_
                                           _%tl147733147931%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd147729147921%_))
                                              (let ((_%e147743147842%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd147729147921%_))))
                                                (let ((_%tl147745147847%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e147743147842%_)))
                                                      (_%hd147744147845%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e147743147842%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl147745147847%_))
                                                      (let ((_%__splice148688148689%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl147745147847%_ '0))))
                (let ((_%tl147748147852%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice148688148689%_ '1)))
                      (_%target147746147850%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice148688148689%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl147748147852%_))
                      (_%__match148737148738%_
                       _%e147725147910%_
                       _%hd147726147913%_
                       _%tl147727147915%_
                       _%e147728147918%_
                       _%hd147729147921%_
                       _%tl147730147923%_
                       _%e147743147842%_
                       _%hd147744147845%_
                       _%tl147745147847%_
                       _%__splice148688148689%_
                       _%target147746147850%_
                       _%tl147748147852%_)
                      (let () (declare (not safe)) (_%g147721147773%_)))))
              (let () (declare (not safe)) (_%g147721147773%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g147721147773%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd147729147921%_))
                                      (let ((_%e147743147842%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd147729147921%_))))
                                        (let ((_%tl147745147847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147743147842%_)))
                                              (_%hd147744147845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147743147842%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl147745147847%_))
                                              (let ((_%__splice148688148689%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl147745147847%_
                                                        '0))))
                                                (let ((_%tl147748147852%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice148688148689%_
                                                          '1)))
                                                      (_%target147746147850%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice148688148689%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl147748147852%_))
                                                      (_%__match148737148738%_
                                                       _%e147725147910%_
                                                       _%hd147726147913%_
                                                       _%tl147727147915%_
                                                       _%e147728147918%_
                                                       _%hd147729147921%_
                                                       _%tl147730147923%_
                                                       _%e147743147842%_
                                                       _%hd147744147845%_
                                                       _%tl147745147847%_
                                                       _%__splice148688148689%_
                                                       _%target147746147850%_
                                                       _%tl147748147852%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g147721147773%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g147721147773%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g147721147773%_))))))
                          (let () (declare (not safe)) (_%g147721147773%_)))))
                  (let () (declare (not safe)) (_%g147721147773%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self147675%_ _%stx147676%_)
        (let* ((_%g147678147688%_
                (lambda (_%g147679147685%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147679147685%_))))
               (_%g147677147713%_
                (lambda (_%g147679147691%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147679147691%_))
                      (let ((_%e147681147693%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147679147691%_))))
                        (let ((_%hd147682147696%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147681147693%_)))
                              (_%tl147683147698%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147681147693%_))))
                          ((lambda (_%L147701%_)
                             (let ((_%decls147711%_
                                    (map gx#syntax->datum _%L147701%_)))
                               (let ((__tmp150098
                                      (let ((__tmp150099
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp150099
                                         _%decls147711%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp150098))
                               (cons 'declare _%decls147711%_)))
                           _%tl147683147698%_)))
                      (_%g147678147688%_ _%g147679147691%_)))))
          (_%g147677147713%_ _%stx147676%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self147421%_ _%stx147422%_)
        (let* ((_%g147424147441%_
                (lambda (_%g147425147438%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147425147438%_))))
               (_%g147423147672%_
                (lambda (_%g147425147444%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147425147444%_))
                      (let ((_%e147428147446%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147425147444%_))))
                        (let ((_%hd147429147449%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147428147446%_)))
                              (_%tl147430147451%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147428147446%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147430147451%_))
                              (let ((_%e147431147454%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147430147451%_))))
                                (let ((_%hd147432147457%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147431147454%_)))
                                      (_%tl147433147459%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147431147454%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147433147459%_))
                                      (let ((_%e147434147462%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147433147459%_))))
                                        (let ((_%hd147435147465%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147434147462%_)))
                                              (_%tl147436147467%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147434147462%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147436147467%_))
                                              ((lambda (_%L147470%_
                                                        _%L147471%_)
                                                 (let* ((_%__stx148790148791%_
                                                         _%L147471%_)
                                                        (_%g147488147502%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx148790148791%_)))))
                                                   (let ((_%__kont148792148793%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self147421%_
                                                               _%L147470%_))))
                                                         (_%__kont148794148795%_
                                                          (lambda (_%L147634%_)
                                                            (let ((_%eid147643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L147634%_))))
                      (let ((_%lambda-expr147644147646%_
                             (gxc#apply-find-lambda-expression _%L147470%_)))
                        (if _%lambda-expr147644147646%_
                            (let* ((_%lambda-expr147649%_
                                    _%lambda-expr147644147646%_)
                                   (__tmp150100
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp150100
                               _%lambda-expr147649%_
                               _%eid147643%_))
                            '#f))
                      (cons 'define
                            (cons _%eid147643%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self147421%_
                                           _%L147470%_))
                                        '()))))))
                 (_%__kont148796148797%_
                  (lambda ()
                    (let* ((_%tmp147509%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body147618%_
                            (let _%lp147511%_ ((_%rest147513%_ _%L147471%_)
                                               (_%k147514%_ '0)
                                               (_%r147515%_ '()))
                              (let* ((_%__stx148760148761%_ _%rest147513%_)
                                     (_%g147520147537%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx148760148761%_)))))
                                (let ((_%__kont148762148763%_
                                       (lambda (_%L147605%_)
                                         (_%lp147511%_
                                          _%L147605%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k147514%_ '1))
                                          _%r147515%_)))
                                      (_%__kont148764148765%_
                                       (lambda (_%L147578%_ _%L147579%_)
                                         (_%lp147511%_
                                          _%L147578%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k147514%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L147579%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp147509%_
                           _%k147514%_
                           _%L147578%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r147515%_))))
                                      (_%__kont148766148767%_
                                       (lambda (_%L147549%_)
                                         (let ((__tmp150101
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L147549%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp147509%_
                                 _%k147514%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp150101
                                            _%r147515%_))))
                                      (_%__kont148768148769%_
                                       (lambda () (reverse _%r147515%_))))
                                  (let ((_%g147518147565%_
                                         (lambda ()
                                           (let ((_%L147549%_
                                                  _%__stx148760148761%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L147549%_))
                                                 (_%__kont148766148767%_
                                                  _%L147549%_)
                                                 (_%__kont148768148769%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx148760148761%_))
                                        (let ((_%e147523147594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx148760148761%_))))
                                          (let ((_%tl147525147599%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e147523147594%_)))
                                                (_%hd147524147597%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e147523147594%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd147524147597%_))
                                                (let ((_%e147526147602%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd147524147597%_))))
                                                  (if (equal? _%e147526147602%_
                                                              '#f)
                                                      (_%__kont148762148763%_
                                                       _%tl147525147599%_)
                                                      (_%__kont148764148765%_
                                                       _%tl147525147599%_
                                                       _%hd147524147597%_)))
                                                (_%__kont148764148765%_
                                                 _%tl147525147599%_
                                                 _%hd147524147597%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g147518147565%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp147509%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self147421%_
                                                       _%L147470%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp147509%_
                                         _%L147471%_
                                         _%L147470%_)
                                        _%body147618%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx148790148791%_))
                                                         (let ((_%e147490147656%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx148790148791%_))))
                   (let ((_%tl147492147661%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e147490147656%_)))
                         (_%hd147491147659%_
                          (let ()
                            (declare (not safe))
                            (##car _%e147490147656%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd147491147659%_))
                         (let ((_%e147493147664%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd147491147659%_))))
                           (if (equal? _%e147493147664%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl147492147661%_))
                                   (_%__kont148792148793%_)
                                   (_%__kont148796148797%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl147492147661%_))
                                   (_%__kont148794148795%_ _%hd147491147659%_)
                                   (_%__kont148796148797%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl147492147661%_))
                             (_%__kont148794148795%_ _%hd147491147659%_)
                             (_%__kont148796148797%_)))))
                 (_%__kont148796148797%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd147435147465%_
                                               _%hd147432147457%_)
                                              (_%g147424147441%_
                                               _%g147425147444%_))))
                                      (_%g147424147441%_ _%g147425147444%_))))
                              (_%g147424147441%_ _%g147425147444%_))))
                      (_%g147424147441%_ _%g147425147444%_)))))
          (_%g147423147672%_ _%stx147422%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals147396%_ _%hd147397%_ _%expr147398%_)
        (let ((_%$e147400%_ (gxc#apply-count-values _%expr147398%_)))
          (if _%$e147400%_
              ((lambda (_%count147403%_)
                 (let ((_%len147405%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd147397%_)))
                       (_%cmp147406%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd147397%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len147405%_ '0))
                           (_%cmp147406%_ _%count147403%_ _%len147405%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr147398%_
                          _%hd147397%_)))))
               _%$e147400%_)
              (let* ((_%len147412%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd147397%_)))
                     (_%cmp147414%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd147397%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg147416%_
                      (let ((__tmp150103
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd147397%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp150102 (number->string _%len147412%_)))
                        (declare (not safe))
                        (##string-append __tmp150103 __tmp150102 '" values")))
                     (_%count147418%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd147397%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len147412%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count147418%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals147396%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp147414%_
                                (cons _%count147418%_
                                      (cons _%len147412%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp147414%_
                                                        (cons _%count147418%_
                                                              (cons _%len147412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg147416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count147418%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var147391%_)
        (letrec ((_%generate-inline147393%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var147391%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var147391%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline147393%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline147393%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var147384%_ _%i147385%_ _%rest147386%_)
        (letrec ((_%generate-inline147388%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i147385%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest147386%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var147384%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var147384%_
                                                      (cons '0 '())))
                                          (cons _%var147384%_ '()))))
                        (cons '##values-ref
                              (cons _%var147384%_ (cons _%i147385%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline147388%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline147388%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var147378%_ _%i147379%_)
        (if (let () (declare (not safe)) (##fx= _%i147379%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var147378%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var147378%_ '()))
                                  (cons (cons 'list (cons _%var147378%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var147378%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var147378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var147378%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i147379%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var147378%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var147378%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var147378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var147378%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var147378%_ '()))
                                (cons _%i147379%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var147378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i147379%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self147310%_ _%stx147311%_)
        (let* ((_%g147313147330%_
                (lambda (_%g147314147327%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147314147327%_))))
               (_%g147312147375%_
                (lambda (_%g147314147333%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147314147333%_))
                      (let ((_%e147317147335%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147314147333%_))))
                        (let ((_%hd147318147338%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147317147335%_)))
                              (_%tl147319147340%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147317147335%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147319147340%_))
                              (let ((_%e147320147343%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147319147340%_))))
                                (let ((_%hd147321147346%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147320147343%_)))
                                      (_%tl147322147348%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147320147343%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147322147348%_))
                                      (let ((_%e147323147351%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147322147348%_))))
                                        (let ((_%hd147324147354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147323147351%_)))
                                              (_%tl147325147356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147323147351%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147325147356%_))
                                              ((lambda (_%L147359%_
                                                        _%L147360%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self147310%_
                                                  _%L147360%_
                                                  _%L147359%_))
                                               _%hd147324147354%_
                                               _%hd147321147346%_)
                                              (_%g147313147330%_
                                               _%g147314147333%_))))
                                      (_%g147313147330%_ _%g147314147333%_))))
                              (_%g147313147330%_ _%g147314147333%_))))
                      (_%g147313147330%_ _%g147314147333%_)))))
          (_%g147312147375%_ _%stx147311%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self147269%_ _%hd147270%_ _%body147271%_)
        (let* ((_%hd147273%_ (gxc#generate-runtime-lambda-head _%hd147270%_))
               (_%body147275%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self147269%_ _%body147271%_)))
               (_%body147307%_
                (let* ((_%body147276147284%_ _%body147275%_)
                       (_%else147278147292%_
                        (lambda () (cons _%body147275%_ '())))
                       (_%K147280147297%_
                        (lambda (_%exprs147295%_) _%exprs147295%_)))
                  (if (pair? _%body147276147284%_)
                      (let ((_%hd147281147300%_
                             (let ()
                               (declare (not safe))
                               (##car _%body147276147284%_)))
                            (_%tl147282147302%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body147276147284%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd147281147300%_ 'begin))
                            (let ((_%exprs147305%_ _%tl147282147302%_))
                              (_%K147280147297%_ _%exprs147305%_))
                            (_%else147278147292%_)))
                      (_%else147278147292%_)))))
          (cons 'lambda (cons _%hd147273%_ _%body147307%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd147267%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd147267%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self145806%_ _%stx145807%_)
        (letrec ((_%dispatch-case?145809%_
                  (lambda (_%hd146497%_ _%body146498%_)
                    (let* ((_%form146500%_
                            (cons _%hd146497%_ (cons _%body146498%_ '())))
                           (_%__stx148822148823%_ _%form146500%_)
                           (_%g146505146662%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx148822148823%_)))))
                      (let ((_%__kont148824148825%_
                             (lambda (_%L147187%_ _%L147188%_ _%L147189%_)
                               '#t))
                            (_%__kont148830148831%_
                             (lambda (_%L146975%_
                                      _%L146976%_
                                      _%L146977%_
                                      _%L146978%_
                                      _%L146979%_
                                      _%L146980%_)
                               '#t))
                            (_%__kont148836148837%_
                             (lambda (_%L146770%_
                                      _%L146771%_
                                      _%L146772%_
                                      _%L146773%_)
                               '#t))
                            (_%__kont148838148839%_ (lambda () '#f)))
                        (let* ((_%__match148963148964%_
                                (lambda (_%e146622146674%_
                                         _%hd146623146677%_
                                         _%tl146624146679%_
                                         _%e146625146682%_
                                         _%hd146626146685%_
                                         _%tl146627146687%_
                                         _%e146628146690%_
                                         _%hd146629146693%_
                                         _%tl146630146695%_
                                         _%e146631146698%_
                                         _%hd146632146701%_
                                         _%tl146633146703%_
                                         _%e146634146706%_
                                         _%hd146635146709%_
                                         _%tl146636146711%_
                                         _%e146637146714%_
                                         _%hd146638146717%_
                                         _%tl146639146719%_
                                         _%e146640146722%_
                                         _%hd146641146725%_
                                         _%tl146642146727%_
                                         _%e146643146730%_
                                         _%hd146644146733%_
                                         _%tl146645146735%_
                                         _%e146646146738%_
                                         _%hd146647146741%_
                                         _%tl146648146743%_
                                         _%e146649146746%_
                                         _%hd146650146749%_
                                         _%tl146651146751%_
                                         _%e146652146754%_
                                         _%hd146653146757%_
                                         _%tl146654146759%_
                                         _%e146655146762%_
                                         _%hd146656146765%_
                                         _%tl146657146767%_)
                                  (let ((_%L146770%_ _%hd146656146765%_)
                                        (_%L146771%_ _%hd146647146741%_)
                                        (_%L146772%_ _%hd146638146717%_)
                                        (_%L146773%_ _%hd146623146677%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L146773%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L146772%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L146773%_
                                                _%L146770%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L146771%_
                                                     _%L146773%_))))
                                        (_%__kont148836148837%_
                                         _%L146770%_
                                         _%L146771%_
                                         _%L146772%_
                                         _%L146773%_)
                                        (_%__kont148838148839%_)))))
                               (_%__match148935148936%_
                                (lambda (_%e146622146674%_
                                         _%hd146623146677%_
                                         _%tl146624146679%_
                                         _%e146625146682%_
                                         _%hd146626146685%_
                                         _%tl146627146687%_
                                         _%e146628146690%_
                                         _%hd146629146693%_
                                         _%tl146630146695%_
                                         _%e146631146698%_
                                         _%hd146632146701%_
                                         _%tl146633146703%_
                                         _%e146634146706%_
                                         _%hd146635146709%_
                                         _%tl146636146711%_
                                         _%e146637146714%_
                                         _%hd146638146717%_
                                         _%tl146639146719%_
                                         _%e146640146722%_
                                         _%hd146641146725%_
                                         _%tl146642146727%_
                                         _%e146643146730%_
                                         _%hd146644146733%_
                                         _%tl146645146735%_
                                         _%e146646146738%_
                                         _%hd146647146741%_
                                         _%tl146648146743%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146642146727%_))
                                      (let ((_%e146649146746%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146642146727%_))))
                                        (let ((_%tl146651146751%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146649146746%_)))
                                              (_%hd146650146749%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146649146746%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd146650146749%_))
                                              (let ((_%e146652146754%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd146650146749%_))))
                                                (let ((_%tl146654146759%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146652146754%_)))
                                                      (_%hd146653146757%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146652146754%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd146653146757%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd146653146757%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl146654146759%_))
                      (let ((_%e146655146762%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl146654146759%_))))
                        (let ((_%tl146657146767%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146655146762%_)))
                              (_%hd146656146765%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146655146762%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl146657146767%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl146651146751%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl146627146687%_))
                                      (_%__match148963148964%_
                                       _%e146622146674%_
                                       _%hd146623146677%_
                                       _%tl146624146679%_
                                       _%e146625146682%_
                                       _%hd146626146685%_
                                       _%tl146627146687%_
                                       _%e146628146690%_
                                       _%hd146629146693%_
                                       _%tl146630146695%_
                                       _%e146631146698%_
                                       _%hd146632146701%_
                                       _%tl146633146703%_
                                       _%e146634146706%_
                                       _%hd146635146709%_
                                       _%tl146636146711%_
                                       _%e146637146714%_
                                       _%hd146638146717%_
                                       _%tl146639146719%_
                                       _%e146640146722%_
                                       _%hd146641146725%_
                                       _%tl146642146727%_
                                       _%e146643146730%_
                                       _%hd146644146733%_
                                       _%tl146645146735%_
                                       _%e146646146738%_
                                       _%hd146647146741%_
                                       _%tl146648146743%_
                                       _%e146649146746%_
                                       _%hd146650146749%_
                                       _%tl146651146751%_
                                       _%e146652146754%_
                                       _%hd146653146757%_
                                       _%tl146654146759%_
                                       _%e146655146762%_
                                       _%hd146656146765%_
                                       _%tl146657146767%_)
                                      (_%__kont148838148839%_))
                                  (_%__kont148838148839%_))
                              (_%__kont148838148839%_))))
                      (_%__kont148838148839%_))
                  (_%__kont148838148839%_))
              (_%__kont148838148839%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont148838148839%_))))
                                      (_%__kont148838148839%_))))
                               (_%__match148865148866%_
                                (lambda (_%e146558146815%_
                                         _%hd146559146818%_
                                         _%tl146560146820%_
                                         _%__splice148832148833%_
                                         _%target146561146823%_
                                         _%tl146563146825%_)
                                  (letrec ((_%loop146564146828%_
                                            (lambda (_%hd146562146831%_
                                                     _%arg146568146833%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146562146831%_))
                                                  (let ((_%e146565146836%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146562146831%_))))
                                                    (let ((_%lp-tl146567146841%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146565146836%_)))
                                                          (_%lp-hd146566146839%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146565146836%_))))
                                                      (_%loop146564146828%_
                                                       _%lp-tl146567146841%_
                                                       (cons _%lp-hd146566146839%_
                                                             _%arg146568146833%_))))
                                                  (let ((_%arg146569146844%_
                                                         (reverse _%arg146568146833%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl146560146820%_))
                                                        (let ((_%e146570146847%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl146560146820%_))))
                  (let ((_%tl146572146852%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146570146847%_)))
                        (_%hd146571146850%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146570146847%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd146571146850%_))
                        (let ((_%e146573146855%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd146571146850%_))))
                          (let ((_%tl146575146860%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146573146855%_)))
                                (_%hd146574146858%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146573146855%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146574146858%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd146574146858%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146575146860%_))
                                        (let ((_%e146576146863%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146575146860%_))))
                                          (let ((_%tl146578146868%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146576146863%_)))
                                                (_%hd146577146866%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146576146863%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd146577146866%_))
                                                (let ((_%e146579146871%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146577146866%_))))
                                                  (let ((_%tl146581146876%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e146579146871%_)))
                                                        (_%hd146580146874%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e146579146871%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd146580146874%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd146580146874%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl146581146876%_))
                        (let ((_%e146582146879%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl146581146876%_))))
                          (let ((_%tl146584146884%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146582146879%_)))
                                (_%hd146583146882%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146582146879%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146584146884%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl146578146868%_))
                                    (let ((_%e146585146887%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl146578146868%_))))
                                      (let ((_%tl146587146892%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e146585146887%_)))
                                            (_%hd146586146890%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e146585146887%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd146586146890%_))
                                            (let ((_%e146588146895%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd146586146890%_))))
                                              (let ((_%tl146590146900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146588146895%_)))
                                                    (_%hd146589146898%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146588146895%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd146589146898%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd146589146898%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl146590146900%_))
                                                            (let ((_%e146591146903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl146590146900%_))))
                      (let ((_%tl146593146908%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e146591146903%_)))
                            (_%hd146592146906%_
                             (let ()
                               (declare (not safe))
                               (##car _%e146591146903%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl146593146908%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl146587146892%_))
                                (if (let ((__tmp150104
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl146587146892%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp150104 '1))
                                    (let ((_%__splice148834148835%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl146587146892%_
                                              '1))))
                                      (let ((_%tl146596146913%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148834148835%_
                                                '1)))
                                            (_%target146594146911%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148834148835%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl146596146913%_))
                                            (let ((_%e146603146916%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl146596146913%_))))
                                              (let ((_%tl146605146921%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146603146916%_)))
                                                    (_%hd146604146919%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146603146916%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd146604146919%_))
                                                    (let ((_%e146606146924%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd146604146919%_))))
                                                      (let ((_%tl146608146929%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e146606146924%_)))
                    (_%hd146607146927%_
                     (let () (declare (not safe)) (##car _%e146606146924%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd146607146927%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd146607146927%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl146608146929%_))
                            (let ((_%e146609146932%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl146608146929%_))))
                              (let ((_%tl146611146937%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e146609146932%_)))
                                    (_%hd146610146935%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e146609146932%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl146611146937%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl146605146921%_))
                                        (letrec ((_%loop146597146940%_
                                                  (lambda (_%hd146595146943%_
                                                           _%xarg146601146945%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd146595146943%_))
                                                        (let ((_%e146598146948%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd146595146943%_))))
                  (let ((_%lp-tl146600146953%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146598146948%_)))
                        (_%lp-hd146599146951%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146598146948%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd146599146951%_))
                        (let ((_%e146612146956%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd146599146951%_))))
                          (let ((_%tl146614146961%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146612146956%_)))
                                (_%hd146613146959%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146612146956%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146613146959%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd146613146959%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146614146961%_))
                                        (let ((_%e146615146964%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146614146961%_))))
                                          (let ((_%tl146617146969%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146615146964%_)))
                                                (_%hd146616146967%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146615146964%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl146617146969%_))
                                                (_%loop146597146940%_
                                                 _%lp-tl146600146953%_
                                                 (cons _%hd146616146967%_
                                                       _%xarg146601146945%_))
                                                (_%__match148935148936%_
                                                 _%e146558146815%_
                                                 _%hd146559146818%_
                                                 _%tl146560146820%_
                                                 _%e146570146847%_
                                                 _%hd146571146850%_
                                                 _%tl146572146852%_
                                                 _%e146573146855%_
                                                 _%hd146574146858%_
                                                 _%tl146575146860%_
                                                 _%e146576146863%_
                                                 _%hd146577146866%_
                                                 _%tl146578146868%_
                                                 _%e146579146871%_
                                                 _%hd146580146874%_
                                                 _%tl146581146876%_
                                                 _%e146582146879%_
                                                 _%hd146583146882%_
                                                 _%tl146584146884%_
                                                 _%e146585146887%_
                                                 _%hd146586146890%_
                                                 _%tl146587146892%_
                                                 _%e146588146895%_
                                                 _%hd146589146898%_
                                                 _%tl146590146900%_
                                                 _%e146591146903%_
                                                 _%hd146592146906%_
                                                 _%tl146593146908%_))))
                                        (_%__match148935148936%_
                                         _%e146558146815%_
                                         _%hd146559146818%_
                                         _%tl146560146820%_
                                         _%e146570146847%_
                                         _%hd146571146850%_
                                         _%tl146572146852%_
                                         _%e146573146855%_
                                         _%hd146574146858%_
                                         _%tl146575146860%_
                                         _%e146576146863%_
                                         _%hd146577146866%_
                                         _%tl146578146868%_
                                         _%e146579146871%_
                                         _%hd146580146874%_
                                         _%tl146581146876%_
                                         _%e146582146879%_
                                         _%hd146583146882%_
                                         _%tl146584146884%_
                                         _%e146585146887%_
                                         _%hd146586146890%_
                                         _%tl146587146892%_
                                         _%e146588146895%_
                                         _%hd146589146898%_
                                         _%tl146590146900%_
                                         _%e146591146903%_
                                         _%hd146592146906%_
                                         _%tl146593146908%_))
                                    (_%__match148935148936%_
                                     _%e146558146815%_
                                     _%hd146559146818%_
                                     _%tl146560146820%_
                                     _%e146570146847%_
                                     _%hd146571146850%_
                                     _%tl146572146852%_
                                     _%e146573146855%_
                                     _%hd146574146858%_
                                     _%tl146575146860%_
                                     _%e146576146863%_
                                     _%hd146577146866%_
                                     _%tl146578146868%_
                                     _%e146579146871%_
                                     _%hd146580146874%_
                                     _%tl146581146876%_
                                     _%e146582146879%_
                                     _%hd146583146882%_
                                     _%tl146584146884%_
                                     _%e146585146887%_
                                     _%hd146586146890%_
                                     _%tl146587146892%_
                                     _%e146588146895%_
                                     _%hd146589146898%_
                                     _%tl146590146900%_
                                     _%e146591146903%_
                                     _%hd146592146906%_
                                     _%tl146593146908%_))
                                (_%__match148935148936%_
                                 _%e146558146815%_
                                 _%hd146559146818%_
                                 _%tl146560146820%_
                                 _%e146570146847%_
                                 _%hd146571146850%_
                                 _%tl146572146852%_
                                 _%e146573146855%_
                                 _%hd146574146858%_
                                 _%tl146575146860%_
                                 _%e146576146863%_
                                 _%hd146577146866%_
                                 _%tl146578146868%_
                                 _%e146579146871%_
                                 _%hd146580146874%_
                                 _%tl146581146876%_
                                 _%e146582146879%_
                                 _%hd146583146882%_
                                 _%tl146584146884%_
                                 _%e146585146887%_
                                 _%hd146586146890%_
                                 _%tl146587146892%_
                                 _%e146588146895%_
                                 _%hd146589146898%_
                                 _%tl146590146900%_
                                 _%e146591146903%_
                                 _%hd146592146906%_
                                 _%tl146593146908%_))))
                        (_%__match148935148936%_
                         _%e146558146815%_
                         _%hd146559146818%_
                         _%tl146560146820%_
                         _%e146570146847%_
                         _%hd146571146850%_
                         _%tl146572146852%_
                         _%e146573146855%_
                         _%hd146574146858%_
                         _%tl146575146860%_
                         _%e146576146863%_
                         _%hd146577146866%_
                         _%tl146578146868%_
                         _%e146579146871%_
                         _%hd146580146874%_
                         _%tl146581146876%_
                         _%e146582146879%_
                         _%hd146583146882%_
                         _%tl146584146884%_
                         _%e146585146887%_
                         _%hd146586146890%_
                         _%tl146587146892%_
                         _%e146588146895%_
                         _%hd146589146898%_
                         _%tl146590146900%_
                         _%e146591146903%_
                         _%hd146592146906%_
                         _%tl146593146908%_))))
                (let ((_%xarg146602146972%_ (reverse _%xarg146601146945%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl146572146852%_))
                      (let ((_%L146975%_ _%hd146610146935%_)
                            (_%L146976%_ _%xarg146602146972%_)
                            (_%L146977%_ _%hd146592146906%_)
                            (_%L146978%_ _%hd146583146882%_)
                            (_%L146979%_ _%tl146563146825%_)
                            (_%L146980%_ _%arg146569146844%_))
                        (if (and (let ((__tmp150105
                                        (let ((__tmp150106
                                               (lambda (_%g147023147026%_
                                                        _%g147024147028%_)
                                                 (cons _%g147023147026%_
                                                       _%g147024147028%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp150106
                                           '()
                                           _%L146980%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp150105))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L146979%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L146978%_
                                    'apply))
                                 (let ((__tmp150109
                                        (length (let ((__tmp150110
                                                       (lambda (_%g147030147033%_
                                                                _%g147031147035%_)
                                                         (cons _%g147030147033%_
                                                               _%g147031147035%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp150110
                                                   '()
                                                   _%L146980%_))))
                                       (__tmp150107
                                        (length (let ((__tmp150108
                                                       (lambda (_%g147037147040%_
                                                                _%g147038147042%_)
                                                         (cons _%g147037147040%_
                                                               _%g147038147042%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp150108
                                                   '()
                                                   _%L146976%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp150109 __tmp150107))
                                 (let ((__tmp150113
                                        (let ((__tmp150114
                                               (lambda (_%g147044147047%_
                                                        _%g147045147049%_)
                                                 (cons _%g147044147047%_
                                                       _%g147045147049%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp150114
                                           '()
                                           _%L146980%_)))
                                       (__tmp150111
                                        (let ((__tmp150112
                                               (lambda (_%g147051147054%_
                                                        _%g147052147056%_)
                                                 (cons _%g147051147054%_
                                                       _%g147052147056%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp150112
                                           '()
                                           _%L146976%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp150113
                                    __tmp150111))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L146979%_
                                    _%L146975%_))
                                 (not (let ((__tmp150118
                                             (lambda (_%g147058147060%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g147058147060%_
                                                  _%L146977%_))))
                                            (__tmp150115
                                             (let ((__tmp150117
                                                    (lambda (_%g147062147065%_
                                                             _%g147063147067%_)
                                                      (cons _%g147062147065%_
                                                            _%g147063147067%_)))
                                                   (__tmp150116
                                                    (cons _%L146979%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp150117
                                                __tmp150116
                                                _%L146980%_))))
                                        (declare (not safe))
                                        (__find __tmp150118 __tmp150115))))
                            (_%__kont148830148831%_
                             _%L146975%_
                             _%L146976%_
                             _%L146977%_
                             _%L146978%_
                             _%L146979%_
                             _%L146980%_)
                            (_%__match148935148936%_
                             _%e146558146815%_
                             _%hd146559146818%_
                             _%tl146560146820%_
                             _%e146570146847%_
                             _%hd146571146850%_
                             _%tl146572146852%_
                             _%e146573146855%_
                             _%hd146574146858%_
                             _%tl146575146860%_
                             _%e146576146863%_
                             _%hd146577146866%_
                             _%tl146578146868%_
                             _%e146579146871%_
                             _%hd146580146874%_
                             _%tl146581146876%_
                             _%e146582146879%_
                             _%hd146583146882%_
                             _%tl146584146884%_
                             _%e146585146887%_
                             _%hd146586146890%_
                             _%tl146587146892%_
                             _%e146588146895%_
                             _%hd146589146898%_
                             _%tl146590146900%_
                             _%e146591146903%_
                             _%hd146592146906%_
                             _%tl146593146908%_)))
                      (_%__match148935148936%_
                       _%e146558146815%_
                       _%hd146559146818%_
                       _%tl146560146820%_
                       _%e146570146847%_
                       _%hd146571146850%_
                       _%tl146572146852%_
                       _%e146573146855%_
                       _%hd146574146858%_
                       _%tl146575146860%_
                       _%e146576146863%_
                       _%hd146577146866%_
                       _%tl146578146868%_
                       _%e146579146871%_
                       _%hd146580146874%_
                       _%tl146581146876%_
                       _%e146582146879%_
                       _%hd146583146882%_
                       _%tl146584146884%_
                       _%e146585146887%_
                       _%hd146586146890%_
                       _%tl146587146892%_
                       _%e146588146895%_
                       _%hd146589146898%_
                       _%tl146590146900%_
                       _%e146591146903%_
                       _%hd146592146906%_
                       _%tl146593146908%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop146597146940%_
                                           _%target146594146911%_
                                           '()))
                                        (_%__match148935148936%_
                                         _%e146558146815%_
                                         _%hd146559146818%_
                                         _%tl146560146820%_
                                         _%e146570146847%_
                                         _%hd146571146850%_
                                         _%tl146572146852%_
                                         _%e146573146855%_
                                         _%hd146574146858%_
                                         _%tl146575146860%_
                                         _%e146576146863%_
                                         _%hd146577146866%_
                                         _%tl146578146868%_
                                         _%e146579146871%_
                                         _%hd146580146874%_
                                         _%tl146581146876%_
                                         _%e146582146879%_
                                         _%hd146583146882%_
                                         _%tl146584146884%_
                                         _%e146585146887%_
                                         _%hd146586146890%_
                                         _%tl146587146892%_
                                         _%e146588146895%_
                                         _%hd146589146898%_
                                         _%tl146590146900%_
                                         _%e146591146903%_
                                         _%hd146592146906%_
                                         _%tl146593146908%_))
                                    (_%__match148935148936%_
                                     _%e146558146815%_
                                     _%hd146559146818%_
                                     _%tl146560146820%_
                                     _%e146570146847%_
                                     _%hd146571146850%_
                                     _%tl146572146852%_
                                     _%e146573146855%_
                                     _%hd146574146858%_
                                     _%tl146575146860%_
                                     _%e146576146863%_
                                     _%hd146577146866%_
                                     _%tl146578146868%_
                                     _%e146579146871%_
                                     _%hd146580146874%_
                                     _%tl146581146876%_
                                     _%e146582146879%_
                                     _%hd146583146882%_
                                     _%tl146584146884%_
                                     _%e146585146887%_
                                     _%hd146586146890%_
                                     _%tl146587146892%_
                                     _%e146588146895%_
                                     _%hd146589146898%_
                                     _%tl146590146900%_
                                     _%e146591146903%_
                                     _%hd146592146906%_
                                     _%tl146593146908%_))))
                            (_%__match148935148936%_
                             _%e146558146815%_
                             _%hd146559146818%_
                             _%tl146560146820%_
                             _%e146570146847%_
                             _%hd146571146850%_
                             _%tl146572146852%_
                             _%e146573146855%_
                             _%hd146574146858%_
                             _%tl146575146860%_
                             _%e146576146863%_
                             _%hd146577146866%_
                             _%tl146578146868%_
                             _%e146579146871%_
                             _%hd146580146874%_
                             _%tl146581146876%_
                             _%e146582146879%_
                             _%hd146583146882%_
                             _%tl146584146884%_
                             _%e146585146887%_
                             _%hd146586146890%_
                             _%tl146587146892%_
                             _%e146588146895%_
                             _%hd146589146898%_
                             _%tl146590146900%_
                             _%e146591146903%_
                             _%hd146592146906%_
                             _%tl146593146908%_))
                        (_%__match148935148936%_
                         _%e146558146815%_
                         _%hd146559146818%_
                         _%tl146560146820%_
                         _%e146570146847%_
                         _%hd146571146850%_
                         _%tl146572146852%_
                         _%e146573146855%_
                         _%hd146574146858%_
                         _%tl146575146860%_
                         _%e146576146863%_
                         _%hd146577146866%_
                         _%tl146578146868%_
                         _%e146579146871%_
                         _%hd146580146874%_
                         _%tl146581146876%_
                         _%e146582146879%_
                         _%hd146583146882%_
                         _%tl146584146884%_
                         _%e146585146887%_
                         _%hd146586146890%_
                         _%tl146587146892%_
                         _%e146588146895%_
                         _%hd146589146898%_
                         _%tl146590146900%_
                         _%e146591146903%_
                         _%hd146592146906%_
                         _%tl146593146908%_))
                    (_%__match148935148936%_
                     _%e146558146815%_
                     _%hd146559146818%_
                     _%tl146560146820%_
                     _%e146570146847%_
                     _%hd146571146850%_
                     _%tl146572146852%_
                     _%e146573146855%_
                     _%hd146574146858%_
                     _%tl146575146860%_
                     _%e146576146863%_
                     _%hd146577146866%_
                     _%tl146578146868%_
                     _%e146579146871%_
                     _%hd146580146874%_
                     _%tl146581146876%_
                     _%e146582146879%_
                     _%hd146583146882%_
                     _%tl146584146884%_
                     _%e146585146887%_
                     _%hd146586146890%_
                     _%tl146587146892%_
                     _%e146588146895%_
                     _%hd146589146898%_
                     _%tl146590146900%_
                     _%e146591146903%_
                     _%hd146592146906%_
                     _%tl146593146908%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match148935148936%_
                                                     _%e146558146815%_
                                                     _%hd146559146818%_
                                                     _%tl146560146820%_
                                                     _%e146570146847%_
                                                     _%hd146571146850%_
                                                     _%tl146572146852%_
                                                     _%e146573146855%_
                                                     _%hd146574146858%_
                                                     _%tl146575146860%_
                                                     _%e146576146863%_
                                                     _%hd146577146866%_
                                                     _%tl146578146868%_
                                                     _%e146579146871%_
                                                     _%hd146580146874%_
                                                     _%tl146581146876%_
                                                     _%e146582146879%_
                                                     _%hd146583146882%_
                                                     _%tl146584146884%_
                                                     _%e146585146887%_
                                                     _%hd146586146890%_
                                                     _%tl146587146892%_
                                                     _%e146588146895%_
                                                     _%hd146589146898%_
                                                     _%tl146590146900%_
                                                     _%e146591146903%_
                                                     _%hd146592146906%_
                                                     _%tl146593146908%_))))
                                            (_%__match148935148936%_
                                             _%e146558146815%_
                                             _%hd146559146818%_
                                             _%tl146560146820%_
                                             _%e146570146847%_
                                             _%hd146571146850%_
                                             _%tl146572146852%_
                                             _%e146573146855%_
                                             _%hd146574146858%_
                                             _%tl146575146860%_
                                             _%e146576146863%_
                                             _%hd146577146866%_
                                             _%tl146578146868%_
                                             _%e146579146871%_
                                             _%hd146580146874%_
                                             _%tl146581146876%_
                                             _%e146582146879%_
                                             _%hd146583146882%_
                                             _%tl146584146884%_
                                             _%e146585146887%_
                                             _%hd146586146890%_
                                             _%tl146587146892%_
                                             _%e146588146895%_
                                             _%hd146589146898%_
                                             _%tl146590146900%_
                                             _%e146591146903%_
                                             _%hd146592146906%_
                                             _%tl146593146908%_))))
                                    (_%__match148935148936%_
                                     _%e146558146815%_
                                     _%hd146559146818%_
                                     _%tl146560146820%_
                                     _%e146570146847%_
                                     _%hd146571146850%_
                                     _%tl146572146852%_
                                     _%e146573146855%_
                                     _%hd146574146858%_
                                     _%tl146575146860%_
                                     _%e146576146863%_
                                     _%hd146577146866%_
                                     _%tl146578146868%_
                                     _%e146579146871%_
                                     _%hd146580146874%_
                                     _%tl146581146876%_
                                     _%e146582146879%_
                                     _%hd146583146882%_
                                     _%tl146584146884%_
                                     _%e146585146887%_
                                     _%hd146586146890%_
                                     _%tl146587146892%_
                                     _%e146588146895%_
                                     _%hd146589146898%_
                                     _%tl146590146900%_
                                     _%e146591146903%_
                                     _%hd146592146906%_
                                     _%tl146593146908%_))
                                (_%__match148935148936%_
                                 _%e146558146815%_
                                 _%hd146559146818%_
                                 _%tl146560146820%_
                                 _%e146570146847%_
                                 _%hd146571146850%_
                                 _%tl146572146852%_
                                 _%e146573146855%_
                                 _%hd146574146858%_
                                 _%tl146575146860%_
                                 _%e146576146863%_
                                 _%hd146577146866%_
                                 _%tl146578146868%_
                                 _%e146579146871%_
                                 _%hd146580146874%_
                                 _%tl146581146876%_
                                 _%e146582146879%_
                                 _%hd146583146882%_
                                 _%tl146584146884%_
                                 _%e146585146887%_
                                 _%hd146586146890%_
                                 _%tl146587146892%_
                                 _%e146588146895%_
                                 _%hd146589146898%_
                                 _%tl146590146900%_
                                 _%e146591146903%_
                                 _%hd146592146906%_
                                 _%tl146593146908%_))
                            (_%__kont148838148839%_))))
                    (_%__kont148838148839%_))
                (_%__kont148838148839%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont148838148839%_))))
                                            (_%__kont148838148839%_))))
                                    (_%__kont148838148839%_))
                                (_%__kont148838148839%_))))
                        (_%__kont148838148839%_))
                    (_%__kont148838148839%_))
                (_%__kont148838148839%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont148838148839%_))))
                                        (_%__kont148838148839%_))
                                    (_%__kont148838148839%_))
                                (_%__kont148838148839%_))))
                        (_%__kont148838148839%_))))
                (_%__kont148838148839%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop146564146828%_
                                     _%target146561146823%_
                                     '()))))
                               (_%__match148853148854%_
                                (lambda (_%e146510147075%_
                                         _%hd146511147078%_
                                         _%tl146512147080%_
                                         _%__splice148826148827%_
                                         _%target146513147083%_
                                         _%tl146515147085%_)
                                  (letrec ((_%loop146516147088%_
                                            (lambda (_%hd146514147091%_
                                                     _%arg146520147093%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146514147091%_))
                                                  (let ((_%e146517147096%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146514147091%_))))
                                                    (let ((_%lp-tl146519147101%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146517147096%_)))
                                                          (_%lp-hd146518147099%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146517147096%_))))
                                                      (_%loop146516147088%_
                                                       _%lp-tl146519147101%_
                                                       (cons _%lp-hd146518147099%_
                                                             _%arg146520147093%_))))
                                                  (let ((_%arg146521147104%_
                                                         (reverse _%arg146520147093%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl146512147080%_))
                                                        (let ((_%e146522147107%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl146512147080%_))))
                  (let ((_%tl146524147112%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146522147107%_)))
                        (_%hd146523147110%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146522147107%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd146523147110%_))
                        (let ((_%e146525147115%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd146523147110%_))))
                          (let ((_%tl146527147120%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146525147115%_)))
                                (_%hd146526147118%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146525147115%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146526147118%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd146526147118%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146527147120%_))
                                        (let ((_%e146528147123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146527147120%_))))
                                          (let ((_%tl146530147128%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146528147123%_)))
                                                (_%hd146529147126%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146528147123%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd146529147126%_))
                                                (let ((_%e146531147131%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146529147126%_))))
                                                  (let ((_%tl146533147136%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e146531147131%_)))
                                                        (_%hd146532147134%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e146531147131%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd146532147134%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd146532147134%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl146533147136%_))
                        (let ((_%e146534147139%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl146533147136%_))))
                          (let ((_%tl146536147144%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146534147139%_)))
                                (_%hd146535147142%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146534147139%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146536147144%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl146530147128%_))
                                    (let ((_%__splice148828148829%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl146530147128%_
                                              '0))))
                                      (let ((_%tl146539147149%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148828148829%_
                                                '1)))
                                            (_%target146537147147%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148828148829%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl146539147149%_))
                                            (letrec ((_%loop146540147152%_
                                                      (lambda (_%hd146538147155%_
                                                               _%xarg146544147157%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd146538147155%_))
                                                            (let ((_%e146541147160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd146538147155%_))))
                      (let ((_%lp-tl146543147165%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e146541147160%_)))
                            (_%lp-hd146542147163%_
                             (let ()
                               (declare (not safe))
                               (##car _%e146541147160%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd146542147163%_))
                            (let ((_%e146546147168%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd146542147163%_))))
                              (let ((_%tl146548147173%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e146546147168%_)))
                                    (_%hd146547147171%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e146546147168%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd146547147171%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd146547147171%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl146548147173%_))
                                            (let ((_%e146549147176%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl146548147173%_))))
                                              (let ((_%tl146551147181%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146549147176%_)))
                                                    (_%hd146550147179%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146549147176%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl146551147181%_))
                                                    (_%loop146540147152%_
                                                     _%lp-tl146543147165%_
                                                     (cons _%hd146550147179%_
                                                           _%xarg146544147157%_))
                                                    (_%__match148865148866%_
                                                     _%e146510147075%_
                                                     _%hd146511147078%_
                                                     _%tl146512147080%_
                                                     _%__splice148826148827%_
                                                     _%target146513147083%_
                                                     _%tl146515147085%_))))
                                            (_%__match148865148866%_
                                             _%e146510147075%_
                                             _%hd146511147078%_
                                             _%tl146512147080%_
                                             _%__splice148826148827%_
                                             _%target146513147083%_
                                             _%tl146515147085%_))
                                        (_%__match148865148866%_
                                         _%e146510147075%_
                                         _%hd146511147078%_
                                         _%tl146512147080%_
                                         _%__splice148826148827%_
                                         _%target146513147083%_
                                         _%tl146515147085%_))
                                    (_%__match148865148866%_
                                     _%e146510147075%_
                                     _%hd146511147078%_
                                     _%tl146512147080%_
                                     _%__splice148826148827%_
                                     _%target146513147083%_
                                     _%tl146515147085%_))))
                            (_%__match148865148866%_
                             _%e146510147075%_
                             _%hd146511147078%_
                             _%tl146512147080%_
                             _%__splice148826148827%_
                             _%target146513147083%_
                             _%tl146515147085%_))))
                    (let ((_%xarg146545147184%_
                           (reverse _%xarg146544147157%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl146524147112%_))
                          (let ((_%L147187%_ _%xarg146545147184%_)
                                (_%L147188%_ _%hd146535147142%_)
                                (_%L147189%_ _%arg146521147104%_))
                            (if (and (let ((__tmp150119
                                            (let ((__tmp150120
                                                   (lambda (_%g147217147220%_
                                                            _%g147218147222%_)
                                                     (cons _%g147217147220%_
                                                           _%g147218147222%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp150120
                                               '()
                                               _%L147189%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp150119))
                                     (let ((__tmp150123
                                            (length (let ((__tmp150124
                                                           (lambda (_%g147224147227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g147225147229%_)
                     (cons _%g147224147227%_ _%g147225147229%_))))
              (declare (not safe))
              (__foldr1 __tmp150124 '() _%L147189%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp150121
                                            (length (let ((__tmp150122
                                                           (lambda (_%g147231147234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g147232147236%_)
                     (cons _%g147231147234%_ _%g147232147236%_))))
              (declare (not safe))
              (__foldr1 __tmp150122 '() _%L147187%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp150123 __tmp150121))
                                     (let ((__tmp150127
                                            (let ((__tmp150128
                                                   (lambda (_%g147238147241%_
                                                            _%g147239147243%_)
                                                     (cons _%g147238147241%_
                                                           _%g147239147243%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp150128
                                               '()
                                               _%L147189%_)))
                                           (__tmp150125
                                            (let ((__tmp150126
                                                   (lambda (_%g147245147248%_
                                                            _%g147246147250%_)
                                                     (cons _%g147245147248%_
                                                           _%g147246147250%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp150126
                                               '()
                                               _%L147187%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp150127
                                        __tmp150125))
                                     (not (let ((__tmp150131
                                                 (lambda (_%g147252147254%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g147252147254%_
                                                      _%L147188%_))))
                                                (__tmp150129
                                                 (let ((__tmp150130
                                                        (lambda (_%g147256147259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g147257147261%_)
                  (cons _%g147256147259%_ _%g147257147261%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp150130
                                                    '()
                                                    _%L147189%_))))
                                            (declare (not safe))
                                            (__find __tmp150131 __tmp150129))))
                                (_%__kont148824148825%_
                                 _%L147187%_
                                 _%L147188%_
                                 _%L147189%_)
                                (_%__match148865148866%_
                                 _%e146510147075%_
                                 _%hd146511147078%_
                                 _%tl146512147080%_
                                 _%__splice148826148827%_
                                 _%target146513147083%_
                                 _%tl146515147085%_)))
                          (_%__match148865148866%_
                           _%e146510147075%_
                           _%hd146511147078%_
                           _%tl146512147080%_
                           _%__splice148826148827%_
                           _%target146513147083%_
                           _%tl146515147085%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop146540147152%_
                                               _%target146537147147%_
                                               '()))
                                            (_%__match148865148866%_
                                             _%e146510147075%_
                                             _%hd146511147078%_
                                             _%tl146512147080%_
                                             _%__splice148826148827%_
                                             _%target146513147083%_
                                             _%tl146515147085%_))))
                                    (_%__match148865148866%_
                                     _%e146510147075%_
                                     _%hd146511147078%_
                                     _%tl146512147080%_
                                     _%__splice148826148827%_
                                     _%target146513147083%_
                                     _%tl146515147085%_))
                                (_%__match148865148866%_
                                 _%e146510147075%_
                                 _%hd146511147078%_
                                 _%tl146512147080%_
                                 _%__splice148826148827%_
                                 _%target146513147083%_
                                 _%tl146515147085%_))))
                        (_%__match148865148866%_
                         _%e146510147075%_
                         _%hd146511147078%_
                         _%tl146512147080%_
                         _%__splice148826148827%_
                         _%target146513147083%_
                         _%tl146515147085%_))
                    (_%__match148865148866%_
                     _%e146510147075%_
                     _%hd146511147078%_
                     _%tl146512147080%_
                     _%__splice148826148827%_
                     _%target146513147083%_
                     _%tl146515147085%_))
                (_%__match148865148866%_
                 _%e146510147075%_
                 _%hd146511147078%_
                 _%tl146512147080%_
                 _%__splice148826148827%_
                 _%target146513147083%_
                 _%tl146515147085%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match148865148866%_
                                                 _%e146510147075%_
                                                 _%hd146511147078%_
                                                 _%tl146512147080%_
                                                 _%__splice148826148827%_
                                                 _%target146513147083%_
                                                 _%tl146515147085%_))))
                                        (_%__match148865148866%_
                                         _%e146510147075%_
                                         _%hd146511147078%_
                                         _%tl146512147080%_
                                         _%__splice148826148827%_
                                         _%target146513147083%_
                                         _%tl146515147085%_))
                                    (_%__match148865148866%_
                                     _%e146510147075%_
                                     _%hd146511147078%_
                                     _%tl146512147080%_
                                     _%__splice148826148827%_
                                     _%target146513147083%_
                                     _%tl146515147085%_))
                                (_%__match148865148866%_
                                 _%e146510147075%_
                                 _%hd146511147078%_
                                 _%tl146512147080%_
                                 _%__splice148826148827%_
                                 _%target146513147083%_
                                 _%tl146515147085%_))))
                        (_%__match148865148866%_
                         _%e146510147075%_
                         _%hd146511147078%_
                         _%tl146512147080%_
                         _%__splice148826148827%_
                         _%target146513147083%_
                         _%tl146515147085%_))))
                (_%__match148865148866%_
                 _%e146510147075%_
                 _%hd146511147078%_
                 _%tl146512147080%_
                 _%__splice148826148827%_
                 _%target146513147083%_
                 _%tl146515147085%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop146516147088%_
                                     _%target146513147083%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx148822148823%_))
                              (let ((_%e146510147075%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx148822148823%_))))
                                (let ((_%tl146512147080%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146510147075%_)))
                                      (_%hd146511147078%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146510147075%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd146511147078%_))
                                      (let ((_%__splice148826148827%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd146511147078%_
                                                '0))))
                                        (let ((_%tl146515147085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice148826148827%_
                                                  '1)))
                                              (_%target146513147083%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice148826148827%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146515147085%_))
                                              (_%__match148853148854%_
                                               _%e146510147075%_
                                               _%hd146511147078%_
                                               _%tl146512147080%_
                                               _%__splice148826148827%_
                                               _%target146513147083%_
                                               _%tl146515147085%_)
                                              (_%__match148865148866%_
                                               _%e146510147075%_
                                               _%hd146511147078%_
                                               _%tl146512147080%_
                                               _%__splice148826148827%_
                                               _%target146513147083%_
                                               _%tl146515147085%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl146512147080%_))
                                          (let ((_%e146625146682%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl146512147080%_))))
                                            (let ((_%tl146627146687%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e146625146682%_)))
                                                  (_%hd146626146685%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e146625146682%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146626146685%_))
                                                  (let ((_%e146628146690%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146626146685%_))))
                                                    (let ((_%tl146630146695%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146628146690%_)))
                                                          (_%hd146629146693%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146628146690%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd146629146693%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd146629146693%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl146630146695%_))
                          (let ((_%e146631146698%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl146630146695%_))))
                            (let ((_%tl146633146703%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146631146698%_)))
                                  (_%hd146632146701%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146631146698%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd146632146701%_))
                                  (let ((_%e146634146706%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd146632146701%_))))
                                    (let ((_%tl146636146711%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e146634146706%_)))
                                          (_%hd146635146709%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e146634146706%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd146635146709%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd146635146709%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl146636146711%_))
                                                  (let ((_%e146637146714%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl146636146711%_))))
                                                    (let ((_%tl146639146719%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146637146714%_)))
                                                          (_%hd146638146717%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146637146714%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl146639146719%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl146633146703%_))
                      (let ((_%e146640146722%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl146633146703%_))))
                        (let ((_%tl146642146727%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146640146722%_)))
                              (_%hd146641146725%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146640146722%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd146641146725%_))
                              (let ((_%e146643146730%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd146641146725%_))))
                                (let ((_%tl146645146735%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146643146730%_)))
                                      (_%hd146644146733%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146643146730%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd146644146733%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd146644146733%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl146645146735%_))
                                              (let ((_%e146646146738%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl146645146735%_))))
                                                (let ((_%tl146648146743%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146646146738%_)))
                                                      (_%hd146647146741%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146646146738%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146648146743%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl146642146727%_))
                                                          (let ((_%e146649146746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl146642146727%_))))
                    (let ((_%tl146651146751%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e146649146746%_)))
                          (_%hd146650146749%_
                           (let ()
                             (declare (not safe))
                             (##car _%e146649146746%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd146650146749%_))
                          (let ((_%e146652146754%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd146650146749%_))))
                            (let ((_%tl146654146759%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146652146754%_)))
                                  (_%hd146653146757%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146652146754%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd146653146757%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd146653146757%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl146654146759%_))
                                          (let ((_%e146655146762%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl146654146759%_))))
                                            (let ((_%tl146657146767%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e146655146762%_)))
                                                  (_%hd146656146765%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e146655146762%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl146657146767%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146651146751%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl146627146687%_))
                                                          (_%__match148963148964%_
                                                           _%e146510147075%_
                                                           _%hd146511147078%_
                                                           _%tl146512147080%_
                                                           _%e146625146682%_
                                                           _%hd146626146685%_
                                                           _%tl146627146687%_
                                                           _%e146628146690%_
                                                           _%hd146629146693%_
                                                           _%tl146630146695%_
                                                           _%e146631146698%_
                                                           _%hd146632146701%_
                                                           _%tl146633146703%_
                                                           _%e146634146706%_
                                                           _%hd146635146709%_
                                                           _%tl146636146711%_
                                                           _%e146637146714%_
                                                           _%hd146638146717%_
                                                           _%tl146639146719%_
                                                           _%e146640146722%_
                                                           _%hd146641146725%_
                                                           _%tl146642146727%_
                                                           _%e146643146730%_
                                                           _%hd146644146733%_
                                                           _%tl146645146735%_
                                                           _%e146646146738%_
                                                           _%hd146647146741%_
                                                           _%tl146648146743%_
                                                           _%e146649146746%_
                                                           _%hd146650146749%_
                                                           _%tl146651146751%_
                                                           _%e146652146754%_
                                                           _%hd146653146757%_
                                                           _%tl146654146759%_
                                                           _%e146655146762%_
                                                           _%hd146656146765%_
                                                           _%tl146657146767%_)
                                                          (_%__kont148838148839%_))
                                                      (_%__kont148838148839%_))
                                                  (_%__kont148838148839%_))))
                                          (_%__kont148838148839%_))
                                      (_%__kont148838148839%_))
                                  (_%__kont148838148839%_))))
                          (_%__kont148838148839%_))))
                  (_%__kont148838148839%_))
              (_%__kont148838148839%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont148838148839%_))
                                          (_%__kont148838148839%_))
                                      (_%__kont148838148839%_))))
                              (_%__kont148838148839%_))))
                      (_%__kont148838148839%_))
                  (_%__kont148838148839%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont148838148839%_))
                                              (_%__kont148838148839%_))
                                          (_%__kont148838148839%_))))
                                  (_%__kont148838148839%_))))
                          (_%__kont148838148839%_))
                      (_%__kont148838148839%_))
                  (_%__kont148838148839%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont148838148839%_))))
                                          (_%__kont148838148839%_)))))
                              (_%__kont148838148839%_)))))))
                 (_%dispatch-case-e145810%_
                  (lambda (_%hd145961%_ _%body145962%_)
                    (let* ((_%form145964%_
                            (cons _%hd145961%_ (cons _%body145962%_ '())))
                           (_%__stx148966148967%_ _%form145964%_)
                           (_%g145968146092%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx148966148967%_)))))
                      (let ((_%__kont148968148969%_
                             (lambda (_%L146463%_ _%L146464%_ _%L146465%_)
                               (let ((__tmp150132
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L146464%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self145806%_
                                  __tmp150132))))
                            (_%__kont148974148975%_
                             (lambda (_%L146311%_
                                      _%L146312%_
                                      _%L146313%_
                                      _%L146314%_)
                               (let ((__tmp150133
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L146311%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self145806%_
                                  __tmp150133))))
                            (_%__kont148978148979%_
                             (lambda (_%L146177%_ _%L146178%_ _%L146179%_)
                               (let ((__tmp150134
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L146177%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self145806%_
                                  __tmp150134)))))
                        (let* ((_%__match149075149076%_
                                (lambda (_%e146058146097%_
                                         _%hd146059146100%_
                                         _%tl146060146102%_
                                         _%e146061146105%_
                                         _%hd146062146108%_
                                         _%tl146063146110%_
                                         _%e146064146113%_
                                         _%hd146065146116%_
                                         _%tl146066146118%_
                                         _%e146067146121%_
                                         _%hd146068146124%_
                                         _%tl146069146126%_
                                         _%e146070146129%_
                                         _%hd146071146132%_
                                         _%tl146072146134%_
                                         _%e146073146137%_
                                         _%hd146074146140%_
                                         _%tl146075146142%_
                                         _%e146076146145%_
                                         _%hd146077146148%_
                                         _%tl146078146150%_
                                         _%e146079146153%_
                                         _%hd146080146156%_
                                         _%tl146081146158%_
                                         _%e146082146161%_
                                         _%hd146083146164%_
                                         _%tl146084146166%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146078146150%_))
                                      (let ((_%e146085146169%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146078146150%_))))
                                        (let ((_%tl146087146174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146085146169%_)))
                                              (_%hd146086146172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146085146169%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146087146174%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl146063146110%_))
                                                  (_%__kont148978148979%_
                                                   _%hd146083146164%_
                                                   _%hd146074146140%_
                                                   _%hd146059146100%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g145968146092%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g145968146092%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g145968146092%_)))))
                               (_%__match149005149006%_
                                (lambda (_%e146019146215%_
                                         _%hd146020146218%_
                                         _%tl146021146220%_
                                         _%__splice148976148977%_
                                         _%target146022146223%_
                                         _%tl146024146225%_)
                                  (letrec ((_%loop146025146228%_
                                            (lambda (_%hd146023146231%_
                                                     _%arg146029146233%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146023146231%_))
                                                  (let ((_%e146026146236%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146023146231%_))))
                                                    (let ((_%lp-tl146028146241%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146026146236%_)))
                                                          (_%lp-hd146027146239%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146026146236%_))))
                                                      (_%loop146025146228%_
                                                       _%lp-tl146028146241%_
                                                       (cons _%lp-hd146027146239%_
                                                             _%arg146029146233%_))))
                                                  (let ((_%arg146030146244%_
                                                         (reverse _%arg146029146233%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl146021146220%_))
                                                        (let ((_%e146031146247%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl146021146220%_))))
                  (let ((_%tl146033146252%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146031146247%_)))
                        (_%hd146032146250%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146031146247%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd146032146250%_))
                        (let ((_%e146034146255%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd146032146250%_))))
                          (let ((_%tl146036146260%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146034146255%_)))
                                (_%hd146035146258%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146034146255%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146035146258%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd146035146258%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146036146260%_))
                                        (let ((_%e146037146263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146036146260%_))))
                                          (let ((_%tl146039146268%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146037146263%_)))
                                                (_%hd146038146266%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146037146263%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd146038146266%_))
                                                (let ((_%e146040146271%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146038146266%_))))
                                                  (let ((_%tl146042146276%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e146040146271%_)))
                                                        (_%hd146041146274%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e146040146271%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd146041146274%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd146041146274%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl146042146276%_))
                        (let ((_%e146043146279%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl146042146276%_))))
                          (let ((_%tl146045146284%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146043146279%_)))
                                (_%hd146044146282%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146043146279%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146045146284%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl146039146268%_))
                                    (let ((_%e146046146287%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl146039146268%_))))
                                      (let ((_%tl146048146292%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e146046146287%_)))
                                            (_%hd146047146290%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e146046146287%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd146047146290%_))
                                            (let ((_%e146049146295%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd146047146290%_))))
                                              (let ((_%tl146051146300%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146049146295%_)))
                                                    (_%hd146050146298%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146049146295%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd146050146298%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd146050146298%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl146051146300%_))
                                                            (let ((_%e146052146303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl146051146300%_))))
                      (let ((_%tl146054146308%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e146052146303%_)))
                            (_%hd146053146306%_
                             (let ()
                               (declare (not safe))
                               (##car _%e146052146303%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl146054146308%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146033146252%_))
                                (_%__kont148974148975%_
                                 _%hd146053146306%_
                                 _%hd146044146282%_
                                 _%tl146024146225%_
                                 _%arg146030146244%_)
                                (_%__match149075149076%_
                                 _%e146019146215%_
                                 _%hd146020146218%_
                                 _%tl146021146220%_
                                 _%e146031146247%_
                                 _%hd146032146250%_
                                 _%tl146033146252%_
                                 _%e146034146255%_
                                 _%hd146035146258%_
                                 _%tl146036146260%_
                                 _%e146037146263%_
                                 _%hd146038146266%_
                                 _%tl146039146268%_
                                 _%e146040146271%_
                                 _%hd146041146274%_
                                 _%tl146042146276%_
                                 _%e146043146279%_
                                 _%hd146044146282%_
                                 _%tl146045146284%_
                                 _%e146046146287%_
                                 _%hd146047146290%_
                                 _%tl146048146292%_
                                 _%e146049146295%_
                                 _%hd146050146298%_
                                 _%tl146051146300%_
                                 _%e146052146303%_
                                 _%hd146053146306%_
                                 _%tl146054146308%_))
                            (let ()
                              (declare (not safe))
                              (_%g145968146092%_)))))
                    (let () (declare (not safe)) (_%g145968146092%_)))
                (let () (declare (not safe)) (_%g145968146092%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g145968146092%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g145968146092%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g145968146092%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g145968146092%_)))))
                        (let () (declare (not safe)) (_%g145968146092%_)))
                    (let () (declare (not safe)) (_%g145968146092%_)))
                (let () (declare (not safe)) (_%g145968146092%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g145968146092%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g145968146092%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g145968146092%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g145968146092%_)))))
                        (let () (declare (not safe)) (_%g145968146092%_)))))
                (let () (declare (not safe)) (_%g145968146092%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop146025146228%_
                                     _%target146022146223%_
                                     '()))))
                               (_%__match148993148994%_
                                (lambda (_%e145973146351%_
                                         _%hd145974146354%_
                                         _%tl145975146356%_
                                         _%__splice148970148971%_
                                         _%target145976146359%_
                                         _%tl145978146361%_)
                                  (letrec ((_%loop145979146364%_
                                            (lambda (_%hd145977146367%_
                                                     _%arg145983146369%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145977146367%_))
                                                  (let ((_%e145980146372%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145977146367%_))))
                                                    (let ((_%lp-tl145982146377%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145980146372%_)))
                                                          (_%lp-hd145981146375%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145980146372%_))))
                                                      (_%loop145979146364%_
                                                       _%lp-tl145982146377%_
                                                       (cons _%lp-hd145981146375%_
                                                             _%arg145983146369%_))))
                                                  (let ((_%arg145984146380%_
                                                         (reverse _%arg145983146369%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl145975146356%_))
                                                        (let ((_%e145985146383%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl145975146356%_))))
                  (let ((_%tl145987146388%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145985146383%_)))
                        (_%hd145986146386%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145985146383%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145986146386%_))
                        (let ((_%e145988146391%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd145986146386%_))))
                          (let ((_%tl145990146396%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145988146391%_)))
                                (_%hd145989146394%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145988146391%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd145989146394%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd145989146394%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145990146396%_))
                                        (let ((_%e145991146399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145990146396%_))))
                                          (let ((_%tl145993146404%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145991146399%_)))
                                                (_%hd145992146402%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145991146399%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd145992146402%_))
                                                (let ((_%e145994146407%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd145992146402%_))))
                                                  (let ((_%tl145996146412%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e145994146407%_)))
                                                        (_%hd145995146410%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e145994146407%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd145995146410%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd145995146410%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl145996146412%_))
                        (let ((_%e145997146415%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl145996146412%_))))
                          (let ((_%tl145999146420%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145997146415%_)))
                                (_%hd145998146418%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145997146415%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl145999146420%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl145993146404%_))
                                    (let ((_%__splice148972148973%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl145993146404%_
                                              '0))))
                                      (let ((_%tl146002146425%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148972148973%_
                                                '1)))
                                            (_%target146000146423%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148972148973%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl146002146425%_))
                                            (letrec ((_%loop146003146428%_
                                                      (lambda (_%hd146001146431%_
                                                               _%xarg146007146433%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd146001146431%_))
                                                            (let ((_%e146004146436%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd146001146431%_))))
                      (let ((_%lp-tl146006146441%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e146004146436%_)))
                            (_%lp-hd146005146439%_
                             (let ()
                               (declare (not safe))
                               (##car _%e146004146436%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd146005146439%_))
                            (let ((_%e146009146444%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd146005146439%_))))
                              (let ((_%tl146011146449%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e146009146444%_)))
                                    (_%hd146010146447%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e146009146444%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd146010146447%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd146010146447%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl146011146449%_))
                                            (let ((_%e146012146452%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl146011146449%_))))
                                              (let ((_%tl146014146457%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146012146452%_)))
                                                    (_%hd146013146455%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146012146452%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl146014146457%_))
                                                    (_%loop146003146428%_
                                                     _%lp-tl146006146441%_
                                                     (cons _%hd146013146455%_
                                                           _%xarg146007146433%_))
                                                    (_%__match149005149006%_
                                                     _%e145973146351%_
                                                     _%hd145974146354%_
                                                     _%tl145975146356%_
                                                     _%__splice148970148971%_
                                                     _%target145976146359%_
                                                     _%tl145978146361%_))))
                                            (_%__match149005149006%_
                                             _%e145973146351%_
                                             _%hd145974146354%_
                                             _%tl145975146356%_
                                             _%__splice148970148971%_
                                             _%target145976146359%_
                                             _%tl145978146361%_))
                                        (_%__match149005149006%_
                                         _%e145973146351%_
                                         _%hd145974146354%_
                                         _%tl145975146356%_
                                         _%__splice148970148971%_
                                         _%target145976146359%_
                                         _%tl145978146361%_))
                                    (_%__match149005149006%_
                                     _%e145973146351%_
                                     _%hd145974146354%_
                                     _%tl145975146356%_
                                     _%__splice148970148971%_
                                     _%target145976146359%_
                                     _%tl145978146361%_))))
                            (_%__match149005149006%_
                             _%e145973146351%_
                             _%hd145974146354%_
                             _%tl145975146356%_
                             _%__splice148970148971%_
                             _%target145976146359%_
                             _%tl145978146361%_))))
                    (let ((_%xarg146008146460%_
                           (reverse _%xarg146007146433%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl145987146388%_))
                          (_%__kont148968148969%_
                           _%xarg146008146460%_
                           _%hd145998146418%_
                           _%arg145984146380%_)
                          (_%__match149005149006%_
                           _%e145973146351%_
                           _%hd145974146354%_
                           _%tl145975146356%_
                           _%__splice148970148971%_
                           _%target145976146359%_
                           _%tl145978146361%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop146003146428%_
                                               _%target146000146423%_
                                               '()))
                                            (_%__match149005149006%_
                                             _%e145973146351%_
                                             _%hd145974146354%_
                                             _%tl145975146356%_
                                             _%__splice148970148971%_
                                             _%target145976146359%_
                                             _%tl145978146361%_))))
                                    (_%__match149005149006%_
                                     _%e145973146351%_
                                     _%hd145974146354%_
                                     _%tl145975146356%_
                                     _%__splice148970148971%_
                                     _%target145976146359%_
                                     _%tl145978146361%_))
                                (_%__match149005149006%_
                                 _%e145973146351%_
                                 _%hd145974146354%_
                                 _%tl145975146356%_
                                 _%__splice148970148971%_
                                 _%target145976146359%_
                                 _%tl145978146361%_))))
                        (_%__match149005149006%_
                         _%e145973146351%_
                         _%hd145974146354%_
                         _%tl145975146356%_
                         _%__splice148970148971%_
                         _%target145976146359%_
                         _%tl145978146361%_))
                    (_%__match149005149006%_
                     _%e145973146351%_
                     _%hd145974146354%_
                     _%tl145975146356%_
                     _%__splice148970148971%_
                     _%target145976146359%_
                     _%tl145978146361%_))
                (_%__match149005149006%_
                 _%e145973146351%_
                 _%hd145974146354%_
                 _%tl145975146356%_
                 _%__splice148970148971%_
                 _%target145976146359%_
                 _%tl145978146361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match149005149006%_
                                                 _%e145973146351%_
                                                 _%hd145974146354%_
                                                 _%tl145975146356%_
                                                 _%__splice148970148971%_
                                                 _%target145976146359%_
                                                 _%tl145978146361%_))))
                                        (_%__match149005149006%_
                                         _%e145973146351%_
                                         _%hd145974146354%_
                                         _%tl145975146356%_
                                         _%__splice148970148971%_
                                         _%target145976146359%_
                                         _%tl145978146361%_))
                                    (_%__match149005149006%_
                                     _%e145973146351%_
                                     _%hd145974146354%_
                                     _%tl145975146356%_
                                     _%__splice148970148971%_
                                     _%target145976146359%_
                                     _%tl145978146361%_))
                                (_%__match149005149006%_
                                 _%e145973146351%_
                                 _%hd145974146354%_
                                 _%tl145975146356%_
                                 _%__splice148970148971%_
                                 _%target145976146359%_
                                 _%tl145978146361%_))))
                        (_%__match149005149006%_
                         _%e145973146351%_
                         _%hd145974146354%_
                         _%tl145975146356%_
                         _%__splice148970148971%_
                         _%target145976146359%_
                         _%tl145978146361%_))))
                (_%__match149005149006%_
                 _%e145973146351%_
                 _%hd145974146354%_
                 _%tl145975146356%_
                 _%__splice148970148971%_
                 _%target145976146359%_
                 _%tl145978146361%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop145979146364%_
                                     _%target145976146359%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx148966148967%_))
                              (let ((_%e145973146351%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx148966148967%_))))
                                (let ((_%tl145975146356%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145973146351%_)))
                                      (_%hd145974146354%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145973146351%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd145974146354%_))
                                      (let ((_%__splice148970148971%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd145974146354%_
                                                '0))))
                                        (let ((_%tl145978146361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice148970148971%_
                                                  '1)))
                                              (_%target145976146359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice148970148971%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145978146361%_))
                                              (_%__match148993148994%_
                                               _%e145973146351%_
                                               _%hd145974146354%_
                                               _%tl145975146356%_
                                               _%__splice148970148971%_
                                               _%target145976146359%_
                                               _%tl145978146361%_)
                                              (_%__match149005149006%_
                                               _%e145973146351%_
                                               _%hd145974146354%_
                                               _%tl145975146356%_
                                               _%__splice148970148971%_
                                               _%target145976146359%_
                                               _%tl145978146361%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl145975146356%_))
                                          (let ((_%e146061146105%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl145975146356%_))))
                                            (let ((_%tl146063146110%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e146061146105%_)))
                                                  (_%hd146062146108%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e146061146105%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146062146108%_))
                                                  (let ((_%e146064146113%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146062146108%_))))
                                                    (let ((_%tl146066146118%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146064146113%_)))
                                                          (_%hd146065146116%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146064146113%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd146065146116%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd146065146116%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl146066146118%_))
                          (let ((_%e146067146121%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl146066146118%_))))
                            (let ((_%tl146069146126%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146067146121%_)))
                                  (_%hd146068146124%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146067146121%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd146068146124%_))
                                  (let ((_%e146070146129%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd146068146124%_))))
                                    (let ((_%tl146072146134%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e146070146129%_)))
                                          (_%hd146071146132%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e146070146129%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd146071146132%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd146071146132%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl146072146134%_))
                                                  (let ((_%e146073146137%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl146072146134%_))))
                                                    (let ((_%tl146075146142%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146073146137%_)))
                                                          (_%hd146074146140%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146073146137%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl146075146142%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl146069146126%_))
                      (let ((_%e146076146145%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl146069146126%_))))
                        (let ((_%tl146078146150%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146076146145%_)))
                              (_%hd146077146148%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146076146145%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd146077146148%_))
                              (let ((_%e146079146153%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd146077146148%_))))
                                (let ((_%tl146081146158%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146079146153%_)))
                                      (_%hd146080146156%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146079146153%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd146080146156%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd146080146156%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl146081146158%_))
                                              (let ((_%e146082146161%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl146081146158%_))))
                                                (let ((_%tl146084146166%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146082146161%_)))
                                                      (_%hd146083146164%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146082146161%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146084146166%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl146078146150%_))
                                                          (let ((_%e146085146169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl146078146150%_))))
                    (let ((_%tl146087146174%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e146085146169%_)))
                          (_%hd146086146172%_
                           (let ()
                             (declare (not safe))
                             (##car _%e146085146169%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl146087146174%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl146063146110%_))
                              (_%__kont148978148979%_
                               _%hd146083146164%_
                               _%hd146074146140%_
                               _%hd145974146354%_)
                              (let ()
                                (declare (not safe))
                                (_%g145968146092%_)))
                          (let () (declare (not safe)) (_%g145968146092%_)))))
                  (let () (declare (not safe)) (_%g145968146092%_)))
              (let () (declare (not safe)) (_%g145968146092%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g145968146092%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g145968146092%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g145968146092%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g145968146092%_)))))
                      (let () (declare (not safe)) (_%g145968146092%_)))
                  (let () (declare (not safe)) (_%g145968146092%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g145968146092%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g145968146092%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g145968146092%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g145968146092%_)))))
                          (let () (declare (not safe)) (_%g145968146092%_)))
                      (let () (declare (not safe)) (_%g145968146092%_)))
                  (let () (declare (not safe)) (_%g145968146092%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g145968146092%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g145968146092%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g145968146092%_))))))))
                 (_%generate1145811%_
                  (lambda (_%args145946%_
                           _%arglen145947%_
                           _%hd145948%_
                           _%body145949%_)
                    (let* ((_%len145951%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd145948%_)))
                           (_%condition145956%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd145948%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen145947%_
                                                (cons _%len145951%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen145947%_ (cons _%len145951%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len145951%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen145947%_
                                                    (cons _%len145951%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen145947%_ (cons _%len145951%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch145958%_
                            (if (_%dispatch-case?145809%_
                                 _%hd145948%_
                                 _%body145949%_)
                                (_%dispatch-case-e145810%_
                                 _%hd145948%_
                                 _%body145949%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self145806%_
                                 _%hd145948%_
                                 _%body145949%_))))
                      (cons _%condition145956%_
                            (cons (cons 'apply
                                        (cons _%dispatch145958%_
                                              (cons _%args145946%_ '())))
                                  '()))))))
          (let* ((_%g145813145841%_
                  (lambda (_%g145814145838%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g145814145838%_))))
                 (_%g145812145943%_
                  (lambda (_%g145814145844%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g145814145844%_))
                        (let ((_%e145817145846%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g145814145844%_))))
                          (let ((_%hd145818145849%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145817145846%_)))
                                (_%tl145819145851%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145817145846%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl145819145851%_))
                                (let ((_g150135_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl145819145851%_
                                          '0))))
                                  (begin
                                    (let ((_g150136_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g150135_)
                                                 (##values-length _g150135_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g150136_ 2)))
                                          (error "Context expects 2 values"
                                                 _g150136_)))
                                    (let ((_%target145820145854%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g150135_ 0)))
                                          (_%tl145822145856%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g150135_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl145822145856%_))
                                          (letrec ((_%loop145823145859%_
                                                    (lambda (_%hd145821145862%_
                                                             _%body145827145864%_
                                                             _%hd145828145866%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd145821145862%_))
                                                          (let ((_%e145824145869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd145821145862%_))))
                    (let ((_%lp-hd145825145872%_
                           (let ()
                             (declare (not safe))
                             (##car _%e145824145869%_)))
                          (_%lp-tl145826145874%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e145824145869%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd145825145872%_))
                          (let ((_%e145831145877%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd145825145872%_))))
                            (let ((_%hd145832145880%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145831145877%_)))
                                  (_%tl145833145882%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145831145877%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl145833145882%_))
                                  (let ((_%e145834145885%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl145833145882%_))))
                                    (let ((_%hd145835145888%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e145834145885%_)))
                                          (_%tl145836145890%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e145834145885%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl145836145890%_))
                                          (_%loop145823145859%_
                                           _%lp-tl145826145874%_
                                           (cons _%hd145835145888%_
                                                 _%body145827145864%_)
                                           (cons _%hd145832145880%_
                                                 _%hd145828145866%_))
                                          (_%g145813145841%_
                                           _%g145814145844%_))))
                                  (_%g145813145841%_ _%g145814145844%_))))
                          (_%g145813145841%_ _%g145814145844%_))))
                  (let ((_%body145829145893%_ (reverse _%body145827145864%_))
                        (_%hd145830145895%_ (reverse _%hd145828145866%_)))
                    ((lambda (_%L145898%_ _%L145899%_)
                       (let ((_%args145918%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen145919%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name145920%_
                              (let ((_%$e145915%_
                                     (let ((__tmp150137
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp150137 _%stx145807%_))))
                                (if _%$e145915%_
                                    _%$e145915%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args145918%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen145919%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args145918%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args145918%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp150141
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name145920%_
                                                                (cons _%args145918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp150138
                                  (map (lambda (_%g145921145924%_
                                                _%g145922145926%_)
                                         (_%generate1145811%_
                                          _%args145918%_
                                          _%arglen145919%_
                                          _%g145921145924%_
                                          _%g145922145926%_))
                                       (let ((__tmp150139
                                              (lambda (_%g145928145931%_
                                                       _%g145929145933%_)
                                                (cons _%g145928145931%_
                                                      _%g145929145933%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp150139
                                          '()
                                          _%L145899%_))
                                       (let ((__tmp150140
                                              (lambda (_%g145935145938%_
                                                       _%g145936145940%_)
                                                (cons _%g145935145938%_
                                                      _%g145936145940%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp150140
                                          '()
                                          _%L145898%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp150141 __tmp150138)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body145829145893%_
                     _%hd145830145895%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop145823145859%_
                                             _%target145820145854%_
                                             '()
                                             '()))
                                          (_%g145813145841%_
                                           _%g145814145844%_)))))
                                (_%g145813145841%_ _%g145814145844%_))))
                        (_%g145813145841%_ _%g145814145844%_)))))
            (_%g145812145943%_ _%stx145807%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self145043%_ _%stx145044%_ _%compiled-body?145045%_)
        (letrec ((_%generate-simple145047%_
                  (lambda (_%hd145791%_ _%body145792%_)
                    (_%coalesce-boolean145048%_
                     (_%simplify-let145049%_
                      (gxc#generate-runtime-simple-let
                       _%self145043%_
                       'let
                       _%hd145791%_
                       _%body145792%_
                       _%compiled-body?145045%_)))))
                 (_%coalesce-boolean145048%_
                  (lambda (_%code145652%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code145653145679%_ _%code145652%_)
                               (_%else145655145687%_
                                (lambda () _%code145652%_))
                               (_%K145657145724%_
                                (lambda (_%expr2145690%_
                                         _%expr1145691%_
                                         _%id145692%_)
                                  (let* ((_%expr2145693145701%_
                                          _%expr2145690%_)
                                         (_%else145695145709%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1145691%_
                                                        (cons _%expr2145690%_
                                                              '())))))
                                         (_%K145697145714%_
                                          (lambda (_%exprs145712%_)
                                            (cons 'or
                                                  (cons _%expr1145691%_
                                                        _%exprs145712%_)))))
                                    (if (pair? _%expr2145693145701%_)
                                        (let ((_%hd145698145717%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2145693145701%_)))
                                              (_%tl145699145719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2145693145701%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd145698145717%_ 'or))
                                              (let ((_%exprs145722%_
                                                     _%tl145699145719%_))
                                                (_%K145697145714%_
                                                 _%exprs145722%_))
                                              (_%else145695145709%_)))
                                        (_%else145695145709%_))))))
                          (if (pair? _%code145653145679%_)
                              (let ((_%hd145658145727%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code145653145679%_)))
                                    (_%tl145659145729%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code145653145679%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd145658145727%_ 'let))
                                    (if (pair? _%tl145659145729%_)
                                        (let ((_%hd145660145732%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl145659145729%_)))
                                              (_%tl145661145734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl145659145729%_))))
                                          (if (pair? _%hd145660145732%_)
                                              (let ((_%hd145672145737%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd145660145732%_)))
                                                    (_%tl145673145739%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd145660145732%_))))
                                                (if (pair? _%hd145672145737%_)
                                                    (let ((_%hd145674145742%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd145672145737%_)))
                                                          (_%tl145675145744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd145672145737%_))))
                                                      (let ((_%id145747%_
                                                             _%hd145674145742%_))
                                                        (if (pair? _%tl145675145744%_)
                                                            (let ((_%hd145676145749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl145675145744%_)))
                          (_%tl145677145751%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl145675145744%_))))
                      (let ((_%expr1145754%_ _%hd145676145749%_))
                        (if (null? _%tl145677145751%_)
                            (if (null? _%tl145673145739%_)
                                (if (pair? _%tl145661145734%_)
                                    (let ((_%hd145662145756%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl145661145734%_)))
                                          (_%tl145663145758%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl145661145734%_))))
                                      (if (pair? _%hd145662145756%_)
                                          (let ((_%hd145664145761%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd145662145756%_)))
                                                (_%tl145665145763%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd145662145756%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd145664145761%_
                                                         'if))
                                                (if (pair? _%tl145665145763%_)
                                                    (let ((_%hd145666145766%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl145665145763%_)))
                                                          (_%tl145667145768%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl145665145763%_))))
                                                      (if ((lambda (_%g145770145772%_)
                                                             (eq? _%g145770145772%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id145747%_))
                   _%hd145666145766%_)
                  (if (pair? _%tl145667145768%_)
                      (let ((_%hd145668145775%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl145667145768%_)))
                            (_%tl145669145777%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl145667145768%_))))
                        (if ((lambda (_%g145779145781%_)
                               (eq? _%g145779145781%_ _%id145747%_))
                             _%hd145668145775%_)
                            (if (pair? _%tl145669145777%_)
                                (let ((_%hd145670145784%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl145669145777%_)))
                                      (_%tl145671145786%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl145669145777%_))))
                                  (let ((_%expr2145789%_ _%hd145670145784%_))
                                    (if (null? _%tl145671145786%_)
                                        (if (null? _%tl145663145758%_)
                                            (_%K145657145724%_
                                             _%expr2145789%_
                                             _%expr1145754%_
                                             _%id145747%_)
                                            (_%else145655145687%_))
                                        (_%else145655145687%_))))
                                (_%else145655145687%_))
                            (_%else145655145687%_)))
                      (_%else145655145687%_))
                  (_%else145655145687%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else145655145687%_))
                                                (_%else145655145687%_)))
                                          (_%else145655145687%_)))
                                    (_%else145655145687%_))
                                (_%else145655145687%_))
                            (_%else145655145687%_))))
                    (_%else145655145687%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else145655145687%_)))
                                              (_%else145655145687%_)))
                                        (_%else145655145687%_))
                                    (_%else145655145687%_)))
                              (_%else145655145687%_)))
                        _%code145652%_)))
                 (_%simplify-let145049%_
                  (lambda (_%code145351%_)
                    (let* ((_%code145352145424%_ _%code145351%_)
                           (_%else145357145432%_ (lambda () _%code145351%_)))
                      (let ((_%K145416145632%_
                             (lambda (_%expr145630%_) _%expr145630%_))
                            (_%K145399145578%_
                             (lambda (_%body145574%_
                                      _%expr145575%_
                                      _%id145576%_)
                               (cons 'let
                                     (cons (cons (cons _%id145576%_
                                                       (cons _%expr145575%_
                                                             '()))
                                                 '())
                                           _%body145574%_))))
                            (_%K145376145502%_
                             (lambda (_%body145496%_
                                      _%expr2145497%_
                                      _%id2145498%_
                                      _%expr1145499%_
                                      _%id1145500%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1145500%_
                                                       (cons _%expr1145499%_
                                                             '()))
                                                 (cons (cons _%id2145498%_
                                                             (cons _%expr2145497%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body145496%_))))
                            (_%K145359145441%_
                             (lambda (_%body145436%_
                                      _%bind145437%_
                                      _%expr1145438%_
                                      _%id1145439%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1145439%_
                                                       (cons _%expr1145438%_
                                                             '()))
                                                 _%bind145437%_)
                                           _%body145436%_)))))
                        (if (pair? _%code145352145424%_)
                            (let ((_%tl145418145637%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code145352145424%_)))
                                  (_%hd145417145635%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code145352145424%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd145417145635%_ 'let))
                                  (if (pair? _%tl145418145637%_)
                                      (let ((_%tl145420145642%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl145418145637%_)))
                                            (_%hd145419145640%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl145418145637%_))))
                                        (if (null? _%hd145419145640%_)
                                            (if (pair? _%tl145420145642%_)
                                                (let ((_%tl145422145647%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl145420145642%_)))
                                                      (_%hd145421145645%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl145420145642%_))))
                                                  (if (null? _%tl145422145647%_)
                                                      (let ((_%expr145650%_
                                                             _%hd145421145645%_))
                                                        (_%K145416145632%_
                                                         _%expr145650%_))
                                                      (_%else145357145432%_)))
                                                (_%else145357145432%_))
                                            (if (pair? _%hd145419145640%_)
                                                (let ((_%tl145411145593%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd145419145640%_)))
                                                      (_%hd145410145591%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd145419145640%_))))
                                                  (if (pair? _%hd145410145591%_)
                                                      (let ((_%tl145413145598%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd145410145591%_)))
                    (_%hd145412145596%_
                     (let () (declare (not safe)) (##car _%hd145410145591%_))))
                (if (pair? _%tl145413145598%_)
                    (let ((_%tl145415145605%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl145413145598%_)))
                          (_%hd145414145603%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl145413145598%_))))
                      (if (null? _%tl145415145605%_)
                          (if (null? _%tl145411145593%_)
                              (if (pair? _%tl145420145642%_)
                                  (let ((_%tl145405145612%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl145420145642%_)))
                                        (_%hd145404145610%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl145420145642%_))))
                                    (if (pair? _%hd145404145610%_)
                                        (let ((_%tl145407145617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd145404145610%_)))
                                              (_%hd145406145615%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd145404145610%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd145406145615%_
                                                       'let))
                                              (if (pair? _%tl145407145617%_)
                                                  (let ((_%tl145409145622%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl145407145617%_)))
                                                        (_%hd145408145620%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl145407145617%_))))
                                                    (if (null? _%hd145408145620%_)
                                                        (if (null? _%tl145405145612%_)
                                                            (let ((_%id145601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd145412145596%_)
                          (_%expr145608%_ _%hd145414145603%_)
                          (_%body145625%_ _%tl145409145622%_))
                      (_%K145399145578%_
                       _%body145625%_
                       _%expr145608%_
                       _%id145601%_))
                    (_%else145357145432%_))
                (if (pair? _%hd145408145620%_)
                    (let ((_%tl145388145551%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd145408145620%_)))
                          (_%hd145387145549%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd145408145620%_))))
                      (if (pair? _%hd145387145549%_)
                          (let ((_%tl145390145556%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd145387145549%_)))
                                (_%hd145389145554%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd145387145549%_))))
                            (if (pair? _%tl145390145556%_)
                                (let ((_%tl145392145563%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl145390145556%_)))
                                      (_%hd145391145561%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl145390145556%_))))
                                  (if (null? _%tl145392145563%_)
                                      (if (null? _%tl145388145551%_)
                                          (if (null? _%tl145405145612%_)
                                              (let ((_%id1145525%_
                                                     _%hd145412145596%_)
                                                    (_%expr1145532%_
                                                     _%hd145414145603%_)
                                                    (_%id2145559%_
                                                     _%hd145389145554%_)
                                                    (_%expr2145566%_
                                                     _%hd145391145561%_)
                                                    (_%body145568%_
                                                     _%tl145409145622%_))
                                                (_%K145376145502%_
                                                 _%body145568%_
                                                 _%expr2145566%_
                                                 _%id2145559%_
                                                 _%expr1145532%_
                                                 _%id1145525%_))
                                              (_%else145357145432%_))
                                          (_%else145357145432%_))
                                      (_%else145357145432%_)))
                                (_%else145357145432%_)))
                          (_%else145357145432%_)))
                    (_%else145357145432%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else145357145432%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd145406145615%_
                                                           'let*))
                                                  (if (pair? _%tl145407145617%_)
                                                      (let ((_%tl145369145485%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl145407145617%_)))
                    (_%hd145368145483%_
                     (let () (declare (not safe)) (##car _%tl145407145617%_))))
                (if (null? _%tl145405145612%_)
                    (let ((_%id1145464%_ _%hd145412145596%_)
                          (_%expr1145471%_ _%hd145414145603%_)
                          (_%bind145488%_ _%hd145368145483%_)
                          (_%body145490%_ _%tl145369145485%_))
                      (_%K145359145441%_
                       _%body145490%_
                       _%bind145488%_
                       _%expr1145471%_
                       _%id1145464%_))
                    (_%else145357145432%_)))
              (_%else145357145432%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else145357145432%_))))
                                        (_%else145357145432%_)))
                                  (_%else145357145432%_))
                              (_%else145357145432%_))
                          (_%else145357145432%_)))
                    (_%else145357145432%_)))
              (_%else145357145432%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else145357145432%_))))
                                      (_%else145357145432%_))
                                  (_%else145357145432%_)))
                            (_%else145357145432%_))))))
                 (_%generate-values145050%_
                  (lambda (_%hd145164%_ _%body145165%_)
                    (let _%lp145167%_ ((_%rest145169%_ _%hd145164%_)
                                       (_%bind145170%_ '())
                                       (_%check145171%_ '())
                                       (_%post145172%_ '()))
                      (let* ((_%__stx149295149296%_ _%rest145169%_)
                             (_%g145175145186%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx149295149296%_)))))
                        (let ((_%__kont149297149298%_
                               (lambda (_%L145213%_ _%L145214%_)
                                 (let* ((_%__stx149251149252%_ _%L145214%_)
                                        (_%g145229145254%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx149251149252%_)))))
                                   (let ((_%__kont149253149254%_
                                          (lambda (_%L145327%_ _%L145328%_)
                                            (let ((_%eid145342%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L145328%_)))
                                                  (_%expr145343%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self145043%_
                                                      _%L145327%_))))
                                              (_%lp145167%_
                                               _%L145213%_
                                               (cons (cons _%eid145342%_
                                                           (cons _%expr145343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind145170%_)
                                               _%check145171%_
                                               _%post145172%_))))
                                         (_%__kont149255149256%_
                                          (lambda (_%L145275%_ _%L145276%_)
                                            (let* ((_%vals145289%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values145291%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals145289%_
                                                     _%L145276%_
                                                     _%L145275%_))
                                                   (_%refs145293%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals145289%_
                                                     _%L145276%_))
                                                   (_%expr145295%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self145043%_
                                                       _%L145275%_))))
                                              (_%lp145167%_
                                               _%L145213%_
                                               (cons (cons _%vals145289%_
                                                           (cons _%expr145295%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind145170%_)
                                               (cons _%check-values145291%_
                                                     _%check145171%_)
                                               (cons _%refs145293%_
                                                     _%post145172%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx149251149252%_))
                                         (let ((_%e145233145303%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx149251149252%_))))
                                           (let ((_%tl145235145308%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e145233145303%_)))
                                                 (_%hd145234145306%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e145233145303%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd145234145306%_))
                                                 (let ((_%e145236145311%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd145234145306%_))))
                                                   (let ((_%tl145238145316%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e145236145311%_)))
                                                         (_%hd145237145314%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e145236145311%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl145238145316%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl145235145308%_))
                     (let ((_%e145239145319%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl145235145308%_))))
                       (let ((_%tl145241145324%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e145239145319%_)))
                             (_%hd145240145322%_
                              (let ()
                                (declare (not safe))
                                (##car _%e145239145319%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl145241145324%_))
                             (_%__kont149253149254%_
                              _%hd145240145322%_
                              _%hd145237145314%_)
                             (let ()
                               (declare (not safe))
                               (_%g145229145254%_)))))
                     (let () (declare (not safe)) (_%g145229145254%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl145235145308%_))
                     (let ((_%e145247145267%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl145235145308%_))))
                       (let ((_%tl145249145272%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e145247145267%_)))
                             (_%hd145248145270%_
                              (let ()
                                (declare (not safe))
                                (##car _%e145247145267%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl145249145272%_))
                             (_%__kont149255149256%_
                              _%hd145248145270%_
                              _%hd145234145306%_)
                             (let ()
                               (declare (not safe))
                               (_%g145229145254%_)))))
                     (let () (declare (not safe)) (_%g145229145254%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl145235145308%_))
                                                     (let ((_%e145247145267%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl145235145308%_))))
                                                       (let ((_%tl145249145272%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e145247145267%_)))
                     (_%hd145248145270%_
                      (let () (declare (not safe)) (##car _%e145247145267%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl145249145272%_))
                     (_%__kont149255149256%_
                      _%hd145248145270%_
                      _%hd145234145306%_)
                     (let () (declare (not safe)) (_%g145229145254%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g145229145254%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g145229145254%_)))))))
                              (_%__kont149299149300%_
                               (lambda ()
                                 (let* ((_%body145193%_
                                         (if _%compiled-body?145045%_
                                             _%body145165%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self145043%_
                                                _%body145165%_))))
                                        (_%body145195%_
                                         (_%generate-values-post145051%_
                                          _%post145172%_
                                          _%body145193%_))
                                        (_%body145197%_
                                         (_%generate-values-check145052%_
                                          _%check145171%_
                                          _%body145195%_)))
                                   (cons 'let
                                         (cons (reverse _%bind145170%_)
                                               (cons _%body145197%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx149295149296%_))
                              (let ((_%e145179145205%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx149295149296%_))))
                                (let ((_%tl145181145210%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145179145205%_)))
                                      (_%hd145180145208%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145179145205%_))))
                                  (_%__kont149297149298%_
                                   _%tl145181145210%_
                                   _%hd145180145208%_)))
                              (_%__kont149299149300%_)))))))
                 (_%generate-values-post145051%_
                  (lambda (_%post145123%_ _%body145124%_)
                    (let _%lp145126%_ ((_%rest145128%_ _%post145123%_)
                                       (_%body145129%_ _%body145124%_))
                      (let* ((_%rest145130145138%_ _%rest145128%_)
                             (_%else145132145146%_ (lambda () _%body145129%_))
                             (_%K145134145152%_
                              (lambda (_%rest145149%_ _%bind145150%_)
                                (_%lp145126%_
                                 _%rest145149%_
                                 (cons 'let
                                       (cons _%bind145150%_
                                             (cons _%body145129%_ '())))))))
                        (if (pair? _%rest145130145138%_)
                            (let ((_%hd145135145155%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest145130145138%_)))
                                  (_%tl145136145157%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest145130145138%_))))
                              (let* ((_%bind145160%_ _%hd145135145155%_)
                                     (_%rest145162%_ _%tl145136145157%_))
                                (_%K145134145152%_
                                 _%rest145162%_
                                 _%bind145160%_)))
                            (_%else145132145146%_))))))
                 (_%generate-values-check145052%_
                  (lambda (_%check145120%_ _%body145121%_)
                    (cons 'begin
                          (let ((__tmp150143 (cons _%body145121%_ '()))
                                (__tmp150142 (reverse _%check145120%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp150143 __tmp150142))))))
          (let* ((_%g145054145071%_
                  (lambda (_%g145055145068%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g145055145068%_))))
                 (_%g145053145117%_
                  (lambda (_%g145055145074%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g145055145074%_))
                        (let ((_%e145058145076%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g145055145074%_))))
                          (let ((_%hd145059145079%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145058145076%_)))
                                (_%tl145060145081%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145058145076%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl145060145081%_))
                                (let ((_%e145061145084%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl145060145081%_))))
                                  (let ((_%hd145062145087%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e145061145084%_)))
                                        (_%tl145063145089%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e145061145084%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145063145089%_))
                                        (let ((_%e145064145092%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145063145089%_))))
                                          (let ((_%hd145065145095%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145064145092%_)))
                                                (_%tl145066145097%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145064145092%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145066145097%_))
                                                ((lambda (_%L145100%_
                                                          _%L145101%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L145101%_)
                                                       (_%generate-simple145047%_
                                                        _%L145101%_
                                                        _%L145100%_)
                                                       (_%generate-values145050%_
                                                        _%L145101%_
                                                        _%L145100%_)))
                                                 _%hd145065145095%_
                                                 _%hd145062145087%_)
                                                (_%g145054145071%_
                                                 _%g145055145074%_))))
                                        (_%g145054145071%_
                                         _%g145055145074%_))))
                                (_%g145054145071%_ _%g145055145074%_))))
                        (_%g145054145071%_ _%g145055145074%_)))))
            (_%g145053145117%_ _%stx145044%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self145797%_ _%stx145798%_)
        (let ((_%compiled-body?145800%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self145797%_
           _%stx145798%_
           _%compiled-body?145800%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g150145_
        (let ((_g150144_ (let () (declare (not safe)) (##length _g150145_))))
          (cond ((let () (declare (not safe)) (##fx= _g150144_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g150145_))
                ((let () (declare (not safe)) (##fx= _g150144_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g150145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g150145_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals144937%_ _%hd144938%_)
        (let _%lp144940%_ ((_%rest144942%_ _%hd144938%_)
                           (_%k144943%_ '0)
                           (_%r144944%_ '()))
          (let* ((_%__stx149309149310%_ _%rest144942%_)
                 (_%g144949144966%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx149309149310%_)))))
            (let ((_%__kont149311149312%_
                   (lambda (_%L145029%_)
                     (_%lp144940%_
                      _%L145029%_
                      (let () (declare (not safe)) (##fx+ _%k144943%_ '1))
                      _%r144944%_)))
                  (_%__kont149313149314%_
                   (lambda (_%L145002%_ _%L145003%_)
                     (_%lp144940%_
                      _%L145002%_
                      (let () (declare (not safe)) (##fx+ _%k144943%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L145003%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals144937%_
                                         _%k144943%_
                                         _%L145002%_)
                                        '()))
                            _%r144944%_))))
                  (_%__kont149315149316%_
                   (lambda (_%L144978%_)
                     (let ((__tmp150146
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L144978%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals144937%_
                                               _%k144943%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp150146 _%r144944%_))))
                  (_%__kont149317149318%_ (lambda () (reverse _%r144944%_))))
              (let ((_%g144947144989%_
                     (lambda ()
                       (let ((_%L144978%_ _%__stx149309149310%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L144978%_))
                             (_%__kont149315149316%_ _%L144978%_)
                             (_%__kont149317149318%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx149309149310%_))
                    (let ((_%e144952145018%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx149309149310%_))))
                      (let ((_%tl144954145023%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144952145018%_)))
                            (_%hd144953145021%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144952145018%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd144953145021%_))
                            (let ((_%e144955145026%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd144953145021%_))))
                              (if (equal? _%e144955145026%_ '#f)
                                  (_%__kont149311149312%_ _%tl144954145023%_)
                                  (_%__kont149313149314%_
                                   _%tl144954145023%_
                                   _%hd144953145021%_)))
                            (_%__kont149313149314%_
                             _%tl144954145023%_
                             _%hd144953145021%_))))
                    (let () (declare (not safe)) (_%g144947144989%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self144616%_ _%stx144617%_ _%compiled-body?144618%_)
        (letrec ((_%generate-simple144620%_
                  (lambda (_%hd144922%_ _%body144923%_)
                    (gxc#generate-runtime-simple-let
                     _%self144616%_
                     'letrec
                     _%hd144922%_
                     _%body144923%_
                     _%compiled-body?144618%_)))
                 (_%generate-values144621%_
                  (lambda (_%hd144701%_ _%body144702%_)
                    (let _%lp144704%_ ((_%rest144706%_ _%hd144701%_)
                                       (_%bind144707%_ '())
                                       (_%check144708%_ '())
                                       (_%post144709%_ '()))
                      (let* ((_%__stx149383149384%_ _%rest144706%_)
                             (_%g144712144723%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx149383149384%_)))))
                        (let ((_%__kont149385149386%_
                               (lambda (_%L144750%_ _%L144751%_)
                                 (let* ((_%__stx149339149340%_ _%L144751%_)
                                        (_%g144766144791%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx149339149340%_)))))
                                   (let ((_%__kont149341149342%_
                                          (lambda (_%L144898%_ _%L144899%_)
                                            (let ((_%eid144913%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L144899%_)))
                                                  (_%expr144914%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self144616%_
                                                      _%L144898%_))))
                                              (_%lp144704%_
                                               _%L144750%_
                                               (cons (cons _%eid144913%_
                                                           (cons _%expr144914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind144707%_)
                                               _%check144708%_
                                               _%post144709%_))))
                                         (_%__kont149343149344%_
                                          (lambda (_%L144812%_ _%L144813%_)
                                            (let* ((_%vals144826%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values144828%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals144826%_
                                                     _%L144813%_
                                                     _%L144812%_))
                                                   (_%refs144830%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals144826%_
                                                     _%L144813%_))
                                                   (_%expr144832%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self144616%_
                                                       _%L144812%_))))
                                              (_%lp144704%_
                                               _%L144750%_
                                               (let ((__tmp150148
                                                      (cons (cons _%vals144826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr144832%_ '()))
                    _%bind144707%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp150147
                                                      (map (lambda (_%e144834144836%_)
                                                             (let* ((_%g144838144847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e144834144836%_)
                            (_%E144840144851%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g144838144847%_
                                        '([eid _])))
                               '#!void))
                            (_%K144841144856%_
                             (lambda (_%eid144854%_)
                               (cons _%eid144854%_ (cons '#!void '())))))
                       (if (pair? _%g144838144847%_)
                           (let ((_%hd144842144859%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g144838144847%_)))
                                 (_%tl144843144861%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g144838144847%_))))
                             (let ((_%eid144864%_ _%hd144842144859%_))
                               (if (pair? _%tl144843144861%_)
                                   (let ((_%tl144845144866%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl144843144861%_))))
                                     (if (null? _%tl144845144866%_)
                                         (_%K144841144856%_ _%eid144864%_)
                                         (_%E144840144851%_)))
                                   (_%E144840144851%_))))
                           (_%E144840144851%_))))
                   _%refs144830%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp150148
                                                  __tmp150147))
                                               (cons _%check-values144828%_
                                                     _%check144708%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs144830%_
                                                  _%post144709%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx149339149340%_))
                                         (let ((_%e144770144874%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx149339149340%_))))
                                           (let ((_%tl144772144879%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e144770144874%_)))
                                                 (_%hd144771144877%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e144770144874%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd144771144877%_))
                                                 (let ((_%e144773144882%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd144771144877%_))))
                                                   (let ((_%tl144775144887%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e144773144882%_)))
                                                         (_%hd144774144885%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e144773144882%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl144775144887%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl144772144879%_))
                     (let ((_%e144776144890%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl144772144879%_))))
                       (let ((_%tl144778144895%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e144776144890%_)))
                             (_%hd144777144893%_
                              (let ()
                                (declare (not safe))
                                (##car _%e144776144890%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144778144895%_))
                             (_%__kont149341149342%_
                              _%hd144777144893%_
                              _%hd144774144885%_)
                             (let ()
                               (declare (not safe))
                               (_%g144766144791%_)))))
                     (let () (declare (not safe)) (_%g144766144791%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl144772144879%_))
                     (let ((_%e144784144804%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl144772144879%_))))
                       (let ((_%tl144786144809%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e144784144804%_)))
                             (_%hd144785144807%_
                              (let ()
                                (declare (not safe))
                                (##car _%e144784144804%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144786144809%_))
                             (_%__kont149343149344%_
                              _%hd144785144807%_
                              _%hd144771144877%_)
                             (let ()
                               (declare (not safe))
                               (_%g144766144791%_)))))
                     (let () (declare (not safe)) (_%g144766144791%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl144772144879%_))
                                                     (let ((_%e144784144804%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl144772144879%_))))
                                                       (let ((_%tl144786144809%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e144784144804%_)))
                     (_%hd144785144807%_
                      (let () (declare (not safe)) (##car _%e144784144804%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl144786144809%_))
                     (_%__kont149343149344%_
                      _%hd144785144807%_
                      _%hd144771144877%_)
                     (let () (declare (not safe)) (_%g144766144791%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g144766144791%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g144766144791%_)))))))
                              (_%__kont149387149388%_
                               (lambda ()
                                 (let* ((_%body144730%_
                                         (if _%compiled-body?144618%_
                                             _%body144702%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self144616%_
                                                _%body144702%_))))
                                        (_%body144732%_
                                         (_%generate-values-post144623%_
                                          _%post144709%_
                                          _%body144730%_))
                                        (_%body144734%_
                                         (_%generate-values-check144622%_
                                          _%check144708%_
                                          _%body144732%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind144707%_)
                                               (cons _%body144734%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx149383149384%_))
                              (let ((_%e144716144742%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx149383149384%_))))
                                (let ((_%tl144718144747%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144716144742%_)))
                                      (_%hd144717144745%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144716144742%_))))
                                  (_%__kont149385149386%_
                                   _%tl144718144747%_
                                   _%hd144717144745%_)))
                              (_%__kont149387149388%_)))))))
                 (_%generate-values-check144622%_
                  (lambda (_%check144698%_ _%body144699%_)
                    (cons 'begin
                          (let ((__tmp150150 (cons _%body144699%_ '()))
                                (__tmp150149 (reverse _%check144698%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp150150 __tmp150149)))))
                 (_%generate-values-post144623%_
                  (lambda (_%post144691%_ _%body144692%_)
                    (cons 'begin
                          (let ((__tmp150154 (cons _%body144692%_ '()))
                                (__tmp150151
                                 (let ((__tmp150153
                                        (lambda (_%g144693144695%_)
                                          (cons 'set! _%g144693144695%_)))
                                       (__tmp150152 (reverse _%post144691%_)))
                                   (declare (not safe))
                                   (##map __tmp150153 __tmp150152))))
                            (declare (not safe))
                            (__foldr1 cons __tmp150154 __tmp150151))))))
          (let* ((_%g144625144642%_
                  (lambda (_%g144626144639%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144626144639%_))))
                 (_%g144624144688%_
                  (lambda (_%g144626144645%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144626144645%_))
                        (let ((_%e144629144647%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144626144645%_))))
                          (let ((_%hd144630144650%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144629144647%_)))
                                (_%tl144631144652%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144629144647%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144631144652%_))
                                (let ((_%e144632144655%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl144631144652%_))))
                                  (let ((_%hd144633144658%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144632144655%_)))
                                        (_%tl144634144660%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144632144655%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144634144660%_))
                                        (let ((_%e144635144663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144634144660%_))))
                                          (let ((_%hd144636144666%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144635144663%_)))
                                                (_%tl144637144668%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144635144663%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144637144668%_))
                                                ((lambda (_%L144671%_
                                                          _%L144672%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L144672%_)
                                                       (_%generate-simple144620%_
                                                        _%L144672%_
                                                        _%L144671%_)
                                                       (_%generate-values144621%_
                                                        _%L144672%_
                                                        _%L144671%_)))
                                                 _%hd144636144666%_
                                                 _%hd144633144658%_)
                                                (_%g144625144642%_
                                                 _%g144626144645%_))))
                                        (_%g144625144642%_
                                         _%g144626144645%_))))
                                (_%g144625144642%_ _%g144626144645%_))))
                        (_%g144625144642%_ _%g144626144645%_)))))
            (_%g144624144688%_ _%stx144617%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self144928%_ _%stx144929%_)
        (let ((_%compiled-body?144931%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self144928%_
           _%stx144929%_
           _%compiled-body?144931%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g150156_
        (let ((_g150155_ (let () (declare (not safe)) (##length _g150156_))))
          (cond ((let () (declare (not safe)) (##fx= _g150155_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g150156_))
                ((let () (declare (not safe)) (##fx= _g150155_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g150156_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g150156_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self144197%_ _%stx144198%_)
        (letrec ((_%generate-values144200%_
                  (lambda (_%hd144443%_ _%body144444%_)
                    (let _%lp144446%_ ((_%rest144448%_ _%hd144443%_)
                                       (_%bind144449%_ '()))
                      (let* ((_%rest144450144458%_ _%rest144448%_)
                             (_%else144452144469%_
                              (lambda ()
                                (let ((_%bind144466%_ (reverse _%bind144449%_))
                                      (_%body144467%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self144197%_
                                          _%body144444%_))))
                                  (cons 'letrec*
                                        (cons _%bind144466%_
                                              (cons _%body144467%_ '()))))))
                             (_%K144454144603%_
                              (lambda (_%rest144472%_ _%hd-bind144473%_)
                                (let* ((_%__stx149397149398%_
                                        _%hd-bind144473%_)
                                       (_%g144476144501%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx149397149398%_)))))
                                  (let ((_%__kont149399149400%_
                                         (lambda (_%L144582%_ _%L144583%_)
                                           (let ((_%eid144597%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L144583%_)))
                                                 (_%expr144598%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self144197%_
                                                     _%L144582%_))))
                                             (_%lp144446%_
                                              _%rest144472%_
                                              (cons (cons _%eid144597%_
                                                          (cons _%expr144598%_
                                                                '()))
                                                    _%bind144449%_)))))
                                        (_%__kont149401149402%_
                                         (lambda (_%L144522%_ _%L144523%_)
                                           (let* ((_%vals144542%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp144544%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values144546%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp144544%_
                                                    _%L144523%_
                                                    _%L144522%_))
                                                  (_%refs144548%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals144542%_
                                                    _%L144523%_))
                                                  (_%expr144550%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self144197%_
                                                      _%L144522%_))))
                                             (_%lp144446%_
                                              _%rest144472%_
                                              (let ((__tmp150157
                                                     (cons (cons _%vals144542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp144544%_
                                                       (cons _%expr144550%_
                                                             '()))
                                                 '())
                                           (cons _%check-values144546%_
                                                 (cons _%tmp144544%_ '()))))
                               '()))
                   _%bind144449%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp150157
                                                 _%refs144548%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx149397149398%_))
                                        (let ((_%e144480144558%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx149397149398%_))))
                                          (let ((_%tl144482144563%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144480144558%_)))
                                                (_%hd144481144561%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144480144558%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd144481144561%_))
                                                (let ((_%e144483144566%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd144481144561%_))))
                                                  (let ((_%tl144485144571%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e144483144566%_)))
                                                        (_%hd144484144569%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e144483144566%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl144485144571%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl144482144563%_))
                                                            (let ((_%e144486144574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl144482144563%_))))
                      (let ((_%tl144488144579%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144486144574%_)))
                            (_%hd144487144577%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144486144574%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl144488144579%_))
                            (_%__kont149399149400%_
                             _%hd144487144577%_
                             _%hd144484144569%_)
                            (let ()
                              (declare (not safe))
                              (_%g144476144501%_)))))
                    (let () (declare (not safe)) (_%g144476144501%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl144482144563%_))
                    (let ((_%e144494144514%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl144482144563%_))))
                      (let ((_%tl144496144519%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144494144514%_)))
                            (_%hd144495144517%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144494144514%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl144496144519%_))
                            (_%__kont149401149402%_
                             _%hd144495144517%_
                             _%hd144481144561%_)
                            (let ()
                              (declare (not safe))
                              (_%g144476144501%_)))))
                    (let () (declare (not safe)) (_%g144476144501%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl144482144563%_))
                                                    (let ((_%e144494144514%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl144482144563%_))))
                                                      (let ((_%tl144496144519%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e144494144514%_)))
                    (_%hd144495144517%_
                     (let () (declare (not safe)) (##car _%e144494144514%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl144496144519%_))
                    (_%__kont149401149402%_
                     _%hd144495144517%_
                     _%hd144481144561%_)
                    (let () (declare (not safe)) (_%g144476144501%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g144476144501%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g144476144501%_))))))))
                        (if (pair? _%rest144450144458%_)
                            (let ((_%hd144455144606%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest144450144458%_)))
                                  (_%tl144456144608%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest144450144458%_))))
                              (let* ((_%hd-bind144611%_ _%hd144455144606%_)
                                     (_%rest144613%_ _%tl144456144608%_))
                                (_%K144454144603%_
                                 _%rest144613%_
                                 _%hd-bind144611%_)))
                            (_%else144452144469%_))))))
                 (_%generate-letrec?144201%_
                  (lambda (_%hd144333%_)
                    (let _%lp144335%_ ((_%rest144337%_ _%hd144333%_))
                      (let* ((_%rest144338144346%_ _%rest144337%_)
                             (_%else144340144354%_ (lambda () '#t))
                             (_%K144342144431%_
                              (lambda (_%rest144357%_ _%hd-bind144358%_)
                                (let* ((_%g144360144377%_
                                        (lambda (_%g144361144374%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g144361144374%_))))
                                       (_%g144359144428%_
                                        (lambda (_%g144361144380%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g144361144380%_))
                                              (let ((_%e144364144382%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g144361144380%_))))
                                                (let ((_%hd144365144385%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144364144382%_)))
                                                      (_%tl144366144387%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144364144382%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd144365144385%_))
                                                      (let ((_%e144367144390%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd144365144385%_))))
                (let ((_%hd144368144393%_
                       (let () (declare (not safe)) (##car _%e144367144390%_)))
                      (_%tl144369144395%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e144367144390%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl144369144395%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl144366144387%_))
                          (let ((_%e144370144398%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl144366144387%_))))
                            (let ((_%hd144371144401%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e144370144398%_)))
                                  (_%tl144372144403%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e144370144398%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl144372144403%_))
                                  ((lambda (_%L144406%_ _%L144407%_)
                                     (if (_%is-lambda-expr?144202%_
                                          _%L144406%_)
                                         (_%lp144335%_ _%rest144357%_)
                                         '#f))
                                   _%hd144371144401%_
                                   _%hd144368144393%_)
                                  (_%g144360144377%_ _%g144361144380%_))))
                          (_%g144360144377%_ _%g144361144380%_))
                      (_%g144360144377%_ _%g144361144380%_))))
              (_%g144360144377%_ _%g144361144380%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g144360144377%_
                                               _%g144361144380%_)))))
                                  (_%g144359144428%_ _%hd-bind144358%_)))))
                        (if (pair? _%rest144338144346%_)
                            (let ((_%hd144343144434%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest144338144346%_)))
                                  (_%tl144344144436%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest144338144346%_))))
                              (let* ((_%hd-bind144439%_ _%hd144343144434%_)
                                     (_%rest144441%_ _%tl144344144436%_))
                                (_%K144342144431%_
                                 _%rest144441%_
                                 _%hd-bind144439%_)))
                            (_%else144340144354%_))))))
                 (_%is-lambda-expr?144202%_
                  (lambda (_%expr144270%_)
                    (let* ((_%__stx149441149442%_ _%expr144270%_)
                           (_%g144273144287%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx149441149442%_)))))
                      (let ((_%__kont149443149444%_
                             (lambda (_%L144315%_ _%L144316%_) '#t))
                            (_%__kont149445149446%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx149441149442%_))
                            (let ((_%e144277144299%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx149441149442%_))))
                              (let ((_%tl144279144304%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e144277144299%_)))
                                    (_%hd144278144302%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e144277144299%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd144278144302%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd144278144302%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl144279144304%_))
                                            (let ((_%e144280144307%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl144279144304%_))))
                                              (let ((_%tl144282144312%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144280144307%_)))
                                                    (_%hd144281144310%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144280144307%_))))
                                                (_%__kont149443149444%_
                                                 _%tl144282144312%_
                                                 _%hd144281144310%_)))
                                            (_%__kont149445149446%_))
                                        (_%__kont149445149446%_))
                                    (_%__kont149445149446%_))))
                            (_%__kont149445149446%_)))))))
          (let* ((_%g144204144221%_
                  (lambda (_%g144205144218%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144205144218%_))))
                 (_%g144203144267%_
                  (lambda (_%g144205144224%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144205144224%_))
                        (let ((_%e144208144226%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144205144224%_))))
                          (let ((_%hd144209144229%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144208144226%_)))
                                (_%tl144210144231%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144208144226%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144210144231%_))
                                (let ((_%e144211144234%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl144210144231%_))))
                                  (let ((_%hd144212144237%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144211144234%_)))
                                        (_%tl144213144239%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144211144234%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144213144239%_))
                                        (let ((_%e144214144242%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144213144239%_))))
                                          (let ((_%hd144215144245%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144214144242%_)))
                                                (_%tl144216144247%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144214144242%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144216144247%_))
                                                ((lambda (_%L144250%_
                                                          _%L144251%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L144251%_)
                                                       (if (_%generate-letrec?144201%_
                                                            _%L144251%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self144197%_
                                                            'letrec
                                                            _%L144251%_
                                                            _%L144250%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self144197%_
                                                            'letrec*
                                                            _%L144251%_
                                                            _%L144250%_
                                                            '#f))
                                                       (_%generate-values144200%_
                                                        _%L144251%_
                                                        _%L144250%_)))
                                                 _%hd144215144245%_
                                                 _%hd144212144237%_)
                                                (_%g144204144221%_
                                                 _%g144205144224%_))))
                                        (_%g144204144221%_
                                         _%g144205144224%_))))
                                (_%g144204144221%_ _%g144205144224%_))))
                        (_%g144204144221%_ _%g144205144224%_)))))
            (_%g144203144267%_ _%stx144198%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd144134%_)
        (let _%lp144136%_ ((_%rest144138%_ _%hd144134%_))
          (let* ((_%rest144139144155%_ _%rest144138%_)
                 (_%else144142144163%_ (lambda () '#f)))
            (let ((_%K144145144176%_
                   (lambda (_%rest144174%_) (_%lp144136%_ _%rest144174%_)))
                  (_%K144144144168%_ (lambda () '#t)))
              (let ((_%try-match144141144171%_
                     (lambda ()
                       (if (null? _%rest144139144155%_)
                           (_%K144144144168%_)
                           (_%else144142144163%_)))))
                (if (pair? _%rest144139144155%_)
                    (let ((_%tl144147144181%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest144139144155%_)))
                          (_%hd144146144179%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest144139144155%_))))
                      (if (pair? _%hd144146144179%_)
                          (let ((_%tl144149144186%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd144146144179%_)))
                                (_%hd144148144184%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd144146144179%_))))
                            (if (pair? _%hd144148144184%_)
                                (let ((_%tl144153144189%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd144148144184%_))))
                                  (if (null? _%tl144153144189%_)
                                      (if (pair? _%tl144149144186%_)
                                          (let ((_%tl144151144192%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl144149144186%_))))
                                            (if (null? _%tl144151144192%_)
                                                (let ((_%rest144195%_
                                                       _%tl144147144181%_))
                                                  (_%lp144136%_
                                                   _%rest144195%_))
                                                (_%else144142144163%_)))
                                          (_%else144142144163%_))
                                      (_%else144142144163%_)))
                                (_%else144142144163%_)))
                          (_%else144142144163%_)))
                    (_%try-match144141144171%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self144045%_
               _%form144046%_
               _%hd144047%_
               _%body144048%_
               _%compiled-body?144049%_)
        (letrec ((_%generate1144051%_
                  (lambda (_%bind144090%_)
                    (let* ((_%bind144091144102%_ _%bind144090%_)
                           (_%E144093144106%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind144091144102%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K144094144112%_
                            (lambda (_%expr144109%_ _%id144110%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id144110%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self144045%_
                                             _%expr144109%_))
                                          '())))))
                      (if (pair? _%bind144091144102%_)
                          (let ((_%hd144095144115%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind144091144102%_)))
                                (_%tl144096144117%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind144091144102%_))))
                            (if (pair? _%hd144095144115%_)
                                (let ((_%hd144099144120%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd144095144115%_)))
                                      (_%tl144100144122%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd144095144115%_))))
                                  (let ((_%id144125%_ _%hd144099144120%_))
                                    (if (null? _%tl144100144122%_)
                                        (if (pair? _%tl144096144117%_)
                                            (let ((_%hd144097144127%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl144096144117%_)))
                                                  (_%tl144098144129%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl144096144117%_))))
                                              (let ((_%expr144132%_
                                                     _%hd144097144127%_))
                                                (if (null? _%tl144098144129%_)
                                                    (_%K144094144112%_
                                                     _%expr144132%_
                                                     _%id144125%_)
                                                    (_%E144093144106%_))))
                                            (_%E144093144106%_))
                                        (_%E144093144106%_))))
                                (_%E144093144106%_)))
                          (_%E144093144106%_))))))
          (let* ((_%bind144053%_ (map _%generate1144051%_ _%hd144047%_))
                 (_%body144055%_
                  (if _%compiled-body?144049%_
                      _%body144048%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self144045%_ _%body144048%_))))
                 (_%body144087%_
                  (let* ((_%body144056144064%_ _%body144055%_)
                         (_%else144058144072%_
                          (lambda () (cons _%body144055%_ '())))
                         (_%K144060144077%_
                          (lambda (_%exprs144075%_) _%exprs144075%_)))
                    (if (pair? _%body144056144064%_)
                        (let ((_%hd144061144080%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body144056144064%_)))
                              (_%tl144062144082%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body144056144064%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd144061144080%_ 'begin))
                              (let ((_%exprs144085%_ _%tl144062144082%_))
                                (_%K144060144077%_ _%exprs144085%_))
                              (_%else144058144072%_)))
                        (_%else144058144072%_)))))
            (cons _%form144046%_ (cons _%bind144053%_ _%body144087%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self143945%_ _%stx143946%_)
        (letrec ((_%generate1143948%_
                  (lambda (_%datum144000%_)
                    (if (or (null? _%datum144000%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum144000%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum144000%_))
                            (eof-object? _%datum144000%_))
                        _%datum144000%_
                        (if (uninterned-symbol? _%datum144000%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum144000%_
                               '#t))
                            (if (pair? _%datum144000%_)
                                (cons (_%generate1143948%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum144000%_)))
                                      (_%generate1143948%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum144000%_))))
                                (if (box? _%datum144000%_)
                                    (box (_%generate1143948%_
                                          (unbox _%datum144000%_)))
                                    (if (vector? _%datum144000%_)
                                        (vector-map
                                         _%generate1143948%_
                                         _%datum144000%_)
                                        (if (or (s8vector? _%datum144000%_)
                                                (u8vector? _%datum144000%_)
                                                (s16vector? _%datum144000%_)
                                                (u16vector? _%datum144000%_)
                                                (s32vector? _%datum144000%_)
                                                (u32vector? _%datum144000%_)
                                                (s64vector? _%datum144000%_)
                                                (u64vector? _%datum144000%_)
                                                (f32vector? _%datum144000%_)
                                                (f64vector? _%datum144000%_))
                                            _%datum144000%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx143946%_)))))))))))
          (let* ((_%g143950143963%_
                  (lambda (_%g143951143960%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143951143960%_))))
                 (_%g143949143997%_
                  (lambda (_%g143951143966%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143951143966%_))
                        (let ((_%e143953143968%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143951143966%_))))
                          (let ((_%hd143954143971%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143953143968%_)))
                                (_%tl143955143973%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143953143968%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143955143973%_))
                                (let ((_%e143956143976%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143955143973%_))))
                                  (let ((_%hd143957143979%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143956143976%_)))
                                        (_%tl143958143981%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143956143976%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl143958143981%_))
                                        ((lambda (_%L143984%_)
                                           (cons 'quote
                                                 (cons (_%generate1143948%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L143984%_)))
                                                       '())))
                                         _%hd143957143979%_)
                                        (_%g143950143963%_
                                         _%g143951143966%_))))
                                (_%g143950143963%_ _%g143951143966%_))))
                        (_%g143950143963%_ _%g143951143966%_)))))
            (_%g143949143997%_ _%stx143946%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self143386%_ _%stx143387%_)
        (letrec ((_%compile-call143389%_
                  (lambda (_%rator143678%_ _%rands143679%_)
                    (let ((_%rator143685%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self143386%_
                              _%rator143678%_)))
                          (_%rands143686%_
                           (map (lambda (_%g143680143682%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self143386%_
                                     _%g143680143682%_)))
                                _%rands143679%_)))
                      (let* ((_%__stx149488149489%_ _%rator143685%_)
                             (_%g143689143741%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx149488149489%_)))))
                        (let ((_%__kont149490149491%_
                               (lambda (_%L143865%_
                                        _%L143866%_
                                        _%L143867%_
                                        _%L143868%_)
                                 (if (let ((__tmp150160
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands143686%_)))
                                           (__tmp150158
                                            (length (let ((__tmp150159
                                                           (lambda (_%g143904143907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g143905143909%_)
                     (cons _%g143904143907%_ _%g143905143909%_))))
              (declare (not safe))
              (__foldr1 __tmp150159 '() _%L143867%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp150160 __tmp150158))
                                     (let* ((_%id143912%_ _%L143868%_)
                                            (_%args143921%_
                                             (let ((__tmp150161
                                                    (lambda (_%g143913143916%_
                                                             _%g143914143918%_)
                                                      (cons _%g143913143916%_
                                                            _%g143914143918%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp150161
                                                '()
                                                _%L143867%_)))
                                            (_%body143930%_
                                             (let ((__tmp150162
                                                    (lambda (_%g143922143925%_
                                                             _%g143923143927%_)
                                                      (cons _%g143922143925%_
                                                            _%g143923143927%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp150162
                                                '()
                                                _%L143866%_)))
                                            (_%init143932%_
                                             (map list
                                                  _%args143921%_
                                                  _%rands143686%_)))
                                       (cons 'let
                                             (cons _%id143912%_
                                                   (cons _%init143932%_
                                                         _%body143930%_))))
                                     (let ((__tmp150163
                                            (let ((__tmp150164
                                                   (lambda (_%g143934143937%_
                                                            _%g143935143939%_)
                                                     (cons _%g143934143937%_
                                                           _%g143935143939%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp150164
                                               '()
                                               _%L143867%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx143387%_
                                        __tmp150163
                                        _%rands143686%_)))))
                              (_%__kont149496149497%_
                               (lambda ()
                                 (cons _%rator143685%_ _%rands143686%_))))
                          (let ((_%__match149555149556%_
                                 (lambda (_%e143695143753%_
                                          _%hd143696143756%_
                                          _%tl143697143758%_
                                          _%e143698143761%_
                                          _%hd143699143764%_
                                          _%tl143700143766%_
                                          _%e143701143769%_
                                          _%hd143702143772%_
                                          _%tl143703143774%_
                                          _%e143704143777%_
                                          _%hd143705143780%_
                                          _%tl143706143782%_
                                          _%e143707143785%_
                                          _%hd143708143788%_
                                          _%tl143709143790%_
                                          _%e143710143793%_
                                          _%hd143711143796%_
                                          _%tl143712143798%_
                                          _%e143713143801%_
                                          _%hd143714143804%_
                                          _%tl143715143806%_
                                          _%__splice149492149493%_
                                          _%target143716143809%_
                                          _%tl143718143811%_)
                                   (letrec ((_%loop143719143814%_
                                             (lambda (_%hd143717143817%_
                                                      _%arg143723143819%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd143717143817%_))
                                                   (let ((_%e143720143822%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd143717143817%_))))
                                                     (let ((_%lp-tl143722143827%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e143720143822%_)))
                                                           (_%lp-hd143721143825%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e143720143822%_))))
                                                       (_%loop143719143814%_
                                                        _%lp-tl143722143827%_
                                                        (cons _%lp-hd143721143825%_
                                                              _%arg143723143819%_))))
                                                   (let ((_%arg143724143830%_
                                                          (reverse _%arg143723143819%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl143715143806%_))
                                                         (let ((_%__splice149494149495%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl143715143806%_ '0))))
                   (let ((_%tl143727143835%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice149494149495%_ '1)))
                         (_%target143725143833%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice149494149495%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl143727143835%_))
                         (letrec ((_%loop143728143838%_
                                   (lambda (_%hd143726143841%_
                                            _%body143732143843%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd143726143841%_))
                                         (let ((_%e143729143846%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd143726143841%_))))
                                           (let ((_%lp-tl143731143851%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e143729143846%_)))
                                                 (_%lp-hd143730143849%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e143729143846%_))))
                                             (_%loop143728143838%_
                                              _%lp-tl143731143851%_
                                              (cons _%lp-hd143730143849%_
                                                    _%body143732143843%_))))
                                         (let ((_%body143733143854%_
                                                (reverse _%body143732143843%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl143709143790%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl143703143774%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl143700143766%_))
                                                       (let ((_%e143734143857%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl143700143766%_))))
                 (let ((_%tl143736143862%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e143734143857%_)))
                       (_%hd143735143860%_
                        (let ()
                          (declare (not safe))
                          (##car _%e143734143857%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl143736143862%_))
                       (let ((_%L143865%_ _%hd143735143860%_)
                             (_%L143866%_ _%body143733143854%_)
                             (_%L143867%_ _%arg143724143830%_)
                             (_%L143868%_ _%hd143705143780%_))
                         (if (eq? _%L143868%_ _%L143865%_)
                             (_%__kont149490149491%_
                              _%L143865%_
                              _%L143866%_
                              _%L143867%_
                              _%L143868%_)
                             (_%__kont149496149497%_)))
                       (_%__kont149496149497%_))))
               (_%__kont149496149497%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont149496149497%_))
                                               (_%__kont149496149497%_)))))))
                           (_%loop143728143838%_ _%target143725143833%_ '()))
                         (_%__kont149496149497%_))))
                 (_%__kont149496149497%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop143719143814%_
                                      _%target143716143809%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx149488149489%_))
                                (let ((_%e143695143753%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx149488149489%_))))
                                  (let ((_%tl143697143758%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143695143753%_)))
                                        (_%hd143696143756%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143695143753%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd143696143756%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd143696143756%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl143697143758%_))
                                                (let ((_%e143698143761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl143697143758%_))))
                                                  (let ((_%tl143700143766%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143698143761%_)))
                                                        (_%hd143699143764%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143698143761%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd143699143764%_))
                                                        (let ((_%e143701143769%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd143699143764%_))))
                  (let ((_%tl143703143774%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143701143769%_)))
                        (_%hd143702143772%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143701143769%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143702143772%_))
                        (let ((_%e143704143777%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143702143772%_))))
                          (let ((_%tl143706143782%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143704143777%_)))
                                (_%hd143705143780%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143704143777%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143706143782%_))
                                (let ((_%e143707143785%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143706143782%_))))
                                  (let ((_%tl143709143790%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143707143785%_)))
                                        (_%hd143708143788%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143707143785%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd143708143788%_))
                                        (let ((_%e143710143793%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd143708143788%_))))
                                          (let ((_%tl143712143798%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143710143793%_)))
                                                (_%hd143711143796%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143710143793%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd143711143796%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd143711143796%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143712143798%_))
                                                        (let ((_%e143713143801%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143712143798%_))))
                  (let ((_%tl143715143806%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143713143801%_)))
                        (_%hd143714143804%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143713143801%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd143714143804%_))
                        (let ((_%__splice149492149493%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd143714143804%_
                                  '0))))
                          (let ((_%tl143718143811%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice149492149493%_ '1)))
                                (_%target143716143809%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice149492149493%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143718143811%_))
                                (_%__match149555149556%_
                                 _%e143695143753%_
                                 _%hd143696143756%_
                                 _%tl143697143758%_
                                 _%e143698143761%_
                                 _%hd143699143764%_
                                 _%tl143700143766%_
                                 _%e143701143769%_
                                 _%hd143702143772%_
                                 _%tl143703143774%_
                                 _%e143704143777%_
                                 _%hd143705143780%_
                                 _%tl143706143782%_
                                 _%e143707143785%_
                                 _%hd143708143788%_
                                 _%tl143709143790%_
                                 _%e143710143793%_
                                 _%hd143711143796%_
                                 _%tl143712143798%_
                                 _%e143713143801%_
                                 _%hd143714143804%_
                                 _%tl143715143806%_
                                 _%__splice149492149493%_
                                 _%target143716143809%_
                                 _%tl143718143811%_)
                                (_%__kont149496149497%_))))
                        (_%__kont149496149497%_))))
                (_%__kont149496149497%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont149496149497%_))
                                                (_%__kont149496149497%_))))
                                        (_%__kont149496149497%_))))
                                (_%__kont149496149497%_))))
                        (_%__kont149496149497%_))))
                (_%__kont149496149497%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont149496149497%_))
                                            (_%__kont149496149497%_))
                                        (_%__kont149496149497%_))))
                                (_%__kont149496149497%_)))))))))
          (let* ((_%g143391143414%_
                  (lambda (_%g143392143411%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143392143411%_))))
                 (_%g143390143675%_
                  (lambda (_%g143392143417%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143392143417%_))
                        (let ((_%e143395143419%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143392143417%_))))
                          (let ((_%hd143396143422%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143395143419%_)))
                                (_%tl143397143424%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143395143419%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143397143424%_))
                                (let ((_%e143398143427%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143397143424%_))))
                                  (let ((_%hd143399143430%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143398143427%_)))
                                        (_%tl143400143432%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143398143427%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl143400143432%_))
                                        (let ((_g150165_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl143400143432%_
                                                  '0))))
                                          (begin
                                            (let ((_g150166_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g150165_)
                                                         (##values-length
                                                          _g150165_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g150166_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g150166_)))
                                            (let ((_%target143401143435%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g150165_
                                                      0)))
                                                  (_%tl143403143437%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g150165_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl143403143437%_))
                                                  (letrec ((_%loop143404143440%_
                                                            (lambda (_%hd143402143443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand143408143445%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd143402143443%_))
                          (let ((_%e143405143448%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd143402143443%_))))
                            (let ((_%lp-hd143406143451%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143405143448%_)))
                                  (_%lp-tl143407143453%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143405143448%_))))
                              (_%loop143404143440%_
                               _%lp-tl143407143453%_
                               (cons _%lp-hd143406143451%_
                                     _%rand143408143445%_))))
                          (let ((_%rand143409143456%_
                                 (reverse _%rand143408143445%_)))
                            ((lambda (_%L143459%_ _%L143460%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call143389%_
                                    _%L143460%_
                                    (let ((__tmp150167
                                           (lambda (_%g143477143480%_
                                                    _%g143478143482%_)
                                             (cons _%g143477143480%_
                                                   _%g143478143482%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp150167 '() _%L143459%_)))
                                   (let* ((_%__stx149604149605%_ _%L143460%_)
                                          (_%g143486143498%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx149604149605%_)))))
                                     (let ((_%__kont149606149607%_
                                            (lambda ()
                                              (let ((_%f143535%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self143386%_
                                                        _%L143460%_))))
                                                (if (and (let ((__tmp150168
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f143535%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp150168))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f143535%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp143537%_ ((_%rest143540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp150170
                                                (lambda (_%g143657143660%_
                                                         _%g143658143662%_)
                                                  (cons _%g143657143660%_
                                                        _%g143658143662%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp150170
                                            '()
                                            _%L143459%_))))
                               (_%bind143542%_ '())
                               (_%args143543%_ '()))
              (let* ((_%rest143544143552%_ _%rest143540%_)
                     (_%else143546143560%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind143542%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f143535%_
                                                      _%args143543%_)
                                                '()))))))
                     (_%K143548143646%_
                      (lambda (_%rest143563%_ _%e143564%_)
                        (let* ((_%__stx149558149559%_ _%e143564%_)
                               (_%g143569143587%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx149558149559%_)))))
                          (let ((_%__kont149560149561%_
                                 (lambda ()
                                   (_%lp143537%_
                                    _%rest143563%_
                                    _%bind143542%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e143564%_))
                                          _%args143543%_))))
                                (_%__kont149562149563%_
                                 (lambda ()
                                   (_%lp143537%_
                                    _%rest143563%_
                                    _%bind143542%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e143564%_))
                                          _%args143543%_))))
                                (_%__kont149564149565%_
                                 (lambda ()
                                   (let ((_%tmp143594%_
                                          (let ((__tmp150169
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp150169))))
                                     (_%lp143537%_
                                      _%rest143563%_
                                      (cons (cons _%tmp143594%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e143564%_))
                                                        '()))
                                            _%bind143542%_)
                                      (cons _%tmp143594%_ _%args143543%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx149558149559%_))
                                (let ((_%e143571143625%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx149558149559%_))))
                                  (let ((_%tl143573143630%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143571143625%_)))
                                        (_%hd143572143628%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143571143625%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd143572143628%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd143572143628%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl143573143630%_))
                                                (let ((_%e143574143633%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl143573143630%_))))
                                                  (let ((_%tl143576143638%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143574143633%_)))
                                                        (_%hd143575143636%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143574143633%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl143576143638%_))
                                                        (_%__kont149560149561%_)
                                                        (_%__kont149564149565%_))))
                                                (_%__kont149564149565%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd143572143628%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl143573143630%_))
                                                    (let ((_%e143580143610%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl143573143630%_))))
                                                      (let ((_%tl143582143615%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e143580143610%_)))
                    (_%hd143581143613%_
                     (let () (declare (not safe)) (##car _%e143580143610%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl143582143615%_))
                    (_%__kont149562149563%_)
                    (_%__kont149564149565%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont149564149565%_))
                                                (_%__kont149564149565%_)))
                                        (_%__kont149564149565%_))))
                                (_%__kont149564149565%_)))))))
                (if (pair? _%rest143544143552%_)
                    (let ((_%hd143549143649%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest143544143552%_)))
                          (_%tl143550143651%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest143544143552%_))))
                      (let* ((_%e143654%_ _%hd143549143649%_)
                             (_%rest143656%_ _%tl143550143651%_))
                        (_%K143548143646%_ _%rest143656%_ _%e143654%_)))
                    (_%else143546143560%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call143389%_
                                                     _%L143460%_
                                                     (let ((__tmp150171
                                                            (lambda (_%g143664143667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g143665143669%_)
                      (cons _%g143664143667%_ _%g143665143669%_))))
               (declare (not safe))
               (__foldr1 __tmp150171 '() _%L143459%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont149608149609%_
                                            (lambda ()
                                              (_%compile-call143389%_
                                               _%L143460%_
                                               (let ((__tmp150172
                                                      (lambda (_%g143504143507%_
                                                               _%g143505143509%_)
                                                        (cons _%g143504143507%_
                                                              _%g143505143509%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp150172
                                                  '()
                                                  _%L143459%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx149604149605%_))
                                           (let ((_%e143488143517%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx149604149605%_))))
                                             (let ((_%tl143490143522%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e143488143517%_)))
                                                   (_%hd143489143520%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e143488143517%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd143489143520%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd143489143520%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl143490143522%_))
                                                           (let ((_%e143491143525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl143490143522%_))))
                     (let ((_%tl143493143530%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e143491143525%_)))
                           (_%hd143492143528%_
                            (let ()
                              (declare (not safe))
                              (##car _%e143491143525%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl143493143530%_))
                           (_%__kont149606149607%_)
                           (_%__kont149608149609%_))))
                   (_%__kont149608149609%_))
               (_%__kont149608149609%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont149608149609%_))))
                                           (_%__kont149608149609%_))))))
                             _%rand143409143456%_
                             _%hd143399143430%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop143404143440%_
                                                     _%target143401143435%_
                                                     '()))
                                                  (_%g143391143414%_
                                                   _%g143392143417%_)))))
                                        (_%g143391143414%_
                                         _%g143392143417%_))))
                                (_%g143391143414%_ _%g143392143417%_))))
                        (_%g143391143414%_ _%g143392143417%_)))))
            (_%g143390143675%_ _%stx143387%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self143129%_ _%stx143130%_)
        (let* ((_%__stx149676149677%_ _%stx143130%_)
               (_%g143133143162%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx149676149677%_)))))
          (let ((_%__kont149678149679%_
                 (lambda (_%L143230%_ _%L143231%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self143129%_
                        _%stx143130%_)
                       (let ((_%f143253%_
                              (let ((__tmp150173
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L143231%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self143129%_
                                 __tmp150173))))
                         (let _%lp143255%_ ((_%rest143258%_
                                             (reverse (let ((__tmp150175
                                                             (lambda (_%g143375143378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g143376143380%_)
                       (cons _%g143375143378%_ _%g143376143380%_))))
                (declare (not safe))
                (__foldr1 __tmp150175 '() _%L143230%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind143260%_ '())
                                            (_%args143261%_ '()))
                           (let* ((_%rest143262143270%_ _%rest143258%_)
                                  (_%else143264143278%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind143260%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f143253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args143261%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K143266143364%_
                                   (lambda (_%rest143281%_ _%e143282%_)
                                     (let* ((_%__stx149630149631%_ _%e143282%_)
                                            (_%g143287143305%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx149630149631%_)))))
                                       (let ((_%__kont149632149633%_
                                              (lambda ()
                                                (_%lp143255%_
                                                 _%rest143281%_
                                                 _%bind143260%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e143282%_))
                                                       _%args143261%_))))
                                             (_%__kont149634149635%_
                                              (lambda ()
                                                (_%lp143255%_
                                                 _%rest143281%_
                                                 _%bind143260%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e143282%_))
                                                       _%args143261%_))))
                                             (_%__kont149636149637%_
                                              (lambda ()
                                                (let ((_%tmp143312%_
                                                       (let ((__tmp150174
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp150174))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp143255%_
                                                   _%rest143281%_
                                                   (cons (cons _%tmp143312%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e143282%_))
                             '()))
                 _%bind143260%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp143312%_
                                                         _%args143261%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx149630149631%_))
                                             (let ((_%e143289143343%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx149630149631%_))))
                                               (let ((_%tl143291143348%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e143289143343%_)))
                                                     (_%hd143290143346%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e143289143343%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd143290143346%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd143290143346%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl143291143348%_))
                     (let ((_%e143292143351%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl143291143348%_))))
                       (let ((_%tl143294143356%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e143292143351%_)))
                             (_%hd143293143354%_
                              (let ()
                                (declare (not safe))
                                (##car _%e143292143351%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143294143356%_))
                             (_%__kont149632149633%_)
                             (_%__kont149636149637%_))))
                     (_%__kont149636149637%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd143290143346%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl143291143348%_))
                         (let ((_%e143298143328%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl143291143348%_))))
                           (let ((_%tl143300143333%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e143298143328%_)))
                                 (_%hd143299143331%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e143298143328%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl143300143333%_))
                                 (_%__kont149634149635%_)
                                 (_%__kont149636149637%_))))
                         (_%__kont149636149637%_))
                     (_%__kont149636149637%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont149636149637%_))))
                                             (_%__kont149636149637%_)))))))
                             (if (pair? _%rest143262143270%_)
                                 (let ((_%hd143267143367%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest143262143270%_)))
                                       (_%tl143268143369%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest143262143270%_))))
                                   (let* ((_%e143372%_ _%hd143267143367%_)
                                          (_%rest143374%_ _%tl143268143369%_))
                                     (_%K143266143364%_
                                      _%rest143374%_
                                      _%e143372%_)))
                                 (_%else143264143278%_))))))))
                (_%__kont149682149683%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self143129%_ _%stx143130%_))))
            (let ((_%__match149721149722%_
                   (lambda (_%e143137143174%_
                            _%hd143138143177%_
                            _%tl143139143179%_
                            _%e143140143182%_
                            _%hd143141143185%_
                            _%tl143142143187%_
                            _%e143143143190%_
                            _%hd143144143193%_
                            _%tl143145143195%_
                            _%e143146143198%_
                            _%hd143147143201%_
                            _%tl143148143203%_
                            _%__splice149680149681%_
                            _%target143149143206%_
                            _%tl143151143208%_)
                     (letrec ((_%loop143152143211%_
                               (lambda (_%hd143150143214%_
                                        _%rand143156143216%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd143150143214%_))
                                     (let ((_%e143153143219%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd143150143214%_))))
                                       (let ((_%lp-tl143155143224%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e143153143219%_)))
                                             (_%lp-hd143154143222%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e143153143219%_))))
                                         (_%loop143152143211%_
                                          _%lp-tl143155143224%_
                                          (cons _%lp-hd143154143222%_
                                                _%rand143156143216%_))))
                                     (let ((_%rand143157143227%_
                                            (reverse _%rand143156143216%_)))
                                       (_%__kont149678149679%_
                                        _%rand143157143227%_
                                        _%hd143147143201%_))))))
                       (_%loop143152143211%_ _%target143149143206%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx149676149677%_))
                  (let ((_%e143137143174%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx149676149677%_))))
                    (let ((_%tl143139143179%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143137143174%_)))
                          (_%hd143138143177%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143137143174%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143139143179%_))
                          (let ((_%e143140143182%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143139143179%_))))
                            (let ((_%tl143142143187%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143140143182%_)))
                                  (_%hd143141143185%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143140143182%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd143141143185%_))
                                  (let ((_%e143143143190%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd143141143185%_))))
                                    (let ((_%tl143145143195%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143143143190%_)))
                                          (_%hd143144143193%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143143143190%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd143144143193%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd143144143193%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl143145143195%_))
                                                  (let ((_%e143146143198%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl143145143195%_))))
                                                    (let ((_%tl143148143203%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143146143198%_)))
                                                          (_%hd143147143201%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143146143198%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl143148143203%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl143142143187%_))
                      (let ((_%__splice149680149681%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl143142143187%_
                                '0))))
                        (let ((_%tl143151143208%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice149680149681%_ '1)))
                              (_%target143149143206%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice149680149681%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl143151143208%_))
                              (_%__match149721149722%_
                               _%e143137143174%_
                               _%hd143138143177%_
                               _%tl143139143179%_
                               _%e143140143182%_
                               _%hd143141143185%_
                               _%tl143142143187%_
                               _%e143143143190%_
                               _%hd143144143193%_
                               _%tl143145143195%_
                               _%e143146143198%_
                               _%hd143147143201%_
                               _%tl143148143203%_
                               _%__splice149680149681%_
                               _%target143149143206%_
                               _%tl143151143208%_)
                              (_%__kont149682149683%_))))
                      (_%__kont149682149683%_))
                  (_%__kont149682149683%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont149682149683%_))
                                              (_%__kont149682149683%_))
                                          (_%__kont149682149683%_))))
                                  (_%__kont149682149683%_))))
                          (_%__kont149682149683%_))))
                  (_%__kont149682149683%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self142941%_ _%stx142942%_)
        (letrec ((_%simplify142944%_
                  (lambda (_%code143029%_)
                    (let* ((_%code143030143048%_ _%code143029%_)
                           (_%else143032143056%_ (lambda () _%code143029%_))
                           (_%K143034143092%_
                            (lambda (_%expr143059%_ _%test143060%_)
                              (let* ((_%expr143061143069%_ _%expr143059%_)
                                     (_%else143063143077%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test143060%_
                                                    (cons _%expr143059%_
                                                          '())))))
                                     (_%K143065143082%_
                                      (lambda (_%exprs143080%_)
                                        (cons 'and
                                              (cons _%test143060%_
                                                    _%exprs143080%_)))))
                                (if (pair? _%expr143061143069%_)
                                    (let ((_%hd143066143085%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr143061143069%_)))
                                          (_%tl143067143087%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr143061143069%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd143066143085%_ 'and))
                                          (let ((_%exprs143090%_
                                                 _%tl143067143087%_))
                                            (_%K143065143082%_
                                             _%exprs143090%_))
                                          (_%else143063143077%_)))
                                    (_%else143063143077%_))))))
                      (if (pair? _%code143030143048%_)
                          (let ((_%hd143035143095%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code143030143048%_)))
                                (_%tl143036143097%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code143030143048%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd143035143095%_ 'if))
                                (if (pair? _%tl143036143097%_)
                                    (let ((_%hd143037143100%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl143036143097%_)))
                                          (_%tl143038143102%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl143036143097%_))))
                                      (let ((_%test143105%_
                                             _%hd143037143100%_))
                                        (if (pair? _%tl143038143102%_)
                                            (let ((_%hd143039143107%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl143038143102%_)))
                                                  (_%tl143040143109%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl143038143102%_))))
                                              (let ((_%expr143112%_
                                                     _%hd143039143107%_))
                                                (if (pair? _%tl143040143109%_)
                                                    (let ((_%hd143041143114%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl143040143109%_)))
                                                          (_%tl143042143116%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl143040143109%_))))
                                                      (if (pair? _%hd143041143114%_)
                                                          (let ((_%hd143043143119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd143041143114%_)))
                        (_%tl143044143121%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd143041143114%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd143043143119%_ 'quote))
                        (if (pair? _%tl143044143121%_)
                            (let ((_%hd143045143124%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl143044143121%_)))
                                  (_%tl143046143126%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl143044143121%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd143045143124%_ '#f))
                                  (if (null? _%tl143046143126%_)
                                      (if (null? _%tl143042143116%_)
                                          (_%K143034143092%_
                                           _%expr143112%_
                                           _%test143105%_)
                                          (_%else143032143056%_))
                                      (_%else143032143056%_))
                                  (_%else143032143056%_)))
                            (_%else143032143056%_))
                        (_%else143032143056%_)))
                  (_%else143032143056%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else143032143056%_))))
                                            (_%else143032143056%_))))
                                    (_%else143032143056%_))
                                (_%else143032143056%_)))
                          (_%else143032143056%_))))))
          (let* ((_%g142946142967%_
                  (lambda (_%g142947142964%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142947142964%_))))
                 (_%g142945143026%_
                  (lambda (_%g142947142970%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142947142970%_))
                        (let ((_%e142951142972%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142947142970%_))))
                          (let ((_%hd142952142975%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142951142972%_)))
                                (_%tl142953142977%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142951142972%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142953142977%_))
                                (let ((_%e142954142980%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142953142977%_))))
                                  (let ((_%hd142955142983%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142954142980%_)))
                                        (_%tl142956142985%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142954142980%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142956142985%_))
                                        (let ((_%e142957142988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142956142985%_))))
                                          (let ((_%hd142958142991%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142957142988%_)))
                                                (_%tl142959142993%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142957142988%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl142959142993%_))
                                                (let ((_%e142960142996%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl142959142993%_))))
                                                  (let ((_%hd142961142999%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142960142996%_)))
                                                        (_%tl142962143001%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142960142996%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl142962143001%_))
                                                        ((lambda (_%L143004%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L143005%_
                          _%L143006%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify142944%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self142941%_
                                       _%L143006%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self142941%_
                                             _%L143005%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self142941%_
                                                   _%L143004%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp150176
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self142941%_
                                               _%L143006%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp150176
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self142941%_
                                            _%L143005%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self142941%_
                                                  _%L143004%_))
                                               '()))))))
                 _%hd142961142999%_
                 _%hd142958142991%_
                 _%hd142955142983%_)
                (_%g142946142967%_ _%g142947142970%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g142946142967%_
                                                 _%g142947142970%_))))
                                        (_%g142946142967%_
                                         _%g142947142970%_))))
                                (_%g142946142967%_ _%g142947142970%_))))
                        (_%g142946142967%_ _%g142947142970%_)))))
            (_%g142945143026%_ _%stx142942%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self142889%_ _%stx142890%_)
        (let* ((_%g142892142905%_
                (lambda (_%g142893142902%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142893142902%_))))
               (_%g142891142938%_
                (lambda (_%g142893142908%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142893142908%_))
                      (let ((_%e142895142910%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142893142908%_))))
                        (let ((_%hd142896142913%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142895142910%_)))
                              (_%tl142897142915%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142895142910%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142897142915%_))
                              (let ((_%e142898142918%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142897142915%_))))
                                (let ((_%hd142899142921%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142898142918%_)))
                                      (_%tl142900142923%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142898142918%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl142900142923%_))
                                      ((lambda (_%L142926%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L142926%_)))
                                       _%hd142899142921%_)
                                      (_%g142892142905%_ _%g142893142908%_))))
                              (_%g142892142905%_ _%g142893142908%_))))
                      (_%g142892142905%_ _%g142893142908%_)))))
          (_%g142891142938%_ _%stx142890%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self142821%_ _%stx142822%_)
        (let* ((_%g142824142841%_
                (lambda (_%g142825142838%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142825142838%_))))
               (_%g142823142886%_
                (lambda (_%g142825142844%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142825142844%_))
                      (let ((_%e142828142846%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142825142844%_))))
                        (let ((_%hd142829142849%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142828142846%_)))
                              (_%tl142830142851%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142828142846%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142830142851%_))
                              (let ((_%e142831142854%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142830142851%_))))
                                (let ((_%hd142832142857%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142831142854%_)))
                                      (_%tl142833142859%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142831142854%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142833142859%_))
                                      (let ((_%e142834142862%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142833142859%_))))
                                        (let ((_%hd142835142865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142834142862%_)))
                                              (_%tl142836142867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142834142862%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142836142867%_))
                                              ((lambda (_%L142870%_
                                                        _%L142871%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L142871%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self142821%_ _%L142870%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142835142865%_
                                               _%hd142832142857%_)
                                              (_%g142824142841%_
                                               _%g142825142844%_))))
                                      (_%g142824142841%_ _%g142825142844%_))))
                              (_%g142824142841%_ _%g142825142844%_))))
                      (_%g142824142841%_ _%g142825142844%_)))))
          (_%g142823142886%_ _%stx142822%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self142632%_ _%stx142633%_)
        (let* ((_%g142635142652%_
                (lambda (_%g142636142649%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142636142649%_))))
               (_%g142634142818%_
                (lambda (_%g142636142655%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142636142655%_))
                      (let ((_%e142639142657%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142636142655%_))))
                        (let ((_%hd142640142660%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142639142657%_)))
                              (_%tl142641142662%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142639142657%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142641142662%_))
                              (let ((_%e142642142665%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142641142662%_))))
                                (let ((_%hd142643142668%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142642142665%_)))
                                      (_%tl142644142670%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142642142665%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142644142670%_))
                                      (let ((_%e142645142673%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142644142670%_))))
                                        (let ((_%hd142646142676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142645142673%_)))
                                              (_%tl142647142678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142645142673%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142647142678%_))
                                              ((lambda (_%L142681%_
                                                        _%L142682%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self142632%_ _%L142681%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self142632%_ _%L142682%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp142697%_ ((_%rest142700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L142682%_ (cons _%L142681%_ '())))
                                (_%bind142702%_ '())
                                (_%args142703%_ '()))
               (let* ((_%rest142704142712%_ _%rest142700%_)
                      (_%else142706142720%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind142702%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args142703%_)
                                                 '()))))))
                      (_%K142708142806%_
                       (lambda (_%rest142723%_ _%e142724%_)
                         (let* ((_%__stx149724149725%_ _%e142724%_)
                                (_%g142729142747%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx149724149725%_)))))
                           (let ((_%__kont149726149727%_
                                  (lambda ()
                                    (_%lp142697%_
                                     _%rest142723%_
                                     _%bind142702%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e142724%_))
                                           _%args142703%_))))
                                 (_%__kont149728149729%_
                                  (lambda ()
                                    (_%lp142697%_
                                     _%rest142723%_
                                     _%bind142702%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e142724%_))
                                           _%args142703%_))))
                                 (_%__kont149730149731%_
                                  (lambda ()
                                    (let ((_%tmp142754%_
                                           (let ((__tmp150177
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp150177))))
                                      (_%lp142697%_
                                       _%rest142723%_
                                       (cons (cons _%tmp142754%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e142724%_))
                                                         '()))
                                             _%bind142702%_)
                                       (cons _%tmp142754%_ _%args142703%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx149724149725%_))
                                 (let ((_%e142731142785%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx149724149725%_))))
                                   (let ((_%tl142733142790%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e142731142785%_)))
                                         (_%hd142732142788%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e142731142785%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd142732142788%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd142732142788%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl142733142790%_))
                                                 (let ((_%e142734142793%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl142733142790%_))))
                                                   (let ((_%tl142736142798%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e142734142793%_)))
                                                         (_%hd142735142796%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e142734142793%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl142736142798%_))
                                                         (_%__kont149726149727%_)
                                                         (_%__kont149730149731%_))))
                                                 (_%__kont149730149731%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd142732142788%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl142733142790%_))
                                                     (let ((_%e142740142770%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl142733142790%_))))
                                                       (let ((_%tl142742142775%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e142740142770%_)))
                     (_%hd142741142773%_
                      (let () (declare (not safe)) (##car _%e142740142770%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl142742142775%_))
                     (_%__kont149728149729%_)
                     (_%__kont149730149731%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont149730149731%_))
                                                 (_%__kont149730149731%_)))
                                         (_%__kont149730149731%_))))
                                 (_%__kont149730149731%_)))))))
                 (if (pair? _%rest142704142712%_)
                     (let ((_%hd142709142809%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest142704142712%_)))
                           (_%tl142710142811%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest142704142712%_))))
                       (let* ((_%e142814%_ _%hd142709142809%_)
                              (_%rest142816%_ _%tl142710142811%_))
                         (_%K142708142806%_ _%rest142816%_ _%e142814%_)))
                     (_%else142706142720%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142646142676%_
                                               _%hd142643142668%_)
                                              (_%g142635142652%_
                                               _%g142636142655%_))))
                                      (_%g142635142652%_ _%g142636142655%_))))
                              (_%g142635142652%_ _%g142636142655%_))))
                      (_%g142635142652%_ _%g142636142655%_)))))
          (_%g142634142818%_ _%stx142633%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self142443%_ _%stx142444%_)
        (let* ((_%g142446142463%_
                (lambda (_%g142447142460%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142447142460%_))))
               (_%g142445142629%_
                (lambda (_%g142447142466%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142447142466%_))
                      (let ((_%e142450142468%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142447142466%_))))
                        (let ((_%hd142451142471%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142450142468%_)))
                              (_%tl142452142473%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142450142468%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142452142473%_))
                              (let ((_%e142453142476%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142452142473%_))))
                                (let ((_%hd142454142479%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142453142476%_)))
                                      (_%tl142455142481%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142453142476%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142455142481%_))
                                      (let ((_%e142456142484%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142455142481%_))))
                                        (let ((_%hd142457142487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142456142484%_)))
                                              (_%tl142458142489%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142456142484%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142458142489%_))
                                              ((lambda (_%L142492%_
                                                        _%L142493%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self142443%_ _%L142492%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self142443%_ _%L142493%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp142508%_ ((_%rest142511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L142493%_ (cons _%L142492%_ '())))
                                (_%bind142513%_ '())
                                (_%args142514%_ '()))
               (let* ((_%rest142515142523%_ _%rest142511%_)
                      (_%else142517142531%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind142513%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args142514%_)
                                                 '()))))))
                      (_%K142519142617%_
                       (lambda (_%rest142534%_ _%e142535%_)
                         (let* ((_%__stx149770149771%_ _%e142535%_)
                                (_%g142540142558%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx149770149771%_)))))
                           (let ((_%__kont149772149773%_
                                  (lambda ()
                                    (_%lp142508%_
                                     _%rest142534%_
                                     _%bind142513%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e142535%_))
                                           _%args142514%_))))
                                 (_%__kont149774149775%_
                                  (lambda ()
                                    (_%lp142508%_
                                     _%rest142534%_
                                     _%bind142513%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e142535%_))
                                           _%args142514%_))))
                                 (_%__kont149776149777%_
                                  (lambda ()
                                    (let ((_%tmp142565%_
                                           (let ((__tmp150178
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp150178))))
                                      (_%lp142508%_
                                       _%rest142534%_
                                       (cons (cons _%tmp142565%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e142535%_))
                                                         '()))
                                             _%bind142513%_)
                                       (cons _%tmp142565%_ _%args142514%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx149770149771%_))
                                 (let ((_%e142542142596%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx149770149771%_))))
                                   (let ((_%tl142544142601%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e142542142596%_)))
                                         (_%hd142543142599%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e142542142596%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd142543142599%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd142543142599%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl142544142601%_))
                                                 (let ((_%e142545142604%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl142544142601%_))))
                                                   (let ((_%tl142547142609%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e142545142604%_)))
                                                         (_%hd142546142607%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e142545142604%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl142547142609%_))
                                                         (_%__kont149772149773%_)
                                                         (_%__kont149776149777%_))))
                                                 (_%__kont149776149777%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd142543142599%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl142544142601%_))
                                                     (let ((_%e142551142581%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl142544142601%_))))
                                                       (let ((_%tl142553142586%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e142551142581%_)))
                     (_%hd142552142584%_
                      (let () (declare (not safe)) (##car _%e142551142581%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl142553142586%_))
                     (_%__kont149774149775%_)
                     (_%__kont149776149777%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont149776149777%_))
                                                 (_%__kont149776149777%_)))
                                         (_%__kont149776149777%_))))
                                 (_%__kont149776149777%_)))))))
                 (if (pair? _%rest142515142523%_)
                     (let ((_%hd142520142620%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest142515142523%_)))
                           (_%tl142521142622%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest142515142523%_))))
                       (let* ((_%e142625%_ _%hd142520142620%_)
                              (_%rest142627%_ _%tl142521142622%_))
                         (_%K142519142617%_ _%rest142627%_ _%e142625%_)))
                     (_%else142517142531%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142457142487%_
                                               _%hd142454142479%_)
                                              (_%g142446142463%_
                                               _%g142447142466%_))))
                                      (_%g142446142463%_ _%g142447142466%_))))
                              (_%g142446142463%_ _%g142447142466%_))))
                      (_%g142446142463%_ _%g142447142466%_)))))
          (_%g142445142629%_ _%stx142444%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self142359%_ _%stx142360%_)
        (let* ((_%g142362142383%_
                (lambda (_%g142363142380%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142363142380%_))))
               (_%g142361142440%_
                (lambda (_%g142363142386%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142363142386%_))
                      (let ((_%e142367142388%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142363142386%_))))
                        (let ((_%hd142368142391%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142367142388%_)))
                              (_%tl142369142393%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142367142388%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142369142393%_))
                              (let ((_%e142370142396%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142369142393%_))))
                                (let ((_%hd142371142399%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142370142396%_)))
                                      (_%tl142372142401%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142370142396%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142372142401%_))
                                      (let ((_%e142373142404%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142372142401%_))))
                                        (let ((_%hd142374142407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142373142404%_)))
                                              (_%tl142375142409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142373142404%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142375142409%_))
                                              (let ((_%e142376142412%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142375142409%_))))
                                                (let ((_%hd142377142415%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142376142412%_)))
                                                      (_%tl142378142417%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142376142412%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142378142417%_))
                                                      ((lambda (_%L142420%_
                                                                _%L142421%_
                                                                _%L142422%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self142359%_ _%L142420%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self142359%_
                                      _%L142421%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self142359%_
                                            _%L142422%_))
                                         (cons ''#f '()))))))
               _%hd142377142415%_
               _%hd142374142407%_
               _%hd142371142399%_)
              (_%g142362142383%_ _%g142363142386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142362142383%_
                                               _%g142363142386%_))))
                                      (_%g142362142383%_ _%g142363142386%_))))
                              (_%g142362142383%_ _%g142363142386%_))))
                      (_%g142362142383%_ _%g142363142386%_)))))
          (_%g142361142440%_ _%stx142360%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self142259%_ _%stx142260%_)
        (let* ((_%g142262142287%_
                (lambda (_%g142263142284%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142263142284%_))))
               (_%g142261142356%_
                (lambda (_%g142263142290%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142263142290%_))
                      (let ((_%e142268142292%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142263142290%_))))
                        (let ((_%hd142269142295%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142268142292%_)))
                              (_%tl142270142297%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142268142292%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142270142297%_))
                              (let ((_%e142271142300%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142270142297%_))))
                                (let ((_%hd142272142303%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142271142300%_)))
                                      (_%tl142273142305%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142271142300%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142273142305%_))
                                      (let ((_%e142274142308%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142273142305%_))))
                                        (let ((_%hd142275142311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142274142308%_)))
                                              (_%tl142276142313%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142274142308%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142276142313%_))
                                              (let ((_%e142277142316%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142276142313%_))))
                                                (let ((_%hd142278142319%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142277142316%_)))
                                                      (_%tl142279142321%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142277142316%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl142279142321%_))
                                                      (let ((_%e142280142324%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl142279142321%_))))
                (let ((_%hd142281142327%_
                       (let () (declare (not safe)) (##car _%e142280142324%_)))
                      (_%tl142282142329%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e142280142324%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142282142329%_))
                      ((lambda (_%L142332%_
                                _%L142333%_
                                _%L142334%_
                                _%L142335%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self142259%_
                                        _%L142333%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self142259%_
                                              _%L142332%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self142259%_
                                                    _%L142334%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self142259%_
                                                          _%L142335%_))
                                                       (cons ''#f '())))))))
                       _%hd142281142327%_
                       _%hd142278142319%_
                       _%hd142275142311%_
                       _%hd142272142303%_)
                      (_%g142262142287%_ _%g142263142290%_))))
              (_%g142262142287%_ _%g142263142290%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142262142287%_
                                               _%g142263142290%_))))
                                      (_%g142262142287%_ _%g142263142290%_))))
                              (_%g142262142287%_ _%g142263142290%_))))
                      (_%g142262142287%_ _%g142263142290%_)))))
          (_%g142261142356%_ _%stx142260%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self142175%_ _%stx142176%_)
        (let* ((_%g142178142199%_
                (lambda (_%g142179142196%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142179142196%_))))
               (_%g142177142256%_
                (lambda (_%g142179142202%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142179142202%_))
                      (let ((_%e142183142204%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142179142202%_))))
                        (let ((_%hd142184142207%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142183142204%_)))
                              (_%tl142185142209%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142183142204%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142185142209%_))
                              (let ((_%e142186142212%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142185142209%_))))
                                (let ((_%hd142187142215%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142186142212%_)))
                                      (_%tl142188142217%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142186142212%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142188142217%_))
                                      (let ((_%e142189142220%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142188142217%_))))
                                        (let ((_%hd142190142223%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142189142220%_)))
                                              (_%tl142191142225%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142189142220%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142191142225%_))
                                              (let ((_%e142192142228%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142191142225%_))))
                                                (let ((_%hd142193142231%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142192142228%_)))
                                                      (_%tl142194142233%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142192142228%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142194142233%_))
                                                      ((lambda (_%L142236%_
                                                                _%L142237%_
                                                                _%L142238%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self142175%_ _%L142236%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self142175%_
                                      _%L142237%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self142175%_
                                            _%L142238%_))
                                         (cons ''#f '()))))))
               _%hd142193142231%_
               _%hd142190142223%_
               _%hd142187142215%_)
              (_%g142178142199%_ _%g142179142202%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142178142199%_
                                               _%g142179142202%_))))
                                      (_%g142178142199%_ _%g142179142202%_))))
                              (_%g142178142199%_ _%g142179142202%_))))
                      (_%g142178142199%_ _%g142179142202%_)))))
          (_%g142177142256%_ _%stx142176%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self142075%_ _%stx142076%_)
        (let* ((_%g142078142103%_
                (lambda (_%g142079142100%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142079142100%_))))
               (_%g142077142172%_
                (lambda (_%g142079142106%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142079142106%_))
                      (let ((_%e142084142108%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142079142106%_))))
                        (let ((_%hd142085142111%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142084142108%_)))
                              (_%tl142086142113%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142084142108%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142086142113%_))
                              (let ((_%e142087142116%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142086142113%_))))
                                (let ((_%hd142088142119%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142087142116%_)))
                                      (_%tl142089142121%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142087142116%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142089142121%_))
                                      (let ((_%e142090142124%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142089142121%_))))
                                        (let ((_%hd142091142127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142090142124%_)))
                                              (_%tl142092142129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142090142124%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142092142129%_))
                                              (let ((_%e142093142132%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142092142129%_))))
                                                (let ((_%hd142094142135%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142093142132%_)))
                                                      (_%tl142095142137%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142093142132%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl142095142137%_))
                                                      (let ((_%e142096142140%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl142095142137%_))))
                (let ((_%hd142097142143%_
                       (let () (declare (not safe)) (##car _%e142096142140%_)))
                      (_%tl142098142145%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e142096142140%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142098142145%_))
                      ((lambda (_%L142148%_
                                _%L142149%_
                                _%L142150%_
                                _%L142151%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self142075%_
                                        _%L142149%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self142075%_
                                              _%L142148%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self142075%_
                                                    _%L142150%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self142075%_
                                                          _%L142151%_))
                                                       (cons ''#f '())))))))
                       _%hd142097142143%_
                       _%hd142094142135%_
                       _%hd142091142127%_
                       _%hd142088142119%_)
                      (_%g142078142103%_ _%g142079142106%_))))
              (_%g142078142103%_ _%g142079142106%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142078142103%_
                                               _%g142079142106%_))))
                                      (_%g142078142103%_ _%g142079142106%_))))
                              (_%g142078142103%_ _%g142079142106%_))))
                      (_%g142078142103%_ _%g142079142106%_)))))
          (_%g142077142172%_ _%stx142076%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self141870%_ _%stx141871%_)
        (let* ((_%g141873141894%_
                (lambda (_%g141874141891%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141874141891%_))))
               (_%g141872142072%_
                (lambda (_%g141874141897%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141874141897%_))
                      (let ((_%e141878141899%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141874141897%_))))
                        (let ((_%hd141879141902%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141878141899%_)))
                              (_%tl141880141904%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141878141899%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141880141904%_))
                              (let ((_%e141881141907%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141880141904%_))))
                                (let ((_%hd141882141910%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141881141907%_)))
                                      (_%tl141883141912%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141881141907%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141883141912%_))
                                      (let ((_%e141884141915%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141883141912%_))))
                                        (let ((_%hd141885141918%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141884141915%_)))
                                              (_%tl141886141920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141884141915%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141886141920%_))
                                              (let ((_%e141887141923%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141886141920%_))))
                                                (let ((_%hd141888141926%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141887141923%_)))
                                                      (_%tl141889141928%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141887141923%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141889141928%_))
                                                      ((lambda (_%L141931%_
                                                                _%L141932%_
                                                                _%L141933%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self141870%_
                                    _%L141931%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self141870%_
                                          _%L141932%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp141951%_ ((_%rest141954%_
                                         (cons _%L141932%_
                                               (cons _%L141931%_ '())))
                                        (_%bind141956%_ '())
                                        (_%args141957%_ '()))
                       (let* ((_%rest141958141966%_ _%rest141954%_)
                              (_%else141960141974%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind141956%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp150179
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp150179 _%args141957%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K141962142060%_
                               (lambda (_%rest141977%_ _%e141978%_)
                                 (let* ((_%__stx149816149817%_ _%e141978%_)
                                        (_%g141983142001%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx149816149817%_)))))
                                   (let ((_%__kont149818149819%_
                                          (lambda ()
                                            (_%lp141951%_
                                             _%rest141977%_
                                             _%bind141956%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e141978%_))
                                                   _%args141957%_))))
                                         (_%__kont149820149821%_
                                          (lambda ()
                                            (_%lp141951%_
                                             _%rest141977%_
                                             _%bind141956%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e141978%_))
                                                   _%args141957%_))))
                                         (_%__kont149822149823%_
                                          (lambda ()
                                            (let ((_%tmp142008%_
                                                   (let ((__tmp150180
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp150180))))
                                              (_%lp141951%_
                                               _%rest141977%_
                                               (cons (cons _%tmp142008%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e141978%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind141956%_)
                                               (cons _%tmp142008%_
                                                     _%args141957%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx149816149817%_))
                                         (let ((_%e141985142039%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx149816149817%_))))
                                           (let ((_%tl141987142044%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e141985142039%_)))
                                                 (_%hd141986142042%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e141985142039%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd141986142042%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd141986142042%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl141987142044%_))
                                                         (let ((_%e141988142047%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl141987142044%_))))
                   (let ((_%tl141990142052%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e141988142047%_)))
                         (_%hd141989142050%_
                          (let ()
                            (declare (not safe))
                            (##car _%e141988142047%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl141990142052%_))
                         (_%__kont149818149819%_)
                         (_%__kont149822149823%_))))
                 (_%__kont149822149823%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd141986142042%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl141987142044%_))
                     (let ((_%e141994142024%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl141987142044%_))))
                       (let ((_%tl141996142029%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e141994142024%_)))
                             (_%hd141995142027%_
                              (let ()
                                (declare (not safe))
                                (##car _%e141994142024%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl141996142029%_))
                             (_%__kont149820149821%_)
                             (_%__kont149822149823%_))))
                     (_%__kont149822149823%_))
                 (_%__kont149822149823%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont149822149823%_))))
                                         (_%__kont149822149823%_)))))))
                         (if (pair? _%rest141958141966%_)
                             (let ((_%hd141963142063%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest141958141966%_)))
                                   (_%tl141964142065%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest141958141966%_))))
                               (let* ((_%e142068%_ _%hd141963142063%_)
                                      (_%rest142070%_ _%tl141964142065%_))
                                 (_%K141962142060%_
                                  _%rest142070%_
                                  _%e142068%_)))
                             (_%else141960141974%_))))))
               _%hd141888141926%_
               _%hd141885141918%_
               _%hd141882141910%_)
              (_%g141873141894%_ _%g141874141897%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141873141894%_
                                               _%g141874141897%_))))
                                      (_%g141873141894%_ _%g141874141897%_))))
                              (_%g141873141894%_ _%g141874141897%_))))
                      (_%g141873141894%_ _%g141874141897%_)))))
          (_%g141872142072%_ _%stx141871%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self141649%_ _%stx141650%_)
        (let* ((_%g141652141677%_
                (lambda (_%g141653141674%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141653141674%_))))
               (_%g141651141867%_
                (lambda (_%g141653141680%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141653141680%_))
                      (let ((_%e141658141682%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141653141680%_))))
                        (let ((_%hd141659141685%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141658141682%_)))
                              (_%tl141660141687%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141658141682%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141660141687%_))
                              (let ((_%e141661141690%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141660141687%_))))
                                (let ((_%hd141662141693%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141661141690%_)))
                                      (_%tl141663141695%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141661141690%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141663141695%_))
                                      (let ((_%e141664141698%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141663141695%_))))
                                        (let ((_%hd141665141701%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141664141698%_)))
                                              (_%tl141666141703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141664141698%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141666141703%_))
                                              (let ((_%e141667141706%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141666141703%_))))
                                                (let ((_%hd141668141709%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141667141706%_)))
                                                      (_%tl141669141711%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141667141706%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl141669141711%_))
                                                      (let ((_%e141670141714%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl141669141711%_))))
                (let ((_%hd141671141717%_
                       (let () (declare (not safe)) (##car _%e141670141714%_)))
                      (_%tl141672141719%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e141670141714%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141672141719%_))
                      ((lambda (_%L141722%_
                                _%L141723%_
                                _%L141724%_
                                _%L141725%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self141649%_
                                            _%L141723%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self141649%_
                                                  _%L141722%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self141649%_
                                                        _%L141724%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp141746%_ ((_%rest141749%_
                                                 (cons _%L141724%_
                                                       (cons _%L141722%_
                                                             (cons _%L141723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind141751%_ '())
                                                (_%args141752%_ '()))
                               (let* ((_%rest141753141761%_ _%rest141749%_)
                                      (_%else141755141769%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind141751%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp150181 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp150181 _%args141752%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K141757141855%_
                                       (lambda (_%rest141772%_ _%e141773%_)
                                         (let* ((_%__stx149862149863%_
                                                 _%e141773%_)
                                                (_%g141778141796%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx149862149863%_)))))
                                           (let ((_%__kont149864149865%_
                                                  (lambda ()
                                                    (_%lp141746%_
                                                     _%rest141772%_
                                                     _%bind141751%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e141773%_))
                                                           _%args141752%_))))
                                                 (_%__kont149866149867%_
                                                  (lambda ()
                                                    (_%lp141746%_
                                                     _%rest141772%_
                                                     _%bind141751%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e141773%_))
                                                           _%args141752%_))))
                                                 (_%__kont149868149869%_
                                                  (lambda ()
                                                    (let ((_%tmp141803%_
                                                           (let ((__tmp150182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp150182))))
              (_%lp141746%_
               _%rest141772%_
               (cons (cons _%tmp141803%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e141773%_))
                                 '()))
                     _%bind141751%_)
               (cons _%tmp141803%_ _%args141752%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx149862149863%_))
                                                 (let ((_%e141780141834%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx149862149863%_))))
                                                   (let ((_%tl141782141839%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e141780141834%_)))
                                                         (_%hd141781141837%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e141780141834%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd141781141837%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd141781141837%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl141782141839%_))
                         (let ((_%e141783141842%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl141782141839%_))))
                           (let ((_%tl141785141847%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e141783141842%_)))
                                 (_%hd141784141845%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e141783141842%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl141785141847%_))
                                 (_%__kont149864149865%_)
                                 (_%__kont149868149869%_))))
                         (_%__kont149868149869%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd141781141837%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl141782141839%_))
                             (let ((_%e141789141819%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl141782141839%_))))
                               (let ((_%tl141791141824%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e141789141819%_)))
                                     (_%hd141790141822%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e141789141819%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl141791141824%_))
                                     (_%__kont149866149867%_)
                                     (_%__kont149868149869%_))))
                             (_%__kont149868149869%_))
                         (_%__kont149868149869%_)))
                 (_%__kont149868149869%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont149868149869%_)))))))
                                 (if (pair? _%rest141753141761%_)
                                     (let ((_%hd141758141858%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest141753141761%_)))
                                           (_%tl141759141860%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest141753141761%_))))
                                       (let* ((_%e141863%_ _%hd141758141858%_)
                                              (_%rest141865%_
                                               _%tl141759141860%_))
                                         (_%K141757141855%_
                                          _%rest141865%_
                                          _%e141863%_)))
                                     (_%else141755141769%_))))))
                       _%hd141671141717%_
                       _%hd141668141709%_
                       _%hd141665141701%_
                       _%hd141662141693%_)
                      (_%g141652141677%_ _%g141653141680%_))))
              (_%g141652141677%_ _%g141653141680%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141652141677%_
                                               _%g141653141680%_))))
                                      (_%g141652141677%_ _%g141653141680%_))))
                              (_%g141652141677%_ _%g141653141680%_))))
                      (_%g141652141677%_ _%g141653141680%_)))))
          (_%g141651141867%_ _%stx141650%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self141488%_ _%stx141489%_)
        (letrec ((_%import-set-template141491%_
                  (lambda (_%in141594%_ _%phi141595%_)
                    (let ((_%iphi141597%_
                           (fx+ _%phi141595%_
                                (##direct-structure-ref
                                 _%in141594%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports141598%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in141594%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp141600%_ ((_%rest141602%_ _%imports141598%_)
                                         (_%r141603%_ '()))
                        (let* ((_%rest141604141612%_ _%rest141602%_)
                               (_%else141606141620%_ (lambda () _%r141603%_))
                               (_%K141608141637%_
                                (lambda (_%rest141623%_ _%in141624%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in141624%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi141597%_))
                                          (_%lp141600%_
                                           _%rest141623%_
                                           (cons _%in141624%_ _%r141603%_))
                                          (_%lp141600%_
                                           _%rest141623%_
                                           _%r141603%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in141624%_
                                             'gx#module-import::t))
                                          (let ((_%iphi141628%_
                                                 (fx+ _%phi141595%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in141624%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi141628%_))
                                                (_%lp141600%_
                                                 _%rest141623%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in141624%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r141603%_))
                                                (_%lp141600%_
                                                 _%rest141623%_
                                                 _%r141603%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in141624%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi141631%_
                                                     (fx+ _%iphi141597%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in141624%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi141631%_))
                                                    (_%lp141600%_
                                                     _%rest141623%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in141624%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r141603%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi141631%_))
                                                        (_%lp141600%_
                                                         _%rest141623%_
                                                         (let ((__tmp150183
                                                                (_%import-set-template141491%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in141624%_
                         _%iphi141597%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r141603%_ __tmp150183)))
                (_%lp141600%_ _%rest141623%_ _%r141603%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp141600%_
                                               _%rest141623%_
                                               _%r141603%_)))))))
                          (if (pair? _%rest141604141612%_)
                              (let ((_%hd141609141640%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest141604141612%_)))
                                    (_%tl141610141642%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest141604141612%_))))
                                (let* ((_%in141645%_ _%hd141609141640%_)
                                       (_%rest141647%_ _%tl141610141642%_))
                                  (_%K141608141637%_
                                   _%rest141647%_
                                   _%in141645%_)))
                              (_%else141606141620%_))))))))
          (let* ((_%g141493141503%_
                  (lambda (_%g141494141500%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141494141500%_))))
                 (_%g141492141591%_
                  (lambda (_%g141494141506%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141494141506%_))
                        (let ((_%e141496141508%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141494141506%_))))
                          (let ((_%hd141497141511%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141496141508%_)))
                                (_%tl141498141513%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141496141508%_))))
                            ((lambda (_%L141516%_)
                               (let ((_%ht141527%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp141529%_ ((_%rest141531%_
                                                     _%L141516%_)
                                                    (_%loads141532%_ '()))
                                   (letrec ((_%K141534%_
                                             (lambda (_%ctx141584%_
                                                      _%rest141585%_)
                                               (let ((_%id141587%_
                                                      (##structure-ref
                                                       _%ctx141584%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht141527%_
                                                        _%id141587%_))
                                                     (_%lp141529%_
                                                      _%rest141585%_
                                                      _%loads141532%_)
                                                     (let ((_%rt141589%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id141587%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht141527%_
                                                          _%id141587%_
                                                          _%rt141589%_))
                                                       (_%lp141529%_
                                                        _%rest141585%_
                                                        (cons _%rt141589%_
                                                              _%loads141532%_))))))))
                                     (let* ((_%rest141535141543%_
                                             _%rest141531%_)
                                            (_%else141537141555%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp150185
                                                            (lambda (_%g141550141552%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g141550141552%_)))
                   (__tmp150184 (reverse _%loads141532%_)))
               (declare (not safe))
               (##map __tmp150185 __tmp150184)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K141539141572%_
                                             (lambda (_%rest141558%_
                                                      _%in141559%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in141559%_
                                                      'gx#module-context::t))
                                                   (_%K141534%_
                                                    _%in141559%_
                                                    _%rest141558%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in141559%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in141559%_
                               '3
                               '#f
                               '#f)))
                   (_%K141534%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in141559%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest141558%_)
                   (_%lp141529%_ _%rest141558%_ _%loads141532%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in141559%_
                      'gx#import-set::t))
                   (let ((_%phi141564%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in141559%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi141564%_)
                         (_%K141534%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in141559%_
                             '1
                             '#f
                             '#f))
                          _%rest141558%_)
                         (if (fxpositive? _%phi141564%_)
                             (let ((_%deps141568%_
                                    (_%import-set-template141491%_
                                     _%in141559%_
                                     '0)))
                               (_%lp141529%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest141558%_
                                   _%deps141568%_))
                                _%loads141532%_))
                             (_%lp141529%_ _%rest141558%_ _%loads141532%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx141489%_
                      _%in141559%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest141535141543%_)
                                           (let ((_%hd141540141575%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest141535141543%_)))
                                                 (_%tl141541141577%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest141535141543%_))))
                                             (let* ((_%in141580%_
                                                     _%hd141540141575%_)
                                                    (_%rest141582%_
                                                     _%tl141541141577%_))
                                               (_%K141539141572%_
                                                _%rest141582%_
                                                _%in141580%_)))
                                           (_%else141537141555%_)))))))
                             _%tl141498141513%_)))
                        (_%g141493141503%_ _%g141494141506%_)))))
            (_%g141492141591%_ _%stx141489%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self141301%_ _%stx141302%_)
        (letrec ((_%add-lift!141304%_
                  (lambda (_%expr141486%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr141486%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote141305%_
                  (lambda (_%id141483%_ _%marks141484%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id141483%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks141484%_
                                                        '()))))))))
                 (_%generate-simple141306%_
                  (lambda (_%stxq141478%_)
                    (let ((_%gid141480%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid141481%_
                           (gxc#generate-runtime-identifier _%stxq141478%_)))
                      (_%add-lift!141304%_
                       (cons 'define
                             (cons _%gid141480%_
                                   (cons (_%generate-syntax-quote141305%_
                                          _%qid141481%_
                                          ''())
                                         '()))))
                      (let ((__tmp150186
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp150186 _%stxq141478%_ _%gid141480%_))
                      _%gid141480%_)))
                 (_%generate-serialized141307%_
                  (lambda (_%stxq141468%_ _%marks141469%_)
                    (let* ((_%mark-refs141471%_
                            (map _%generate-mark141308%_ _%marks141469%_))
                           (_%gid141473%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid141475%_
                            (gxc#generate-runtime-identifier _%stxq141468%_)))
                      (_%add-lift!141304%_
                       (cons 'define
                             (cons _%gid141473%_
                                   (cons (_%generate-syntax-quote141305%_
                                          _%qid141475%_
                                          (cons 'list _%mark-refs141471%_))
                                         '()))))
                      (let ((__tmp150187
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp150187 _%stxq141468%_ _%gid141473%_))
                      _%gid141473%_)))
                 (_%generate-mark141308%_
                  (lambda (_%mark141453%_)
                    (let ((_%$e141455%_
                           (let ((__tmp150188
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp150188 _%mark141453%_))))
                      (if _%$e141455%_
                          _%$e141455%_
                          (let* ((_%gid141459%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr141461%_
                                  (_%serialize-mark141309%_ _%mark141453%_))
                                 (_%ctx141463%_
                                  (let ((__tmp150189
                                         (##structure-ref
                                          _%mark141453%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp150189)))
                                 (_%ctx-ref141465%_
                                  (if (eq? _%ctx141463%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref141310%_
                                                               _%ctx141463%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp150190
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp150190
                               _%mark141453%_
                               _%gid141459%_))
                            (_%add-lift!141304%_
                             (cons 'define
                                   (cons _%gid141459%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr141461%_ '()))
                   (cons _%ctx-ref141465%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid141459%_)))))
                 (_%serialize-mark141309%_
                  (lambda (_%mark141400%_)
                    (letrec ((_%quote-e141402%_
                              (lambda (_%sym141451%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym141451%_))
                                    _%sym141451%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym141451%_))))))
                      (let* ((_%mark141403141412%_ _%mark141400%_)
                             (_%E141405141416%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark141403141412%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K141406141428%_
                              (lambda (_%trace141419%_
                                       _%phi141420%_
                                       _%ctx141421%_
                                       _%subst141422%_)
                                (let ((_%subs141424%_
                                       (if _%subst141422%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst141422%_))
                                           '())))
                                  (cons _%phi141420%_
                                        (map (lambda (_%pair141426%_)
                                               (cons (_%quote-e141402%_
                                                      (car _%pair141426%_))
                                                     (_%quote-e141402%_
                                                      (cdr _%pair141426%_))))
                                             _%subs141424%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark141403141412%_
                               'gx#expander-mark::t))
                            (let* ((_%e141407141431%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark141403141412%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst141434%_ _%e141407141431%_)
                                   (_%e141408141436%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark141403141412%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx141439%_ _%e141408141436%_)
                                   (_%e141409141441%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark141403141412%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi141444%_ _%e141409141441%_)
                                   (_%e141410141446%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark141403141412%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace141449%_ _%e141410141446%_))
                              (_%K141406141428%_
                               _%trace141449%_
                               _%phi141444%_
                               _%ctx141439%_
                               _%subst141434%_))
                            (_%E141405141416%_))))))
                 (_%context-ref141310%_
                  (lambda (_%ctx141387%_)
                    (if (let ((__tmp150191
                               (##structure-ref
                                _%ctx141387%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp150191
                           'gx#module-context::t))
                        (let ((_%ctx-ref141389%_
                               (_%context-ref-nested141312%_ _%ctx141387%_))
                              (_%ctx-origin141390%_
                               (_%context-ref-origin141311%_ _%ctx141387%_))
                              (_%origin141391%_
                               (_%context-ref-origin141311%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin141391%_ _%ctx-origin141390%_)
                              (let ((_%ref141393%_
                                     (_%context-ref-nested141312%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp141395%_ ((_%ref141397%_
                                                    (cdr _%ref141393%_))
                                                   (_%ctx-ref141398%_
                                                    (cdr _%ctx-ref141389%_)))
                                  (if (and (pair? _%ref141397%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref141397%_))
                                                (car _%ctx-ref141398%_)))
                                      (_%lp141395%_
                                       (cdr _%ref141397%_)
                                       (cdr _%ctx-ref141398%_))
                                      (cons '#f _%ctx-ref141398%_))))
                              _%ctx-ref141389%_))
                        (let ((__tmp150192
                               (##structure-ref
                                _%ctx141387%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp150192)))))
                 (_%context-ref-origin141311%_
                  (lambda (_%ctx141379%_)
                    (let _%lp141381%_ ((_%ctx141383%_ _%ctx141379%_))
                      (let ((_%super141385%_
                             (##structure-ref
                              _%ctx141383%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super141385%_
                               'gx#module-context::t))
                            (_%lp141381%_ _%super141385%_)
                            _%ctx141383%_)))))
                 (_%context-ref-nested141312%_
                  (lambda (_%ctx141370%_)
                    (let _%lp141372%_ ((_%ctx141374%_ _%ctx141370%_)
                                       (_%r141375%_ '()))
                      (let ((_%super141377%_
                             (##structure-ref
                              _%ctx141374%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super141377%_
                               'gx#module-context::t))
                            (_%lp141372%_
                             _%super141377%_
                             (cons (car (##structure-ref
                                         _%ctx141374%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r141375%_))
                            (cons (let ((__tmp150193
                                         (##structure-ref
                                          _%ctx141374%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp150193))
                                  _%r141375%_)))))))
          (let* ((_%g141314141327%_
                  (lambda (_%g141315141324%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141315141324%_))))
                 (_%g141313141367%_
                  (lambda (_%g141315141330%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141315141330%_))
                        (let ((_%e141317141332%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141315141330%_))))
                          (let ((_%hd141318141335%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141317141332%_)))
                                (_%tl141319141337%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141317141332%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141319141337%_))
                                (let ((_%e141320141340%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141319141337%_))))
                                  (let ((_%hd141321141343%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141320141340%_)))
                                        (_%tl141322141345%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141320141340%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl141322141345%_))
                                        ((lambda (_%L141348%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L141348%_))
                                               (let ((_%$e141361%_
                                                      (let ((__tmp150194
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp150194 _%L141348%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e141361%_
                                                     _%$e141361%_
                                                     (let ((_%marks141365%_
                                                            (##direct-structure-ref
                                                             _%L141348%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks141365%_)
                                                           (_%generate-simple141306%_
                                                            _%L141348%_)
                                                           (_%generate-serialized141307%_
                                                            _%L141348%_
                                                            _%marks141365%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L141348%_))))
                                         _%hd141321141343%_)
                                        (_%g141314141327%_
                                         _%g141315141330%_))))
                                (_%g141314141327%_ _%g141315141330%_))))
                        (_%g141314141327%_ _%g141315141330%_)))))
            (_%g141313141367%_ _%stx141302%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self141233%_ _%stx141234%_)
        (let* ((_%g141236141253%_
                (lambda (_%g141237141250%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141237141250%_))))
               (_%g141235141298%_
                (lambda (_%g141237141256%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141237141256%_))
                      (let ((_%e141240141258%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141237141256%_))))
                        (let ((_%hd141241141261%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141240141258%_)))
                              (_%tl141242141263%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141240141258%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141242141263%_))
                              (let ((_%e141243141266%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141242141263%_))))
                                (let ((_%hd141244141269%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141243141266%_)))
                                      (_%tl141245141271%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141243141266%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141245141271%_))
                                      (let ((_%e141246141274%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141245141271%_))))
                                        (let ((_%hd141247141277%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141246141274%_)))
                                              (_%tl141248141279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141246141274%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141248141279%_))
                                              ((lambda (_%L141282%_
                                                        _%L141283%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L141283%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self141233%_ _%L141282%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd141247141277%_
                                               _%hd141244141269%_)
                                              (_%g141236141253%_
                                               _%g141237141256%_))))
                                      (_%g141236141253%_ _%g141237141256%_))))
                              (_%g141236141253%_ _%g141237141256%_))))
                      (_%g141236141253%_ _%g141237141256%_)))))
          (_%g141235141298%_ _%stx141234%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self141182%_ _%stx141183%_)
        (let* ((_%g141185141195%_
                (lambda (_%g141186141192%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141186141192%_))))
               (_%g141184141230%_
                (lambda (_%g141186141198%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141186141198%_))
                      (let ((_%e141188141200%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141186141198%_))))
                        (let ((_%hd141189141203%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141188141200%_)))
                              (_%tl141190141205%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141188141200%_))))
                          ((lambda (_%L141208%_)
                             (let* ((_%c-body141222%_
                                     (map (lambda (_%g141217141219%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self141182%_
                                               _%g141217141219%_)))
                                          _%L141208%_))
                                    (_%c-body141227%_
                                     (let ((__tmp150195
                                            (lambda (_%$obj141224%_)
                                              (not (eq? _%$obj141224%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp150195
                                        _%c-body141222%_))))
                               (cons '%#begin _%c-body141227%_)))
                           _%tl141190141205%_)))
                      (_%g141185141195%_ _%g141186141198%_)))))
          (_%g141184141230%_ _%stx141183%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self141087%_ _%stx141088%_)
        (let* ((_%g141090141100%_
                (lambda (_%g141091141097%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141091141097%_))))
               (_%g141089141179%_
                (lambda (_%g141091141103%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141091141103%_))
                      (let ((_%e141093141105%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141091141103%_))))
                        (let ((_%hd141094141108%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141093141105%_)))
                              (_%tl141095141110%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141093141105%_))))
                          ((lambda (_%L141113%_)
                             (let* ((_%phi141123%_
                                     (let ((__tmp150196
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp150196 '1)))
                                    (_%block141125%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self141087%_ 'state))
                                      _%phi141123%_))
                                    (_%compiled141128%_
                                     (let ((__tmp150197
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self141087%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L141113%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp150197
                                        gx#current-expander-phi
                                        _%phi141123%_)))
                                    (_%g141131141141%_
                                     (lambda (_%g141132141138%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g141132141138%_))))
                                    (_%g141130141176%_
                                     (lambda (_%g141132141144%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g141132141144%_))
                                           (let ((_%e141134141146%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g141132141144%_))))
                                             (let ((_%hd141135141149%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e141134141146%_)))
                                                   (_%tl141136141151%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e141134141146%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd141135141149%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd141135141149%_))
                                                       ((lambda (_%L141154%_)
                                                          (let ((_%c-body141171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj141168%_)
                                   (not (eq? _%$obj141168%_ '#!void)))
                                 _%L141154%_)))
                    (if _%block141125%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block141125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body141171%_))
                        (if (null? _%c-body141171%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body141171%_)))))
                _%tl141136141151%_)
               (_%g141131141141%_ _%g141132141144%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g141131141141%_
                                                    _%g141132141144%_))))
                                           (_%g141131141141%_
                                            _%g141132141144%_)))))
                               (_%g141130141176%_ _%compiled141128%_)))
                           _%tl141095141110%_)))
                      (_%g141090141100%_ _%g141091141103%_)))))
          (_%g141089141179%_ _%stx141088%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self141018%_ _%stx141019%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self141018%_ 'state)))
        (let* ((_%g141021141035%_
                (lambda (_%g141022141032%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141022141032%_))))
               (_%g141020141084%_
                (lambda (_%g141022141038%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141022141038%_))
                      (let ((_%e141025141040%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141022141038%_))))
                        (let ((_%hd141026141043%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141025141040%_)))
                              (_%tl141027141045%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141025141040%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141027141045%_))
                              (let ((_%e141028141048%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141027141045%_))))
                                (let ((_%hd141029141051%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141028141048%_)))
                                      (_%tl141030141053%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141028141048%_))))
                                  ((lambda (_%L141056%_ _%L141057%_)
                                     (let ((_%key141070%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L141057%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key141070%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx141019%_
                                              _%L141057%_
                                              _%key141070%_)))
                                       (let* ((_%ctx141072%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L141057%_)))
                                              (_%code141075%_
                                               (let ((__tmp150198
                                                      (lambda ()
                                                        (let ((__tmp150199
                                                               (##structure-ref
                                                                _%ctx141072%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self141018%_
                                                           __tmp150199)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp150198
                                                  gx#current-expander-context
                                                  _%ctx141072%_)))
                                              (_%rt141077%_
                                               (let ((__tmp150200
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp150200
                                                  _%ctx141072%_)))
                                              (_%loader141079%_
                                               (if _%rt141077%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt141077%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid141081%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L141057%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self141018%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid141081%_
                                                     (cons _%code141075%_
                                                           _%loader141079%_))))))
                                   _%tl141030141053%_
                                   _%hd141029141051%_)))
                              (_%g141021141035%_ _%g141022141038%_))))
                      (_%g141021141035%_ _%g141022141038%_)))))
          (_%g141020141084%_ _%stx141019%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx141005%_ _%context-chain141006%_)
        (let _%lp141008%_ ((_%ctx141010%_ _%ctx141005%_) (_%path141011%_ '()))
          (let ((_%super141013%_
                 (##structure-ref _%ctx141010%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super141013%_ _%context-chain141006%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx141010%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path141011%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super141013%_
                       'gx#module-context::t))
                    (_%lp141008%_
                     _%super141013%_
                     (cons (car (##structure-ref
                                 _%ctx141010%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path141011%_))
                    (cons (let ((__tmp150201
                                 (##structure-ref
                                  _%ctx141010%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp150201))
                          _%path141011%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp140998%_ ((_%ctx141000%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r141001%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx141000%_ 'gx#module-context::t))
              (_%lp140998%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx141000%_ '3 '#f '#f))
               (cons _%ctx141000%_ _%r141001%_))
              _%r141001%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self140761%_ _%stx140762%_)
        (letrec* ((_%context-chain140764%_ (gxc#current-context-chain))
                  (_%make-import-spec140765%_
                   (lambda (_%in140934%_)
                     (let* ((_%in140935140947%_ _%in140934%_)
                            (_%E140937140951%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in140935140947%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K140938140961%_
                             (lambda (_%phi140954%_
                                      _%name140955%_
                                      _%src-name140956%_
                                      _%src-phi140957%_
                                      _%src-key140958%_
                                      _%src-ctx140959%_)
                               (cons _%phi140954%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name140955%_)
                                           (cons _%src-phi140957%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name140956%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in140935140947%_
                              'gx#module-import::t))
                           (let ((_%e140939140964%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in140935140947%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e140939140964%_
                                    'gx#module-export::t))
                                 (let* ((_%e140942140967%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e140939140964%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx140970%_ _%e140942140967%_)
                                        (_%e140943140972%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e140939140964%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key140975%_ _%e140943140972%_)
                                        (_%e140944140977%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e140939140964%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi140980%_ _%e140944140977%_)
                                        (_%e140945140982%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e140939140964%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name140985%_ _%e140945140982%_)
                                        (_%e140940140987%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in140935140947%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name140990%_ _%e140940140987%_)
                                        (_%e140941140992%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in140935140947%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi140995%_ _%e140941140992%_))
                                   (_%K140938140961%_
                                    _%phi140995%_
                                    _%name140990%_
                                    _%src-name140985%_
                                    _%src-phi140980%_
                                    _%src-key140975%_
                                    _%src-ctx140970%_))
                                 (_%E140937140951%_)))
                           (_%E140937140951%_)))))
                  (_%make-import-path140766%_
                   (lambda (_%ctx140932%_)
                     (gxc#generate-meta-import-path
                      _%ctx140932%_
                      _%context-chain140764%_)))
                  (_%make-import-spec-in140767%_
                   (lambda (_%ctx140929%_ _%in140930%_)
                     (cons 'spec:
                           (cons (_%make-import-path140766%_ _%ctx140929%_)
                                 (reverse _%in140930%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self140761%_ 'state)))
          (let* ((_%g140769140779%_
                  (lambda (_%g140770140776%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140770140776%_))))
                 (_%g140768140926%_
                  (lambda (_%g140770140782%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140770140782%_))
                        (let ((_%e140772140784%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140770140782%_))))
                          (let ((_%hd140773140787%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140772140784%_)))
                                (_%tl140774140789%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140772140784%_))))
                            ((lambda (_%L140792%_)
                               (let _%lp140803%_ ((_%rest140805%_ _%L140792%_)
                                                  (_%current-src140806%_ '#f)
                                                  (_%current-in140807%_ '())
                                                  (_%r140808%_ '()))
                                 (let* ((_%rest140809140817%_ _%rest140805%_)
                                        (_%else140811140827%_
                                         (lambda ()
                                           (let ((_%r140825%_
                                                  (if _%current-src140806%_
                                                      (cons (_%make-import-spec-in140767%_
                                                             _%current-src140806%_
                                                             _%current-in140807%_)
                                                            _%r140808%_)
                                                      _%r140808%_)))
                                             (cons '%#import
                                                   (reverse _%r140825%_)))))
                                        (_%K140813140914%_
                                         (lambda (_%rest140830%_ _%in140831%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in140831%_
                                                  'gx#module-import::t))
                                               (let* ((_%in140833140840%_
                                                       _%in140831%_)
                                                      (_%E140835140844%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in140833140840%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K140836140852%_
               (lambda (_%src-ctx140847%_)
                 (if (eq? _%current-src140806%_ _%src-ctx140847%_)
                     (_%lp140803%_
                      _%rest140830%_
                      _%current-src140806%_
                      (cons (_%make-import-spec140765%_ _%in140831%_)
                            _%current-in140807%_)
                      _%r140808%_)
                     (if _%current-src140806%_
                         (_%lp140803%_
                          _%rest140830%_
                          _%src-ctx140847%_
                          (cons (_%make-import-spec140765%_ _%in140831%_) '())
                          (cons (_%make-import-spec-in140767%_
                                 _%current-src140806%_
                                 _%current-in140807%_)
                                _%r140808%_))
                         (_%lp140803%_
                          _%rest140830%_
                          _%src-ctx140847%_
                          (cons (_%make-import-spec140765%_ _%in140831%_) '())
                          _%r140808%_)))))
              (_%e140837140855%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in140833140840%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e140837140855%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e140838140858%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e140837140855%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx140861%_ _%e140838140858%_))
               (_%K140836140852%_ _%src-ctx140861%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E140835140844%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in140831%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi140864%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in140831%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src140866%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in140831%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in140906%_
                                                           (let* ((_%g140867140876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path140766%_ _%src140866%_))
                          (_%E140870140880%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g140867140876%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K140872140896%_
                            (lambda (_%path140894%_) _%path140894%_))
                           (_%K140871140886%_
                            (lambda (_%path140884%_)
                              (cons 'in: _%path140884%_))))
                       (if (pair? _%g140867140876%_)
                           (let ((_%tl140874140901%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g140867140876%_)))
                                 (_%hd140873140899%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g140867140876%_))))
                             (if (null? _%tl140874140901%_)
                                 (let ((_%path140904%_ _%hd140873140899%_))
                                   (_%K140872140896%_ _%path140904%_))
                                 (let ((_%path140889%_ _%g140867140876%_))
                                   (_%K140871140886%_ _%path140889%_))))
                           (let ((_%path140889%_ _%g140867140876%_))
                             (_%K140871140886%_ _%path140889%_))))))
                  (_%r140908%_
                   (if _%current-src140806%_
                       (cons (_%make-import-spec-in140767%_
                              _%current-src140806%_
                              _%current-in140807%_)
                             _%r140808%_)
                       _%r140808%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp140803%_
                                                      _%rest140830%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi140864%_)
                                                                _%src-in140906%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi140864%_
                                    (cons _%src-in140906%_ '()))))
                    _%r140908%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in140831%_
                                                          'gx#module-context::t))
                                                       (let ((_%r140912%_
                                                              (if _%current-src140806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in140767%_
                                 _%current-src140806%_
                                 _%current-in140807%_)
                                _%r140808%_)
                          _%r140808%_)))
                 (_%lp140803%_
                  _%rest140830%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path140766%_ _%in140831%_))
                        _%r140912%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest140809140817%_)
                                       (let ((_%hd140814140917%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest140809140817%_)))
                                             (_%tl140815140919%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest140809140817%_))))
                                         (let* ((_%in140922%_
                                                 _%hd140814140917%_)
                                                (_%rest140924%_
                                                 _%tl140815140919%_))
                                           (_%K140813140914%_
                                            _%rest140924%_
                                            _%in140922%_)))
                                       (_%else140811140827%_)))))
                             _%tl140774140789%_)))
                        (_%g140769140779%_ _%g140770140782%_)))))
            (_%g140768140926%_ _%stx140762%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self140571%_ _%stx140572%_)
        (letrec* ((_%context-chain140574%_ (gxc#current-context-chain))
                  (_%make-import-path140575%_
                   (lambda (_%ctx140759%_)
                     (gxc#generate-meta-import-path
                      _%ctx140759%_
                      _%context-chain140574%_))))
          (let* ((_%g140577140587%_
                  (lambda (_%g140578140584%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140578140584%_))))
                 (_%g140576140756%_
                  (lambda (_%g140578140590%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140578140590%_))
                        (let ((_%e140580140592%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140578140590%_))))
                          (let ((_%hd140581140595%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140580140592%_)))
                                (_%tl140582140597%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140580140592%_))))
                            ((lambda (_%L140600%_)
                               (let _%lp140611%_ ((_%rest140613%_ _%L140600%_)
                                                  (_%r140614%_ '()))
                                 (let* ((_%rest140615140623%_ _%rest140613%_)
                                        (_%else140617140631%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r140614%_))))
                                        (_%K140619140744%_
                                         (lambda (_%rest140634%_ _%out140635%_)
                                           (let* ((_%out140636140649%_
                                                   _%out140635%_)
                                                  (_%E140639140653%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out140636140649%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K140643140723%_
                                                    (lambda (_%name140719%_
                                                             _%phi140720%_
                                                             _%key140721%_)
                                                      (_%lp140611%_
                                                       _%rest140634%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi140720%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key140721%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name140719%_)
                                             '()))))
                     _%r140614%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K140640140703%_
                                                    (lambda (_%phi140657%_
                                                             _%src140658%_)
                                                      (let* ((_%out140698%_
                                                              (if _%src140658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g140659140668%_
                                              (_%make-import-path140575%_
                                               _%src140658%_))
                                             (_%E140662140672%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g140659140668%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K140664140688%_
                                               (lambda (_%path140686%_)
                                                 _%path140686%_))
                                              (_%K140663140678%_
                                               (lambda (_%path140676%_)
                                                 (cons 'in: _%path140676%_))))
                                          (if (pair? _%g140659140668%_)
                                              (let ((_%tl140666140693%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g140659140668%_)))
                                                    (_%hd140665140691%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g140659140668%_))))
                                                (if (null? _%tl140666140693%_)
                                                    (let ((_%path140696%_
                                                           _%hd140665140691%_))
                                                      (_%K140664140688%_
                                                       _%path140696%_))
                                                    (let ((_%path140681%_
                                                           _%g140659140668%_))
                                                      (_%K140663140678%_
                                                       _%path140681%_))))
                                              (let ((_%path140681%_
                                                     _%g140659140668%_))
                                                (_%K140663140678%_
                                                 _%path140681%_)))))
                                      '()))
                          '#t))
                     (_%out140700%_
                      (if (fxzero? _%phi140657%_)
                          _%out140698%_
                          (cons 'phi:
                                (cons _%phi140657%_
                                      (cons _%out140698%_ '()))))))
                (_%lp140611%_
                 _%rest140634%_
                 (cons _%out140700%_ _%r140614%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match140638140716%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out140636140649%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e140641140706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out140636140649%_
                               '1
                               '#f
                               '#f)))
                           (_%e140642140711%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out140636140649%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src140709%_ _%e140641140706%_)
                            (_%phi140714%_ _%e140642140711%_))
                        (_%K140640140703%_ _%phi140714%_ _%src140709%_)))
                    (_%E140639140653%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out140636140649%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e140644140726%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out140636140649%_
                        '1
                        '#f
                        '#f)))
                    (_%e140645140729%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out140636140649%_
                        '2
                        '#f
                        '#f)))
                    (_%e140646140734%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out140636140649%_
                        '3
                        '#f
                        '#f)))
                    (_%e140647140739%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out140636140649%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key140732%_ _%e140645140729%_)
                     (_%phi140737%_ _%e140646140734%_)
                     (_%name140742%_ _%e140647140739%_))
                 (_%K140643140723%_
                  _%name140742%_
                  _%phi140737%_
                  _%key140732%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match140638140716%_))))))))
                                   (if (pair? _%rest140615140623%_)
                                       (let ((_%hd140620140747%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest140615140623%_)))
                                             (_%tl140621140749%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest140615140623%_))))
                                         (let* ((_%out140752%_
                                                 _%hd140620140747%_)
                                                (_%rest140754%_
                                                 _%tl140621140749%_))
                                           (_%K140619140744%_
                                            _%rest140754%_
                                            _%out140752%_)))
                                       (_%else140617140631%_)))))
                             _%tl140582140597%_)))
                        (_%g140577140587%_ _%g140578140590%_)))))
            (_%g140576140756%_ _%stx140572%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self140532%_ _%stx140533%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self140532%_ 'state)))
        (let* ((_%g140535140545%_
                (lambda (_%g140536140542%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140536140542%_))))
               (_%g140534140568%_
                (lambda (_%g140536140548%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140536140548%_))
                      (let ((_%e140538140550%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140536140548%_))))
                        (let ((_%hd140539140553%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140538140550%_)))
                              (_%tl140540140555%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140538140550%_))))
                          ((lambda (_%L140558%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L140558%_)))
                           _%tl140540140555%_)))
                      (_%g140535140545%_ _%g140536140548%_)))))
          (_%g140534140568%_ _%stx140533%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self140403%_ _%stx140404%_)
        (letrec ((_%generate1140406%_
                  (lambda (_%id140527%_ _%eid140528%_)
                    (let ((_%eid140530%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid140528%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid140530%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx140404%_
                             _%eid140530%_)))
                      (cons (gxc#generate-runtime-identifier _%id140527%_)
                            (cons _%eid140530%_ '()))))))
          (let* ((_%g140408140436%_
                  (lambda (_%g140409140433%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140409140433%_))))
                 (_%g140407140524%_
                  (lambda (_%g140409140439%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140409140439%_))
                        (let ((_%e140412140441%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140409140439%_))))
                          (let ((_%hd140413140444%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140412140441%_)))
                                (_%tl140414140446%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140412140441%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl140414140446%_))
                                (let ((_g150202_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl140414140446%_
                                          '0))))
                                  (begin
                                    (let ((_g150203_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g150202_)
                                                 (##values-length _g150202_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g150203_ 2)))
                                          (error "Context expects 2 values"
                                                 _g150203_)))
                                    (let ((_%target140415140449%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g150202_ 0)))
                                          (_%tl140417140451%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g150202_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140417140451%_))
                                          (letrec ((_%loop140418140454%_
                                                    (lambda (_%hd140416140457%_
                                                             _%eid140422140459%_
                                                             _%id140423140461%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd140416140457%_))
                                                          (let ((_%e140419140464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd140416140457%_))))
                    (let ((_%lp-hd140420140467%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140419140464%_)))
                          (_%lp-tl140421140469%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140419140464%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd140420140467%_))
                          (let ((_%e140426140472%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd140420140467%_))))
                            (let ((_%hd140427140475%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140426140472%_)))
                                  (_%tl140428140477%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140426140472%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl140428140477%_))
                                  (let ((_%e140429140480%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl140428140477%_))))
                                    (let ((_%hd140430140483%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140429140480%_)))
                                          (_%tl140431140485%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140429140480%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140431140485%_))
                                          (_%loop140418140454%_
                                           _%lp-tl140421140469%_
                                           (cons _%hd140430140483%_
                                                 _%eid140422140459%_)
                                           (cons _%hd140427140475%_
                                                 _%id140423140461%_))
                                          (_%g140408140436%_
                                           _%g140409140439%_))))
                                  (_%g140408140436%_ _%g140409140439%_))))
                          (_%g140408140436%_ _%g140409140439%_))))
                  (let ((_%eid140424140488%_ (reverse _%eid140422140459%_))
                        (_%id140425140490%_ (reverse _%id140423140461%_)))
                    ((lambda (_%L140493%_ _%L140494%_)
                       (cons '%#extern
                             (map _%generate1140406%_
                                  (let ((__tmp150204
                                         (lambda (_%g140509140512%_
                                                  _%g140510140514%_)
                                           (cons _%g140509140512%_
                                                 _%g140510140514%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp150204 '() _%L140494%_))
                                  (let ((__tmp150205
                                         (lambda (_%g140516140519%_
                                                  _%g140517140521%_)
                                           (cons _%g140516140519%_
                                                 _%g140517140521%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp150205 '() _%L140493%_)))))
                     _%eid140424140488%_
                     _%id140425140490%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop140418140454%_
                                             _%target140415140449%_
                                             '()
                                             '()))
                                          (_%g140408140436%_
                                           _%g140409140439%_)))))
                                (_%g140408140436%_ _%g140409140439%_))))
                        (_%g140408140436%_ _%g140409140439%_)))))
            (_%g140407140524%_ _%stx140404%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self140193%_ _%stx140194%_)
        (letrec ((_%generate1140196%_
                  (lambda (_%id140398%_)
                    (let ((_%eid140400%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id140398%_)))
                          (_%ident140401%_
                           (gxc#generate-runtime-identifier _%id140398%_)))
                      (cons '%#define-runtime
                            (cons _%ident140401%_ (cons _%eid140400%_ '()))))))
                 (_%generate*140197%_
                  (lambda (_%all140366%_)
                    (let* ((_%all140367140375%_ _%all140366%_)
                           (_%else140369140383%_
                            (lambda () (cons '%#begin _%all140366%_)))
                           (_%K140371140388%_
                            (lambda (_%one140386%_) _%one140386%_)))
                      (if (pair? _%all140367140375%_)
                          (let ((_%hd140372140391%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all140367140375%_)))
                                (_%tl140373140393%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all140367140375%_))))
                            (let ((_%one140396%_ _%hd140372140391%_))
                              (if (null? _%tl140373140393%_)
                                  (_%K140371140388%_ _%one140396%_)
                                  (_%else140369140383%_))))
                          (_%else140369140383%_))))))
          (let* ((_%g140199140216%_
                  (lambda (_%g140200140213%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140200140213%_))))
                 (_%g140198140363%_
                  (lambda (_%g140200140219%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140200140219%_))
                        (let ((_%e140203140221%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140200140219%_))))
                          (let ((_%hd140204140224%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140203140221%_)))
                                (_%tl140205140226%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140203140221%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140205140226%_))
                                (let ((_%e140206140229%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140205140226%_))))
                                  (let ((_%hd140207140232%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140206140229%_)))
                                        (_%tl140208140234%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140206140229%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140208140234%_))
                                        (let ((_%e140209140237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140208140234%_))))
                                          (let ((_%hd140210140240%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140209140237%_)))
                                                (_%tl140211140242%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140209140237%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140211140242%_))
                                                ((lambda (_%L140245%_
                                                          _%L140246%_)
                                                   (let _%lp140262%_ ((_%rest140264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L140246%_)
                              (_%r140265%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx149941149942%_
                                                             _%rest140264%_)
                                                            (_%g140270140287%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx149941149942%_)))))
               (let ((_%__kont149943149944%_
                      (lambda (_%L140350%_)
                        (_%lp140262%_ _%L140350%_ _%r140265%_)))
                     (_%__kont149945149946%_
                      (lambda (_%L140323%_ _%L140324%_)
                        (_%lp140262%_
                         _%L140323%_
                         (cons (_%generate1140196%_ _%L140324%_)
                               _%r140265%_))))
                     (_%__kont149947149948%_
                      (lambda (_%L140299%_)
                        (_%generate*140197%_
                         (let ((__tmp150206
                                (cons (_%generate1140196%_ _%L140299%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp150206 _%r140265%_)))))
                     (_%__kont149949149950%_
                      (lambda () (_%generate*140197%_ (reverse _%r140265%_)))))
                 (let ((_%g140268140310%_
                        (lambda ()
                          (let ((_%L140299%_ _%__stx149941149942%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L140299%_))
                                (_%__kont149947149948%_ _%L140299%_)
                                (_%__kont149949149950%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx149941149942%_))
                       (let ((_%e140273140339%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx149941149942%_))))
                         (let ((_%tl140275140344%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e140273140339%_)))
                               (_%hd140274140342%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e140273140339%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd140274140342%_))
                               (let ((_%e140276140347%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd140274140342%_))))
                                 (if (equal? _%e140276140347%_ '#f)
                                     (_%__kont149943149944%_
                                      _%tl140275140344%_)
                                     (_%__kont149945149946%_
                                      _%tl140275140344%_
                                      _%hd140274140342%_)))
                               (_%__kont149945149946%_
                                _%tl140275140344%_
                                _%hd140274140342%_))))
                       (let () (declare (not safe)) (_%g140268140310%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd140210140240%_
                                                 _%hd140207140232%_)
                                                (_%g140199140216%_
                                                 _%g140200140219%_))))
                                        (_%g140199140216%_
                                         _%g140200140219%_))))
                                (_%g140199140216%_ _%g140200140219%_))))
                        (_%g140199140216%_ _%g140200140219%_)))))
            (_%g140198140363%_ _%stx140194%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self140090%_ _%stx140091%_)
        (let* ((_%g140093140110%_
                (lambda (_%g140094140107%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140094140107%_))))
               (_%g140092140190%_
                (lambda (_%g140094140113%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140094140113%_))
                      (let ((_%e140097140115%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140094140113%_))))
                        (let ((_%hd140098140118%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140097140115%_)))
                              (_%tl140099140120%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140097140115%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140099140120%_))
                              (let ((_%e140100140123%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140099140120%_))))
                                (let ((_%hd140101140126%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140100140123%_)))
                                      (_%tl140102140128%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140100140123%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140102140128%_))
                                      (let ((_%e140103140131%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140102140128%_))))
                                        (let ((_%hd140104140134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140103140131%_)))
                                              (_%tl140105140136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140103140131%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140105140136%_))
                                              ((lambda (_%L140139%_
                                                        _%L140140%_)
                                                 (let* ((_%eid140155%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L140140%_)))
                                                        (_%phi140157%_
                                                         (let ((__tmp150207
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp150207 '1)))
                (_%block140159%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self140090%_ 'state))
                  _%phi140157%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g140162140169%_
                                                           (lambda (_%g140163140166%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g140163140166%_))))
                  (_%g140161140187%_
                   (lambda (_%g140163140172%_)
                     ((lambda (_%L140174%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self140090%_ 'state))
                         _%phi140157%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L140174%_ (cons _%L140139%_ '())))))
                      _%g140163140172%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g140161140187%_
                                                      _%eid140155%_))
                                                   (if _%block140159%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block140159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L140140%_)
                                             (cons _%eid140155%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L140140%_)
                           (cons _%eid140155%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140104140134%_
                                               _%hd140101140126%_)
                                              (_%g140093140110%_
                                               _%g140094140113%_))))
                                      (_%g140093140110%_ _%g140094140113%_))))
                              (_%g140093140110%_ _%g140094140113%_))))
                      (_%g140093140110%_ _%g140094140113%_)))))
          (_%g140092140190%_ _%stx140091%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self140022%_ _%stx140023%_)
        (let* ((_%g140025140042%_
                (lambda (_%g140026140039%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140026140039%_))))
               (_%g140024140087%_
                (lambda (_%g140026140045%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140026140045%_))
                      (let ((_%e140029140047%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140026140045%_))))
                        (let ((_%hd140030140050%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140029140047%_)))
                              (_%tl140031140052%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140029140047%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140031140052%_))
                              (let ((_%e140032140055%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140031140052%_))))
                                (let ((_%hd140033140058%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140032140055%_)))
                                      (_%tl140034140060%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140032140055%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140034140060%_))
                                      (let ((_%e140035140063%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140034140060%_))))
                                        (let ((_%hd140036140066%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140035140063%_)))
                                              (_%tl140037140068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140035140063%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140037140068%_))
                                              ((lambda (_%L140071%_
                                                        _%L140072%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L140072%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L140071%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140036140066%_
                                               _%hd140033140058%_)
                                              (_%g140025140042%_
                                               _%g140026140045%_))))
                                      (_%g140025140042%_ _%g140026140045%_))))
                              (_%g140025140042%_ _%g140026140045%_))))
                      (_%g140025140042%_ _%g140026140045%_)))))
          (_%g140024140087%_ _%stx140023%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self140019%_ _%stx140020%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self140019%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx140020%_)
        (gxc#generate-meta-define-values% _%self140019%_ _%stx140020%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self140016%_ _%stx140017%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self140016%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx140017%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp150209 (list)) (__tmp150208 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp150209
         '(src n open blocks)
         __tmp150208
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args140013%_
        (apply make-instance gxc#meta-state::t _%$args140013%_)))
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
      (lambda (_%self139358139997%_ _%ctx139999%_)
        (let* ((_%self140001%_ _%self139358139997%_)
               (_%self140003%_ _%self140001%_))
          (if (let ((__tmp150210
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self140003%_))))
                (declare (not safe))
                (##fx< '4 __tmp150210))
              (begin
                (let ((__tmp150211
                       (let ((__tmp150212
                              (##structure-ref
                               _%ctx139999%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp150212))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self140003%_
                   __tmp150211
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self140003%_ '1 '2 '#f '#f))
                (let ((__tmp150213
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self140003%_
                   __tmp150213
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self140003%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp150214
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self140003%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self140003%_
                       '4
                       __tmp150214))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp150216 (list)) (__tmp150215 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp150216
         '(ctx phi n code)
         __tmp150215
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args139872%_
        (apply make-instance gxc#meta-state-block::t _%$args139872%_)))
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
      (lambda (_%state139831%_ _%phi139832%_)
        (let* ((_%state139833139841%_ _%state139831%_)
               (_%E139835139845%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state139833139841%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K139836139854%_
                (lambda (_%open139848%_ _%n139849%_ _%src139850%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open139848%_ _%phi139832%_))
                      '#f
                      (let ((_%block-ref139852%_
                             (let ((__tmp150217 (number->string _%n139849%_)))
                               (declare (not safe))
                               (##string-append
                                _%src139850%_
                                '"~"
                                __tmp150217))))
                        (##structure-set!
                         _%state139831%_
                         (let () (declare (not safe)) (##fx+ _%n139849%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp150218
                               (let ((__tmp150219
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp150219
                                  _%phi139832%_
                                  _%n139849%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open139848%_ _%phi139832%_ __tmp150218))
                        _%block-ref139852%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state139833139841%_
                 'gxc#meta-state::t))
              (let* ((_%e139837139857%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state139833139841%_
                         '1
                         '#f
                         '#f)))
                     (_%src139860%_ _%e139837139857%_)
                     (_%e139838139862%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state139833139841%_
                         '2
                         '#f
                         '#f)))
                     (_%n139865%_ _%e139838139862%_)
                     (_%e139839139867%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state139833139841%_
                         '3
                         '#f
                         '#f)))
                     (_%open139870%_ _%e139839139867%_))
                (_%K139836139854%_ _%open139870%_ _%n139865%_ _%src139860%_))
              (_%E139835139845%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state139825%_ _%phi139826%_ _%stx139827%_)
        (let ((_%block139829%_
               (let ((__tmp150220
                      (##structure-ref
                       _%state139825%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp150220 _%phi139826%_))))
          (##structure-set!
           _%block139829%_
           (cons _%stx139827%_
                 (##structure-ref
                  _%block139829%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state139819%_)
        (##structure-set!
         _%state139819%_
         (let ((__tmp150223
                (lambda (_%_139821%_ _%block139822%_ _%r139823%_)
                  (cons _%block139822%_ _%r139823%_)))
               (__tmp150222
                (##structure-ref _%state139819%_ '4 gxc#meta-state::t '#f))
               (__tmp150221
                (##structure-ref _%state139819%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp150223 __tmp150222 __tmp150221))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state139819%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state139771%_)
        (gxc#meta-state-end-phi! _%state139771%_)
        (let ((__tmp150225
               (lambda (_%block139773%_ _%r139774%_)
                 (let* ((_%block139775139784%_ _%block139773%_)
                        (_%E139777139788%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block139775139784%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K139778139796%_
                         (lambda (_%code139791%_
                                  _%n139792%_
                                  _%phi139793%_
                                  _%ctx139794%_)
                           (if (null? _%code139791%_)
                               _%r139774%_
                               (cons (cons _%ctx139794%_
                                           (cons _%phi139793%_
                                                 (cons _%n139792%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code139791%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r139774%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block139775139784%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e139779139799%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block139775139784%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx139802%_ _%e139779139799%_)
                              (_%e139780139804%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block139775139784%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi139807%_ _%e139780139804%_)
                              (_%e139781139809%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block139775139784%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n139812%_ _%e139781139809%_)
                              (_%e139782139814%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block139775139784%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code139817%_ _%e139782139814%_))
                         (_%K139778139796%_
                          _%code139817%_
                          _%n139812%_
                          _%phi139807%_
                          _%ctx139802%_))
                       (_%E139777139788%_)))))
              (__tmp150224
               (##structure-ref _%state139771%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp150225 '() __tmp150224))))
    (define gxc#collect-expression-refs
      (lambda (_%stx139767%_)
        (let ((_%ht139769%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht139769%_ _%stx139767%_)
          _%ht139769%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self139710%_ _%stx139711%_)
        (let* ((_%g139713139726%_
                (lambda (_%g139714139723%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139714139723%_))))
               (_%g139712139764%_
                (lambda (_%g139714139729%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139714139729%_))
                      (let ((_%e139716139731%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139714139729%_))))
                        (let ((_%hd139717139734%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139716139731%_)))
                              (_%tl139718139736%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139716139731%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139718139736%_))
                              (let ((_%e139719139739%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139718139736%_))))
                                (let ((_%hd139720139742%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139719139739%_)))
                                      (_%tl139721139744%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139719139739%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl139721139744%_))
                                      ((lambda (_%L139747%_)
                                         (let* ((_%bind139759%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L139747%_)))
                                                (_%eid139761%_
                                                 (if _%bind139759%_
                                                     (##structure-ref
                                                      _%bind139759%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L139747%_))))
                                                (__tmp150226
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self139710%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp150226
                                            _%eid139761%_
                                            _%eid139761%_)))
                                       _%hd139720139742%_)
                                      (_%g139713139726%_ _%g139714139729%_))))
                              (_%g139713139726%_ _%g139714139729%_))))
                      (_%g139713139726%_ _%g139714139729%_)))))
          (_%g139712139764%_ _%stx139711%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self139637%_ _%stx139638%_)
        (let* ((_%g139640139657%_
                (lambda (_%g139641139654%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139641139654%_))))
               (_%g139639139707%_
                (lambda (_%g139641139660%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139641139660%_))
                      (let ((_%e139644139662%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139641139660%_))))
                        (let ((_%hd139645139665%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139644139662%_)))
                              (_%tl139646139667%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139644139662%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139646139667%_))
                              (let ((_%e139647139670%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139646139667%_))))
                                (let ((_%hd139648139673%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139647139670%_)))
                                      (_%tl139649139675%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139647139670%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139649139675%_))
                                      (let ((_%e139650139678%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139649139675%_))))
                                        (let ((_%hd139651139681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139650139678%_)))
                                              (_%tl139652139683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139650139678%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139652139683%_))
                                              ((lambda (_%L139686%_
                                                        _%L139687%_)
                                                 (let* ((_%bind139702%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L139687%_)))
                                                        (_%eid139704%_
                                                         (if _%bind139702%_
                                                             (##structure-ref
                                                              _%bind139702%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L139687%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150227
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self139637%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp150227
                                                      _%eid139704%_
                                                      _%eid139704%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139637%_
                                                      _%L139686%_))))
                                               _%hd139651139681%_
                                               _%hd139648139673%_)
                                              (_%g139640139657%_
                                               _%g139641139660%_))))
                                      (_%g139640139657%_ _%g139641139660%_))))
                              (_%g139640139657%_ _%g139641139660%_))))
                      (_%g139640139657%_ _%g139641139660%_)))))
          (_%g139639139707%_ _%stx139638%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self139594%_ _%stx139595%_)
        (let* ((_%g139597139607%_
                (lambda (_%g139598139604%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139598139604%_))))
               (_%g139596139634%_
                (lambda (_%g139598139610%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139598139610%_))
                      (let ((_%e139600139612%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139598139610%_))))
                        (let ((_%hd139601139615%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139600139612%_)))
                              (_%tl139602139617%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139600139612%_))))
                          ((lambda (_%L139620%_)
                             (let ((__tmp150228
                                    (lambda (_%g139629139631%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self139594%_
                                         _%g139629139631%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp150228 _%L139620%_)))
                           _%tl139602139617%_)))
                      (_%g139597139607%_ _%g139598139610%_)))))
          (_%g139596139634%_ _%stx139595%_))))
    (define gxc#count-values-single%
      (lambda (_%self139591%_ _%stx139592%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self139457%_ _%stx139458%_)
        (let* ((_%__stx149971149972%_ _%stx139458%_)
               (_%g139461139490%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx149971149972%_)))))
          (let ((_%__kont149973149974%_
                 (lambda (_%L139558%_ _%L139559%_)
                   (length (let ((__tmp150229
                                  (lambda (_%g139580139583%_ _%g139581139585%_)
                                    (cons _%g139580139583%_
                                          _%g139581139585%_))))
                             (declare (not safe))
                             (__foldr1 __tmp150229 '() _%L139558%_)))))
                (_%__kont149977149978%_ (lambda () '#f)))
            (let ((_%__match150016150017%_
                   (lambda (_%e139465139502%_
                            _%hd139466139505%_
                            _%tl139467139507%_
                            _%e139468139510%_
                            _%hd139469139513%_
                            _%tl139470139515%_
                            _%e139471139518%_
                            _%hd139472139521%_
                            _%tl139473139523%_
                            _%e139474139526%_
                            _%hd139475139529%_
                            _%tl139476139531%_
                            _%__splice149975149976%_
                            _%target139477139534%_
                            _%tl139479139536%_)
                     (letrec ((_%loop139480139539%_
                               (lambda (_%hd139478139542%_
                                        _%rand139484139544%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd139478139542%_))
                                     (let ((_%e139481139547%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd139478139542%_))))
                                       (let ((_%lp-tl139483139552%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e139481139547%_)))
                                             (_%lp-hd139482139550%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e139481139547%_))))
                                         (_%loop139480139539%_
                                          _%lp-tl139483139552%_
                                          (cons _%lp-hd139482139550%_
                                                _%rand139484139544%_))))
                                     (let ((_%rand139485139555%_
                                            (reverse _%rand139484139544%_)))
                                       (let ((_%L139558%_ _%rand139485139555%_)
                                             (_%L139559%_ _%hd139475139529%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L139559%_
                                                'values))
                                             (_%__kont149973149974%_
                                              _%L139558%_
                                              _%L139559%_)
                                             (_%__kont149977149978%_))))))))
                       (_%loop139480139539%_ _%target139477139534%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx149971149972%_))
                  (let ((_%e139465139502%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx149971149972%_))))
                    (let ((_%tl139467139507%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e139465139502%_)))
                          (_%hd139466139505%_
                           (let ()
                             (declare (not safe))
                             (##car _%e139465139502%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl139467139507%_))
                          (let ((_%e139468139510%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl139467139507%_))))
                            (let ((_%tl139470139515%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139468139510%_)))
                                  (_%hd139469139513%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139468139510%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd139469139513%_))
                                  (let ((_%e139471139518%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd139469139513%_))))
                                    (let ((_%tl139473139523%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e139471139518%_)))
                                          (_%hd139472139521%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e139471139518%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd139472139521%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd139472139521%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl139473139523%_))
                                                  (let ((_%e139474139526%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl139473139523%_))))
                                                    (let ((_%tl139476139531%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e139474139526%_)))
                                                          (_%hd139475139529%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e139474139526%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl139476139531%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl139470139515%_))
                      (let ((_%__splice149975149976%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl139470139515%_
                                '0))))
                        (let ((_%tl139479139536%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice149975149976%_ '1)))
                              (_%target139477139534%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice149975149976%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl139479139536%_))
                              (_%__match150016150017%_
                               _%e139465139502%_
                               _%hd139466139505%_
                               _%tl139467139507%_
                               _%e139468139510%_
                               _%hd139469139513%_
                               _%tl139470139515%_
                               _%e139471139518%_
                               _%hd139472139521%_
                               _%tl139473139523%_
                               _%e139474139526%_
                               _%hd139475139529%_
                               _%tl139476139531%_
                               _%__splice149975149976%_
                               _%target139477139534%_
                               _%tl139479139536%_)
                              (_%__kont149977149978%_))))
                      (_%__kont149977149978%_))
                  (_%__kont149977149978%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont149977149978%_))
                                              (_%__kont149977149978%_))
                                          (_%__kont149977149978%_))))
                                  (_%__kont149977149978%_))))
                          (_%__kont149977149978%_))))
                  (_%__kont149977149978%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self139360%_ _%stx139361%_)
        (let* ((_%g139363139384%_
                (lambda (_%g139364139381%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139364139381%_))))
               (_%g139362139454%_
                (lambda (_%g139364139387%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139364139387%_))
                      (let ((_%e139368139389%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139364139387%_))))
                        (let ((_%hd139369139392%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139368139389%_)))
                              (_%tl139370139394%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139368139389%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139370139394%_))
                              (let ((_%e139371139397%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139370139394%_))))
                                (let ((_%hd139372139400%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139371139397%_)))
                                      (_%tl139373139402%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139371139397%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139373139402%_))
                                      (let ((_%e139374139405%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139373139402%_))))
                                        (let ((_%hd139375139408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139374139405%_)))
                                              (_%tl139376139410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139374139405%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139376139410%_))
                                              (let ((_%e139377139413%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139376139410%_))))
                                                (let ((_%hd139378139416%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139377139413%_)))
                                                      (_%tl139379139418%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139377139413%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl139379139418%_))
                                                      ((lambda (_%L139421%_
                                                                _%L139422%_
                                                                _%L139423%_)
                                                         (let ((_%c1139440139442%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self139360%_ _%L139422%_))))
                   (if _%c1139440139442%_
                       (let* ((_%c1139445%_ _%c1139440139442%_)
                              (_%c2139446139448%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self139360%_
                                  _%L139421%_))))
                         (if _%c2139446139448%_
                             (let ((_%c2139451%_ _%c2139446139448%_))
                               (if (fx= _%c1139445%_ _%c2139451%_)
                                   _%c1139445%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd139378139416%_
               _%hd139375139408%_
               _%hd139372139400%_)
              (_%g139363139384%_ _%g139364139387%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139363139384%_
                                               _%g139364139387%_))))
                                      (_%g139363139384%_ _%g139364139387%_))))
                              (_%g139363139384%_ _%g139364139387%_))))
                      (_%g139363139384%_ _%g139364139387%_)))))
          (_%g139362139454%_ _%stx139361%_))))))
