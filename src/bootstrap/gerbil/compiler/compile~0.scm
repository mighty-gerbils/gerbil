(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1734278445)
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
        (letrec ((_%hash-e148663%_
                  (lambda (_%id148665%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id148665%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e148663%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp150050 (list gxc#::void::t))
            (__tmp150049 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp150050
         '()
         __tmp150049
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args148659%_
        (apply make-instance gxc#::collect-bindings::t _%$args148659%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp150051
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
        (__make-promise __tmp150051)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx148651%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self148654%_
                (let ((__obj150025
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj150025))
               (__tmp150052
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148654%_ _%stx148651%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150052
           gxc#current-compile-method
           _%self148654%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp150054 (list gxc#::void::t))
            (__tmp150053 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp150054
         '(modules)
         __tmp150053
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args148648%_
        (apply make-instance gxc#::lift-modules::t _%$args148648%_)))
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
      (let ((__tmp150055
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
        (__make-promise __tmp150055)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords148622%_ _%modules148619148623%_ _%stx148625%_)
        (let ((_%modules148628%_
               (if (eq? _%modules148619148623%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules148619148623%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self148630%_
                  (let ((__obj150027
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150027
                       _%modules148628%_
                       '1
                       '#f
                       '#f))
                    __obj150027))
                 (__tmp150056
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self148630%_ _%stx148625%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150056
             gxc#current-compile-method
             _%self148630%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords148637%_ . _%args148638%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords148637%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148637%_
                  'modules:
                  absent-value))
               _%args148638%_)))
    (define gxc#apply-lift-modules
      (lambda _%args148620148644%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args148620148644%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp150058 (list)) (__tmp150057 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp150058
         '()
         __tmp150057
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args148615%_
        (apply make-instance gxc#::find-runtime-code::t _%$args148615%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp150059
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
        (__make-promise __tmp150059)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx148607%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self148610%_
                (let ((__obj150029
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj150029))
               (__tmp150060
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148610%_ _%stx148607%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150060
           gxc#current-compile-method
           _%self148610%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp150062 (list gxc#::false::t))
            (__tmp150061 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp150062
         '()
         __tmp150061
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args148604%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args148604%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp150063
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
        (__make-promise __tmp150063)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx148596%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self148599%_
                (let ((__obj150031
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj150031))
               (__tmp150064
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148599%_ _%stx148596%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150064
           gxc#current-compile-method
           _%self148599%_))))
    (define gxc#::count-values::t
      (let ((__tmp150066 (list gxc#::false-expression::t))
            (__tmp150065 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp150066
         '()
         __tmp150065
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args148593%_
        (apply make-instance gxc#::count-values::t _%$args148593%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp150067
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
        (__make-promise __tmp150067)))
    (define gxc#apply-count-values
      (lambda (_%stx148585%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self148588%_
                (let ((__obj150033
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj150033))
               (__tmp150068
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148588%_ _%stx148585%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150068
           gxc#current-compile-method
           _%self148588%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp150069 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp150069
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args148582%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args148582%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp150070
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
        (__make-promise __tmp150070)))
    (define gxc#::generate-loader::t
      (let ((__tmp150072 (list gxc#::generate-runtime-empty::t))
            (__tmp150071 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp150072
         '()
         __tmp150071
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args148578%_
        (apply make-instance gxc#::generate-loader::t _%$args148578%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp150073
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
        (__make-promise __tmp150073)))
    (define gxc#apply-generate-loader
      (lambda (_%stx148570%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self148573%_
                (let ((__obj150036
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj150036))
               (__tmp150074
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148573%_ _%stx148570%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150074
           gxc#current-compile-method
           _%self148573%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp150075 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp150075
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args148567%_
        (apply make-instance gxc#::generate-runtime::t _%$args148567%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp150076
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
        (__make-promise __tmp150076)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx148559%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self148562%_
                (let ((__obj150038
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj150038))
               (__tmp150077
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148562%_ _%stx148559%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150077
           gxc#current-compile-method
           _%self148562%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp150079 (list gxc#::generate-runtime::t))
            (__tmp150078 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp150079
         '()
         __tmp150078
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args148556%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args148556%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp150080
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
        (__make-promise __tmp150080)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx148548%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self148551%_
                (let ((__obj150040
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj150040))
               (__tmp150081
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148551%_ _%stx148548%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150081
           gxc#current-compile-method
           _%self148551%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp150082 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp150082
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args148545%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args148545%_)))
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
      (let ((__tmp150083
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
        (__make-promise __tmp150083)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords148519%_ _%table148516148520%_ _%stx148522%_)
        (let ((_%table148525%_
               (if (eq? _%table148516148520%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table148516148520%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self148527%_
                  (let ((__obj150042
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150042
                       _%table148525%_
                       '1
                       '#f
                       '#f))
                    __obj150042))
                 (__tmp150084
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self148527%_ _%stx148522%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150084
             gxc#current-compile-method
             _%self148527%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords148534%_ . _%args148535%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords148534%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148534%_
                  'table:
                  absent-value))
               _%args148535%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args148517148541%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args148517148541%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp150086 (list gxc#::void-expression::t))
            (__tmp150085 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp150086
         '(state)
         __tmp150085
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args148512%_
        (apply make-instance gxc#::generate-meta::t _%$args148512%_)))
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
      (let ((__tmp150087
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
        (__make-promise __tmp150087)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords148486%_ _%state148483148487%_ _%stx148489%_)
        (let ((_%state148492%_
               (if (eq? _%state148483148487%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state148483148487%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self148494%_
                  (let ((__obj150044
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150044
                       _%state148492%_
                       '1
                       '#f
                       '#f))
                    __obj150044))
                 (__tmp150088
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self148494%_ _%stx148489%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150088
             gxc#current-compile-method
             _%self148494%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords148501%_ . _%args148502%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords148501%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148501%_
                  'state:
                  absent-value))
               _%args148502%_)))
    (define gxc#apply-generate-meta
      (lambda _%args148484148508%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args148484148508%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp150090 (list)) (__tmp150089 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp150090
         '(state)
         __tmp150089
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args148479%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args148479%_)))
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
      (let ((__tmp150091
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
        (__make-promise __tmp150091)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords148453%_ _%state148450148454%_ _%stx148456%_)
        (let ((_%state148459%_
               (if (eq? _%state148450148454%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state148450148454%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self148461%_
                  (let ((__obj150046
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150046
                       _%state148459%_
                       '1
                       '#f
                       '#f))
                    __obj150046))
                 (__tmp150092
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self148461%_ _%stx148456%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150092
             gxc#current-compile-method
             _%self148461%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords148468%_ . _%args148469%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords148468%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148468%_
                  'state:
                  absent-value))
               _%args148469%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args148451148475%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args148451148475%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self148379%_ _%stx148380%_)
        (let* ((_%g148382148399%_
                (lambda (_%g148383148396%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148383148396%_))))
               (_%g148381148446%_
                (lambda (_%g148383148402%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148383148402%_))
                      (let ((_%e148386148404%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148383148402%_))))
                        (let ((_%hd148387148407%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148386148404%_)))
                              (_%tl148388148409%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148386148404%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148388148409%_))
                              (let ((_%e148389148412%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148388148409%_))))
                                (let ((_%hd148390148415%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148389148412%_)))
                                      (_%tl148391148417%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148389148412%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148391148417%_))
                                      (let ((_%e148392148420%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148391148417%_))))
                                        (let ((_%hd148393148423%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148392148420%_)))
                                              (_%tl148394148425%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148392148420%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148394148425%_))
                                              ((lambda (_%L148428%_
                                                        _%L148429%_)
                                                 (let ((__tmp150093
                                                        (lambda (_%bind148444%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind148444%_))
                      (gxc#add-module-binding! _%bind148444%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp150093
                                                    _%L148429%_)))
                                               _%hd148393148423%_
                                               _%hd148390148415%_)
                                              (_%g148382148399%_
                                               _%g148383148402%_))))
                                      (_%g148382148399%_ _%g148383148402%_))))
                              (_%g148382148399%_ _%g148383148402%_))))
                      (_%g148382148399%_ _%g148383148402%_)))))
          (_%g148381148446%_ _%stx148380%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self148311%_ _%stx148312%_)
        (let* ((_%g148314148331%_
                (lambda (_%g148315148328%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148315148328%_))))
               (_%g148313148376%_
                (lambda (_%g148315148334%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148315148334%_))
                      (let ((_%e148318148336%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148315148334%_))))
                        (let ((_%hd148319148339%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148318148336%_)))
                              (_%tl148320148341%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148318148336%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148320148341%_))
                              (let ((_%e148321148344%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148320148341%_))))
                                (let ((_%hd148322148347%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148321148344%_)))
                                      (_%tl148323148349%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148321148344%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148323148349%_))
                                      (let ((_%e148324148352%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148323148349%_))))
                                        (let ((_%hd148325148355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148324148352%_)))
                                              (_%tl148326148357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148324148352%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148326148357%_))
                                              ((lambda (_%L148360%_
                                                        _%L148361%_)
                                                 (gxc#add-module-binding!
                                                  _%L148361%_
                                                  '#t))
                                               _%hd148325148355%_
                                               _%hd148322148347%_)
                                              (_%g148314148331%_
                                               _%g148315148334%_))))
                                      (_%g148314148331%_ _%g148315148334%_))))
                              (_%g148314148331%_ _%g148315148334%_))))
                      (_%g148314148331%_ _%g148315148334%_)))))
          (_%g148313148376%_ _%stx148312%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self148253%_ _%stx148254%_)
        (let* ((_%g148256148270%_
                (lambda (_%g148257148267%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148257148267%_))))
               (_%g148255148308%_
                (lambda (_%g148257148273%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148257148273%_))
                      (let ((_%e148260148275%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148257148273%_))))
                        (let ((_%hd148261148278%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148260148275%_)))
                              (_%tl148262148280%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148260148275%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148262148280%_))
                              (let ((_%e148263148283%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148262148280%_))))
                                (let ((_%hd148264148286%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148263148283%_)))
                                      (_%tl148265148288%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148263148283%_))))
                                  ((lambda (_%L148291%_ _%L148292%_)
                                     (let ((_%ctx148305%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L148292%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self148253%_
                                           'modules))
                                        (cons _%ctx148305%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self148253%_
                                                        'modules)))))
                                       (let ((__tmp150094
                                              (lambda ()
                                                (let ((__tmp150095
                                                       (##structure-ref
                                                        _%ctx148305%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self148253%_
                                                   __tmp150095)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp150094
                                          gx#current-expander-context
                                          _%ctx148305%_))))
                                   _%tl148265148288%_
                                   _%hd148264148286%_)))
                              (_%g148256148270%_ _%g148257148273%_))))
                      (_%g148256148270%_ _%g148257148273%_)))))
          (_%g148255148308%_ _%stx148254%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls148206148208%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls148206148208%_
              (let ((_%decls148211%_ _%decls148206148208%_))
                (let _%lp148213%_ ((_%rest148215%_ _%decls148211%_))
                  (let* ((_%rest148216148224%_ _%rest148215%_)
                         (_%else148218148232%_ (lambda () '#f))
                         (_%K148220148241%_
                          (lambda (_%decls148235%_ _%decl148236%_)
                            (if (equal? _%decl148236%_ '(not safe))
                                '#t
                                (if (equal? _%decl148236%_ '(safe))
                                    '#f
                                    (_%lp148213%_ _%decls148235%_))))))
                    (if (pair? _%rest148216148224%_)
                        (let ((_%hd148221148244%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest148216148224%_)))
                              (_%tl148222148246%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest148216148224%_))))
                          (let* ((_%decl148249%_ _%hd148221148244%_)
                                 (_%decls148251%_ _%tl148222148246%_))
                            (_%K148220148241%_
                             _%decls148251%_
                             _%decl148249%_)))
                        (_%else148218148232%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id148200%_ _%syntax?148201%_)
        (let ((_%eid148203%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id148200%_))
                '1
                gx#binding::t
                '#f))
              (_%ht148204%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid148203%_))
              '#!void
              (let ((__tmp150096
                     (let ((__tmp150097
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid148203%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp150097 _%syntax?148201%_))))
                (declare (not safe))
                (hash-put! _%ht148204%_ _%eid148203%_ __tmp150096))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id148198%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id148198%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key148153%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key148153%_))
            _%key148153%_
            (if (uninterned-symbol? _%key148153%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key148153%_))
                (let* ((_%key148157148164%_ _%key148153%_)
                       (_%E148159148168%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key148157148164%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K148160148186%_
                        (lambda (_%mark148171%_ _%eid148172%_)
                          (let ((_%$e148174%_
                                 (##structure-ref
                                  _%mark148171%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e148174%_
                                ((lambda (_%ht148177%_)
                                   (let ((_%$e148179%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht148177%_
                                             _%eid148172%_))))
                                     (if _%$e148179%_
                                         ((lambda (_%id148182%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id148182%_))
                                                _%id148182%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id148182%_))))
                                          _%$e148179%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid148172%_))))
                                 _%$e148174%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid148172%_))))))
                  (if (pair? _%key148157148164%_)
                      (let ((_%hd148161148189%_
                             (let ()
                               (declare (not safe))
                               (##car _%key148157148164%_)))
                            (_%tl148162148191%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key148157148164%_))))
                        (let* ((_%eid148194%_ _%hd148161148189%_)
                               (_%mark148196%_ _%tl148162148191%_))
                          (_%K148160148186%_ _%mark148196%_ _%eid148194%_)))
                      (_%E148159148168%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self148150%_ _%stx148151%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self147997%_ _%stx147998%_)
        (letrec ((_%simplify148000%_
                  (lambda (_%body148048%_)
                    (let _%lp148050%_ ((_%rest148052%_ _%body148048%_)
                                       (_%r148053%_ '()))
                      (let* ((_%rest148054148062%_ _%rest148052%_)
                             (_%else148056148070%_
                              (lambda () (reverse _%r148053%_)))
                             (_%K148058148138%_
                              (lambda (_%rest148073%_ _%hd148074%_)
                                (let* ((_%hd148075148091%_ _%hd148074%_)
                                       (_%else148079148099%_
                                        (lambda ()
                                          (_%lp148050%_
                                           _%rest148073%_
                                           (cons _%hd148074%_ _%r148053%_)))))
                                  (let ((_%K148087148128%_
                                         (lambda (_%exprs148126%_)
                                           (_%lp148050%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest148073%_
                                               _%exprs148126%_))
                                            _%r148053%_)))
                                        (_%K148082148112%_
                                         (lambda ()
                                           (if (null? _%rest148073%_)
                                               (_%lp148050%_
                                                _%rest148073%_
                                                (cons _%hd148074%_
                                                      _%r148053%_))
                                               (_%lp148050%_
                                                _%rest148073%_
                                                _%r148053%_))))
                                        (_%K148081148104%_
                                         (lambda ()
                                           (if (null? _%rest148073%_)
                                               (_%lp148050%_
                                                _%rest148073%_
                                                (cons _%hd148074%_
                                                      _%r148053%_))
                                               (_%lp148050%_
                                                _%rest148073%_
                                                _%r148053%_)))))
                                    (let ((_%try-match148078148107%_
                                           (lambda ()
                                             (if (symbol? _%hd148075148091%_)
                                                 (_%K148081148104%_)
                                                 (_%else148079148099%_)))))
                                      (if (pair? _%hd148075148091%_)
                                          (let ((_%tl148089148133%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd148075148091%_)))
                                                (_%hd148088148131%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd148075148091%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd148088148131%_
                                                         'begin))
                                                (let ((_%exprs148136%_
                                                       _%tl148089148133%_))
                                                  (_%K148087148128%_
                                                   _%exprs148136%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd148088148131%_
                                                             'quote))
                                                    (if (pair? _%tl148089148133%_)
                                                        (let ((_%tl148086148120%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl148089148133%_))))
                  (if (null? _%tl148086148120%_)
                      (_%K148082148112%_)
                      (_%try-match148078148107%_)))
                (_%try-match148078148107%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match148078148107%_))))
                                          (_%try-match148078148107%_))))))))
                        (if (pair? _%rest148054148062%_)
                            (let ((_%hd148059148141%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest148054148062%_)))
                                  (_%tl148060148143%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest148054148062%_))))
                              (let* ((_%hd148146%_ _%hd148059148141%_)
                                     (_%rest148148%_ _%tl148060148143%_))
                                (_%K148058148138%_
                                 _%rest148148%_
                                 _%hd148146%_)))
                            (_%else148056148070%_)))))))
          (let* ((_%g148002148012%_
                  (lambda (_%g148003148009%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g148003148009%_))))
                 (_%g148001148045%_
                  (lambda (_%g148003148015%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g148003148015%_))
                        (let ((_%e148005148017%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g148003148015%_))))
                          (let ((_%hd148006148020%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148005148017%_)))
                                (_%tl148007148022%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148005148017%_))))
                            ((lambda (_%L148025%_)
                               (let* ((_%body148040%_
                                       (map (lambda (_%g148035148037%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self147997%_
                                                 _%g148035148037%_)))
                                            _%L148025%_))
                                      (_%body148042%_
                                       (_%simplify148000%_ _%body148040%_)))
                                 (if (let ((__tmp150098
                                            (length _%body148042%_)))
                                       (declare (not safe))
                                       (##fx= __tmp150098 '1))
                                     (car _%body148042%_)
                                     (cons 'begin _%body148042%_))))
                             _%tl148007148022%_)))
                        (_%g148002148012%_ _%g148003148015%_)))))
            (_%g148001148045%_ _%stx147998%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self147958%_ _%stx147959%_)
        (let* ((_%g147961147971%_
                (lambda (_%g147962147968%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147962147968%_))))
               (_%g147960147994%_
                (lambda (_%g147962147974%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147962147974%_))
                      (let ((_%e147964147976%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147962147974%_))))
                        (let ((_%hd147965147979%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147964147976%_)))
                              (_%tl147966147981%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147964147976%_))))
                          ((lambda (_%L147984%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L147984%_))))
                           _%tl147966147981%_)))
                      (_%g147961147971%_ _%g147962147974%_)))))
          (_%g147960147994%_ _%stx147959%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self147722%_ _%stx147723%_)
        (let* ((_%__stx148688148689%_ _%stx147723%_)
               (_%g147727147779%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx148688148689%_)))))
          (let ((_%__kont148690148691%_
                 (lambda (_%L147940%_ _%L147941%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self147722%_ _%L147940%_))))
                (_%__kont148692148693%_
                 (lambda (_%L147888%_ _%L147889%_ _%L147890%_)
                   (if (let ((__tmp150099
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L147890%_))))
                         (declare (not safe))
                         (##memq __tmp150099 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self147722%_ _%L147888%_)))))
                (_%__kont148696148697%_
                 (lambda (_%L147808%_ _%L147809%_)
                   (let ((_%decls147824%_ (map gx#syntax->datum _%L147809%_)))
                     (let ((__tmp150102
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls147824%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self147722%_
                                                   _%L147808%_))
                                                '())))))
                           (__tmp150100
                            (let ((__tmp150101
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp150101 _%decls147824%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp150102
                        gxc#current-compile-decls
                        __tmp150100))))))
            (let* ((_%__match148743148744%_
                    (lambda (_%e147743147832%_
                             _%hd147744147835%_
                             _%tl147745147837%_
                             _%e147746147840%_
                             _%hd147747147843%_
                             _%tl147748147845%_
                             _%e147749147848%_
                             _%hd147750147851%_
                             _%tl147751147853%_
                             _%__splice148694148695%_
                             _%target147752147856%_
                             _%tl147754147858%_)
                      (letrec ((_%loop147755147861%_
                                (lambda (_%hd147753147864%_
                                         _%param147759147866%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd147753147864%_))
                                      (let ((_%e147756147869%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd147753147864%_))))
                                        (let ((_%lp-tl147758147874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147756147869%_)))
                                              (_%lp-hd147757147872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147756147869%_))))
                                          (_%loop147755147861%_
                                           _%lp-tl147758147874%_
                                           (cons _%lp-hd147757147872%_
                                                 _%param147759147866%_))))
                                      (let ((_%param147760147877%_
                                             (reverse _%param147759147866%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl147748147845%_))
                                            (let ((_%e147761147880%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl147748147845%_))))
                                              (let ((_%tl147763147885%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e147761147880%_)))
                                                    (_%hd147762147883%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e147761147880%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl147763147885%_))
                                                    (let ((_%L147888%_
                                                           _%hd147762147883%_)
                                                          (_%L147889%_
                                                           _%param147760147877%_)
                                                          (_%L147890%_
                                                           _%hd147750147851%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L147890%_))
                       (not (let ((__tmp150103
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L147890%_))))
                              (declare (not safe))
                              (##memq __tmp150103 gxc#gambit-annotations))))
                  (_%__kont148692148693%_ _%L147888%_ _%L147889%_ _%L147890%_)
                  (_%__kont148696148697%_
                   _%hd147762147883%_
                   _%hd147747147843%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g147727147779%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g147727147779%_))))))))
                        (_%loop147755147861%_ _%target147752147856%_ '()))))
                   (_%__match148717148718%_
                    (lambda (_%e147731147916%_
                             _%hd147732147919%_
                             _%tl147733147921%_
                             _%e147734147924%_
                             _%hd147735147927%_
                             _%tl147736147929%_
                             _%e147737147932%_
                             _%hd147738147935%_
                             _%tl147739147937%_)
                      (let ((_%L147940%_ _%hd147738147935%_)
                            (_%L147941%_ _%hd147735147927%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L147941%_))
                            (_%__kont148690148691%_ _%L147940%_ _%L147941%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd147735147927%_))
                                (let ((_%e147749147848%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd147735147927%_))))
                                  (let ((_%tl147751147853%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e147749147848%_)))
                                        (_%hd147750147851%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e147749147848%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl147751147853%_))
                                        (let ((_%__splice148694148695%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl147751147853%_
                                                  '0))))
                                          (let ((_%tl147754147858%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice148694148695%_
                                                    '1)))
                                                (_%target147752147856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice148694148695%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl147754147858%_))
                                                (_%__match148743148744%_
                                                 _%e147731147916%_
                                                 _%hd147732147919%_
                                                 _%tl147733147921%_
                                                 _%e147734147924%_
                                                 _%hd147735147927%_
                                                 _%tl147736147929%_
                                                 _%e147749147848%_
                                                 _%hd147750147851%_
                                                 _%tl147751147853%_
                                                 _%__splice148694148695%_
                                                 _%target147752147856%_
                                                 _%tl147754147858%_)
                                                (_%__kont148696148697%_
                                                 _%hd147738147935%_
                                                 _%hd147735147927%_))))
                                        (_%__kont148696148697%_
                                         _%hd147738147935%_
                                         _%hd147735147927%_))))
                                (_%__kont148696148697%_
                                 _%hd147738147935%_
                                 _%hd147735147927%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx148688148689%_))
                  (let ((_%e147731147916%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx148688148689%_))))
                    (let ((_%tl147733147921%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e147731147916%_)))
                          (_%hd147732147919%_
                           (let ()
                             (declare (not safe))
                             (##car _%e147731147916%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl147733147921%_))
                          (let ((_%e147734147924%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl147733147921%_))))
                            (let ((_%tl147736147929%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e147734147924%_)))
                                  (_%hd147735147927%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e147734147924%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl147736147929%_))
                                  (let ((_%e147737147932%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl147736147929%_))))
                                    (let ((_%tl147739147937%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e147737147932%_)))
                                          (_%hd147738147935%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e147737147932%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl147739147937%_))
                                          (_%__match148717148718%_
                                           _%e147731147916%_
                                           _%hd147732147919%_
                                           _%tl147733147921%_
                                           _%e147734147924%_
                                           _%hd147735147927%_
                                           _%tl147736147929%_
                                           _%e147737147932%_
                                           _%hd147738147935%_
                                           _%tl147739147937%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd147735147927%_))
                                              (let ((_%e147749147848%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd147735147927%_))))
                                                (let ((_%tl147751147853%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e147749147848%_)))
                                                      (_%hd147750147851%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e147749147848%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl147751147853%_))
                                                      (let ((_%__splice148694148695%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl147751147853%_ '0))))
                (let ((_%tl147754147858%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice148694148695%_ '1)))
                      (_%target147752147856%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice148694148695%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl147754147858%_))
                      (_%__match148743148744%_
                       _%e147731147916%_
                       _%hd147732147919%_
                       _%tl147733147921%_
                       _%e147734147924%_
                       _%hd147735147927%_
                       _%tl147736147929%_
                       _%e147749147848%_
                       _%hd147750147851%_
                       _%tl147751147853%_
                       _%__splice148694148695%_
                       _%target147752147856%_
                       _%tl147754147858%_)
                      (let () (declare (not safe)) (_%g147727147779%_)))))
              (let () (declare (not safe)) (_%g147727147779%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g147727147779%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd147735147927%_))
                                      (let ((_%e147749147848%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd147735147927%_))))
                                        (let ((_%tl147751147853%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147749147848%_)))
                                              (_%hd147750147851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147749147848%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl147751147853%_))
                                              (let ((_%__splice148694148695%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl147751147853%_
                                                        '0))))
                                                (let ((_%tl147754147858%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice148694148695%_
                                                          '1)))
                                                      (_%target147752147856%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice148694148695%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl147754147858%_))
                                                      (_%__match148743148744%_
                                                       _%e147731147916%_
                                                       _%hd147732147919%_
                                                       _%tl147733147921%_
                                                       _%e147734147924%_
                                                       _%hd147735147927%_
                                                       _%tl147736147929%_
                                                       _%e147749147848%_
                                                       _%hd147750147851%_
                                                       _%tl147751147853%_
                                                       _%__splice148694148695%_
                                                       _%target147752147856%_
                                                       _%tl147754147858%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g147727147779%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g147727147779%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g147727147779%_))))))
                          (let () (declare (not safe)) (_%g147727147779%_)))))
                  (let () (declare (not safe)) (_%g147727147779%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self147681%_ _%stx147682%_)
        (let* ((_%g147684147694%_
                (lambda (_%g147685147691%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147685147691%_))))
               (_%g147683147719%_
                (lambda (_%g147685147697%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147685147697%_))
                      (let ((_%e147687147699%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147685147697%_))))
                        (let ((_%hd147688147702%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147687147699%_)))
                              (_%tl147689147704%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147687147699%_))))
                          ((lambda (_%L147707%_)
                             (let ((_%decls147717%_
                                    (map gx#syntax->datum _%L147707%_)))
                               (let ((__tmp150104
                                      (let ((__tmp150105
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp150105
                                         _%decls147717%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp150104))
                               (cons 'declare _%decls147717%_)))
                           _%tl147689147704%_)))
                      (_%g147684147694%_ _%g147685147697%_)))))
          (_%g147683147719%_ _%stx147682%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self147427%_ _%stx147428%_)
        (let* ((_%g147430147447%_
                (lambda (_%g147431147444%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147431147444%_))))
               (_%g147429147678%_
                (lambda (_%g147431147450%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147431147450%_))
                      (let ((_%e147434147452%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147431147450%_))))
                        (let ((_%hd147435147455%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147434147452%_)))
                              (_%tl147436147457%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147434147452%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147436147457%_))
                              (let ((_%e147437147460%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147436147457%_))))
                                (let ((_%hd147438147463%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147437147460%_)))
                                      (_%tl147439147465%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147437147460%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147439147465%_))
                                      (let ((_%e147440147468%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147439147465%_))))
                                        (let ((_%hd147441147471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147440147468%_)))
                                              (_%tl147442147473%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147440147468%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147442147473%_))
                                              ((lambda (_%L147476%_
                                                        _%L147477%_)
                                                 (let* ((_%__stx148796148797%_
                                                         _%L147477%_)
                                                        (_%g147494147508%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx148796148797%_)))))
                                                   (let ((_%__kont148798148799%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self147427%_
                                                               _%L147476%_))))
                                                         (_%__kont148800148801%_
                                                          (lambda (_%L147640%_)
                                                            (let ((_%eid147649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L147640%_))))
                      (let ((_%lambda-expr147650147652%_
                             (gxc#apply-find-lambda-expression _%L147476%_)))
                        (if _%lambda-expr147650147652%_
                            (let* ((_%lambda-expr147655%_
                                    _%lambda-expr147650147652%_)
                                   (__tmp150106
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp150106
                               _%lambda-expr147655%_
                               _%eid147649%_))
                            '#f))
                      (cons 'define
                            (cons _%eid147649%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self147427%_
                                           _%L147476%_))
                                        '()))))))
                 (_%__kont148802148803%_
                  (lambda ()
                    (let* ((_%tmp147515%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body147624%_
                            (let _%lp147517%_ ((_%rest147519%_ _%L147477%_)
                                               (_%k147520%_ '0)
                                               (_%r147521%_ '()))
                              (let* ((_%__stx148766148767%_ _%rest147519%_)
                                     (_%g147526147543%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx148766148767%_)))))
                                (let ((_%__kont148768148769%_
                                       (lambda (_%L147611%_)
                                         (_%lp147517%_
                                          _%L147611%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k147520%_ '1))
                                          _%r147521%_)))
                                      (_%__kont148770148771%_
                                       (lambda (_%L147584%_ _%L147585%_)
                                         (_%lp147517%_
                                          _%L147584%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k147520%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L147585%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp147515%_
                           _%k147520%_
                           _%L147584%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r147521%_))))
                                      (_%__kont148772148773%_
                                       (lambda (_%L147555%_)
                                         (let ((__tmp150107
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L147555%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp147515%_
                                 _%k147520%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp150107
                                            _%r147521%_))))
                                      (_%__kont148774148775%_
                                       (lambda () (reverse _%r147521%_))))
                                  (let ((_%g147524147571%_
                                         (lambda ()
                                           (let ((_%L147555%_
                                                  _%__stx148766148767%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L147555%_))
                                                 (_%__kont148772148773%_
                                                  _%L147555%_)
                                                 (_%__kont148774148775%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx148766148767%_))
                                        (let ((_%e147529147600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx148766148767%_))))
                                          (let ((_%tl147531147605%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e147529147600%_)))
                                                (_%hd147530147603%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e147529147600%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd147530147603%_))
                                                (let ((_%e147532147608%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd147530147603%_))))
                                                  (if (equal? _%e147532147608%_
                                                              '#f)
                                                      (_%__kont148768148769%_
                                                       _%tl147531147605%_)
                                                      (_%__kont148770148771%_
                                                       _%tl147531147605%_
                                                       _%hd147530147603%_)))
                                                (_%__kont148770148771%_
                                                 _%tl147531147605%_
                                                 _%hd147530147603%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g147524147571%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp147515%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self147427%_
                                                       _%L147476%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp147515%_
                                         _%L147477%_
                                         _%L147476%_)
                                        _%body147624%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx148796148797%_))
                                                         (let ((_%e147496147662%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx148796148797%_))))
                   (let ((_%tl147498147667%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e147496147662%_)))
                         (_%hd147497147665%_
                          (let ()
                            (declare (not safe))
                            (##car _%e147496147662%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd147497147665%_))
                         (let ((_%e147499147670%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd147497147665%_))))
                           (if (equal? _%e147499147670%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl147498147667%_))
                                   (_%__kont148798148799%_)
                                   (_%__kont148802148803%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl147498147667%_))
                                   (_%__kont148800148801%_ _%hd147497147665%_)
                                   (_%__kont148802148803%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl147498147667%_))
                             (_%__kont148800148801%_ _%hd147497147665%_)
                             (_%__kont148802148803%_)))))
                 (_%__kont148802148803%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd147441147471%_
                                               _%hd147438147463%_)
                                              (_%g147430147447%_
                                               _%g147431147450%_))))
                                      (_%g147430147447%_ _%g147431147450%_))))
                              (_%g147430147447%_ _%g147431147450%_))))
                      (_%g147430147447%_ _%g147431147450%_)))))
          (_%g147429147678%_ _%stx147428%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals147402%_ _%hd147403%_ _%expr147404%_)
        (let ((_%$e147406%_ (gxc#apply-count-values _%expr147404%_)))
          (if _%$e147406%_
              ((lambda (_%count147409%_)
                 (let ((_%len147411%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd147403%_)))
                       (_%cmp147412%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd147403%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len147411%_ '0))
                           (_%cmp147412%_ _%count147409%_ _%len147411%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr147404%_
                          _%hd147403%_)))))
               _%$e147406%_)
              (let* ((_%len147418%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd147403%_)))
                     (_%cmp147420%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd147403%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg147422%_
                      (let ((__tmp150109
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd147403%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp150108 (number->string _%len147418%_)))
                        (declare (not safe))
                        (##string-append __tmp150109 __tmp150108 '" values")))
                     (_%count147424%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd147403%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len147418%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count147424%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals147402%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp147420%_
                                (cons _%count147424%_
                                      (cons _%len147418%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp147420%_
                                                        (cons _%count147424%_
                                                              (cons _%len147418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg147422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count147424%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var147397%_)
        (letrec ((_%generate-inline147399%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var147397%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var147397%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline147399%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline147399%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var147390%_ _%i147391%_ _%rest147392%_)
        (letrec ((_%generate-inline147394%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i147391%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest147392%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var147390%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var147390%_
                                                      (cons '0 '())))
                                          (cons _%var147390%_ '()))))
                        (cons '##values-ref
                              (cons _%var147390%_ (cons _%i147391%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline147394%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline147394%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var147384%_ _%i147385%_)
        (if (let () (declare (not safe)) (##fx= _%i147385%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var147384%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var147384%_ '()))
                                  (cons (cons 'list (cons _%var147384%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var147384%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var147384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var147384%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i147385%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var147384%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var147384%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var147384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var147384%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var147384%_ '()))
                                (cons _%i147385%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var147384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i147385%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self147316%_ _%stx147317%_)
        (let* ((_%g147319147336%_
                (lambda (_%g147320147333%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147320147333%_))))
               (_%g147318147381%_
                (lambda (_%g147320147339%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147320147339%_))
                      (let ((_%e147323147341%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147320147339%_))))
                        (let ((_%hd147324147344%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147323147341%_)))
                              (_%tl147325147346%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147323147341%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147325147346%_))
                              (let ((_%e147326147349%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147325147346%_))))
                                (let ((_%hd147327147352%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147326147349%_)))
                                      (_%tl147328147354%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147326147349%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147328147354%_))
                                      (let ((_%e147329147357%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147328147354%_))))
                                        (let ((_%hd147330147360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147329147357%_)))
                                              (_%tl147331147362%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147329147357%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147331147362%_))
                                              ((lambda (_%L147365%_
                                                        _%L147366%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self147316%_
                                                  _%L147366%_
                                                  _%L147365%_))
                                               _%hd147330147360%_
                                               _%hd147327147352%_)
                                              (_%g147319147336%_
                                               _%g147320147339%_))))
                                      (_%g147319147336%_ _%g147320147339%_))))
                              (_%g147319147336%_ _%g147320147339%_))))
                      (_%g147319147336%_ _%g147320147339%_)))))
          (_%g147318147381%_ _%stx147317%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self147275%_ _%hd147276%_ _%body147277%_)
        (let* ((_%hd147279%_ (gxc#generate-runtime-lambda-head _%hd147276%_))
               (_%body147281%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self147275%_ _%body147277%_)))
               (_%body147313%_
                (let* ((_%body147282147290%_ _%body147281%_)
                       (_%else147284147298%_
                        (lambda () (cons _%body147281%_ '())))
                       (_%K147286147303%_
                        (lambda (_%exprs147301%_) _%exprs147301%_)))
                  (if (pair? _%body147282147290%_)
                      (let ((_%hd147287147306%_
                             (let ()
                               (declare (not safe))
                               (##car _%body147282147290%_)))
                            (_%tl147288147308%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body147282147290%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd147287147306%_ 'begin))
                            (let ((_%exprs147311%_ _%tl147288147308%_))
                              (_%K147286147303%_ _%exprs147311%_))
                            (_%else147284147298%_)))
                      (_%else147284147298%_)))))
          (cons 'lambda (cons _%hd147279%_ _%body147313%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd147273%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd147273%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self145812%_ _%stx145813%_)
        (letrec ((_%dispatch-case?145815%_
                  (lambda (_%hd146503%_ _%body146504%_)
                    (let* ((_%form146506%_
                            (cons _%hd146503%_ (cons _%body146504%_ '())))
                           (_%__stx148828148829%_ _%form146506%_)
                           (_%g146511146668%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx148828148829%_)))))
                      (let ((_%__kont148830148831%_
                             (lambda (_%L147193%_ _%L147194%_ _%L147195%_)
                               '#t))
                            (_%__kont148836148837%_
                             (lambda (_%L146981%_
                                      _%L146982%_
                                      _%L146983%_
                                      _%L146984%_
                                      _%L146985%_
                                      _%L146986%_)
                               '#t))
                            (_%__kont148842148843%_
                             (lambda (_%L146776%_
                                      _%L146777%_
                                      _%L146778%_
                                      _%L146779%_)
                               '#t))
                            (_%__kont148844148845%_ (lambda () '#f)))
                        (let* ((_%__match148969148970%_
                                (lambda (_%e146628146680%_
                                         _%hd146629146683%_
                                         _%tl146630146685%_
                                         _%e146631146688%_
                                         _%hd146632146691%_
                                         _%tl146633146693%_
                                         _%e146634146696%_
                                         _%hd146635146699%_
                                         _%tl146636146701%_
                                         _%e146637146704%_
                                         _%hd146638146707%_
                                         _%tl146639146709%_
                                         _%e146640146712%_
                                         _%hd146641146715%_
                                         _%tl146642146717%_
                                         _%e146643146720%_
                                         _%hd146644146723%_
                                         _%tl146645146725%_
                                         _%e146646146728%_
                                         _%hd146647146731%_
                                         _%tl146648146733%_
                                         _%e146649146736%_
                                         _%hd146650146739%_
                                         _%tl146651146741%_
                                         _%e146652146744%_
                                         _%hd146653146747%_
                                         _%tl146654146749%_
                                         _%e146655146752%_
                                         _%hd146656146755%_
                                         _%tl146657146757%_
                                         _%e146658146760%_
                                         _%hd146659146763%_
                                         _%tl146660146765%_
                                         _%e146661146768%_
                                         _%hd146662146771%_
                                         _%tl146663146773%_)
                                  (let ((_%L146776%_ _%hd146662146771%_)
                                        (_%L146777%_ _%hd146653146747%_)
                                        (_%L146778%_ _%hd146644146723%_)
                                        (_%L146779%_ _%hd146629146683%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L146779%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L146778%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L146779%_
                                                _%L146776%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L146777%_
                                                     _%L146779%_))))
                                        (_%__kont148842148843%_
                                         _%L146776%_
                                         _%L146777%_
                                         _%L146778%_
                                         _%L146779%_)
                                        (_%__kont148844148845%_)))))
                               (_%__match148941148942%_
                                (lambda (_%e146628146680%_
                                         _%hd146629146683%_
                                         _%tl146630146685%_
                                         _%e146631146688%_
                                         _%hd146632146691%_
                                         _%tl146633146693%_
                                         _%e146634146696%_
                                         _%hd146635146699%_
                                         _%tl146636146701%_
                                         _%e146637146704%_
                                         _%hd146638146707%_
                                         _%tl146639146709%_
                                         _%e146640146712%_
                                         _%hd146641146715%_
                                         _%tl146642146717%_
                                         _%e146643146720%_
                                         _%hd146644146723%_
                                         _%tl146645146725%_
                                         _%e146646146728%_
                                         _%hd146647146731%_
                                         _%tl146648146733%_
                                         _%e146649146736%_
                                         _%hd146650146739%_
                                         _%tl146651146741%_
                                         _%e146652146744%_
                                         _%hd146653146747%_
                                         _%tl146654146749%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146648146733%_))
                                      (let ((_%e146655146752%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146648146733%_))))
                                        (let ((_%tl146657146757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146655146752%_)))
                                              (_%hd146656146755%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146655146752%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd146656146755%_))
                                              (let ((_%e146658146760%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd146656146755%_))))
                                                (let ((_%tl146660146765%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146658146760%_)))
                                                      (_%hd146659146763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146658146760%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd146659146763%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd146659146763%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl146660146765%_))
                      (let ((_%e146661146768%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl146660146765%_))))
                        (let ((_%tl146663146773%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146661146768%_)))
                              (_%hd146662146771%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146661146768%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl146663146773%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl146657146757%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl146633146693%_))
                                      (_%__match148969148970%_
                                       _%e146628146680%_
                                       _%hd146629146683%_
                                       _%tl146630146685%_
                                       _%e146631146688%_
                                       _%hd146632146691%_
                                       _%tl146633146693%_
                                       _%e146634146696%_
                                       _%hd146635146699%_
                                       _%tl146636146701%_
                                       _%e146637146704%_
                                       _%hd146638146707%_
                                       _%tl146639146709%_
                                       _%e146640146712%_
                                       _%hd146641146715%_
                                       _%tl146642146717%_
                                       _%e146643146720%_
                                       _%hd146644146723%_
                                       _%tl146645146725%_
                                       _%e146646146728%_
                                       _%hd146647146731%_
                                       _%tl146648146733%_
                                       _%e146649146736%_
                                       _%hd146650146739%_
                                       _%tl146651146741%_
                                       _%e146652146744%_
                                       _%hd146653146747%_
                                       _%tl146654146749%_
                                       _%e146655146752%_
                                       _%hd146656146755%_
                                       _%tl146657146757%_
                                       _%e146658146760%_
                                       _%hd146659146763%_
                                       _%tl146660146765%_
                                       _%e146661146768%_
                                       _%hd146662146771%_
                                       _%tl146663146773%_)
                                      (_%__kont148844148845%_))
                                  (_%__kont148844148845%_))
                              (_%__kont148844148845%_))))
                      (_%__kont148844148845%_))
                  (_%__kont148844148845%_))
              (_%__kont148844148845%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont148844148845%_))))
                                      (_%__kont148844148845%_))))
                               (_%__match148871148872%_
                                (lambda (_%e146564146821%_
                                         _%hd146565146824%_
                                         _%tl146566146826%_
                                         _%__splice148838148839%_
                                         _%target146567146829%_
                                         _%tl146569146831%_)
                                  (letrec ((_%loop146570146834%_
                                            (lambda (_%hd146568146837%_
                                                     _%arg146574146839%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146568146837%_))
                                                  (let ((_%e146571146842%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146568146837%_))))
                                                    (let ((_%lp-tl146573146847%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146571146842%_)))
                                                          (_%lp-hd146572146845%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146571146842%_))))
                                                      (_%loop146570146834%_
                                                       _%lp-tl146573146847%_
                                                       (cons _%lp-hd146572146845%_
                                                             _%arg146574146839%_))))
                                                  (let ((_%arg146575146850%_
                                                         (reverse _%arg146574146839%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl146566146826%_))
                                                        (let ((_%e146576146853%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl146566146826%_))))
                  (let ((_%tl146578146858%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146576146853%_)))
                        (_%hd146577146856%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146576146853%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd146577146856%_))
                        (let ((_%e146579146861%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd146577146856%_))))
                          (let ((_%tl146581146866%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146579146861%_)))
                                (_%hd146580146864%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146579146861%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146580146864%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd146580146864%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146581146866%_))
                                        (let ((_%e146582146869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146581146866%_))))
                                          (let ((_%tl146584146874%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146582146869%_)))
                                                (_%hd146583146872%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146582146869%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd146583146872%_))
                                                (let ((_%e146585146877%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146583146872%_))))
                                                  (let ((_%tl146587146882%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e146585146877%_)))
                                                        (_%hd146586146880%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e146585146877%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd146586146880%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd146586146880%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl146587146882%_))
                        (let ((_%e146588146885%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl146587146882%_))))
                          (let ((_%tl146590146890%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146588146885%_)))
                                (_%hd146589146888%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146588146885%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146590146890%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl146584146874%_))
                                    (let ((_%e146591146893%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl146584146874%_))))
                                      (let ((_%tl146593146898%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e146591146893%_)))
                                            (_%hd146592146896%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e146591146893%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd146592146896%_))
                                            (let ((_%e146594146901%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd146592146896%_))))
                                              (let ((_%tl146596146906%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146594146901%_)))
                                                    (_%hd146595146904%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146594146901%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd146595146904%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd146595146904%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl146596146906%_))
                                                            (let ((_%e146597146909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl146596146906%_))))
                      (let ((_%tl146599146914%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e146597146909%_)))
                            (_%hd146598146912%_
                             (let ()
                               (declare (not safe))
                               (##car _%e146597146909%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl146599146914%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl146593146898%_))
                                (if (let ((__tmp150110
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl146593146898%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp150110 '1))
                                    (let ((_%__splice148840148841%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl146593146898%_
                                              '1))))
                                      (let ((_%tl146602146919%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148840148841%_
                                                '1)))
                                            (_%target146600146917%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148840148841%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl146602146919%_))
                                            (let ((_%e146609146922%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl146602146919%_))))
                                              (let ((_%tl146611146927%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146609146922%_)))
                                                    (_%hd146610146925%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146609146922%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd146610146925%_))
                                                    (let ((_%e146612146930%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd146610146925%_))))
                                                      (let ((_%tl146614146935%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e146612146930%_)))
                    (_%hd146613146933%_
                     (let () (declare (not safe)) (##car _%e146612146930%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd146613146933%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd146613146933%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl146614146935%_))
                            (let ((_%e146615146938%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl146614146935%_))))
                              (let ((_%tl146617146943%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e146615146938%_)))
                                    (_%hd146616146941%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e146615146938%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl146617146943%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl146611146927%_))
                                        (letrec ((_%loop146603146946%_
                                                  (lambda (_%hd146601146949%_
                                                           _%xarg146607146951%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd146601146949%_))
                                                        (let ((_%e146604146954%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd146601146949%_))))
                  (let ((_%lp-tl146606146959%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146604146954%_)))
                        (_%lp-hd146605146957%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146604146954%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd146605146957%_))
                        (let ((_%e146618146962%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd146605146957%_))))
                          (let ((_%tl146620146967%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146618146962%_)))
                                (_%hd146619146965%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146618146962%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146619146965%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd146619146965%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146620146967%_))
                                        (let ((_%e146621146970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146620146967%_))))
                                          (let ((_%tl146623146975%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146621146970%_)))
                                                (_%hd146622146973%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146621146970%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl146623146975%_))
                                                (_%loop146603146946%_
                                                 _%lp-tl146606146959%_
                                                 (cons _%hd146622146973%_
                                                       _%xarg146607146951%_))
                                                (_%__match148941148942%_
                                                 _%e146564146821%_
                                                 _%hd146565146824%_
                                                 _%tl146566146826%_
                                                 _%e146576146853%_
                                                 _%hd146577146856%_
                                                 _%tl146578146858%_
                                                 _%e146579146861%_
                                                 _%hd146580146864%_
                                                 _%tl146581146866%_
                                                 _%e146582146869%_
                                                 _%hd146583146872%_
                                                 _%tl146584146874%_
                                                 _%e146585146877%_
                                                 _%hd146586146880%_
                                                 _%tl146587146882%_
                                                 _%e146588146885%_
                                                 _%hd146589146888%_
                                                 _%tl146590146890%_
                                                 _%e146591146893%_
                                                 _%hd146592146896%_
                                                 _%tl146593146898%_
                                                 _%e146594146901%_
                                                 _%hd146595146904%_
                                                 _%tl146596146906%_
                                                 _%e146597146909%_
                                                 _%hd146598146912%_
                                                 _%tl146599146914%_))))
                                        (_%__match148941148942%_
                                         _%e146564146821%_
                                         _%hd146565146824%_
                                         _%tl146566146826%_
                                         _%e146576146853%_
                                         _%hd146577146856%_
                                         _%tl146578146858%_
                                         _%e146579146861%_
                                         _%hd146580146864%_
                                         _%tl146581146866%_
                                         _%e146582146869%_
                                         _%hd146583146872%_
                                         _%tl146584146874%_
                                         _%e146585146877%_
                                         _%hd146586146880%_
                                         _%tl146587146882%_
                                         _%e146588146885%_
                                         _%hd146589146888%_
                                         _%tl146590146890%_
                                         _%e146591146893%_
                                         _%hd146592146896%_
                                         _%tl146593146898%_
                                         _%e146594146901%_
                                         _%hd146595146904%_
                                         _%tl146596146906%_
                                         _%e146597146909%_
                                         _%hd146598146912%_
                                         _%tl146599146914%_))
                                    (_%__match148941148942%_
                                     _%e146564146821%_
                                     _%hd146565146824%_
                                     _%tl146566146826%_
                                     _%e146576146853%_
                                     _%hd146577146856%_
                                     _%tl146578146858%_
                                     _%e146579146861%_
                                     _%hd146580146864%_
                                     _%tl146581146866%_
                                     _%e146582146869%_
                                     _%hd146583146872%_
                                     _%tl146584146874%_
                                     _%e146585146877%_
                                     _%hd146586146880%_
                                     _%tl146587146882%_
                                     _%e146588146885%_
                                     _%hd146589146888%_
                                     _%tl146590146890%_
                                     _%e146591146893%_
                                     _%hd146592146896%_
                                     _%tl146593146898%_
                                     _%e146594146901%_
                                     _%hd146595146904%_
                                     _%tl146596146906%_
                                     _%e146597146909%_
                                     _%hd146598146912%_
                                     _%tl146599146914%_))
                                (_%__match148941148942%_
                                 _%e146564146821%_
                                 _%hd146565146824%_
                                 _%tl146566146826%_
                                 _%e146576146853%_
                                 _%hd146577146856%_
                                 _%tl146578146858%_
                                 _%e146579146861%_
                                 _%hd146580146864%_
                                 _%tl146581146866%_
                                 _%e146582146869%_
                                 _%hd146583146872%_
                                 _%tl146584146874%_
                                 _%e146585146877%_
                                 _%hd146586146880%_
                                 _%tl146587146882%_
                                 _%e146588146885%_
                                 _%hd146589146888%_
                                 _%tl146590146890%_
                                 _%e146591146893%_
                                 _%hd146592146896%_
                                 _%tl146593146898%_
                                 _%e146594146901%_
                                 _%hd146595146904%_
                                 _%tl146596146906%_
                                 _%e146597146909%_
                                 _%hd146598146912%_
                                 _%tl146599146914%_))))
                        (_%__match148941148942%_
                         _%e146564146821%_
                         _%hd146565146824%_
                         _%tl146566146826%_
                         _%e146576146853%_
                         _%hd146577146856%_
                         _%tl146578146858%_
                         _%e146579146861%_
                         _%hd146580146864%_
                         _%tl146581146866%_
                         _%e146582146869%_
                         _%hd146583146872%_
                         _%tl146584146874%_
                         _%e146585146877%_
                         _%hd146586146880%_
                         _%tl146587146882%_
                         _%e146588146885%_
                         _%hd146589146888%_
                         _%tl146590146890%_
                         _%e146591146893%_
                         _%hd146592146896%_
                         _%tl146593146898%_
                         _%e146594146901%_
                         _%hd146595146904%_
                         _%tl146596146906%_
                         _%e146597146909%_
                         _%hd146598146912%_
                         _%tl146599146914%_))))
                (let ((_%xarg146608146978%_ (reverse _%xarg146607146951%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl146578146858%_))
                      (let ((_%L146981%_ _%hd146616146941%_)
                            (_%L146982%_ _%xarg146608146978%_)
                            (_%L146983%_ _%hd146598146912%_)
                            (_%L146984%_ _%hd146589146888%_)
                            (_%L146985%_ _%tl146569146831%_)
                            (_%L146986%_ _%arg146575146850%_))
                        (if (and (let ((__tmp150111
                                        (let ((__tmp150112
                                               (lambda (_%g147029147032%_
                                                        _%g147030147034%_)
                                                 (cons _%g147029147032%_
                                                       _%g147030147034%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp150112
                                           '()
                                           _%L146986%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp150111))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L146985%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L146984%_
                                    'apply))
                                 (let ((__tmp150115
                                        (length (let ((__tmp150116
                                                       (lambda (_%g147036147039%_
                                                                _%g147037147041%_)
                                                         (cons _%g147036147039%_
                                                               _%g147037147041%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp150116
                                                   '()
                                                   _%L146986%_))))
                                       (__tmp150113
                                        (length (let ((__tmp150114
                                                       (lambda (_%g147043147046%_
                                                                _%g147044147048%_)
                                                         (cons _%g147043147046%_
                                                               _%g147044147048%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp150114
                                                   '()
                                                   _%L146982%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp150115 __tmp150113))
                                 (let ((__tmp150119
                                        (let ((__tmp150120
                                               (lambda (_%g147050147053%_
                                                        _%g147051147055%_)
                                                 (cons _%g147050147053%_
                                                       _%g147051147055%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp150120
                                           '()
                                           _%L146986%_)))
                                       (__tmp150117
                                        (let ((__tmp150118
                                               (lambda (_%g147057147060%_
                                                        _%g147058147062%_)
                                                 (cons _%g147057147060%_
                                                       _%g147058147062%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp150118
                                           '()
                                           _%L146982%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp150119
                                    __tmp150117))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L146985%_
                                    _%L146981%_))
                                 (not (let ((__tmp150124
                                             (lambda (_%g147064147066%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g147064147066%_
                                                  _%L146983%_))))
                                            (__tmp150121
                                             (let ((__tmp150123
                                                    (lambda (_%g147068147071%_
                                                             _%g147069147073%_)
                                                      (cons _%g147068147071%_
                                                            _%g147069147073%_)))
                                                   (__tmp150122
                                                    (cons _%L146985%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp150123
                                                __tmp150122
                                                _%L146986%_))))
                                        (declare (not safe))
                                        (__find __tmp150124 __tmp150121))))
                            (_%__kont148836148837%_
                             _%L146981%_
                             _%L146982%_
                             _%L146983%_
                             _%L146984%_
                             _%L146985%_
                             _%L146986%_)
                            (_%__match148941148942%_
                             _%e146564146821%_
                             _%hd146565146824%_
                             _%tl146566146826%_
                             _%e146576146853%_
                             _%hd146577146856%_
                             _%tl146578146858%_
                             _%e146579146861%_
                             _%hd146580146864%_
                             _%tl146581146866%_
                             _%e146582146869%_
                             _%hd146583146872%_
                             _%tl146584146874%_
                             _%e146585146877%_
                             _%hd146586146880%_
                             _%tl146587146882%_
                             _%e146588146885%_
                             _%hd146589146888%_
                             _%tl146590146890%_
                             _%e146591146893%_
                             _%hd146592146896%_
                             _%tl146593146898%_
                             _%e146594146901%_
                             _%hd146595146904%_
                             _%tl146596146906%_
                             _%e146597146909%_
                             _%hd146598146912%_
                             _%tl146599146914%_)))
                      (_%__match148941148942%_
                       _%e146564146821%_
                       _%hd146565146824%_
                       _%tl146566146826%_
                       _%e146576146853%_
                       _%hd146577146856%_
                       _%tl146578146858%_
                       _%e146579146861%_
                       _%hd146580146864%_
                       _%tl146581146866%_
                       _%e146582146869%_
                       _%hd146583146872%_
                       _%tl146584146874%_
                       _%e146585146877%_
                       _%hd146586146880%_
                       _%tl146587146882%_
                       _%e146588146885%_
                       _%hd146589146888%_
                       _%tl146590146890%_
                       _%e146591146893%_
                       _%hd146592146896%_
                       _%tl146593146898%_
                       _%e146594146901%_
                       _%hd146595146904%_
                       _%tl146596146906%_
                       _%e146597146909%_
                       _%hd146598146912%_
                       _%tl146599146914%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop146603146946%_
                                           _%target146600146917%_
                                           '()))
                                        (_%__match148941148942%_
                                         _%e146564146821%_
                                         _%hd146565146824%_
                                         _%tl146566146826%_
                                         _%e146576146853%_
                                         _%hd146577146856%_
                                         _%tl146578146858%_
                                         _%e146579146861%_
                                         _%hd146580146864%_
                                         _%tl146581146866%_
                                         _%e146582146869%_
                                         _%hd146583146872%_
                                         _%tl146584146874%_
                                         _%e146585146877%_
                                         _%hd146586146880%_
                                         _%tl146587146882%_
                                         _%e146588146885%_
                                         _%hd146589146888%_
                                         _%tl146590146890%_
                                         _%e146591146893%_
                                         _%hd146592146896%_
                                         _%tl146593146898%_
                                         _%e146594146901%_
                                         _%hd146595146904%_
                                         _%tl146596146906%_
                                         _%e146597146909%_
                                         _%hd146598146912%_
                                         _%tl146599146914%_))
                                    (_%__match148941148942%_
                                     _%e146564146821%_
                                     _%hd146565146824%_
                                     _%tl146566146826%_
                                     _%e146576146853%_
                                     _%hd146577146856%_
                                     _%tl146578146858%_
                                     _%e146579146861%_
                                     _%hd146580146864%_
                                     _%tl146581146866%_
                                     _%e146582146869%_
                                     _%hd146583146872%_
                                     _%tl146584146874%_
                                     _%e146585146877%_
                                     _%hd146586146880%_
                                     _%tl146587146882%_
                                     _%e146588146885%_
                                     _%hd146589146888%_
                                     _%tl146590146890%_
                                     _%e146591146893%_
                                     _%hd146592146896%_
                                     _%tl146593146898%_
                                     _%e146594146901%_
                                     _%hd146595146904%_
                                     _%tl146596146906%_
                                     _%e146597146909%_
                                     _%hd146598146912%_
                                     _%tl146599146914%_))))
                            (_%__match148941148942%_
                             _%e146564146821%_
                             _%hd146565146824%_
                             _%tl146566146826%_
                             _%e146576146853%_
                             _%hd146577146856%_
                             _%tl146578146858%_
                             _%e146579146861%_
                             _%hd146580146864%_
                             _%tl146581146866%_
                             _%e146582146869%_
                             _%hd146583146872%_
                             _%tl146584146874%_
                             _%e146585146877%_
                             _%hd146586146880%_
                             _%tl146587146882%_
                             _%e146588146885%_
                             _%hd146589146888%_
                             _%tl146590146890%_
                             _%e146591146893%_
                             _%hd146592146896%_
                             _%tl146593146898%_
                             _%e146594146901%_
                             _%hd146595146904%_
                             _%tl146596146906%_
                             _%e146597146909%_
                             _%hd146598146912%_
                             _%tl146599146914%_))
                        (_%__match148941148942%_
                         _%e146564146821%_
                         _%hd146565146824%_
                         _%tl146566146826%_
                         _%e146576146853%_
                         _%hd146577146856%_
                         _%tl146578146858%_
                         _%e146579146861%_
                         _%hd146580146864%_
                         _%tl146581146866%_
                         _%e146582146869%_
                         _%hd146583146872%_
                         _%tl146584146874%_
                         _%e146585146877%_
                         _%hd146586146880%_
                         _%tl146587146882%_
                         _%e146588146885%_
                         _%hd146589146888%_
                         _%tl146590146890%_
                         _%e146591146893%_
                         _%hd146592146896%_
                         _%tl146593146898%_
                         _%e146594146901%_
                         _%hd146595146904%_
                         _%tl146596146906%_
                         _%e146597146909%_
                         _%hd146598146912%_
                         _%tl146599146914%_))
                    (_%__match148941148942%_
                     _%e146564146821%_
                     _%hd146565146824%_
                     _%tl146566146826%_
                     _%e146576146853%_
                     _%hd146577146856%_
                     _%tl146578146858%_
                     _%e146579146861%_
                     _%hd146580146864%_
                     _%tl146581146866%_
                     _%e146582146869%_
                     _%hd146583146872%_
                     _%tl146584146874%_
                     _%e146585146877%_
                     _%hd146586146880%_
                     _%tl146587146882%_
                     _%e146588146885%_
                     _%hd146589146888%_
                     _%tl146590146890%_
                     _%e146591146893%_
                     _%hd146592146896%_
                     _%tl146593146898%_
                     _%e146594146901%_
                     _%hd146595146904%_
                     _%tl146596146906%_
                     _%e146597146909%_
                     _%hd146598146912%_
                     _%tl146599146914%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match148941148942%_
                                                     _%e146564146821%_
                                                     _%hd146565146824%_
                                                     _%tl146566146826%_
                                                     _%e146576146853%_
                                                     _%hd146577146856%_
                                                     _%tl146578146858%_
                                                     _%e146579146861%_
                                                     _%hd146580146864%_
                                                     _%tl146581146866%_
                                                     _%e146582146869%_
                                                     _%hd146583146872%_
                                                     _%tl146584146874%_
                                                     _%e146585146877%_
                                                     _%hd146586146880%_
                                                     _%tl146587146882%_
                                                     _%e146588146885%_
                                                     _%hd146589146888%_
                                                     _%tl146590146890%_
                                                     _%e146591146893%_
                                                     _%hd146592146896%_
                                                     _%tl146593146898%_
                                                     _%e146594146901%_
                                                     _%hd146595146904%_
                                                     _%tl146596146906%_
                                                     _%e146597146909%_
                                                     _%hd146598146912%_
                                                     _%tl146599146914%_))))
                                            (_%__match148941148942%_
                                             _%e146564146821%_
                                             _%hd146565146824%_
                                             _%tl146566146826%_
                                             _%e146576146853%_
                                             _%hd146577146856%_
                                             _%tl146578146858%_
                                             _%e146579146861%_
                                             _%hd146580146864%_
                                             _%tl146581146866%_
                                             _%e146582146869%_
                                             _%hd146583146872%_
                                             _%tl146584146874%_
                                             _%e146585146877%_
                                             _%hd146586146880%_
                                             _%tl146587146882%_
                                             _%e146588146885%_
                                             _%hd146589146888%_
                                             _%tl146590146890%_
                                             _%e146591146893%_
                                             _%hd146592146896%_
                                             _%tl146593146898%_
                                             _%e146594146901%_
                                             _%hd146595146904%_
                                             _%tl146596146906%_
                                             _%e146597146909%_
                                             _%hd146598146912%_
                                             _%tl146599146914%_))))
                                    (_%__match148941148942%_
                                     _%e146564146821%_
                                     _%hd146565146824%_
                                     _%tl146566146826%_
                                     _%e146576146853%_
                                     _%hd146577146856%_
                                     _%tl146578146858%_
                                     _%e146579146861%_
                                     _%hd146580146864%_
                                     _%tl146581146866%_
                                     _%e146582146869%_
                                     _%hd146583146872%_
                                     _%tl146584146874%_
                                     _%e146585146877%_
                                     _%hd146586146880%_
                                     _%tl146587146882%_
                                     _%e146588146885%_
                                     _%hd146589146888%_
                                     _%tl146590146890%_
                                     _%e146591146893%_
                                     _%hd146592146896%_
                                     _%tl146593146898%_
                                     _%e146594146901%_
                                     _%hd146595146904%_
                                     _%tl146596146906%_
                                     _%e146597146909%_
                                     _%hd146598146912%_
                                     _%tl146599146914%_))
                                (_%__match148941148942%_
                                 _%e146564146821%_
                                 _%hd146565146824%_
                                 _%tl146566146826%_
                                 _%e146576146853%_
                                 _%hd146577146856%_
                                 _%tl146578146858%_
                                 _%e146579146861%_
                                 _%hd146580146864%_
                                 _%tl146581146866%_
                                 _%e146582146869%_
                                 _%hd146583146872%_
                                 _%tl146584146874%_
                                 _%e146585146877%_
                                 _%hd146586146880%_
                                 _%tl146587146882%_
                                 _%e146588146885%_
                                 _%hd146589146888%_
                                 _%tl146590146890%_
                                 _%e146591146893%_
                                 _%hd146592146896%_
                                 _%tl146593146898%_
                                 _%e146594146901%_
                                 _%hd146595146904%_
                                 _%tl146596146906%_
                                 _%e146597146909%_
                                 _%hd146598146912%_
                                 _%tl146599146914%_))
                            (_%__kont148844148845%_))))
                    (_%__kont148844148845%_))
                (_%__kont148844148845%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont148844148845%_))))
                                            (_%__kont148844148845%_))))
                                    (_%__kont148844148845%_))
                                (_%__kont148844148845%_))))
                        (_%__kont148844148845%_))
                    (_%__kont148844148845%_))
                (_%__kont148844148845%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont148844148845%_))))
                                        (_%__kont148844148845%_))
                                    (_%__kont148844148845%_))
                                (_%__kont148844148845%_))))
                        (_%__kont148844148845%_))))
                (_%__kont148844148845%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop146570146834%_
                                     _%target146567146829%_
                                     '()))))
                               (_%__match148859148860%_
                                (lambda (_%e146516147081%_
                                         _%hd146517147084%_
                                         _%tl146518147086%_
                                         _%__splice148832148833%_
                                         _%target146519147089%_
                                         _%tl146521147091%_)
                                  (letrec ((_%loop146522147094%_
                                            (lambda (_%hd146520147097%_
                                                     _%arg146526147099%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146520147097%_))
                                                  (let ((_%e146523147102%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146520147097%_))))
                                                    (let ((_%lp-tl146525147107%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146523147102%_)))
                                                          (_%lp-hd146524147105%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146523147102%_))))
                                                      (_%loop146522147094%_
                                                       _%lp-tl146525147107%_
                                                       (cons _%lp-hd146524147105%_
                                                             _%arg146526147099%_))))
                                                  (let ((_%arg146527147110%_
                                                         (reverse _%arg146526147099%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl146518147086%_))
                                                        (let ((_%e146528147113%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl146518147086%_))))
                  (let ((_%tl146530147118%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146528147113%_)))
                        (_%hd146529147116%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146528147113%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd146529147116%_))
                        (let ((_%e146531147121%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd146529147116%_))))
                          (let ((_%tl146533147126%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146531147121%_)))
                                (_%hd146532147124%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146531147121%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146532147124%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd146532147124%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146533147126%_))
                                        (let ((_%e146534147129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146533147126%_))))
                                          (let ((_%tl146536147134%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146534147129%_)))
                                                (_%hd146535147132%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146534147129%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd146535147132%_))
                                                (let ((_%e146537147137%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146535147132%_))))
                                                  (let ((_%tl146539147142%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e146537147137%_)))
                                                        (_%hd146538147140%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e146537147137%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd146538147140%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd146538147140%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl146539147142%_))
                        (let ((_%e146540147145%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl146539147142%_))))
                          (let ((_%tl146542147150%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146540147145%_)))
                                (_%hd146541147148%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146540147145%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146542147150%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl146536147134%_))
                                    (let ((_%__splice148834148835%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl146536147134%_
                                              '0))))
                                      (let ((_%tl146545147155%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148834148835%_
                                                '1)))
                                            (_%target146543147153%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148834148835%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl146545147155%_))
                                            (letrec ((_%loop146546147158%_
                                                      (lambda (_%hd146544147161%_
                                                               _%xarg146550147163%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd146544147161%_))
                                                            (let ((_%e146547147166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd146544147161%_))))
                      (let ((_%lp-tl146549147171%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e146547147166%_)))
                            (_%lp-hd146548147169%_
                             (let ()
                               (declare (not safe))
                               (##car _%e146547147166%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd146548147169%_))
                            (let ((_%e146552147174%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd146548147169%_))))
                              (let ((_%tl146554147179%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e146552147174%_)))
                                    (_%hd146553147177%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e146552147174%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd146553147177%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd146553147177%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl146554147179%_))
                                            (let ((_%e146555147182%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl146554147179%_))))
                                              (let ((_%tl146557147187%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146555147182%_)))
                                                    (_%hd146556147185%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146555147182%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl146557147187%_))
                                                    (_%loop146546147158%_
                                                     _%lp-tl146549147171%_
                                                     (cons _%hd146556147185%_
                                                           _%xarg146550147163%_))
                                                    (_%__match148871148872%_
                                                     _%e146516147081%_
                                                     _%hd146517147084%_
                                                     _%tl146518147086%_
                                                     _%__splice148832148833%_
                                                     _%target146519147089%_
                                                     _%tl146521147091%_))))
                                            (_%__match148871148872%_
                                             _%e146516147081%_
                                             _%hd146517147084%_
                                             _%tl146518147086%_
                                             _%__splice148832148833%_
                                             _%target146519147089%_
                                             _%tl146521147091%_))
                                        (_%__match148871148872%_
                                         _%e146516147081%_
                                         _%hd146517147084%_
                                         _%tl146518147086%_
                                         _%__splice148832148833%_
                                         _%target146519147089%_
                                         _%tl146521147091%_))
                                    (_%__match148871148872%_
                                     _%e146516147081%_
                                     _%hd146517147084%_
                                     _%tl146518147086%_
                                     _%__splice148832148833%_
                                     _%target146519147089%_
                                     _%tl146521147091%_))))
                            (_%__match148871148872%_
                             _%e146516147081%_
                             _%hd146517147084%_
                             _%tl146518147086%_
                             _%__splice148832148833%_
                             _%target146519147089%_
                             _%tl146521147091%_))))
                    (let ((_%xarg146551147190%_
                           (reverse _%xarg146550147163%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl146530147118%_))
                          (let ((_%L147193%_ _%xarg146551147190%_)
                                (_%L147194%_ _%hd146541147148%_)
                                (_%L147195%_ _%arg146527147110%_))
                            (if (and (let ((__tmp150125
                                            (let ((__tmp150126
                                                   (lambda (_%g147223147226%_
                                                            _%g147224147228%_)
                                                     (cons _%g147223147226%_
                                                           _%g147224147228%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp150126
                                               '()
                                               _%L147195%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp150125))
                                     (let ((__tmp150129
                                            (length (let ((__tmp150130
                                                           (lambda (_%g147230147233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g147231147235%_)
                     (cons _%g147230147233%_ _%g147231147235%_))))
              (declare (not safe))
              (__foldr1 __tmp150130 '() _%L147195%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp150127
                                            (length (let ((__tmp150128
                                                           (lambda (_%g147237147240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g147238147242%_)
                     (cons _%g147237147240%_ _%g147238147242%_))))
              (declare (not safe))
              (__foldr1 __tmp150128 '() _%L147193%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp150129 __tmp150127))
                                     (let ((__tmp150133
                                            (let ((__tmp150134
                                                   (lambda (_%g147244147247%_
                                                            _%g147245147249%_)
                                                     (cons _%g147244147247%_
                                                           _%g147245147249%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp150134
                                               '()
                                               _%L147195%_)))
                                           (__tmp150131
                                            (let ((__tmp150132
                                                   (lambda (_%g147251147254%_
                                                            _%g147252147256%_)
                                                     (cons _%g147251147254%_
                                                           _%g147252147256%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp150132
                                               '()
                                               _%L147193%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp150133
                                        __tmp150131))
                                     (not (let ((__tmp150137
                                                 (lambda (_%g147258147260%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g147258147260%_
                                                      _%L147194%_))))
                                                (__tmp150135
                                                 (let ((__tmp150136
                                                        (lambda (_%g147262147265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g147263147267%_)
                  (cons _%g147262147265%_ _%g147263147267%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp150136
                                                    '()
                                                    _%L147195%_))))
                                            (declare (not safe))
                                            (__find __tmp150137 __tmp150135))))
                                (_%__kont148830148831%_
                                 _%L147193%_
                                 _%L147194%_
                                 _%L147195%_)
                                (_%__match148871148872%_
                                 _%e146516147081%_
                                 _%hd146517147084%_
                                 _%tl146518147086%_
                                 _%__splice148832148833%_
                                 _%target146519147089%_
                                 _%tl146521147091%_)))
                          (_%__match148871148872%_
                           _%e146516147081%_
                           _%hd146517147084%_
                           _%tl146518147086%_
                           _%__splice148832148833%_
                           _%target146519147089%_
                           _%tl146521147091%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop146546147158%_
                                               _%target146543147153%_
                                               '()))
                                            (_%__match148871148872%_
                                             _%e146516147081%_
                                             _%hd146517147084%_
                                             _%tl146518147086%_
                                             _%__splice148832148833%_
                                             _%target146519147089%_
                                             _%tl146521147091%_))))
                                    (_%__match148871148872%_
                                     _%e146516147081%_
                                     _%hd146517147084%_
                                     _%tl146518147086%_
                                     _%__splice148832148833%_
                                     _%target146519147089%_
                                     _%tl146521147091%_))
                                (_%__match148871148872%_
                                 _%e146516147081%_
                                 _%hd146517147084%_
                                 _%tl146518147086%_
                                 _%__splice148832148833%_
                                 _%target146519147089%_
                                 _%tl146521147091%_))))
                        (_%__match148871148872%_
                         _%e146516147081%_
                         _%hd146517147084%_
                         _%tl146518147086%_
                         _%__splice148832148833%_
                         _%target146519147089%_
                         _%tl146521147091%_))
                    (_%__match148871148872%_
                     _%e146516147081%_
                     _%hd146517147084%_
                     _%tl146518147086%_
                     _%__splice148832148833%_
                     _%target146519147089%_
                     _%tl146521147091%_))
                (_%__match148871148872%_
                 _%e146516147081%_
                 _%hd146517147084%_
                 _%tl146518147086%_
                 _%__splice148832148833%_
                 _%target146519147089%_
                 _%tl146521147091%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match148871148872%_
                                                 _%e146516147081%_
                                                 _%hd146517147084%_
                                                 _%tl146518147086%_
                                                 _%__splice148832148833%_
                                                 _%target146519147089%_
                                                 _%tl146521147091%_))))
                                        (_%__match148871148872%_
                                         _%e146516147081%_
                                         _%hd146517147084%_
                                         _%tl146518147086%_
                                         _%__splice148832148833%_
                                         _%target146519147089%_
                                         _%tl146521147091%_))
                                    (_%__match148871148872%_
                                     _%e146516147081%_
                                     _%hd146517147084%_
                                     _%tl146518147086%_
                                     _%__splice148832148833%_
                                     _%target146519147089%_
                                     _%tl146521147091%_))
                                (_%__match148871148872%_
                                 _%e146516147081%_
                                 _%hd146517147084%_
                                 _%tl146518147086%_
                                 _%__splice148832148833%_
                                 _%target146519147089%_
                                 _%tl146521147091%_))))
                        (_%__match148871148872%_
                         _%e146516147081%_
                         _%hd146517147084%_
                         _%tl146518147086%_
                         _%__splice148832148833%_
                         _%target146519147089%_
                         _%tl146521147091%_))))
                (_%__match148871148872%_
                 _%e146516147081%_
                 _%hd146517147084%_
                 _%tl146518147086%_
                 _%__splice148832148833%_
                 _%target146519147089%_
                 _%tl146521147091%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop146522147094%_
                                     _%target146519147089%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx148828148829%_))
                              (let ((_%e146516147081%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx148828148829%_))))
                                (let ((_%tl146518147086%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146516147081%_)))
                                      (_%hd146517147084%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146516147081%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd146517147084%_))
                                      (let ((_%__splice148832148833%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd146517147084%_
                                                '0))))
                                        (let ((_%tl146521147091%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice148832148833%_
                                                  '1)))
                                              (_%target146519147089%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice148832148833%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146521147091%_))
                                              (_%__match148859148860%_
                                               _%e146516147081%_
                                               _%hd146517147084%_
                                               _%tl146518147086%_
                                               _%__splice148832148833%_
                                               _%target146519147089%_
                                               _%tl146521147091%_)
                                              (_%__match148871148872%_
                                               _%e146516147081%_
                                               _%hd146517147084%_
                                               _%tl146518147086%_
                                               _%__splice148832148833%_
                                               _%target146519147089%_
                                               _%tl146521147091%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl146518147086%_))
                                          (let ((_%e146631146688%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl146518147086%_))))
                                            (let ((_%tl146633146693%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e146631146688%_)))
                                                  (_%hd146632146691%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e146631146688%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146632146691%_))
                                                  (let ((_%e146634146696%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146632146691%_))))
                                                    (let ((_%tl146636146701%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146634146696%_)))
                                                          (_%hd146635146699%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146634146696%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd146635146699%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd146635146699%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl146636146701%_))
                          (let ((_%e146637146704%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl146636146701%_))))
                            (let ((_%tl146639146709%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146637146704%_)))
                                  (_%hd146638146707%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146637146704%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd146638146707%_))
                                  (let ((_%e146640146712%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd146638146707%_))))
                                    (let ((_%tl146642146717%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e146640146712%_)))
                                          (_%hd146641146715%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e146640146712%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd146641146715%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd146641146715%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl146642146717%_))
                                                  (let ((_%e146643146720%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl146642146717%_))))
                                                    (let ((_%tl146645146725%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146643146720%_)))
                                                          (_%hd146644146723%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146643146720%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl146645146725%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl146639146709%_))
                      (let ((_%e146646146728%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl146639146709%_))))
                        (let ((_%tl146648146733%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146646146728%_)))
                              (_%hd146647146731%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146646146728%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd146647146731%_))
                              (let ((_%e146649146736%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd146647146731%_))))
                                (let ((_%tl146651146741%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146649146736%_)))
                                      (_%hd146650146739%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146649146736%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd146650146739%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd146650146739%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl146651146741%_))
                                              (let ((_%e146652146744%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl146651146741%_))))
                                                (let ((_%tl146654146749%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146652146744%_)))
                                                      (_%hd146653146747%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146652146744%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146654146749%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl146648146733%_))
                                                          (let ((_%e146655146752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl146648146733%_))))
                    (let ((_%tl146657146757%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e146655146752%_)))
                          (_%hd146656146755%_
                           (let ()
                             (declare (not safe))
                             (##car _%e146655146752%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd146656146755%_))
                          (let ((_%e146658146760%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd146656146755%_))))
                            (let ((_%tl146660146765%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146658146760%_)))
                                  (_%hd146659146763%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146658146760%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd146659146763%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd146659146763%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl146660146765%_))
                                          (let ((_%e146661146768%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl146660146765%_))))
                                            (let ((_%tl146663146773%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e146661146768%_)))
                                                  (_%hd146662146771%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e146661146768%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl146663146773%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146657146757%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl146633146693%_))
                                                          (_%__match148969148970%_
                                                           _%e146516147081%_
                                                           _%hd146517147084%_
                                                           _%tl146518147086%_
                                                           _%e146631146688%_
                                                           _%hd146632146691%_
                                                           _%tl146633146693%_
                                                           _%e146634146696%_
                                                           _%hd146635146699%_
                                                           _%tl146636146701%_
                                                           _%e146637146704%_
                                                           _%hd146638146707%_
                                                           _%tl146639146709%_
                                                           _%e146640146712%_
                                                           _%hd146641146715%_
                                                           _%tl146642146717%_
                                                           _%e146643146720%_
                                                           _%hd146644146723%_
                                                           _%tl146645146725%_
                                                           _%e146646146728%_
                                                           _%hd146647146731%_
                                                           _%tl146648146733%_
                                                           _%e146649146736%_
                                                           _%hd146650146739%_
                                                           _%tl146651146741%_
                                                           _%e146652146744%_
                                                           _%hd146653146747%_
                                                           _%tl146654146749%_
                                                           _%e146655146752%_
                                                           _%hd146656146755%_
                                                           _%tl146657146757%_
                                                           _%e146658146760%_
                                                           _%hd146659146763%_
                                                           _%tl146660146765%_
                                                           _%e146661146768%_
                                                           _%hd146662146771%_
                                                           _%tl146663146773%_)
                                                          (_%__kont148844148845%_))
                                                      (_%__kont148844148845%_))
                                                  (_%__kont148844148845%_))))
                                          (_%__kont148844148845%_))
                                      (_%__kont148844148845%_))
                                  (_%__kont148844148845%_))))
                          (_%__kont148844148845%_))))
                  (_%__kont148844148845%_))
              (_%__kont148844148845%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont148844148845%_))
                                          (_%__kont148844148845%_))
                                      (_%__kont148844148845%_))))
                              (_%__kont148844148845%_))))
                      (_%__kont148844148845%_))
                  (_%__kont148844148845%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont148844148845%_))
                                              (_%__kont148844148845%_))
                                          (_%__kont148844148845%_))))
                                  (_%__kont148844148845%_))))
                          (_%__kont148844148845%_))
                      (_%__kont148844148845%_))
                  (_%__kont148844148845%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont148844148845%_))))
                                          (_%__kont148844148845%_)))))
                              (_%__kont148844148845%_)))))))
                 (_%dispatch-case-e145816%_
                  (lambda (_%hd145967%_ _%body145968%_)
                    (let* ((_%form145970%_
                            (cons _%hd145967%_ (cons _%body145968%_ '())))
                           (_%__stx148972148973%_ _%form145970%_)
                           (_%g145974146098%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx148972148973%_)))))
                      (let ((_%__kont148974148975%_
                             (lambda (_%L146469%_ _%L146470%_ _%L146471%_)
                               (let ((__tmp150138
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L146470%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self145812%_
                                  __tmp150138))))
                            (_%__kont148980148981%_
                             (lambda (_%L146317%_
                                      _%L146318%_
                                      _%L146319%_
                                      _%L146320%_)
                               (let ((__tmp150139
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L146317%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self145812%_
                                  __tmp150139))))
                            (_%__kont148984148985%_
                             (lambda (_%L146183%_ _%L146184%_ _%L146185%_)
                               (let ((__tmp150140
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L146183%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self145812%_
                                  __tmp150140)))))
                        (let* ((_%__match149081149082%_
                                (lambda (_%e146064146103%_
                                         _%hd146065146106%_
                                         _%tl146066146108%_
                                         _%e146067146111%_
                                         _%hd146068146114%_
                                         _%tl146069146116%_
                                         _%e146070146119%_
                                         _%hd146071146122%_
                                         _%tl146072146124%_
                                         _%e146073146127%_
                                         _%hd146074146130%_
                                         _%tl146075146132%_
                                         _%e146076146135%_
                                         _%hd146077146138%_
                                         _%tl146078146140%_
                                         _%e146079146143%_
                                         _%hd146080146146%_
                                         _%tl146081146148%_
                                         _%e146082146151%_
                                         _%hd146083146154%_
                                         _%tl146084146156%_
                                         _%e146085146159%_
                                         _%hd146086146162%_
                                         _%tl146087146164%_
                                         _%e146088146167%_
                                         _%hd146089146170%_
                                         _%tl146090146172%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146084146156%_))
                                      (let ((_%e146091146175%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146084146156%_))))
                                        (let ((_%tl146093146180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146091146175%_)))
                                              (_%hd146092146178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146091146175%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146093146180%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl146069146116%_))
                                                  (_%__kont148984148985%_
                                                   _%hd146089146170%_
                                                   _%hd146080146146%_
                                                   _%hd146065146106%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g145974146098%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g145974146098%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g145974146098%_)))))
                               (_%__match149011149012%_
                                (lambda (_%e146025146221%_
                                         _%hd146026146224%_
                                         _%tl146027146226%_
                                         _%__splice148982148983%_
                                         _%target146028146229%_
                                         _%tl146030146231%_)
                                  (letrec ((_%loop146031146234%_
                                            (lambda (_%hd146029146237%_
                                                     _%arg146035146239%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146029146237%_))
                                                  (let ((_%e146032146242%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146029146237%_))))
                                                    (let ((_%lp-tl146034146247%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146032146242%_)))
                                                          (_%lp-hd146033146245%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146032146242%_))))
                                                      (_%loop146031146234%_
                                                       _%lp-tl146034146247%_
                                                       (cons _%lp-hd146033146245%_
                                                             _%arg146035146239%_))))
                                                  (let ((_%arg146036146250%_
                                                         (reverse _%arg146035146239%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl146027146226%_))
                                                        (let ((_%e146037146253%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl146027146226%_))))
                  (let ((_%tl146039146258%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146037146253%_)))
                        (_%hd146038146256%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146037146253%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd146038146256%_))
                        (let ((_%e146040146261%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd146038146256%_))))
                          (let ((_%tl146042146266%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146040146261%_)))
                                (_%hd146041146264%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146040146261%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146041146264%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd146041146264%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146042146266%_))
                                        (let ((_%e146043146269%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146042146266%_))))
                                          (let ((_%tl146045146274%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146043146269%_)))
                                                (_%hd146044146272%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146043146269%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd146044146272%_))
                                                (let ((_%e146046146277%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146044146272%_))))
                                                  (let ((_%tl146048146282%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e146046146277%_)))
                                                        (_%hd146047146280%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e146046146277%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd146047146280%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd146047146280%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl146048146282%_))
                        (let ((_%e146049146285%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl146048146282%_))))
                          (let ((_%tl146051146290%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146049146285%_)))
                                (_%hd146050146288%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146049146285%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146051146290%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl146045146274%_))
                                    (let ((_%e146052146293%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl146045146274%_))))
                                      (let ((_%tl146054146298%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e146052146293%_)))
                                            (_%hd146053146296%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e146052146293%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd146053146296%_))
                                            (let ((_%e146055146301%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd146053146296%_))))
                                              (let ((_%tl146057146306%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146055146301%_)))
                                                    (_%hd146056146304%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146055146301%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd146056146304%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd146056146304%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl146057146306%_))
                                                            (let ((_%e146058146309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl146057146306%_))))
                      (let ((_%tl146060146314%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e146058146309%_)))
                            (_%hd146059146312%_
                             (let ()
                               (declare (not safe))
                               (##car _%e146058146309%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl146060146314%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146039146258%_))
                                (_%__kont148980148981%_
                                 _%hd146059146312%_
                                 _%hd146050146288%_
                                 _%tl146030146231%_
                                 _%arg146036146250%_)
                                (_%__match149081149082%_
                                 _%e146025146221%_
                                 _%hd146026146224%_
                                 _%tl146027146226%_
                                 _%e146037146253%_
                                 _%hd146038146256%_
                                 _%tl146039146258%_
                                 _%e146040146261%_
                                 _%hd146041146264%_
                                 _%tl146042146266%_
                                 _%e146043146269%_
                                 _%hd146044146272%_
                                 _%tl146045146274%_
                                 _%e146046146277%_
                                 _%hd146047146280%_
                                 _%tl146048146282%_
                                 _%e146049146285%_
                                 _%hd146050146288%_
                                 _%tl146051146290%_
                                 _%e146052146293%_
                                 _%hd146053146296%_
                                 _%tl146054146298%_
                                 _%e146055146301%_
                                 _%hd146056146304%_
                                 _%tl146057146306%_
                                 _%e146058146309%_
                                 _%hd146059146312%_
                                 _%tl146060146314%_))
                            (let ()
                              (declare (not safe))
                              (_%g145974146098%_)))))
                    (let () (declare (not safe)) (_%g145974146098%_)))
                (let () (declare (not safe)) (_%g145974146098%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g145974146098%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g145974146098%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g145974146098%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g145974146098%_)))))
                        (let () (declare (not safe)) (_%g145974146098%_)))
                    (let () (declare (not safe)) (_%g145974146098%_)))
                (let () (declare (not safe)) (_%g145974146098%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g145974146098%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g145974146098%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g145974146098%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g145974146098%_)))))
                        (let () (declare (not safe)) (_%g145974146098%_)))))
                (let () (declare (not safe)) (_%g145974146098%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop146031146234%_
                                     _%target146028146229%_
                                     '()))))
                               (_%__match148999149000%_
                                (lambda (_%e145979146357%_
                                         _%hd145980146360%_
                                         _%tl145981146362%_
                                         _%__splice148976148977%_
                                         _%target145982146365%_
                                         _%tl145984146367%_)
                                  (letrec ((_%loop145985146370%_
                                            (lambda (_%hd145983146373%_
                                                     _%arg145989146375%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145983146373%_))
                                                  (let ((_%e145986146378%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145983146373%_))))
                                                    (let ((_%lp-tl145988146383%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145986146378%_)))
                                                          (_%lp-hd145987146381%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145986146378%_))))
                                                      (_%loop145985146370%_
                                                       _%lp-tl145988146383%_
                                                       (cons _%lp-hd145987146381%_
                                                             _%arg145989146375%_))))
                                                  (let ((_%arg145990146386%_
                                                         (reverse _%arg145989146375%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl145981146362%_))
                                                        (let ((_%e145991146389%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl145981146362%_))))
                  (let ((_%tl145993146394%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145991146389%_)))
                        (_%hd145992146392%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145991146389%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145992146392%_))
                        (let ((_%e145994146397%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd145992146392%_))))
                          (let ((_%tl145996146402%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145994146397%_)))
                                (_%hd145995146400%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145994146397%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd145995146400%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd145995146400%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145996146402%_))
                                        (let ((_%e145997146405%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145996146402%_))))
                                          (let ((_%tl145999146410%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145997146405%_)))
                                                (_%hd145998146408%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145997146405%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd145998146408%_))
                                                (let ((_%e146000146413%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd145998146408%_))))
                                                  (let ((_%tl146002146418%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e146000146413%_)))
                                                        (_%hd146001146416%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e146000146413%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd146001146416%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd146001146416%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl146002146418%_))
                        (let ((_%e146003146421%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl146002146418%_))))
                          (let ((_%tl146005146426%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146003146421%_)))
                                (_%hd146004146424%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146003146421%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146005146426%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl145999146410%_))
                                    (let ((_%__splice148978148979%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl145999146410%_
                                              '0))))
                                      (let ((_%tl146008146431%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148978148979%_
                                                '1)))
                                            (_%target146006146429%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148978148979%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl146008146431%_))
                                            (letrec ((_%loop146009146434%_
                                                      (lambda (_%hd146007146437%_
                                                               _%xarg146013146439%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd146007146437%_))
                                                            (let ((_%e146010146442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd146007146437%_))))
                      (let ((_%lp-tl146012146447%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e146010146442%_)))
                            (_%lp-hd146011146445%_
                             (let ()
                               (declare (not safe))
                               (##car _%e146010146442%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd146011146445%_))
                            (let ((_%e146015146450%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd146011146445%_))))
                              (let ((_%tl146017146455%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e146015146450%_)))
                                    (_%hd146016146453%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e146015146450%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd146016146453%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd146016146453%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl146017146455%_))
                                            (let ((_%e146018146458%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl146017146455%_))))
                                              (let ((_%tl146020146463%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146018146458%_)))
                                                    (_%hd146019146461%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146018146458%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl146020146463%_))
                                                    (_%loop146009146434%_
                                                     _%lp-tl146012146447%_
                                                     (cons _%hd146019146461%_
                                                           _%xarg146013146439%_))
                                                    (_%__match149011149012%_
                                                     _%e145979146357%_
                                                     _%hd145980146360%_
                                                     _%tl145981146362%_
                                                     _%__splice148976148977%_
                                                     _%target145982146365%_
                                                     _%tl145984146367%_))))
                                            (_%__match149011149012%_
                                             _%e145979146357%_
                                             _%hd145980146360%_
                                             _%tl145981146362%_
                                             _%__splice148976148977%_
                                             _%target145982146365%_
                                             _%tl145984146367%_))
                                        (_%__match149011149012%_
                                         _%e145979146357%_
                                         _%hd145980146360%_
                                         _%tl145981146362%_
                                         _%__splice148976148977%_
                                         _%target145982146365%_
                                         _%tl145984146367%_))
                                    (_%__match149011149012%_
                                     _%e145979146357%_
                                     _%hd145980146360%_
                                     _%tl145981146362%_
                                     _%__splice148976148977%_
                                     _%target145982146365%_
                                     _%tl145984146367%_))))
                            (_%__match149011149012%_
                             _%e145979146357%_
                             _%hd145980146360%_
                             _%tl145981146362%_
                             _%__splice148976148977%_
                             _%target145982146365%_
                             _%tl145984146367%_))))
                    (let ((_%xarg146014146466%_
                           (reverse _%xarg146013146439%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl145993146394%_))
                          (_%__kont148974148975%_
                           _%xarg146014146466%_
                           _%hd146004146424%_
                           _%arg145990146386%_)
                          (_%__match149011149012%_
                           _%e145979146357%_
                           _%hd145980146360%_
                           _%tl145981146362%_
                           _%__splice148976148977%_
                           _%target145982146365%_
                           _%tl145984146367%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop146009146434%_
                                               _%target146006146429%_
                                               '()))
                                            (_%__match149011149012%_
                                             _%e145979146357%_
                                             _%hd145980146360%_
                                             _%tl145981146362%_
                                             _%__splice148976148977%_
                                             _%target145982146365%_
                                             _%tl145984146367%_))))
                                    (_%__match149011149012%_
                                     _%e145979146357%_
                                     _%hd145980146360%_
                                     _%tl145981146362%_
                                     _%__splice148976148977%_
                                     _%target145982146365%_
                                     _%tl145984146367%_))
                                (_%__match149011149012%_
                                 _%e145979146357%_
                                 _%hd145980146360%_
                                 _%tl145981146362%_
                                 _%__splice148976148977%_
                                 _%target145982146365%_
                                 _%tl145984146367%_))))
                        (_%__match149011149012%_
                         _%e145979146357%_
                         _%hd145980146360%_
                         _%tl145981146362%_
                         _%__splice148976148977%_
                         _%target145982146365%_
                         _%tl145984146367%_))
                    (_%__match149011149012%_
                     _%e145979146357%_
                     _%hd145980146360%_
                     _%tl145981146362%_
                     _%__splice148976148977%_
                     _%target145982146365%_
                     _%tl145984146367%_))
                (_%__match149011149012%_
                 _%e145979146357%_
                 _%hd145980146360%_
                 _%tl145981146362%_
                 _%__splice148976148977%_
                 _%target145982146365%_
                 _%tl145984146367%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match149011149012%_
                                                 _%e145979146357%_
                                                 _%hd145980146360%_
                                                 _%tl145981146362%_
                                                 _%__splice148976148977%_
                                                 _%target145982146365%_
                                                 _%tl145984146367%_))))
                                        (_%__match149011149012%_
                                         _%e145979146357%_
                                         _%hd145980146360%_
                                         _%tl145981146362%_
                                         _%__splice148976148977%_
                                         _%target145982146365%_
                                         _%tl145984146367%_))
                                    (_%__match149011149012%_
                                     _%e145979146357%_
                                     _%hd145980146360%_
                                     _%tl145981146362%_
                                     _%__splice148976148977%_
                                     _%target145982146365%_
                                     _%tl145984146367%_))
                                (_%__match149011149012%_
                                 _%e145979146357%_
                                 _%hd145980146360%_
                                 _%tl145981146362%_
                                 _%__splice148976148977%_
                                 _%target145982146365%_
                                 _%tl145984146367%_))))
                        (_%__match149011149012%_
                         _%e145979146357%_
                         _%hd145980146360%_
                         _%tl145981146362%_
                         _%__splice148976148977%_
                         _%target145982146365%_
                         _%tl145984146367%_))))
                (_%__match149011149012%_
                 _%e145979146357%_
                 _%hd145980146360%_
                 _%tl145981146362%_
                 _%__splice148976148977%_
                 _%target145982146365%_
                 _%tl145984146367%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop145985146370%_
                                     _%target145982146365%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx148972148973%_))
                              (let ((_%e145979146357%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx148972148973%_))))
                                (let ((_%tl145981146362%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145979146357%_)))
                                      (_%hd145980146360%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145979146357%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd145980146360%_))
                                      (let ((_%__splice148976148977%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd145980146360%_
                                                '0))))
                                        (let ((_%tl145984146367%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice148976148977%_
                                                  '1)))
                                              (_%target145982146365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice148976148977%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145984146367%_))
                                              (_%__match148999149000%_
                                               _%e145979146357%_
                                               _%hd145980146360%_
                                               _%tl145981146362%_
                                               _%__splice148976148977%_
                                               _%target145982146365%_
                                               _%tl145984146367%_)
                                              (_%__match149011149012%_
                                               _%e145979146357%_
                                               _%hd145980146360%_
                                               _%tl145981146362%_
                                               _%__splice148976148977%_
                                               _%target145982146365%_
                                               _%tl145984146367%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl145981146362%_))
                                          (let ((_%e146067146111%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl145981146362%_))))
                                            (let ((_%tl146069146116%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e146067146111%_)))
                                                  (_%hd146068146114%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e146067146111%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146068146114%_))
                                                  (let ((_%e146070146119%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146068146114%_))))
                                                    (let ((_%tl146072146124%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146070146119%_)))
                                                          (_%hd146071146122%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146070146119%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd146071146122%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd146071146122%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl146072146124%_))
                          (let ((_%e146073146127%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl146072146124%_))))
                            (let ((_%tl146075146132%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146073146127%_)))
                                  (_%hd146074146130%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146073146127%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd146074146130%_))
                                  (let ((_%e146076146135%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd146074146130%_))))
                                    (let ((_%tl146078146140%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e146076146135%_)))
                                          (_%hd146077146138%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e146076146135%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd146077146138%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd146077146138%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl146078146140%_))
                                                  (let ((_%e146079146143%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl146078146140%_))))
                                                    (let ((_%tl146081146148%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146079146143%_)))
                                                          (_%hd146080146146%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146079146143%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl146081146148%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl146075146132%_))
                      (let ((_%e146082146151%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl146075146132%_))))
                        (let ((_%tl146084146156%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146082146151%_)))
                              (_%hd146083146154%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146082146151%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd146083146154%_))
                              (let ((_%e146085146159%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd146083146154%_))))
                                (let ((_%tl146087146164%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146085146159%_)))
                                      (_%hd146086146162%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146085146159%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd146086146162%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd146086146162%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl146087146164%_))
                                              (let ((_%e146088146167%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl146087146164%_))))
                                                (let ((_%tl146090146172%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146088146167%_)))
                                                      (_%hd146089146170%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146088146167%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146090146172%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl146084146156%_))
                                                          (let ((_%e146091146175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl146084146156%_))))
                    (let ((_%tl146093146180%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e146091146175%_)))
                          (_%hd146092146178%_
                           (let ()
                             (declare (not safe))
                             (##car _%e146091146175%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl146093146180%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl146069146116%_))
                              (_%__kont148984148985%_
                               _%hd146089146170%_
                               _%hd146080146146%_
                               _%hd145980146360%_)
                              (let ()
                                (declare (not safe))
                                (_%g145974146098%_)))
                          (let () (declare (not safe)) (_%g145974146098%_)))))
                  (let () (declare (not safe)) (_%g145974146098%_)))
              (let () (declare (not safe)) (_%g145974146098%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g145974146098%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g145974146098%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g145974146098%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g145974146098%_)))))
                      (let () (declare (not safe)) (_%g145974146098%_)))
                  (let () (declare (not safe)) (_%g145974146098%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g145974146098%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g145974146098%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g145974146098%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g145974146098%_)))))
                          (let () (declare (not safe)) (_%g145974146098%_)))
                      (let () (declare (not safe)) (_%g145974146098%_)))
                  (let () (declare (not safe)) (_%g145974146098%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g145974146098%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g145974146098%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g145974146098%_))))))))
                 (_%generate1145817%_
                  (lambda (_%args145952%_
                           _%arglen145953%_
                           _%hd145954%_
                           _%body145955%_)
                    (let* ((_%len145957%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd145954%_)))
                           (_%condition145962%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd145954%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen145953%_
                                                (cons _%len145957%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen145953%_ (cons _%len145957%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len145957%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen145953%_
                                                    (cons _%len145957%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen145953%_ (cons _%len145957%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch145964%_
                            (if (_%dispatch-case?145815%_
                                 _%hd145954%_
                                 _%body145955%_)
                                (_%dispatch-case-e145816%_
                                 _%hd145954%_
                                 _%body145955%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self145812%_
                                 _%hd145954%_
                                 _%body145955%_))))
                      (cons _%condition145962%_
                            (cons (cons 'apply
                                        (cons _%dispatch145964%_
                                              (cons _%args145952%_ '())))
                                  '()))))))
          (let* ((_%g145819145847%_
                  (lambda (_%g145820145844%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g145820145844%_))))
                 (_%g145818145949%_
                  (lambda (_%g145820145850%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g145820145850%_))
                        (let ((_%e145823145852%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g145820145850%_))))
                          (let ((_%hd145824145855%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145823145852%_)))
                                (_%tl145825145857%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145823145852%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl145825145857%_))
                                (let ((_g150141_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl145825145857%_
                                          '0))))
                                  (begin
                                    (let ((_g150142_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g150141_)
                                                 (##values-length _g150141_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g150142_ 2)))
                                          (error "Context expects 2 values"
                                                 _g150142_)))
                                    (let ((_%target145826145860%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g150141_ 0)))
                                          (_%tl145828145862%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g150141_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl145828145862%_))
                                          (letrec ((_%loop145829145865%_
                                                    (lambda (_%hd145827145868%_
                                                             _%body145833145870%_
                                                             _%hd145834145872%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd145827145868%_))
                                                          (let ((_%e145830145875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd145827145868%_))))
                    (let ((_%lp-hd145831145878%_
                           (let ()
                             (declare (not safe))
                             (##car _%e145830145875%_)))
                          (_%lp-tl145832145880%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e145830145875%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd145831145878%_))
                          (let ((_%e145837145883%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd145831145878%_))))
                            (let ((_%hd145838145886%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145837145883%_)))
                                  (_%tl145839145888%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145837145883%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl145839145888%_))
                                  (let ((_%e145840145891%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl145839145888%_))))
                                    (let ((_%hd145841145894%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e145840145891%_)))
                                          (_%tl145842145896%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e145840145891%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl145842145896%_))
                                          (_%loop145829145865%_
                                           _%lp-tl145832145880%_
                                           (cons _%hd145841145894%_
                                                 _%body145833145870%_)
                                           (cons _%hd145838145886%_
                                                 _%hd145834145872%_))
                                          (_%g145819145847%_
                                           _%g145820145850%_))))
                                  (_%g145819145847%_ _%g145820145850%_))))
                          (_%g145819145847%_ _%g145820145850%_))))
                  (let ((_%body145835145899%_ (reverse _%body145833145870%_))
                        (_%hd145836145901%_ (reverse _%hd145834145872%_)))
                    ((lambda (_%L145904%_ _%L145905%_)
                       (let ((_%args145924%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen145925%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name145926%_
                              (let ((_%$e145921%_
                                     (let ((__tmp150143
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp150143 _%stx145813%_))))
                                (if _%$e145921%_
                                    _%$e145921%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args145924%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen145925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args145924%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args145924%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp150147
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name145926%_
                                                                (cons _%args145924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp150144
                                  (map (lambda (_%g145927145930%_
                                                _%g145928145932%_)
                                         (_%generate1145817%_
                                          _%args145924%_
                                          _%arglen145925%_
                                          _%g145927145930%_
                                          _%g145928145932%_))
                                       (let ((__tmp150145
                                              (lambda (_%g145934145937%_
                                                       _%g145935145939%_)
                                                (cons _%g145934145937%_
                                                      _%g145935145939%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp150145
                                          '()
                                          _%L145905%_))
                                       (let ((__tmp150146
                                              (lambda (_%g145941145944%_
                                                       _%g145942145946%_)
                                                (cons _%g145941145944%_
                                                      _%g145942145946%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp150146
                                          '()
                                          _%L145904%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp150147 __tmp150144)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body145835145899%_
                     _%hd145836145901%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop145829145865%_
                                             _%target145826145860%_
                                             '()
                                             '()))
                                          (_%g145819145847%_
                                           _%g145820145850%_)))))
                                (_%g145819145847%_ _%g145820145850%_))))
                        (_%g145819145847%_ _%g145820145850%_)))))
            (_%g145818145949%_ _%stx145813%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self145049%_ _%stx145050%_ _%compiled-body?145051%_)
        (letrec ((_%generate-simple145053%_
                  (lambda (_%hd145797%_ _%body145798%_)
                    (_%coalesce-boolean145054%_
                     (_%simplify-let145055%_
                      (gxc#generate-runtime-simple-let
                       _%self145049%_
                       'let
                       _%hd145797%_
                       _%body145798%_
                       _%compiled-body?145051%_)))))
                 (_%coalesce-boolean145054%_
                  (lambda (_%code145658%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code145659145685%_ _%code145658%_)
                               (_%else145661145693%_
                                (lambda () _%code145658%_))
                               (_%K145663145730%_
                                (lambda (_%expr2145696%_
                                         _%expr1145697%_
                                         _%id145698%_)
                                  (let* ((_%expr2145699145707%_
                                          _%expr2145696%_)
                                         (_%else145701145715%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1145697%_
                                                        (cons _%expr2145696%_
                                                              '())))))
                                         (_%K145703145720%_
                                          (lambda (_%exprs145718%_)
                                            (cons 'or
                                                  (cons _%expr1145697%_
                                                        _%exprs145718%_)))))
                                    (if (pair? _%expr2145699145707%_)
                                        (let ((_%hd145704145723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2145699145707%_)))
                                              (_%tl145705145725%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2145699145707%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd145704145723%_ 'or))
                                              (let ((_%exprs145728%_
                                                     _%tl145705145725%_))
                                                (_%K145703145720%_
                                                 _%exprs145728%_))
                                              (_%else145701145715%_)))
                                        (_%else145701145715%_))))))
                          (if (pair? _%code145659145685%_)
                              (let ((_%hd145664145733%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code145659145685%_)))
                                    (_%tl145665145735%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code145659145685%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd145664145733%_ 'let))
                                    (if (pair? _%tl145665145735%_)
                                        (let ((_%hd145666145738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl145665145735%_)))
                                              (_%tl145667145740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl145665145735%_))))
                                          (if (pair? _%hd145666145738%_)
                                              (let ((_%hd145678145743%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd145666145738%_)))
                                                    (_%tl145679145745%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd145666145738%_))))
                                                (if (pair? _%hd145678145743%_)
                                                    (let ((_%hd145680145748%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd145678145743%_)))
                                                          (_%tl145681145750%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd145678145743%_))))
                                                      (let ((_%id145753%_
                                                             _%hd145680145748%_))
                                                        (if (pair? _%tl145681145750%_)
                                                            (let ((_%hd145682145755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl145681145750%_)))
                          (_%tl145683145757%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl145681145750%_))))
                      (let ((_%expr1145760%_ _%hd145682145755%_))
                        (if (null? _%tl145683145757%_)
                            (if (null? _%tl145679145745%_)
                                (if (pair? _%tl145667145740%_)
                                    (let ((_%hd145668145762%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl145667145740%_)))
                                          (_%tl145669145764%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl145667145740%_))))
                                      (if (pair? _%hd145668145762%_)
                                          (let ((_%hd145670145767%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd145668145762%_)))
                                                (_%tl145671145769%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd145668145762%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd145670145767%_
                                                         'if))
                                                (if (pair? _%tl145671145769%_)
                                                    (let ((_%hd145672145772%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl145671145769%_)))
                                                          (_%tl145673145774%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl145671145769%_))))
                                                      (if ((lambda (_%g145776145778%_)
                                                             (eq? _%g145776145778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id145753%_))
                   _%hd145672145772%_)
                  (if (pair? _%tl145673145774%_)
                      (let ((_%hd145674145781%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl145673145774%_)))
                            (_%tl145675145783%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl145673145774%_))))
                        (if ((lambda (_%g145785145787%_)
                               (eq? _%g145785145787%_ _%id145753%_))
                             _%hd145674145781%_)
                            (if (pair? _%tl145675145783%_)
                                (let ((_%hd145676145790%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl145675145783%_)))
                                      (_%tl145677145792%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl145675145783%_))))
                                  (let ((_%expr2145795%_ _%hd145676145790%_))
                                    (if (null? _%tl145677145792%_)
                                        (if (null? _%tl145669145764%_)
                                            (_%K145663145730%_
                                             _%expr2145795%_
                                             _%expr1145760%_
                                             _%id145753%_)
                                            (_%else145661145693%_))
                                        (_%else145661145693%_))))
                                (_%else145661145693%_))
                            (_%else145661145693%_)))
                      (_%else145661145693%_))
                  (_%else145661145693%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else145661145693%_))
                                                (_%else145661145693%_)))
                                          (_%else145661145693%_)))
                                    (_%else145661145693%_))
                                (_%else145661145693%_))
                            (_%else145661145693%_))))
                    (_%else145661145693%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else145661145693%_)))
                                              (_%else145661145693%_)))
                                        (_%else145661145693%_))
                                    (_%else145661145693%_)))
                              (_%else145661145693%_)))
                        _%code145658%_)))
                 (_%simplify-let145055%_
                  (lambda (_%code145357%_)
                    (let* ((_%code145358145430%_ _%code145357%_)
                           (_%else145363145438%_ (lambda () _%code145357%_)))
                      (let ((_%K145422145638%_
                             (lambda (_%expr145636%_) _%expr145636%_))
                            (_%K145405145584%_
                             (lambda (_%body145580%_
                                      _%expr145581%_
                                      _%id145582%_)
                               (cons 'let
                                     (cons (cons (cons _%id145582%_
                                                       (cons _%expr145581%_
                                                             '()))
                                                 '())
                                           _%body145580%_))))
                            (_%K145382145508%_
                             (lambda (_%body145502%_
                                      _%expr2145503%_
                                      _%id2145504%_
                                      _%expr1145505%_
                                      _%id1145506%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1145506%_
                                                       (cons _%expr1145505%_
                                                             '()))
                                                 (cons (cons _%id2145504%_
                                                             (cons _%expr2145503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body145502%_))))
                            (_%K145365145447%_
                             (lambda (_%body145442%_
                                      _%bind145443%_
                                      _%expr1145444%_
                                      _%id1145445%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1145445%_
                                                       (cons _%expr1145444%_
                                                             '()))
                                                 _%bind145443%_)
                                           _%body145442%_)))))
                        (if (pair? _%code145358145430%_)
                            (let ((_%tl145424145643%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code145358145430%_)))
                                  (_%hd145423145641%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code145358145430%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd145423145641%_ 'let))
                                  (if (pair? _%tl145424145643%_)
                                      (let ((_%tl145426145648%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl145424145643%_)))
                                            (_%hd145425145646%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl145424145643%_))))
                                        (if (null? _%hd145425145646%_)
                                            (if (pair? _%tl145426145648%_)
                                                (let ((_%tl145428145653%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl145426145648%_)))
                                                      (_%hd145427145651%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl145426145648%_))))
                                                  (if (null? _%tl145428145653%_)
                                                      (let ((_%expr145656%_
                                                             _%hd145427145651%_))
                                                        (_%K145422145638%_
                                                         _%expr145656%_))
                                                      (_%else145363145438%_)))
                                                (_%else145363145438%_))
                                            (if (pair? _%hd145425145646%_)
                                                (let ((_%tl145417145599%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd145425145646%_)))
                                                      (_%hd145416145597%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd145425145646%_))))
                                                  (if (pair? _%hd145416145597%_)
                                                      (let ((_%tl145419145604%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd145416145597%_)))
                    (_%hd145418145602%_
                     (let () (declare (not safe)) (##car _%hd145416145597%_))))
                (if (pair? _%tl145419145604%_)
                    (let ((_%tl145421145611%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl145419145604%_)))
                          (_%hd145420145609%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl145419145604%_))))
                      (if (null? _%tl145421145611%_)
                          (if (null? _%tl145417145599%_)
                              (if (pair? _%tl145426145648%_)
                                  (let ((_%tl145411145618%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl145426145648%_)))
                                        (_%hd145410145616%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl145426145648%_))))
                                    (if (pair? _%hd145410145616%_)
                                        (let ((_%tl145413145623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd145410145616%_)))
                                              (_%hd145412145621%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd145410145616%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd145412145621%_
                                                       'let))
                                              (if (pair? _%tl145413145623%_)
                                                  (let ((_%tl145415145628%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl145413145623%_)))
                                                        (_%hd145414145626%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl145413145623%_))))
                                                    (if (null? _%hd145414145626%_)
                                                        (if (null? _%tl145411145618%_)
                                                            (let ((_%id145607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd145418145602%_)
                          (_%expr145614%_ _%hd145420145609%_)
                          (_%body145631%_ _%tl145415145628%_))
                      (_%K145405145584%_
                       _%body145631%_
                       _%expr145614%_
                       _%id145607%_))
                    (_%else145363145438%_))
                (if (pair? _%hd145414145626%_)
                    (let ((_%tl145394145557%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd145414145626%_)))
                          (_%hd145393145555%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd145414145626%_))))
                      (if (pair? _%hd145393145555%_)
                          (let ((_%tl145396145562%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd145393145555%_)))
                                (_%hd145395145560%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd145393145555%_))))
                            (if (pair? _%tl145396145562%_)
                                (let ((_%tl145398145569%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl145396145562%_)))
                                      (_%hd145397145567%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl145396145562%_))))
                                  (if (null? _%tl145398145569%_)
                                      (if (null? _%tl145394145557%_)
                                          (if (null? _%tl145411145618%_)
                                              (let ((_%id1145531%_
                                                     _%hd145418145602%_)
                                                    (_%expr1145538%_
                                                     _%hd145420145609%_)
                                                    (_%id2145565%_
                                                     _%hd145395145560%_)
                                                    (_%expr2145572%_
                                                     _%hd145397145567%_)
                                                    (_%body145574%_
                                                     _%tl145415145628%_))
                                                (_%K145382145508%_
                                                 _%body145574%_
                                                 _%expr2145572%_
                                                 _%id2145565%_
                                                 _%expr1145538%_
                                                 _%id1145531%_))
                                              (_%else145363145438%_))
                                          (_%else145363145438%_))
                                      (_%else145363145438%_)))
                                (_%else145363145438%_)))
                          (_%else145363145438%_)))
                    (_%else145363145438%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else145363145438%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd145412145621%_
                                                           'let*))
                                                  (if (pair? _%tl145413145623%_)
                                                      (let ((_%tl145375145491%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl145413145623%_)))
                    (_%hd145374145489%_
                     (let () (declare (not safe)) (##car _%tl145413145623%_))))
                (if (null? _%tl145411145618%_)
                    (let ((_%id1145470%_ _%hd145418145602%_)
                          (_%expr1145477%_ _%hd145420145609%_)
                          (_%bind145494%_ _%hd145374145489%_)
                          (_%body145496%_ _%tl145375145491%_))
                      (_%K145365145447%_
                       _%body145496%_
                       _%bind145494%_
                       _%expr1145477%_
                       _%id1145470%_))
                    (_%else145363145438%_)))
              (_%else145363145438%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else145363145438%_))))
                                        (_%else145363145438%_)))
                                  (_%else145363145438%_))
                              (_%else145363145438%_))
                          (_%else145363145438%_)))
                    (_%else145363145438%_)))
              (_%else145363145438%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else145363145438%_))))
                                      (_%else145363145438%_))
                                  (_%else145363145438%_)))
                            (_%else145363145438%_))))))
                 (_%generate-values145056%_
                  (lambda (_%hd145170%_ _%body145171%_)
                    (let _%lp145173%_ ((_%rest145175%_ _%hd145170%_)
                                       (_%bind145176%_ '())
                                       (_%check145177%_ '())
                                       (_%post145178%_ '()))
                      (let* ((_%__stx149301149302%_ _%rest145175%_)
                             (_%g145181145192%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx149301149302%_)))))
                        (let ((_%__kont149303149304%_
                               (lambda (_%L145219%_ _%L145220%_)
                                 (let* ((_%__stx149257149258%_ _%L145220%_)
                                        (_%g145235145260%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx149257149258%_)))))
                                   (let ((_%__kont149259149260%_
                                          (lambda (_%L145333%_ _%L145334%_)
                                            (let ((_%eid145348%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L145334%_)))
                                                  (_%expr145349%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self145049%_
                                                      _%L145333%_))))
                                              (_%lp145173%_
                                               _%L145219%_
                                               (cons (cons _%eid145348%_
                                                           (cons _%expr145349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind145176%_)
                                               _%check145177%_
                                               _%post145178%_))))
                                         (_%__kont149261149262%_
                                          (lambda (_%L145281%_ _%L145282%_)
                                            (let* ((_%vals145295%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values145297%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals145295%_
                                                     _%L145282%_
                                                     _%L145281%_))
                                                   (_%refs145299%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals145295%_
                                                     _%L145282%_))
                                                   (_%expr145301%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self145049%_
                                                       _%L145281%_))))
                                              (_%lp145173%_
                                               _%L145219%_
                                               (cons (cons _%vals145295%_
                                                           (cons _%expr145301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind145176%_)
                                               (cons _%check-values145297%_
                                                     _%check145177%_)
                                               (cons _%refs145299%_
                                                     _%post145178%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx149257149258%_))
                                         (let ((_%e145239145309%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx149257149258%_))))
                                           (let ((_%tl145241145314%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e145239145309%_)))
                                                 (_%hd145240145312%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e145239145309%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd145240145312%_))
                                                 (let ((_%e145242145317%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd145240145312%_))))
                                                   (let ((_%tl145244145322%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e145242145317%_)))
                                                         (_%hd145243145320%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e145242145317%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl145244145322%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl145241145314%_))
                     (let ((_%e145245145325%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl145241145314%_))))
                       (let ((_%tl145247145330%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e145245145325%_)))
                             (_%hd145246145328%_
                              (let ()
                                (declare (not safe))
                                (##car _%e145245145325%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl145247145330%_))
                             (_%__kont149259149260%_
                              _%hd145246145328%_
                              _%hd145243145320%_)
                             (let ()
                               (declare (not safe))
                               (_%g145235145260%_)))))
                     (let () (declare (not safe)) (_%g145235145260%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl145241145314%_))
                     (let ((_%e145253145273%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl145241145314%_))))
                       (let ((_%tl145255145278%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e145253145273%_)))
                             (_%hd145254145276%_
                              (let ()
                                (declare (not safe))
                                (##car _%e145253145273%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl145255145278%_))
                             (_%__kont149261149262%_
                              _%hd145254145276%_
                              _%hd145240145312%_)
                             (let ()
                               (declare (not safe))
                               (_%g145235145260%_)))))
                     (let () (declare (not safe)) (_%g145235145260%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl145241145314%_))
                                                     (let ((_%e145253145273%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl145241145314%_))))
                                                       (let ((_%tl145255145278%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e145253145273%_)))
                     (_%hd145254145276%_
                      (let () (declare (not safe)) (##car _%e145253145273%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl145255145278%_))
                     (_%__kont149261149262%_
                      _%hd145254145276%_
                      _%hd145240145312%_)
                     (let () (declare (not safe)) (_%g145235145260%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g145235145260%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g145235145260%_)))))))
                              (_%__kont149305149306%_
                               (lambda ()
                                 (let* ((_%body145199%_
                                         (if _%compiled-body?145051%_
                                             _%body145171%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self145049%_
                                                _%body145171%_))))
                                        (_%body145201%_
                                         (_%generate-values-post145057%_
                                          _%post145178%_
                                          _%body145199%_))
                                        (_%body145203%_
                                         (_%generate-values-check145058%_
                                          _%check145177%_
                                          _%body145201%_)))
                                   (cons 'let
                                         (cons (reverse _%bind145176%_)
                                               (cons _%body145203%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx149301149302%_))
                              (let ((_%e145185145211%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx149301149302%_))))
                                (let ((_%tl145187145216%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145185145211%_)))
                                      (_%hd145186145214%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145185145211%_))))
                                  (_%__kont149303149304%_
                                   _%tl145187145216%_
                                   _%hd145186145214%_)))
                              (_%__kont149305149306%_)))))))
                 (_%generate-values-post145057%_
                  (lambda (_%post145129%_ _%body145130%_)
                    (let _%lp145132%_ ((_%rest145134%_ _%post145129%_)
                                       (_%body145135%_ _%body145130%_))
                      (let* ((_%rest145136145144%_ _%rest145134%_)
                             (_%else145138145152%_ (lambda () _%body145135%_))
                             (_%K145140145158%_
                              (lambda (_%rest145155%_ _%bind145156%_)
                                (_%lp145132%_
                                 _%rest145155%_
                                 (cons 'let
                                       (cons _%bind145156%_
                                             (cons _%body145135%_ '())))))))
                        (if (pair? _%rest145136145144%_)
                            (let ((_%hd145141145161%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest145136145144%_)))
                                  (_%tl145142145163%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest145136145144%_))))
                              (let* ((_%bind145166%_ _%hd145141145161%_)
                                     (_%rest145168%_ _%tl145142145163%_))
                                (_%K145140145158%_
                                 _%rest145168%_
                                 _%bind145166%_)))
                            (_%else145138145152%_))))))
                 (_%generate-values-check145058%_
                  (lambda (_%check145126%_ _%body145127%_)
                    (cons 'begin
                          (let ((__tmp150149 (cons _%body145127%_ '()))
                                (__tmp150148 (reverse _%check145126%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp150149 __tmp150148))))))
          (let* ((_%g145060145077%_
                  (lambda (_%g145061145074%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g145061145074%_))))
                 (_%g145059145123%_
                  (lambda (_%g145061145080%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g145061145080%_))
                        (let ((_%e145064145082%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g145061145080%_))))
                          (let ((_%hd145065145085%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145064145082%_)))
                                (_%tl145066145087%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145064145082%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl145066145087%_))
                                (let ((_%e145067145090%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl145066145087%_))))
                                  (let ((_%hd145068145093%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e145067145090%_)))
                                        (_%tl145069145095%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e145067145090%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145069145095%_))
                                        (let ((_%e145070145098%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145069145095%_))))
                                          (let ((_%hd145071145101%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145070145098%_)))
                                                (_%tl145072145103%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145070145098%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145072145103%_))
                                                ((lambda (_%L145106%_
                                                          _%L145107%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L145107%_)
                                                       (_%generate-simple145053%_
                                                        _%L145107%_
                                                        _%L145106%_)
                                                       (_%generate-values145056%_
                                                        _%L145107%_
                                                        _%L145106%_)))
                                                 _%hd145071145101%_
                                                 _%hd145068145093%_)
                                                (_%g145060145077%_
                                                 _%g145061145080%_))))
                                        (_%g145060145077%_
                                         _%g145061145080%_))))
                                (_%g145060145077%_ _%g145061145080%_))))
                        (_%g145060145077%_ _%g145061145080%_)))))
            (_%g145059145123%_ _%stx145050%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self145803%_ _%stx145804%_)
        (let ((_%compiled-body?145806%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self145803%_
           _%stx145804%_
           _%compiled-body?145806%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g150151_
        (let ((_g150150_ (let () (declare (not safe)) (##length _g150151_))))
          (cond ((let () (declare (not safe)) (##fx= _g150150_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g150151_))
                ((let () (declare (not safe)) (##fx= _g150150_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g150151_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g150151_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals144943%_ _%hd144944%_)
        (let _%lp144946%_ ((_%rest144948%_ _%hd144944%_)
                           (_%k144949%_ '0)
                           (_%r144950%_ '()))
          (let* ((_%__stx149315149316%_ _%rest144948%_)
                 (_%g144955144972%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx149315149316%_)))))
            (let ((_%__kont149317149318%_
                   (lambda (_%L145035%_)
                     (_%lp144946%_
                      _%L145035%_
                      (let () (declare (not safe)) (##fx+ _%k144949%_ '1))
                      _%r144950%_)))
                  (_%__kont149319149320%_
                   (lambda (_%L145008%_ _%L145009%_)
                     (_%lp144946%_
                      _%L145008%_
                      (let () (declare (not safe)) (##fx+ _%k144949%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L145009%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals144943%_
                                         _%k144949%_
                                         _%L145008%_)
                                        '()))
                            _%r144950%_))))
                  (_%__kont149321149322%_
                   (lambda (_%L144984%_)
                     (let ((__tmp150152
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L144984%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals144943%_
                                               _%k144949%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp150152 _%r144950%_))))
                  (_%__kont149323149324%_ (lambda () (reverse _%r144950%_))))
              (let ((_%g144953144995%_
                     (lambda ()
                       (let ((_%L144984%_ _%__stx149315149316%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L144984%_))
                             (_%__kont149321149322%_ _%L144984%_)
                             (_%__kont149323149324%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx149315149316%_))
                    (let ((_%e144958145024%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx149315149316%_))))
                      (let ((_%tl144960145029%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144958145024%_)))
                            (_%hd144959145027%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144958145024%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd144959145027%_))
                            (let ((_%e144961145032%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd144959145027%_))))
                              (if (equal? _%e144961145032%_ '#f)
                                  (_%__kont149317149318%_ _%tl144960145029%_)
                                  (_%__kont149319149320%_
                                   _%tl144960145029%_
                                   _%hd144959145027%_)))
                            (_%__kont149319149320%_
                             _%tl144960145029%_
                             _%hd144959145027%_))))
                    (let () (declare (not safe)) (_%g144953144995%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self144622%_ _%stx144623%_ _%compiled-body?144624%_)
        (letrec ((_%generate-simple144626%_
                  (lambda (_%hd144928%_ _%body144929%_)
                    (gxc#generate-runtime-simple-let
                     _%self144622%_
                     'letrec
                     _%hd144928%_
                     _%body144929%_
                     _%compiled-body?144624%_)))
                 (_%generate-values144627%_
                  (lambda (_%hd144707%_ _%body144708%_)
                    (let _%lp144710%_ ((_%rest144712%_ _%hd144707%_)
                                       (_%bind144713%_ '())
                                       (_%check144714%_ '())
                                       (_%post144715%_ '()))
                      (let* ((_%__stx149389149390%_ _%rest144712%_)
                             (_%g144718144729%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx149389149390%_)))))
                        (let ((_%__kont149391149392%_
                               (lambda (_%L144756%_ _%L144757%_)
                                 (let* ((_%__stx149345149346%_ _%L144757%_)
                                        (_%g144772144797%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx149345149346%_)))))
                                   (let ((_%__kont149347149348%_
                                          (lambda (_%L144904%_ _%L144905%_)
                                            (let ((_%eid144919%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L144905%_)))
                                                  (_%expr144920%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self144622%_
                                                      _%L144904%_))))
                                              (_%lp144710%_
                                               _%L144756%_
                                               (cons (cons _%eid144919%_
                                                           (cons _%expr144920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind144713%_)
                                               _%check144714%_
                                               _%post144715%_))))
                                         (_%__kont149349149350%_
                                          (lambda (_%L144818%_ _%L144819%_)
                                            (let* ((_%vals144832%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values144834%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals144832%_
                                                     _%L144819%_
                                                     _%L144818%_))
                                                   (_%refs144836%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals144832%_
                                                     _%L144819%_))
                                                   (_%expr144838%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self144622%_
                                                       _%L144818%_))))
                                              (_%lp144710%_
                                               _%L144756%_
                                               (let ((__tmp150154
                                                      (cons (cons _%vals144832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr144838%_ '()))
                    _%bind144713%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp150153
                                                      (map (lambda (_%e144840144842%_)
                                                             (let* ((_%g144844144853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e144840144842%_)
                            (_%E144846144857%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g144844144853%_
                                        '([eid _])))
                               '#!void))
                            (_%K144847144862%_
                             (lambda (_%eid144860%_)
                               (cons _%eid144860%_ (cons '#!void '())))))
                       (if (pair? _%g144844144853%_)
                           (let ((_%hd144848144865%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g144844144853%_)))
                                 (_%tl144849144867%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g144844144853%_))))
                             (let ((_%eid144870%_ _%hd144848144865%_))
                               (if (pair? _%tl144849144867%_)
                                   (let ((_%tl144851144872%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl144849144867%_))))
                                     (if (null? _%tl144851144872%_)
                                         (_%K144847144862%_ _%eid144870%_)
                                         (_%E144846144857%_)))
                                   (_%E144846144857%_))))
                           (_%E144846144857%_))))
                   _%refs144836%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp150154
                                                  __tmp150153))
                                               (cons _%check-values144834%_
                                                     _%check144714%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs144836%_
                                                  _%post144715%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx149345149346%_))
                                         (let ((_%e144776144880%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx149345149346%_))))
                                           (let ((_%tl144778144885%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e144776144880%_)))
                                                 (_%hd144777144883%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e144776144880%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd144777144883%_))
                                                 (let ((_%e144779144888%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd144777144883%_))))
                                                   (let ((_%tl144781144893%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e144779144888%_)))
                                                         (_%hd144780144891%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e144779144888%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl144781144893%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl144778144885%_))
                     (let ((_%e144782144896%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl144778144885%_))))
                       (let ((_%tl144784144901%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e144782144896%_)))
                             (_%hd144783144899%_
                              (let ()
                                (declare (not safe))
                                (##car _%e144782144896%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144784144901%_))
                             (_%__kont149347149348%_
                              _%hd144783144899%_
                              _%hd144780144891%_)
                             (let ()
                               (declare (not safe))
                               (_%g144772144797%_)))))
                     (let () (declare (not safe)) (_%g144772144797%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl144778144885%_))
                     (let ((_%e144790144810%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl144778144885%_))))
                       (let ((_%tl144792144815%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e144790144810%_)))
                             (_%hd144791144813%_
                              (let ()
                                (declare (not safe))
                                (##car _%e144790144810%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144792144815%_))
                             (_%__kont149349149350%_
                              _%hd144791144813%_
                              _%hd144777144883%_)
                             (let ()
                               (declare (not safe))
                               (_%g144772144797%_)))))
                     (let () (declare (not safe)) (_%g144772144797%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl144778144885%_))
                                                     (let ((_%e144790144810%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl144778144885%_))))
                                                       (let ((_%tl144792144815%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e144790144810%_)))
                     (_%hd144791144813%_
                      (let () (declare (not safe)) (##car _%e144790144810%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl144792144815%_))
                     (_%__kont149349149350%_
                      _%hd144791144813%_
                      _%hd144777144883%_)
                     (let () (declare (not safe)) (_%g144772144797%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g144772144797%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g144772144797%_)))))))
                              (_%__kont149393149394%_
                               (lambda ()
                                 (let* ((_%body144736%_
                                         (if _%compiled-body?144624%_
                                             _%body144708%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self144622%_
                                                _%body144708%_))))
                                        (_%body144738%_
                                         (_%generate-values-post144629%_
                                          _%post144715%_
                                          _%body144736%_))
                                        (_%body144740%_
                                         (_%generate-values-check144628%_
                                          _%check144714%_
                                          _%body144738%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind144713%_)
                                               (cons _%body144740%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx149389149390%_))
                              (let ((_%e144722144748%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx149389149390%_))))
                                (let ((_%tl144724144753%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144722144748%_)))
                                      (_%hd144723144751%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144722144748%_))))
                                  (_%__kont149391149392%_
                                   _%tl144724144753%_
                                   _%hd144723144751%_)))
                              (_%__kont149393149394%_)))))))
                 (_%generate-values-check144628%_
                  (lambda (_%check144704%_ _%body144705%_)
                    (cons 'begin
                          (let ((__tmp150156 (cons _%body144705%_ '()))
                                (__tmp150155 (reverse _%check144704%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp150156 __tmp150155)))))
                 (_%generate-values-post144629%_
                  (lambda (_%post144697%_ _%body144698%_)
                    (cons 'begin
                          (let ((__tmp150160 (cons _%body144698%_ '()))
                                (__tmp150157
                                 (let ((__tmp150159
                                        (lambda (_%g144699144701%_)
                                          (cons 'set! _%g144699144701%_)))
                                       (__tmp150158 (reverse _%post144697%_)))
                                   (declare (not safe))
                                   (##map __tmp150159 __tmp150158))))
                            (declare (not safe))
                            (__foldr1 cons __tmp150160 __tmp150157))))))
          (let* ((_%g144631144648%_
                  (lambda (_%g144632144645%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144632144645%_))))
                 (_%g144630144694%_
                  (lambda (_%g144632144651%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144632144651%_))
                        (let ((_%e144635144653%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144632144651%_))))
                          (let ((_%hd144636144656%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144635144653%_)))
                                (_%tl144637144658%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144635144653%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144637144658%_))
                                (let ((_%e144638144661%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl144637144658%_))))
                                  (let ((_%hd144639144664%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144638144661%_)))
                                        (_%tl144640144666%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144638144661%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144640144666%_))
                                        (let ((_%e144641144669%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144640144666%_))))
                                          (let ((_%hd144642144672%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144641144669%_)))
                                                (_%tl144643144674%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144641144669%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144643144674%_))
                                                ((lambda (_%L144677%_
                                                          _%L144678%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L144678%_)
                                                       (_%generate-simple144626%_
                                                        _%L144678%_
                                                        _%L144677%_)
                                                       (_%generate-values144627%_
                                                        _%L144678%_
                                                        _%L144677%_)))
                                                 _%hd144642144672%_
                                                 _%hd144639144664%_)
                                                (_%g144631144648%_
                                                 _%g144632144651%_))))
                                        (_%g144631144648%_
                                         _%g144632144651%_))))
                                (_%g144631144648%_ _%g144632144651%_))))
                        (_%g144631144648%_ _%g144632144651%_)))))
            (_%g144630144694%_ _%stx144623%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self144934%_ _%stx144935%_)
        (let ((_%compiled-body?144937%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self144934%_
           _%stx144935%_
           _%compiled-body?144937%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g150162_
        (let ((_g150161_ (let () (declare (not safe)) (##length _g150162_))))
          (cond ((let () (declare (not safe)) (##fx= _g150161_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g150162_))
                ((let () (declare (not safe)) (##fx= _g150161_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g150162_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g150162_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self144203%_ _%stx144204%_)
        (letrec ((_%generate-values144206%_
                  (lambda (_%hd144449%_ _%body144450%_)
                    (let _%lp144452%_ ((_%rest144454%_ _%hd144449%_)
                                       (_%bind144455%_ '()))
                      (let* ((_%rest144456144464%_ _%rest144454%_)
                             (_%else144458144475%_
                              (lambda ()
                                (let ((_%bind144472%_ (reverse _%bind144455%_))
                                      (_%body144473%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self144203%_
                                          _%body144450%_))))
                                  (cons 'letrec*
                                        (cons _%bind144472%_
                                              (cons _%body144473%_ '()))))))
                             (_%K144460144609%_
                              (lambda (_%rest144478%_ _%hd-bind144479%_)
                                (let* ((_%__stx149403149404%_
                                        _%hd-bind144479%_)
                                       (_%g144482144507%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx149403149404%_)))))
                                  (let ((_%__kont149405149406%_
                                         (lambda (_%L144588%_ _%L144589%_)
                                           (let ((_%eid144603%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L144589%_)))
                                                 (_%expr144604%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self144203%_
                                                     _%L144588%_))))
                                             (_%lp144452%_
                                              _%rest144478%_
                                              (cons (cons _%eid144603%_
                                                          (cons _%expr144604%_
                                                                '()))
                                                    _%bind144455%_)))))
                                        (_%__kont149407149408%_
                                         (lambda (_%L144528%_ _%L144529%_)
                                           (let* ((_%vals144548%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp144550%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values144552%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp144550%_
                                                    _%L144529%_
                                                    _%L144528%_))
                                                  (_%refs144554%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals144548%_
                                                    _%L144529%_))
                                                  (_%expr144556%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self144203%_
                                                      _%L144528%_))))
                                             (_%lp144452%_
                                              _%rest144478%_
                                              (let ((__tmp150163
                                                     (cons (cons _%vals144548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp144550%_
                                                       (cons _%expr144556%_
                                                             '()))
                                                 '())
                                           (cons _%check-values144552%_
                                                 (cons _%tmp144550%_ '()))))
                               '()))
                   _%bind144455%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp150163
                                                 _%refs144554%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx149403149404%_))
                                        (let ((_%e144486144564%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx149403149404%_))))
                                          (let ((_%tl144488144569%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144486144564%_)))
                                                (_%hd144487144567%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144486144564%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd144487144567%_))
                                                (let ((_%e144489144572%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd144487144567%_))))
                                                  (let ((_%tl144491144577%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e144489144572%_)))
                                                        (_%hd144490144575%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e144489144572%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl144491144577%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl144488144569%_))
                                                            (let ((_%e144492144580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl144488144569%_))))
                      (let ((_%tl144494144585%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144492144580%_)))
                            (_%hd144493144583%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144492144580%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl144494144585%_))
                            (_%__kont149405149406%_
                             _%hd144493144583%_
                             _%hd144490144575%_)
                            (let ()
                              (declare (not safe))
                              (_%g144482144507%_)))))
                    (let () (declare (not safe)) (_%g144482144507%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl144488144569%_))
                    (let ((_%e144500144520%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl144488144569%_))))
                      (let ((_%tl144502144525%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144500144520%_)))
                            (_%hd144501144523%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144500144520%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl144502144525%_))
                            (_%__kont149407149408%_
                             _%hd144501144523%_
                             _%hd144487144567%_)
                            (let ()
                              (declare (not safe))
                              (_%g144482144507%_)))))
                    (let () (declare (not safe)) (_%g144482144507%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl144488144569%_))
                                                    (let ((_%e144500144520%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl144488144569%_))))
                                                      (let ((_%tl144502144525%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e144500144520%_)))
                    (_%hd144501144523%_
                     (let () (declare (not safe)) (##car _%e144500144520%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl144502144525%_))
                    (_%__kont149407149408%_
                     _%hd144501144523%_
                     _%hd144487144567%_)
                    (let () (declare (not safe)) (_%g144482144507%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g144482144507%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g144482144507%_))))))))
                        (if (pair? _%rest144456144464%_)
                            (let ((_%hd144461144612%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest144456144464%_)))
                                  (_%tl144462144614%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest144456144464%_))))
                              (let* ((_%hd-bind144617%_ _%hd144461144612%_)
                                     (_%rest144619%_ _%tl144462144614%_))
                                (_%K144460144609%_
                                 _%rest144619%_
                                 _%hd-bind144617%_)))
                            (_%else144458144475%_))))))
                 (_%generate-letrec?144207%_
                  (lambda (_%hd144339%_)
                    (let _%lp144341%_ ((_%rest144343%_ _%hd144339%_))
                      (let* ((_%rest144344144352%_ _%rest144343%_)
                             (_%else144346144360%_ (lambda () '#t))
                             (_%K144348144437%_
                              (lambda (_%rest144363%_ _%hd-bind144364%_)
                                (let* ((_%g144366144383%_
                                        (lambda (_%g144367144380%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g144367144380%_))))
                                       (_%g144365144434%_
                                        (lambda (_%g144367144386%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g144367144386%_))
                                              (let ((_%e144370144388%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g144367144386%_))))
                                                (let ((_%hd144371144391%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144370144388%_)))
                                                      (_%tl144372144393%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144370144388%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd144371144391%_))
                                                      (let ((_%e144373144396%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd144371144391%_))))
                (let ((_%hd144374144399%_
                       (let () (declare (not safe)) (##car _%e144373144396%_)))
                      (_%tl144375144401%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e144373144396%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl144375144401%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl144372144393%_))
                          (let ((_%e144376144404%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl144372144393%_))))
                            (let ((_%hd144377144407%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e144376144404%_)))
                                  (_%tl144378144409%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e144376144404%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl144378144409%_))
                                  ((lambda (_%L144412%_ _%L144413%_)
                                     (if (_%is-lambda-expr?144208%_
                                          _%L144412%_)
                                         (_%lp144341%_ _%rest144363%_)
                                         '#f))
                                   _%hd144377144407%_
                                   _%hd144374144399%_)
                                  (_%g144366144383%_ _%g144367144386%_))))
                          (_%g144366144383%_ _%g144367144386%_))
                      (_%g144366144383%_ _%g144367144386%_))))
              (_%g144366144383%_ _%g144367144386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g144366144383%_
                                               _%g144367144386%_)))))
                                  (_%g144365144434%_ _%hd-bind144364%_)))))
                        (if (pair? _%rest144344144352%_)
                            (let ((_%hd144349144440%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest144344144352%_)))
                                  (_%tl144350144442%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest144344144352%_))))
                              (let* ((_%hd-bind144445%_ _%hd144349144440%_)
                                     (_%rest144447%_ _%tl144350144442%_))
                                (_%K144348144437%_
                                 _%rest144447%_
                                 _%hd-bind144445%_)))
                            (_%else144346144360%_))))))
                 (_%is-lambda-expr?144208%_
                  (lambda (_%expr144276%_)
                    (let* ((_%__stx149447149448%_ _%expr144276%_)
                           (_%g144279144293%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx149447149448%_)))))
                      (let ((_%__kont149449149450%_
                             (lambda (_%L144321%_ _%L144322%_) '#t))
                            (_%__kont149451149452%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx149447149448%_))
                            (let ((_%e144283144305%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx149447149448%_))))
                              (let ((_%tl144285144310%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e144283144305%_)))
                                    (_%hd144284144308%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e144283144305%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd144284144308%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd144284144308%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl144285144310%_))
                                            (let ((_%e144286144313%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl144285144310%_))))
                                              (let ((_%tl144288144318%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144286144313%_)))
                                                    (_%hd144287144316%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144286144313%_))))
                                                (_%__kont149449149450%_
                                                 _%tl144288144318%_
                                                 _%hd144287144316%_)))
                                            (_%__kont149451149452%_))
                                        (_%__kont149451149452%_))
                                    (_%__kont149451149452%_))))
                            (_%__kont149451149452%_)))))))
          (let* ((_%g144210144227%_
                  (lambda (_%g144211144224%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144211144224%_))))
                 (_%g144209144273%_
                  (lambda (_%g144211144230%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144211144230%_))
                        (let ((_%e144214144232%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144211144230%_))))
                          (let ((_%hd144215144235%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144214144232%_)))
                                (_%tl144216144237%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144214144232%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144216144237%_))
                                (let ((_%e144217144240%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl144216144237%_))))
                                  (let ((_%hd144218144243%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144217144240%_)))
                                        (_%tl144219144245%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144217144240%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144219144245%_))
                                        (let ((_%e144220144248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144219144245%_))))
                                          (let ((_%hd144221144251%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144220144248%_)))
                                                (_%tl144222144253%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144220144248%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144222144253%_))
                                                ((lambda (_%L144256%_
                                                          _%L144257%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L144257%_)
                                                       (if (_%generate-letrec?144207%_
                                                            _%L144257%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self144203%_
                                                            'letrec
                                                            _%L144257%_
                                                            _%L144256%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self144203%_
                                                            'letrec*
                                                            _%L144257%_
                                                            _%L144256%_
                                                            '#f))
                                                       (_%generate-values144206%_
                                                        _%L144257%_
                                                        _%L144256%_)))
                                                 _%hd144221144251%_
                                                 _%hd144218144243%_)
                                                (_%g144210144227%_
                                                 _%g144211144230%_))))
                                        (_%g144210144227%_
                                         _%g144211144230%_))))
                                (_%g144210144227%_ _%g144211144230%_))))
                        (_%g144210144227%_ _%g144211144230%_)))))
            (_%g144209144273%_ _%stx144204%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd144140%_)
        (let _%lp144142%_ ((_%rest144144%_ _%hd144140%_))
          (let* ((_%rest144145144161%_ _%rest144144%_)
                 (_%else144148144169%_ (lambda () '#f)))
            (let ((_%K144151144182%_
                   (lambda (_%rest144180%_) (_%lp144142%_ _%rest144180%_)))
                  (_%K144150144174%_ (lambda () '#t)))
              (let ((_%try-match144147144177%_
                     (lambda ()
                       (if (null? _%rest144145144161%_)
                           (_%K144150144174%_)
                           (_%else144148144169%_)))))
                (if (pair? _%rest144145144161%_)
                    (let ((_%tl144153144187%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest144145144161%_)))
                          (_%hd144152144185%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest144145144161%_))))
                      (if (pair? _%hd144152144185%_)
                          (let ((_%tl144155144192%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd144152144185%_)))
                                (_%hd144154144190%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd144152144185%_))))
                            (if (pair? _%hd144154144190%_)
                                (let ((_%tl144159144195%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd144154144190%_))))
                                  (if (null? _%tl144159144195%_)
                                      (if (pair? _%tl144155144192%_)
                                          (let ((_%tl144157144198%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl144155144192%_))))
                                            (if (null? _%tl144157144198%_)
                                                (let ((_%rest144201%_
                                                       _%tl144153144187%_))
                                                  (_%lp144142%_
                                                   _%rest144201%_))
                                                (_%else144148144169%_)))
                                          (_%else144148144169%_))
                                      (_%else144148144169%_)))
                                (_%else144148144169%_)))
                          (_%else144148144169%_)))
                    (_%try-match144147144177%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self144051%_
               _%form144052%_
               _%hd144053%_
               _%body144054%_
               _%compiled-body?144055%_)
        (letrec ((_%generate1144057%_
                  (lambda (_%bind144096%_)
                    (let* ((_%bind144097144108%_ _%bind144096%_)
                           (_%E144099144112%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind144097144108%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K144100144118%_
                            (lambda (_%expr144115%_ _%id144116%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id144116%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self144051%_
                                             _%expr144115%_))
                                          '())))))
                      (if (pair? _%bind144097144108%_)
                          (let ((_%hd144101144121%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind144097144108%_)))
                                (_%tl144102144123%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind144097144108%_))))
                            (if (pair? _%hd144101144121%_)
                                (let ((_%hd144105144126%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd144101144121%_)))
                                      (_%tl144106144128%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd144101144121%_))))
                                  (let ((_%id144131%_ _%hd144105144126%_))
                                    (if (null? _%tl144106144128%_)
                                        (if (pair? _%tl144102144123%_)
                                            (let ((_%hd144103144133%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl144102144123%_)))
                                                  (_%tl144104144135%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl144102144123%_))))
                                              (let ((_%expr144138%_
                                                     _%hd144103144133%_))
                                                (if (null? _%tl144104144135%_)
                                                    (_%K144100144118%_
                                                     _%expr144138%_
                                                     _%id144131%_)
                                                    (_%E144099144112%_))))
                                            (_%E144099144112%_))
                                        (_%E144099144112%_))))
                                (_%E144099144112%_)))
                          (_%E144099144112%_))))))
          (let* ((_%bind144059%_ (map _%generate1144057%_ _%hd144053%_))
                 (_%body144061%_
                  (if _%compiled-body?144055%_
                      _%body144054%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self144051%_ _%body144054%_))))
                 (_%body144093%_
                  (let* ((_%body144062144070%_ _%body144061%_)
                         (_%else144064144078%_
                          (lambda () (cons _%body144061%_ '())))
                         (_%K144066144083%_
                          (lambda (_%exprs144081%_) _%exprs144081%_)))
                    (if (pair? _%body144062144070%_)
                        (let ((_%hd144067144086%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body144062144070%_)))
                              (_%tl144068144088%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body144062144070%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd144067144086%_ 'begin))
                              (let ((_%exprs144091%_ _%tl144068144088%_))
                                (_%K144066144083%_ _%exprs144091%_))
                              (_%else144064144078%_)))
                        (_%else144064144078%_)))))
            (cons _%form144052%_ (cons _%bind144059%_ _%body144093%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self143951%_ _%stx143952%_)
        (letrec ((_%generate1143954%_
                  (lambda (_%datum144006%_)
                    (if (or (null? _%datum144006%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum144006%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum144006%_))
                            (eof-object? _%datum144006%_))
                        _%datum144006%_
                        (if (uninterned-symbol? _%datum144006%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum144006%_
                               '#t))
                            (if (pair? _%datum144006%_)
                                (cons (_%generate1143954%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum144006%_)))
                                      (_%generate1143954%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum144006%_))))
                                (if (box? _%datum144006%_)
                                    (box (_%generate1143954%_
                                          (unbox _%datum144006%_)))
                                    (if (vector? _%datum144006%_)
                                        (vector-map
                                         _%generate1143954%_
                                         _%datum144006%_)
                                        (if (or (s8vector? _%datum144006%_)
                                                (u8vector? _%datum144006%_)
                                                (s16vector? _%datum144006%_)
                                                (u16vector? _%datum144006%_)
                                                (s32vector? _%datum144006%_)
                                                (u32vector? _%datum144006%_)
                                                (s64vector? _%datum144006%_)
                                                (u64vector? _%datum144006%_)
                                                (f32vector? _%datum144006%_)
                                                (f64vector? _%datum144006%_))
                                            _%datum144006%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx143952%_)))))))))))
          (let* ((_%g143956143969%_
                  (lambda (_%g143957143966%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143957143966%_))))
                 (_%g143955144003%_
                  (lambda (_%g143957143972%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143957143972%_))
                        (let ((_%e143959143974%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143957143972%_))))
                          (let ((_%hd143960143977%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143959143974%_)))
                                (_%tl143961143979%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143959143974%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143961143979%_))
                                (let ((_%e143962143982%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143961143979%_))))
                                  (let ((_%hd143963143985%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143962143982%_)))
                                        (_%tl143964143987%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143962143982%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl143964143987%_))
                                        ((lambda (_%L143990%_)
                                           (cons 'quote
                                                 (cons (_%generate1143954%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L143990%_)))
                                                       '())))
                                         _%hd143963143985%_)
                                        (_%g143956143969%_
                                         _%g143957143972%_))))
                                (_%g143956143969%_ _%g143957143972%_))))
                        (_%g143956143969%_ _%g143957143972%_)))))
            (_%g143955144003%_ _%stx143952%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self143392%_ _%stx143393%_)
        (letrec ((_%compile-call143395%_
                  (lambda (_%rator143684%_ _%rands143685%_)
                    (let ((_%rator143691%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self143392%_
                              _%rator143684%_)))
                          (_%rands143692%_
                           (map (lambda (_%g143686143688%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self143392%_
                                     _%g143686143688%_)))
                                _%rands143685%_)))
                      (let* ((_%__stx149494149495%_ _%rator143691%_)
                             (_%g143695143747%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx149494149495%_)))))
                        (let ((_%__kont149496149497%_
                               (lambda (_%L143871%_
                                        _%L143872%_
                                        _%L143873%_
                                        _%L143874%_)
                                 (if (let ((__tmp150166
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands143692%_)))
                                           (__tmp150164
                                            (length (let ((__tmp150165
                                                           (lambda (_%g143910143913%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g143911143915%_)
                     (cons _%g143910143913%_ _%g143911143915%_))))
              (declare (not safe))
              (__foldr1 __tmp150165 '() _%L143873%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp150166 __tmp150164))
                                     (let* ((_%id143918%_ _%L143874%_)
                                            (_%args143927%_
                                             (let ((__tmp150167
                                                    (lambda (_%g143919143922%_
                                                             _%g143920143924%_)
                                                      (cons _%g143919143922%_
                                                            _%g143920143924%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp150167
                                                '()
                                                _%L143873%_)))
                                            (_%body143936%_
                                             (let ((__tmp150168
                                                    (lambda (_%g143928143931%_
                                                             _%g143929143933%_)
                                                      (cons _%g143928143931%_
                                                            _%g143929143933%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp150168
                                                '()
                                                _%L143872%_)))
                                            (_%init143938%_
                                             (map list
                                                  _%args143927%_
                                                  _%rands143692%_)))
                                       (cons 'let
                                             (cons _%id143918%_
                                                   (cons _%init143938%_
                                                         _%body143936%_))))
                                     (let ((__tmp150169
                                            (let ((__tmp150170
                                                   (lambda (_%g143940143943%_
                                                            _%g143941143945%_)
                                                     (cons _%g143940143943%_
                                                           _%g143941143945%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp150170
                                               '()
                                               _%L143873%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx143393%_
                                        __tmp150169
                                        _%rands143692%_)))))
                              (_%__kont149502149503%_
                               (lambda ()
                                 (cons _%rator143691%_ _%rands143692%_))))
                          (let ((_%__match149561149562%_
                                 (lambda (_%e143701143759%_
                                          _%hd143702143762%_
                                          _%tl143703143764%_
                                          _%e143704143767%_
                                          _%hd143705143770%_
                                          _%tl143706143772%_
                                          _%e143707143775%_
                                          _%hd143708143778%_
                                          _%tl143709143780%_
                                          _%e143710143783%_
                                          _%hd143711143786%_
                                          _%tl143712143788%_
                                          _%e143713143791%_
                                          _%hd143714143794%_
                                          _%tl143715143796%_
                                          _%e143716143799%_
                                          _%hd143717143802%_
                                          _%tl143718143804%_
                                          _%e143719143807%_
                                          _%hd143720143810%_
                                          _%tl143721143812%_
                                          _%__splice149498149499%_
                                          _%target143722143815%_
                                          _%tl143724143817%_)
                                   (letrec ((_%loop143725143820%_
                                             (lambda (_%hd143723143823%_
                                                      _%arg143729143825%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd143723143823%_))
                                                   (let ((_%e143726143828%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd143723143823%_))))
                                                     (let ((_%lp-tl143728143833%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e143726143828%_)))
                                                           (_%lp-hd143727143831%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e143726143828%_))))
                                                       (_%loop143725143820%_
                                                        _%lp-tl143728143833%_
                                                        (cons _%lp-hd143727143831%_
                                                              _%arg143729143825%_))))
                                                   (let ((_%arg143730143836%_
                                                          (reverse _%arg143729143825%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl143721143812%_))
                                                         (let ((_%__splice149500149501%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl143721143812%_ '0))))
                   (let ((_%tl143733143841%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice149500149501%_ '1)))
                         (_%target143731143839%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice149500149501%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl143733143841%_))
                         (letrec ((_%loop143734143844%_
                                   (lambda (_%hd143732143847%_
                                            _%body143738143849%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd143732143847%_))
                                         (let ((_%e143735143852%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd143732143847%_))))
                                           (let ((_%lp-tl143737143857%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e143735143852%_)))
                                                 (_%lp-hd143736143855%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e143735143852%_))))
                                             (_%loop143734143844%_
                                              _%lp-tl143737143857%_
                                              (cons _%lp-hd143736143855%_
                                                    _%body143738143849%_))))
                                         (let ((_%body143739143860%_
                                                (reverse _%body143738143849%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl143715143796%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl143709143780%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl143706143772%_))
                                                       (let ((_%e143740143863%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl143706143772%_))))
                 (let ((_%tl143742143868%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e143740143863%_)))
                       (_%hd143741143866%_
                        (let ()
                          (declare (not safe))
                          (##car _%e143740143863%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl143742143868%_))
                       (let ((_%L143871%_ _%hd143741143866%_)
                             (_%L143872%_ _%body143739143860%_)
                             (_%L143873%_ _%arg143730143836%_)
                             (_%L143874%_ _%hd143711143786%_))
                         (if (eq? _%L143874%_ _%L143871%_)
                             (_%__kont149496149497%_
                              _%L143871%_
                              _%L143872%_
                              _%L143873%_
                              _%L143874%_)
                             (_%__kont149502149503%_)))
                       (_%__kont149502149503%_))))
               (_%__kont149502149503%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont149502149503%_))
                                               (_%__kont149502149503%_)))))))
                           (_%loop143734143844%_ _%target143731143839%_ '()))
                         (_%__kont149502149503%_))))
                 (_%__kont149502149503%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop143725143820%_
                                      _%target143722143815%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx149494149495%_))
                                (let ((_%e143701143759%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx149494149495%_))))
                                  (let ((_%tl143703143764%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143701143759%_)))
                                        (_%hd143702143762%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143701143759%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd143702143762%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd143702143762%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl143703143764%_))
                                                (let ((_%e143704143767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl143703143764%_))))
                                                  (let ((_%tl143706143772%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143704143767%_)))
                                                        (_%hd143705143770%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143704143767%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd143705143770%_))
                                                        (let ((_%e143707143775%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd143705143770%_))))
                  (let ((_%tl143709143780%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143707143775%_)))
                        (_%hd143708143778%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143707143775%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143708143778%_))
                        (let ((_%e143710143783%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143708143778%_))))
                          (let ((_%tl143712143788%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143710143783%_)))
                                (_%hd143711143786%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143710143783%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143712143788%_))
                                (let ((_%e143713143791%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143712143788%_))))
                                  (let ((_%tl143715143796%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143713143791%_)))
                                        (_%hd143714143794%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143713143791%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd143714143794%_))
                                        (let ((_%e143716143799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd143714143794%_))))
                                          (let ((_%tl143718143804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143716143799%_)))
                                                (_%hd143717143802%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143716143799%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd143717143802%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd143717143802%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143718143804%_))
                                                        (let ((_%e143719143807%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143718143804%_))))
                  (let ((_%tl143721143812%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143719143807%_)))
                        (_%hd143720143810%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143719143807%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd143720143810%_))
                        (let ((_%__splice149498149499%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd143720143810%_
                                  '0))))
                          (let ((_%tl143724143817%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice149498149499%_ '1)))
                                (_%target143722143815%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice149498149499%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143724143817%_))
                                (_%__match149561149562%_
                                 _%e143701143759%_
                                 _%hd143702143762%_
                                 _%tl143703143764%_
                                 _%e143704143767%_
                                 _%hd143705143770%_
                                 _%tl143706143772%_
                                 _%e143707143775%_
                                 _%hd143708143778%_
                                 _%tl143709143780%_
                                 _%e143710143783%_
                                 _%hd143711143786%_
                                 _%tl143712143788%_
                                 _%e143713143791%_
                                 _%hd143714143794%_
                                 _%tl143715143796%_
                                 _%e143716143799%_
                                 _%hd143717143802%_
                                 _%tl143718143804%_
                                 _%e143719143807%_
                                 _%hd143720143810%_
                                 _%tl143721143812%_
                                 _%__splice149498149499%_
                                 _%target143722143815%_
                                 _%tl143724143817%_)
                                (_%__kont149502149503%_))))
                        (_%__kont149502149503%_))))
                (_%__kont149502149503%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont149502149503%_))
                                                (_%__kont149502149503%_))))
                                        (_%__kont149502149503%_))))
                                (_%__kont149502149503%_))))
                        (_%__kont149502149503%_))))
                (_%__kont149502149503%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont149502149503%_))
                                            (_%__kont149502149503%_))
                                        (_%__kont149502149503%_))))
                                (_%__kont149502149503%_)))))))))
          (let* ((_%g143397143420%_
                  (lambda (_%g143398143417%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143398143417%_))))
                 (_%g143396143681%_
                  (lambda (_%g143398143423%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143398143423%_))
                        (let ((_%e143401143425%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143398143423%_))))
                          (let ((_%hd143402143428%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143401143425%_)))
                                (_%tl143403143430%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143401143425%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143403143430%_))
                                (let ((_%e143404143433%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143403143430%_))))
                                  (let ((_%hd143405143436%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143404143433%_)))
                                        (_%tl143406143438%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143404143433%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl143406143438%_))
                                        (let ((_g150171_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl143406143438%_
                                                  '0))))
                                          (begin
                                            (let ((_g150172_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g150171_)
                                                         (##values-length
                                                          _g150171_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g150172_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g150172_)))
                                            (let ((_%target143407143441%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g150171_
                                                      0)))
                                                  (_%tl143409143443%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g150171_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl143409143443%_))
                                                  (letrec ((_%loop143410143446%_
                                                            (lambda (_%hd143408143449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand143414143451%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd143408143449%_))
                          (let ((_%e143411143454%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd143408143449%_))))
                            (let ((_%lp-hd143412143457%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143411143454%_)))
                                  (_%lp-tl143413143459%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143411143454%_))))
                              (_%loop143410143446%_
                               _%lp-tl143413143459%_
                               (cons _%lp-hd143412143457%_
                                     _%rand143414143451%_))))
                          (let ((_%rand143415143462%_
                                 (reverse _%rand143414143451%_)))
                            ((lambda (_%L143465%_ _%L143466%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call143395%_
                                    _%L143466%_
                                    (let ((__tmp150173
                                           (lambda (_%g143483143486%_
                                                    _%g143484143488%_)
                                             (cons _%g143483143486%_
                                                   _%g143484143488%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp150173 '() _%L143465%_)))
                                   (let* ((_%__stx149610149611%_ _%L143466%_)
                                          (_%g143492143504%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx149610149611%_)))))
                                     (let ((_%__kont149612149613%_
                                            (lambda ()
                                              (let ((_%f143541%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self143392%_
                                                        _%L143466%_))))
                                                (if (and (let ((__tmp150174
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f143541%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp150174))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f143541%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp143543%_ ((_%rest143546%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp150176
                                                (lambda (_%g143663143666%_
                                                         _%g143664143668%_)
                                                  (cons _%g143663143666%_
                                                        _%g143664143668%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp150176
                                            '()
                                            _%L143465%_))))
                               (_%bind143548%_ '())
                               (_%args143549%_ '()))
              (let* ((_%rest143550143558%_ _%rest143546%_)
                     (_%else143552143566%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind143548%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f143541%_
                                                      _%args143549%_)
                                                '()))))))
                     (_%K143554143652%_
                      (lambda (_%rest143569%_ _%e143570%_)
                        (let* ((_%__stx149564149565%_ _%e143570%_)
                               (_%g143575143593%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx149564149565%_)))))
                          (let ((_%__kont149566149567%_
                                 (lambda ()
                                   (_%lp143543%_
                                    _%rest143569%_
                                    _%bind143548%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e143570%_))
                                          _%args143549%_))))
                                (_%__kont149568149569%_
                                 (lambda ()
                                   (_%lp143543%_
                                    _%rest143569%_
                                    _%bind143548%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e143570%_))
                                          _%args143549%_))))
                                (_%__kont149570149571%_
                                 (lambda ()
                                   (let ((_%tmp143600%_
                                          (let ((__tmp150175
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp150175))))
                                     (_%lp143543%_
                                      _%rest143569%_
                                      (cons (cons _%tmp143600%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e143570%_))
                                                        '()))
                                            _%bind143548%_)
                                      (cons _%tmp143600%_ _%args143549%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx149564149565%_))
                                (let ((_%e143577143631%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx149564149565%_))))
                                  (let ((_%tl143579143636%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143577143631%_)))
                                        (_%hd143578143634%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143577143631%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd143578143634%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd143578143634%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl143579143636%_))
                                                (let ((_%e143580143639%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl143579143636%_))))
                                                  (let ((_%tl143582143644%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143580143639%_)))
                                                        (_%hd143581143642%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143580143639%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl143582143644%_))
                                                        (_%__kont149566149567%_)
                                                        (_%__kont149570149571%_))))
                                                (_%__kont149570149571%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd143578143634%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl143579143636%_))
                                                    (let ((_%e143586143616%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl143579143636%_))))
                                                      (let ((_%tl143588143621%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e143586143616%_)))
                    (_%hd143587143619%_
                     (let () (declare (not safe)) (##car _%e143586143616%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl143588143621%_))
                    (_%__kont149568149569%_)
                    (_%__kont149570149571%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont149570149571%_))
                                                (_%__kont149570149571%_)))
                                        (_%__kont149570149571%_))))
                                (_%__kont149570149571%_)))))))
                (if (pair? _%rest143550143558%_)
                    (let ((_%hd143555143655%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest143550143558%_)))
                          (_%tl143556143657%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest143550143558%_))))
                      (let* ((_%e143660%_ _%hd143555143655%_)
                             (_%rest143662%_ _%tl143556143657%_))
                        (_%K143554143652%_ _%rest143662%_ _%e143660%_)))
                    (_%else143552143566%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call143395%_
                                                     _%L143466%_
                                                     (let ((__tmp150177
                                                            (lambda (_%g143670143673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g143671143675%_)
                      (cons _%g143670143673%_ _%g143671143675%_))))
               (declare (not safe))
               (__foldr1 __tmp150177 '() _%L143465%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont149614149615%_
                                            (lambda ()
                                              (_%compile-call143395%_
                                               _%L143466%_
                                               (let ((__tmp150178
                                                      (lambda (_%g143510143513%_
                                                               _%g143511143515%_)
                                                        (cons _%g143510143513%_
                                                              _%g143511143515%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp150178
                                                  '()
                                                  _%L143465%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx149610149611%_))
                                           (let ((_%e143494143523%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx149610149611%_))))
                                             (let ((_%tl143496143528%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e143494143523%_)))
                                                   (_%hd143495143526%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e143494143523%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd143495143526%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd143495143526%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl143496143528%_))
                                                           (let ((_%e143497143531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl143496143528%_))))
                     (let ((_%tl143499143536%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e143497143531%_)))
                           (_%hd143498143534%_
                            (let ()
                              (declare (not safe))
                              (##car _%e143497143531%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl143499143536%_))
                           (_%__kont149612149613%_)
                           (_%__kont149614149615%_))))
                   (_%__kont149614149615%_))
               (_%__kont149614149615%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont149614149615%_))))
                                           (_%__kont149614149615%_))))))
                             _%rand143415143462%_
                             _%hd143405143436%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop143410143446%_
                                                     _%target143407143441%_
                                                     '()))
                                                  (_%g143397143420%_
                                                   _%g143398143423%_)))))
                                        (_%g143397143420%_
                                         _%g143398143423%_))))
                                (_%g143397143420%_ _%g143398143423%_))))
                        (_%g143397143420%_ _%g143398143423%_)))))
            (_%g143396143681%_ _%stx143393%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self143135%_ _%stx143136%_)
        (let* ((_%__stx149682149683%_ _%stx143136%_)
               (_%g143139143168%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx149682149683%_)))))
          (let ((_%__kont149684149685%_
                 (lambda (_%L143236%_ _%L143237%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self143135%_
                        _%stx143136%_)
                       (let ((_%f143259%_
                              (let ((__tmp150179
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L143237%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self143135%_
                                 __tmp150179))))
                         (let _%lp143261%_ ((_%rest143264%_
                                             (reverse (let ((__tmp150181
                                                             (lambda (_%g143381143384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g143382143386%_)
                       (cons _%g143381143384%_ _%g143382143386%_))))
                (declare (not safe))
                (__foldr1 __tmp150181 '() _%L143236%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind143266%_ '())
                                            (_%args143267%_ '()))
                           (let* ((_%rest143268143276%_ _%rest143264%_)
                                  (_%else143270143284%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind143266%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f143259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args143267%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K143272143370%_
                                   (lambda (_%rest143287%_ _%e143288%_)
                                     (let* ((_%__stx149636149637%_ _%e143288%_)
                                            (_%g143293143311%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx149636149637%_)))))
                                       (let ((_%__kont149638149639%_
                                              (lambda ()
                                                (_%lp143261%_
                                                 _%rest143287%_
                                                 _%bind143266%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e143288%_))
                                                       _%args143267%_))))
                                             (_%__kont149640149641%_
                                              (lambda ()
                                                (_%lp143261%_
                                                 _%rest143287%_
                                                 _%bind143266%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e143288%_))
                                                       _%args143267%_))))
                                             (_%__kont149642149643%_
                                              (lambda ()
                                                (let ((_%tmp143318%_
                                                       (let ((__tmp150180
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp150180))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp143261%_
                                                   _%rest143287%_
                                                   (cons (cons _%tmp143318%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e143288%_))
                             '()))
                 _%bind143266%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp143318%_
                                                         _%args143267%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx149636149637%_))
                                             (let ((_%e143295143349%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx149636149637%_))))
                                               (let ((_%tl143297143354%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e143295143349%_)))
                                                     (_%hd143296143352%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e143295143349%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd143296143352%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd143296143352%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl143297143354%_))
                     (let ((_%e143298143357%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl143297143354%_))))
                       (let ((_%tl143300143362%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e143298143357%_)))
                             (_%hd143299143360%_
                              (let ()
                                (declare (not safe))
                                (##car _%e143298143357%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143300143362%_))
                             (_%__kont149638149639%_)
                             (_%__kont149642149643%_))))
                     (_%__kont149642149643%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd143296143352%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl143297143354%_))
                         (let ((_%e143304143334%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl143297143354%_))))
                           (let ((_%tl143306143339%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e143304143334%_)))
                                 (_%hd143305143337%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e143304143334%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl143306143339%_))
                                 (_%__kont149640149641%_)
                                 (_%__kont149642149643%_))))
                         (_%__kont149642149643%_))
                     (_%__kont149642149643%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont149642149643%_))))
                                             (_%__kont149642149643%_)))))))
                             (if (pair? _%rest143268143276%_)
                                 (let ((_%hd143273143373%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest143268143276%_)))
                                       (_%tl143274143375%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest143268143276%_))))
                                   (let* ((_%e143378%_ _%hd143273143373%_)
                                          (_%rest143380%_ _%tl143274143375%_))
                                     (_%K143272143370%_
                                      _%rest143380%_
                                      _%e143378%_)))
                                 (_%else143270143284%_))))))))
                (_%__kont149688149689%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self143135%_ _%stx143136%_))))
            (let ((_%__match149727149728%_
                   (lambda (_%e143143143180%_
                            _%hd143144143183%_
                            _%tl143145143185%_
                            _%e143146143188%_
                            _%hd143147143191%_
                            _%tl143148143193%_
                            _%e143149143196%_
                            _%hd143150143199%_
                            _%tl143151143201%_
                            _%e143152143204%_
                            _%hd143153143207%_
                            _%tl143154143209%_
                            _%__splice149686149687%_
                            _%target143155143212%_
                            _%tl143157143214%_)
                     (letrec ((_%loop143158143217%_
                               (lambda (_%hd143156143220%_
                                        _%rand143162143222%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd143156143220%_))
                                     (let ((_%e143159143225%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd143156143220%_))))
                                       (let ((_%lp-tl143161143230%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e143159143225%_)))
                                             (_%lp-hd143160143228%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e143159143225%_))))
                                         (_%loop143158143217%_
                                          _%lp-tl143161143230%_
                                          (cons _%lp-hd143160143228%_
                                                _%rand143162143222%_))))
                                     (let ((_%rand143163143233%_
                                            (reverse _%rand143162143222%_)))
                                       (_%__kont149684149685%_
                                        _%rand143163143233%_
                                        _%hd143153143207%_))))))
                       (_%loop143158143217%_ _%target143155143212%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx149682149683%_))
                  (let ((_%e143143143180%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx149682149683%_))))
                    (let ((_%tl143145143185%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143143143180%_)))
                          (_%hd143144143183%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143143143180%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143145143185%_))
                          (let ((_%e143146143188%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143145143185%_))))
                            (let ((_%tl143148143193%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143146143188%_)))
                                  (_%hd143147143191%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143146143188%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd143147143191%_))
                                  (let ((_%e143149143196%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd143147143191%_))))
                                    (let ((_%tl143151143201%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143149143196%_)))
                                          (_%hd143150143199%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143149143196%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd143150143199%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd143150143199%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl143151143201%_))
                                                  (let ((_%e143152143204%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl143151143201%_))))
                                                    (let ((_%tl143154143209%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143152143204%_)))
                                                          (_%hd143153143207%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143152143204%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl143154143209%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl143148143193%_))
                      (let ((_%__splice149686149687%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl143148143193%_
                                '0))))
                        (let ((_%tl143157143214%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice149686149687%_ '1)))
                              (_%target143155143212%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice149686149687%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl143157143214%_))
                              (_%__match149727149728%_
                               _%e143143143180%_
                               _%hd143144143183%_
                               _%tl143145143185%_
                               _%e143146143188%_
                               _%hd143147143191%_
                               _%tl143148143193%_
                               _%e143149143196%_
                               _%hd143150143199%_
                               _%tl143151143201%_
                               _%e143152143204%_
                               _%hd143153143207%_
                               _%tl143154143209%_
                               _%__splice149686149687%_
                               _%target143155143212%_
                               _%tl143157143214%_)
                              (_%__kont149688149689%_))))
                      (_%__kont149688149689%_))
                  (_%__kont149688149689%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont149688149689%_))
                                              (_%__kont149688149689%_))
                                          (_%__kont149688149689%_))))
                                  (_%__kont149688149689%_))))
                          (_%__kont149688149689%_))))
                  (_%__kont149688149689%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self142947%_ _%stx142948%_)
        (letrec ((_%simplify142950%_
                  (lambda (_%code143035%_)
                    (let* ((_%code143036143054%_ _%code143035%_)
                           (_%else143038143062%_ (lambda () _%code143035%_))
                           (_%K143040143098%_
                            (lambda (_%expr143065%_ _%test143066%_)
                              (let* ((_%expr143067143075%_ _%expr143065%_)
                                     (_%else143069143083%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test143066%_
                                                    (cons _%expr143065%_
                                                          '())))))
                                     (_%K143071143088%_
                                      (lambda (_%exprs143086%_)
                                        (cons 'and
                                              (cons _%test143066%_
                                                    _%exprs143086%_)))))
                                (if (pair? _%expr143067143075%_)
                                    (let ((_%hd143072143091%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr143067143075%_)))
                                          (_%tl143073143093%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr143067143075%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd143072143091%_ 'and))
                                          (let ((_%exprs143096%_
                                                 _%tl143073143093%_))
                                            (_%K143071143088%_
                                             _%exprs143096%_))
                                          (_%else143069143083%_)))
                                    (_%else143069143083%_))))))
                      (if (pair? _%code143036143054%_)
                          (let ((_%hd143041143101%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code143036143054%_)))
                                (_%tl143042143103%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code143036143054%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd143041143101%_ 'if))
                                (if (pair? _%tl143042143103%_)
                                    (let ((_%hd143043143106%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl143042143103%_)))
                                          (_%tl143044143108%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl143042143103%_))))
                                      (let ((_%test143111%_
                                             _%hd143043143106%_))
                                        (if (pair? _%tl143044143108%_)
                                            (let ((_%hd143045143113%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl143044143108%_)))
                                                  (_%tl143046143115%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl143044143108%_))))
                                              (let ((_%expr143118%_
                                                     _%hd143045143113%_))
                                                (if (pair? _%tl143046143115%_)
                                                    (let ((_%hd143047143120%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl143046143115%_)))
                                                          (_%tl143048143122%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl143046143115%_))))
                                                      (if (pair? _%hd143047143120%_)
                                                          (let ((_%hd143049143125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd143047143120%_)))
                        (_%tl143050143127%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd143047143120%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd143049143125%_ 'quote))
                        (if (pair? _%tl143050143127%_)
                            (let ((_%hd143051143130%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl143050143127%_)))
                                  (_%tl143052143132%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl143050143127%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd143051143130%_ '#f))
                                  (if (null? _%tl143052143132%_)
                                      (if (null? _%tl143048143122%_)
                                          (_%K143040143098%_
                                           _%expr143118%_
                                           _%test143111%_)
                                          (_%else143038143062%_))
                                      (_%else143038143062%_))
                                  (_%else143038143062%_)))
                            (_%else143038143062%_))
                        (_%else143038143062%_)))
                  (_%else143038143062%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else143038143062%_))))
                                            (_%else143038143062%_))))
                                    (_%else143038143062%_))
                                (_%else143038143062%_)))
                          (_%else143038143062%_))))))
          (let* ((_%g142952142973%_
                  (lambda (_%g142953142970%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142953142970%_))))
                 (_%g142951143032%_
                  (lambda (_%g142953142976%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142953142976%_))
                        (let ((_%e142957142978%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142953142976%_))))
                          (let ((_%hd142958142981%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142957142978%_)))
                                (_%tl142959142983%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142957142978%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142959142983%_))
                                (let ((_%e142960142986%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142959142983%_))))
                                  (let ((_%hd142961142989%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142960142986%_)))
                                        (_%tl142962142991%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142960142986%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142962142991%_))
                                        (let ((_%e142963142994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142962142991%_))))
                                          (let ((_%hd142964142997%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142963142994%_)))
                                                (_%tl142965142999%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142963142994%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl142965142999%_))
                                                (let ((_%e142966143002%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl142965142999%_))))
                                                  (let ((_%hd142967143005%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142966143002%_)))
                                                        (_%tl142968143007%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142966143002%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl142968143007%_))
                                                        ((lambda (_%L143010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L143011%_
                          _%L143012%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify142950%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self142947%_
                                       _%L143012%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self142947%_
                                             _%L143011%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self142947%_
                                                   _%L143010%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp150182
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self142947%_
                                               _%L143012%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp150182
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self142947%_
                                            _%L143011%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self142947%_
                                                  _%L143010%_))
                                               '()))))))
                 _%hd142967143005%_
                 _%hd142964142997%_
                 _%hd142961142989%_)
                (_%g142952142973%_ _%g142953142976%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g142952142973%_
                                                 _%g142953142976%_))))
                                        (_%g142952142973%_
                                         _%g142953142976%_))))
                                (_%g142952142973%_ _%g142953142976%_))))
                        (_%g142952142973%_ _%g142953142976%_)))))
            (_%g142951143032%_ _%stx142948%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self142895%_ _%stx142896%_)
        (let* ((_%g142898142911%_
                (lambda (_%g142899142908%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142899142908%_))))
               (_%g142897142944%_
                (lambda (_%g142899142914%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142899142914%_))
                      (let ((_%e142901142916%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142899142914%_))))
                        (let ((_%hd142902142919%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142901142916%_)))
                              (_%tl142903142921%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142901142916%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142903142921%_))
                              (let ((_%e142904142924%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142903142921%_))))
                                (let ((_%hd142905142927%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142904142924%_)))
                                      (_%tl142906142929%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142904142924%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl142906142929%_))
                                      ((lambda (_%L142932%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L142932%_)))
                                       _%hd142905142927%_)
                                      (_%g142898142911%_ _%g142899142914%_))))
                              (_%g142898142911%_ _%g142899142914%_))))
                      (_%g142898142911%_ _%g142899142914%_)))))
          (_%g142897142944%_ _%stx142896%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self142827%_ _%stx142828%_)
        (let* ((_%g142830142847%_
                (lambda (_%g142831142844%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142831142844%_))))
               (_%g142829142892%_
                (lambda (_%g142831142850%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142831142850%_))
                      (let ((_%e142834142852%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142831142850%_))))
                        (let ((_%hd142835142855%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142834142852%_)))
                              (_%tl142836142857%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142834142852%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142836142857%_))
                              (let ((_%e142837142860%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142836142857%_))))
                                (let ((_%hd142838142863%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142837142860%_)))
                                      (_%tl142839142865%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142837142860%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142839142865%_))
                                      (let ((_%e142840142868%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142839142865%_))))
                                        (let ((_%hd142841142871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142840142868%_)))
                                              (_%tl142842142873%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142840142868%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142842142873%_))
                                              ((lambda (_%L142876%_
                                                        _%L142877%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L142877%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self142827%_ _%L142876%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142841142871%_
                                               _%hd142838142863%_)
                                              (_%g142830142847%_
                                               _%g142831142850%_))))
                                      (_%g142830142847%_ _%g142831142850%_))))
                              (_%g142830142847%_ _%g142831142850%_))))
                      (_%g142830142847%_ _%g142831142850%_)))))
          (_%g142829142892%_ _%stx142828%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self142638%_ _%stx142639%_)
        (let* ((_%g142641142658%_
                (lambda (_%g142642142655%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142642142655%_))))
               (_%g142640142824%_
                (lambda (_%g142642142661%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142642142661%_))
                      (let ((_%e142645142663%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142642142661%_))))
                        (let ((_%hd142646142666%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142645142663%_)))
                              (_%tl142647142668%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142645142663%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142647142668%_))
                              (let ((_%e142648142671%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142647142668%_))))
                                (let ((_%hd142649142674%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142648142671%_)))
                                      (_%tl142650142676%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142648142671%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142650142676%_))
                                      (let ((_%e142651142679%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142650142676%_))))
                                        (let ((_%hd142652142682%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142651142679%_)))
                                              (_%tl142653142684%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142651142679%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142653142684%_))
                                              ((lambda (_%L142687%_
                                                        _%L142688%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self142638%_ _%L142687%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self142638%_ _%L142688%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp142703%_ ((_%rest142706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L142688%_ (cons _%L142687%_ '())))
                                (_%bind142708%_ '())
                                (_%args142709%_ '()))
               (let* ((_%rest142710142718%_ _%rest142706%_)
                      (_%else142712142726%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind142708%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args142709%_)
                                                 '()))))))
                      (_%K142714142812%_
                       (lambda (_%rest142729%_ _%e142730%_)
                         (let* ((_%__stx149730149731%_ _%e142730%_)
                                (_%g142735142753%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx149730149731%_)))))
                           (let ((_%__kont149732149733%_
                                  (lambda ()
                                    (_%lp142703%_
                                     _%rest142729%_
                                     _%bind142708%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e142730%_))
                                           _%args142709%_))))
                                 (_%__kont149734149735%_
                                  (lambda ()
                                    (_%lp142703%_
                                     _%rest142729%_
                                     _%bind142708%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e142730%_))
                                           _%args142709%_))))
                                 (_%__kont149736149737%_
                                  (lambda ()
                                    (let ((_%tmp142760%_
                                           (let ((__tmp150183
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp150183))))
                                      (_%lp142703%_
                                       _%rest142729%_
                                       (cons (cons _%tmp142760%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e142730%_))
                                                         '()))
                                             _%bind142708%_)
                                       (cons _%tmp142760%_ _%args142709%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx149730149731%_))
                                 (let ((_%e142737142791%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx149730149731%_))))
                                   (let ((_%tl142739142796%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e142737142791%_)))
                                         (_%hd142738142794%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e142737142791%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd142738142794%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd142738142794%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl142739142796%_))
                                                 (let ((_%e142740142799%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl142739142796%_))))
                                                   (let ((_%tl142742142804%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e142740142799%_)))
                                                         (_%hd142741142802%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e142740142799%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl142742142804%_))
                                                         (_%__kont149732149733%_)
                                                         (_%__kont149736149737%_))))
                                                 (_%__kont149736149737%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd142738142794%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl142739142796%_))
                                                     (let ((_%e142746142776%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl142739142796%_))))
                                                       (let ((_%tl142748142781%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e142746142776%_)))
                     (_%hd142747142779%_
                      (let () (declare (not safe)) (##car _%e142746142776%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl142748142781%_))
                     (_%__kont149734149735%_)
                     (_%__kont149736149737%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont149736149737%_))
                                                 (_%__kont149736149737%_)))
                                         (_%__kont149736149737%_))))
                                 (_%__kont149736149737%_)))))))
                 (if (pair? _%rest142710142718%_)
                     (let ((_%hd142715142815%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest142710142718%_)))
                           (_%tl142716142817%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest142710142718%_))))
                       (let* ((_%e142820%_ _%hd142715142815%_)
                              (_%rest142822%_ _%tl142716142817%_))
                         (_%K142714142812%_ _%rest142822%_ _%e142820%_)))
                     (_%else142712142726%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142652142682%_
                                               _%hd142649142674%_)
                                              (_%g142641142658%_
                                               _%g142642142661%_))))
                                      (_%g142641142658%_ _%g142642142661%_))))
                              (_%g142641142658%_ _%g142642142661%_))))
                      (_%g142641142658%_ _%g142642142661%_)))))
          (_%g142640142824%_ _%stx142639%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self142449%_ _%stx142450%_)
        (let* ((_%g142452142469%_
                (lambda (_%g142453142466%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142453142466%_))))
               (_%g142451142635%_
                (lambda (_%g142453142472%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142453142472%_))
                      (let ((_%e142456142474%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142453142472%_))))
                        (let ((_%hd142457142477%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142456142474%_)))
                              (_%tl142458142479%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142456142474%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142458142479%_))
                              (let ((_%e142459142482%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142458142479%_))))
                                (let ((_%hd142460142485%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142459142482%_)))
                                      (_%tl142461142487%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142459142482%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142461142487%_))
                                      (let ((_%e142462142490%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142461142487%_))))
                                        (let ((_%hd142463142493%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142462142490%_)))
                                              (_%tl142464142495%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142462142490%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142464142495%_))
                                              ((lambda (_%L142498%_
                                                        _%L142499%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self142449%_ _%L142498%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self142449%_ _%L142499%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp142514%_ ((_%rest142517%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L142499%_ (cons _%L142498%_ '())))
                                (_%bind142519%_ '())
                                (_%args142520%_ '()))
               (let* ((_%rest142521142529%_ _%rest142517%_)
                      (_%else142523142537%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind142519%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args142520%_)
                                                 '()))))))
                      (_%K142525142623%_
                       (lambda (_%rest142540%_ _%e142541%_)
                         (let* ((_%__stx149776149777%_ _%e142541%_)
                                (_%g142546142564%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx149776149777%_)))))
                           (let ((_%__kont149778149779%_
                                  (lambda ()
                                    (_%lp142514%_
                                     _%rest142540%_
                                     _%bind142519%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e142541%_))
                                           _%args142520%_))))
                                 (_%__kont149780149781%_
                                  (lambda ()
                                    (_%lp142514%_
                                     _%rest142540%_
                                     _%bind142519%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e142541%_))
                                           _%args142520%_))))
                                 (_%__kont149782149783%_
                                  (lambda ()
                                    (let ((_%tmp142571%_
                                           (let ((__tmp150184
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp150184))))
                                      (_%lp142514%_
                                       _%rest142540%_
                                       (cons (cons _%tmp142571%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e142541%_))
                                                         '()))
                                             _%bind142519%_)
                                       (cons _%tmp142571%_ _%args142520%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx149776149777%_))
                                 (let ((_%e142548142602%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx149776149777%_))))
                                   (let ((_%tl142550142607%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e142548142602%_)))
                                         (_%hd142549142605%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e142548142602%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd142549142605%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd142549142605%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl142550142607%_))
                                                 (let ((_%e142551142610%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl142550142607%_))))
                                                   (let ((_%tl142553142615%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e142551142610%_)))
                                                         (_%hd142552142613%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e142551142610%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl142553142615%_))
                                                         (_%__kont149778149779%_)
                                                         (_%__kont149782149783%_))))
                                                 (_%__kont149782149783%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd142549142605%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl142550142607%_))
                                                     (let ((_%e142557142587%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl142550142607%_))))
                                                       (let ((_%tl142559142592%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e142557142587%_)))
                     (_%hd142558142590%_
                      (let () (declare (not safe)) (##car _%e142557142587%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl142559142592%_))
                     (_%__kont149780149781%_)
                     (_%__kont149782149783%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont149782149783%_))
                                                 (_%__kont149782149783%_)))
                                         (_%__kont149782149783%_))))
                                 (_%__kont149782149783%_)))))))
                 (if (pair? _%rest142521142529%_)
                     (let ((_%hd142526142626%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest142521142529%_)))
                           (_%tl142527142628%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest142521142529%_))))
                       (let* ((_%e142631%_ _%hd142526142626%_)
                              (_%rest142633%_ _%tl142527142628%_))
                         (_%K142525142623%_ _%rest142633%_ _%e142631%_)))
                     (_%else142523142537%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142463142493%_
                                               _%hd142460142485%_)
                                              (_%g142452142469%_
                                               _%g142453142472%_))))
                                      (_%g142452142469%_ _%g142453142472%_))))
                              (_%g142452142469%_ _%g142453142472%_))))
                      (_%g142452142469%_ _%g142453142472%_)))))
          (_%g142451142635%_ _%stx142450%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self142365%_ _%stx142366%_)
        (let* ((_%g142368142389%_
                (lambda (_%g142369142386%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142369142386%_))))
               (_%g142367142446%_
                (lambda (_%g142369142392%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142369142392%_))
                      (let ((_%e142373142394%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142369142392%_))))
                        (let ((_%hd142374142397%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142373142394%_)))
                              (_%tl142375142399%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142373142394%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142375142399%_))
                              (let ((_%e142376142402%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142375142399%_))))
                                (let ((_%hd142377142405%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142376142402%_)))
                                      (_%tl142378142407%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142376142402%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142378142407%_))
                                      (let ((_%e142379142410%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142378142407%_))))
                                        (let ((_%hd142380142413%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142379142410%_)))
                                              (_%tl142381142415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142379142410%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142381142415%_))
                                              (let ((_%e142382142418%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142381142415%_))))
                                                (let ((_%hd142383142421%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142382142418%_)))
                                                      (_%tl142384142423%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142382142418%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142384142423%_))
                                                      ((lambda (_%L142426%_
                                                                _%L142427%_
                                                                _%L142428%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self142365%_ _%L142426%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self142365%_
                                      _%L142427%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self142365%_
                                            _%L142428%_))
                                         (cons ''#f '()))))))
               _%hd142383142421%_
               _%hd142380142413%_
               _%hd142377142405%_)
              (_%g142368142389%_ _%g142369142392%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142368142389%_
                                               _%g142369142392%_))))
                                      (_%g142368142389%_ _%g142369142392%_))))
                              (_%g142368142389%_ _%g142369142392%_))))
                      (_%g142368142389%_ _%g142369142392%_)))))
          (_%g142367142446%_ _%stx142366%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self142265%_ _%stx142266%_)
        (let* ((_%g142268142293%_
                (lambda (_%g142269142290%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142269142290%_))))
               (_%g142267142362%_
                (lambda (_%g142269142296%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142269142296%_))
                      (let ((_%e142274142298%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142269142296%_))))
                        (let ((_%hd142275142301%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142274142298%_)))
                              (_%tl142276142303%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142274142298%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142276142303%_))
                              (let ((_%e142277142306%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142276142303%_))))
                                (let ((_%hd142278142309%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142277142306%_)))
                                      (_%tl142279142311%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142277142306%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142279142311%_))
                                      (let ((_%e142280142314%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142279142311%_))))
                                        (let ((_%hd142281142317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142280142314%_)))
                                              (_%tl142282142319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142280142314%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142282142319%_))
                                              (let ((_%e142283142322%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142282142319%_))))
                                                (let ((_%hd142284142325%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142283142322%_)))
                                                      (_%tl142285142327%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142283142322%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl142285142327%_))
                                                      (let ((_%e142286142330%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl142285142327%_))))
                (let ((_%hd142287142333%_
                       (let () (declare (not safe)) (##car _%e142286142330%_)))
                      (_%tl142288142335%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e142286142330%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142288142335%_))
                      ((lambda (_%L142338%_
                                _%L142339%_
                                _%L142340%_
                                _%L142341%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self142265%_
                                        _%L142339%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self142265%_
                                              _%L142338%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self142265%_
                                                    _%L142340%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self142265%_
                                                          _%L142341%_))
                                                       (cons ''#f '())))))))
                       _%hd142287142333%_
                       _%hd142284142325%_
                       _%hd142281142317%_
                       _%hd142278142309%_)
                      (_%g142268142293%_ _%g142269142296%_))))
              (_%g142268142293%_ _%g142269142296%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142268142293%_
                                               _%g142269142296%_))))
                                      (_%g142268142293%_ _%g142269142296%_))))
                              (_%g142268142293%_ _%g142269142296%_))))
                      (_%g142268142293%_ _%g142269142296%_)))))
          (_%g142267142362%_ _%stx142266%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self142181%_ _%stx142182%_)
        (let* ((_%g142184142205%_
                (lambda (_%g142185142202%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142185142202%_))))
               (_%g142183142262%_
                (lambda (_%g142185142208%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142185142208%_))
                      (let ((_%e142189142210%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142185142208%_))))
                        (let ((_%hd142190142213%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142189142210%_)))
                              (_%tl142191142215%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142189142210%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142191142215%_))
                              (let ((_%e142192142218%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142191142215%_))))
                                (let ((_%hd142193142221%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142192142218%_)))
                                      (_%tl142194142223%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142192142218%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142194142223%_))
                                      (let ((_%e142195142226%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142194142223%_))))
                                        (let ((_%hd142196142229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142195142226%_)))
                                              (_%tl142197142231%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142195142226%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142197142231%_))
                                              (let ((_%e142198142234%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142197142231%_))))
                                                (let ((_%hd142199142237%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142198142234%_)))
                                                      (_%tl142200142239%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142198142234%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142200142239%_))
                                                      ((lambda (_%L142242%_
                                                                _%L142243%_
                                                                _%L142244%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self142181%_ _%L142242%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self142181%_
                                      _%L142243%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self142181%_
                                            _%L142244%_))
                                         (cons ''#f '()))))))
               _%hd142199142237%_
               _%hd142196142229%_
               _%hd142193142221%_)
              (_%g142184142205%_ _%g142185142208%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142184142205%_
                                               _%g142185142208%_))))
                                      (_%g142184142205%_ _%g142185142208%_))))
                              (_%g142184142205%_ _%g142185142208%_))))
                      (_%g142184142205%_ _%g142185142208%_)))))
          (_%g142183142262%_ _%stx142182%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self142081%_ _%stx142082%_)
        (let* ((_%g142084142109%_
                (lambda (_%g142085142106%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142085142106%_))))
               (_%g142083142178%_
                (lambda (_%g142085142112%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142085142112%_))
                      (let ((_%e142090142114%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142085142112%_))))
                        (let ((_%hd142091142117%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142090142114%_)))
                              (_%tl142092142119%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142090142114%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142092142119%_))
                              (let ((_%e142093142122%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142092142119%_))))
                                (let ((_%hd142094142125%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142093142122%_)))
                                      (_%tl142095142127%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142093142122%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142095142127%_))
                                      (let ((_%e142096142130%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142095142127%_))))
                                        (let ((_%hd142097142133%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142096142130%_)))
                                              (_%tl142098142135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142096142130%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142098142135%_))
                                              (let ((_%e142099142138%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142098142135%_))))
                                                (let ((_%hd142100142141%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142099142138%_)))
                                                      (_%tl142101142143%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142099142138%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl142101142143%_))
                                                      (let ((_%e142102142146%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl142101142143%_))))
                (let ((_%hd142103142149%_
                       (let () (declare (not safe)) (##car _%e142102142146%_)))
                      (_%tl142104142151%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e142102142146%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142104142151%_))
                      ((lambda (_%L142154%_
                                _%L142155%_
                                _%L142156%_
                                _%L142157%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self142081%_
                                        _%L142155%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self142081%_
                                              _%L142154%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self142081%_
                                                    _%L142156%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self142081%_
                                                          _%L142157%_))
                                                       (cons ''#f '())))))))
                       _%hd142103142149%_
                       _%hd142100142141%_
                       _%hd142097142133%_
                       _%hd142094142125%_)
                      (_%g142084142109%_ _%g142085142112%_))))
              (_%g142084142109%_ _%g142085142112%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142084142109%_
                                               _%g142085142112%_))))
                                      (_%g142084142109%_ _%g142085142112%_))))
                              (_%g142084142109%_ _%g142085142112%_))))
                      (_%g142084142109%_ _%g142085142112%_)))))
          (_%g142083142178%_ _%stx142082%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self141876%_ _%stx141877%_)
        (let* ((_%g141879141900%_
                (lambda (_%g141880141897%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141880141897%_))))
               (_%g141878142078%_
                (lambda (_%g141880141903%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141880141903%_))
                      (let ((_%e141884141905%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141880141903%_))))
                        (let ((_%hd141885141908%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141884141905%_)))
                              (_%tl141886141910%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141884141905%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141886141910%_))
                              (let ((_%e141887141913%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141886141910%_))))
                                (let ((_%hd141888141916%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141887141913%_)))
                                      (_%tl141889141918%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141887141913%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141889141918%_))
                                      (let ((_%e141890141921%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141889141918%_))))
                                        (let ((_%hd141891141924%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141890141921%_)))
                                              (_%tl141892141926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141890141921%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141892141926%_))
                                              (let ((_%e141893141929%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141892141926%_))))
                                                (let ((_%hd141894141932%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141893141929%_)))
                                                      (_%tl141895141934%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141893141929%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141895141934%_))
                                                      ((lambda (_%L141937%_
                                                                _%L141938%_
                                                                _%L141939%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self141876%_
                                    _%L141937%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self141876%_
                                          _%L141938%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp141957%_ ((_%rest141960%_
                                         (cons _%L141938%_
                                               (cons _%L141937%_ '())))
                                        (_%bind141962%_ '())
                                        (_%args141963%_ '()))
                       (let* ((_%rest141964141972%_ _%rest141960%_)
                              (_%else141966141980%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind141962%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp150185
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp150185 _%args141963%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K141968142066%_
                               (lambda (_%rest141983%_ _%e141984%_)
                                 (let* ((_%__stx149822149823%_ _%e141984%_)
                                        (_%g141989142007%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx149822149823%_)))))
                                   (let ((_%__kont149824149825%_
                                          (lambda ()
                                            (_%lp141957%_
                                             _%rest141983%_
                                             _%bind141962%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e141984%_))
                                                   _%args141963%_))))
                                         (_%__kont149826149827%_
                                          (lambda ()
                                            (_%lp141957%_
                                             _%rest141983%_
                                             _%bind141962%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e141984%_))
                                                   _%args141963%_))))
                                         (_%__kont149828149829%_
                                          (lambda ()
                                            (let ((_%tmp142014%_
                                                   (let ((__tmp150186
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp150186))))
                                              (_%lp141957%_
                                               _%rest141983%_
                                               (cons (cons _%tmp142014%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e141984%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind141962%_)
                                               (cons _%tmp142014%_
                                                     _%args141963%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx149822149823%_))
                                         (let ((_%e141991142045%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx149822149823%_))))
                                           (let ((_%tl141993142050%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e141991142045%_)))
                                                 (_%hd141992142048%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e141991142045%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd141992142048%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd141992142048%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl141993142050%_))
                                                         (let ((_%e141994142053%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl141993142050%_))))
                   (let ((_%tl141996142058%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e141994142053%_)))
                         (_%hd141995142056%_
                          (let ()
                            (declare (not safe))
                            (##car _%e141994142053%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl141996142058%_))
                         (_%__kont149824149825%_)
                         (_%__kont149828149829%_))))
                 (_%__kont149828149829%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd141992142048%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl141993142050%_))
                     (let ((_%e142000142030%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl141993142050%_))))
                       (let ((_%tl142002142035%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142000142030%_)))
                             (_%hd142001142033%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142000142030%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142002142035%_))
                             (_%__kont149826149827%_)
                             (_%__kont149828149829%_))))
                     (_%__kont149828149829%_))
                 (_%__kont149828149829%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont149828149829%_))))
                                         (_%__kont149828149829%_)))))))
                         (if (pair? _%rest141964141972%_)
                             (let ((_%hd141969142069%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest141964141972%_)))
                                   (_%tl141970142071%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest141964141972%_))))
                               (let* ((_%e142074%_ _%hd141969142069%_)
                                      (_%rest142076%_ _%tl141970142071%_))
                                 (_%K141968142066%_
                                  _%rest142076%_
                                  _%e142074%_)))
                             (_%else141966141980%_))))))
               _%hd141894141932%_
               _%hd141891141924%_
               _%hd141888141916%_)
              (_%g141879141900%_ _%g141880141903%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141879141900%_
                                               _%g141880141903%_))))
                                      (_%g141879141900%_ _%g141880141903%_))))
                              (_%g141879141900%_ _%g141880141903%_))))
                      (_%g141879141900%_ _%g141880141903%_)))))
          (_%g141878142078%_ _%stx141877%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self141655%_ _%stx141656%_)
        (let* ((_%g141658141683%_
                (lambda (_%g141659141680%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141659141680%_))))
               (_%g141657141873%_
                (lambda (_%g141659141686%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141659141686%_))
                      (let ((_%e141664141688%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141659141686%_))))
                        (let ((_%hd141665141691%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141664141688%_)))
                              (_%tl141666141693%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141664141688%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141666141693%_))
                              (let ((_%e141667141696%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141666141693%_))))
                                (let ((_%hd141668141699%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141667141696%_)))
                                      (_%tl141669141701%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141667141696%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141669141701%_))
                                      (let ((_%e141670141704%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141669141701%_))))
                                        (let ((_%hd141671141707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141670141704%_)))
                                              (_%tl141672141709%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141670141704%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141672141709%_))
                                              (let ((_%e141673141712%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141672141709%_))))
                                                (let ((_%hd141674141715%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141673141712%_)))
                                                      (_%tl141675141717%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141673141712%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl141675141717%_))
                                                      (let ((_%e141676141720%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl141675141717%_))))
                (let ((_%hd141677141723%_
                       (let () (declare (not safe)) (##car _%e141676141720%_)))
                      (_%tl141678141725%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e141676141720%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141678141725%_))
                      ((lambda (_%L141728%_
                                _%L141729%_
                                _%L141730%_
                                _%L141731%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self141655%_
                                            _%L141729%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self141655%_
                                                  _%L141728%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self141655%_
                                                        _%L141730%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp141752%_ ((_%rest141755%_
                                                 (cons _%L141730%_
                                                       (cons _%L141728%_
                                                             (cons _%L141729%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind141757%_ '())
                                                (_%args141758%_ '()))
                               (let* ((_%rest141759141767%_ _%rest141755%_)
                                      (_%else141761141775%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind141757%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp150187 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp150187 _%args141758%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K141763141861%_
                                       (lambda (_%rest141778%_ _%e141779%_)
                                         (let* ((_%__stx149868149869%_
                                                 _%e141779%_)
                                                (_%g141784141802%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx149868149869%_)))))
                                           (let ((_%__kont149870149871%_
                                                  (lambda ()
                                                    (_%lp141752%_
                                                     _%rest141778%_
                                                     _%bind141757%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e141779%_))
                                                           _%args141758%_))))
                                                 (_%__kont149872149873%_
                                                  (lambda ()
                                                    (_%lp141752%_
                                                     _%rest141778%_
                                                     _%bind141757%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e141779%_))
                                                           _%args141758%_))))
                                                 (_%__kont149874149875%_
                                                  (lambda ()
                                                    (let ((_%tmp141809%_
                                                           (let ((__tmp150188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp150188))))
              (_%lp141752%_
               _%rest141778%_
               (cons (cons _%tmp141809%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e141779%_))
                                 '()))
                     _%bind141757%_)
               (cons _%tmp141809%_ _%args141758%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx149868149869%_))
                                                 (let ((_%e141786141840%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx149868149869%_))))
                                                   (let ((_%tl141788141845%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e141786141840%_)))
                                                         (_%hd141787141843%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e141786141840%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd141787141843%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd141787141843%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl141788141845%_))
                         (let ((_%e141789141848%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl141788141845%_))))
                           (let ((_%tl141791141853%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e141789141848%_)))
                                 (_%hd141790141851%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e141789141848%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl141791141853%_))
                                 (_%__kont149870149871%_)
                                 (_%__kont149874149875%_))))
                         (_%__kont149874149875%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd141787141843%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl141788141845%_))
                             (let ((_%e141795141825%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl141788141845%_))))
                               (let ((_%tl141797141830%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e141795141825%_)))
                                     (_%hd141796141828%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e141795141825%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl141797141830%_))
                                     (_%__kont149872149873%_)
                                     (_%__kont149874149875%_))))
                             (_%__kont149874149875%_))
                         (_%__kont149874149875%_)))
                 (_%__kont149874149875%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont149874149875%_)))))))
                                 (if (pair? _%rest141759141767%_)
                                     (let ((_%hd141764141864%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest141759141767%_)))
                                           (_%tl141765141866%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest141759141767%_))))
                                       (let* ((_%e141869%_ _%hd141764141864%_)
                                              (_%rest141871%_
                                               _%tl141765141866%_))
                                         (_%K141763141861%_
                                          _%rest141871%_
                                          _%e141869%_)))
                                     (_%else141761141775%_))))))
                       _%hd141677141723%_
                       _%hd141674141715%_
                       _%hd141671141707%_
                       _%hd141668141699%_)
                      (_%g141658141683%_ _%g141659141686%_))))
              (_%g141658141683%_ _%g141659141686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141658141683%_
                                               _%g141659141686%_))))
                                      (_%g141658141683%_ _%g141659141686%_))))
                              (_%g141658141683%_ _%g141659141686%_))))
                      (_%g141658141683%_ _%g141659141686%_)))))
          (_%g141657141873%_ _%stx141656%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self141494%_ _%stx141495%_)
        (letrec ((_%import-set-template141497%_
                  (lambda (_%in141600%_ _%phi141601%_)
                    (let ((_%iphi141603%_
                           (fx+ _%phi141601%_
                                (##direct-structure-ref
                                 _%in141600%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports141604%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in141600%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp141606%_ ((_%rest141608%_ _%imports141604%_)
                                         (_%r141609%_ '()))
                        (let* ((_%rest141610141618%_ _%rest141608%_)
                               (_%else141612141626%_ (lambda () _%r141609%_))
                               (_%K141614141643%_
                                (lambda (_%rest141629%_ _%in141630%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in141630%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi141603%_))
                                          (_%lp141606%_
                                           _%rest141629%_
                                           (cons _%in141630%_ _%r141609%_))
                                          (_%lp141606%_
                                           _%rest141629%_
                                           _%r141609%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in141630%_
                                             'gx#module-import::t))
                                          (let ((_%iphi141634%_
                                                 (fx+ _%phi141601%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in141630%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi141634%_))
                                                (_%lp141606%_
                                                 _%rest141629%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in141630%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r141609%_))
                                                (_%lp141606%_
                                                 _%rest141629%_
                                                 _%r141609%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in141630%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi141637%_
                                                     (fx+ _%iphi141603%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in141630%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi141637%_))
                                                    (_%lp141606%_
                                                     _%rest141629%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in141630%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r141609%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi141637%_))
                                                        (_%lp141606%_
                                                         _%rest141629%_
                                                         (let ((__tmp150189
                                                                (_%import-set-template141497%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in141630%_
                         _%iphi141603%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r141609%_ __tmp150189)))
                (_%lp141606%_ _%rest141629%_ _%r141609%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp141606%_
                                               _%rest141629%_
                                               _%r141609%_)))))))
                          (if (pair? _%rest141610141618%_)
                              (let ((_%hd141615141646%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest141610141618%_)))
                                    (_%tl141616141648%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest141610141618%_))))
                                (let* ((_%in141651%_ _%hd141615141646%_)
                                       (_%rest141653%_ _%tl141616141648%_))
                                  (_%K141614141643%_
                                   _%rest141653%_
                                   _%in141651%_)))
                              (_%else141612141626%_))))))))
          (let* ((_%g141499141509%_
                  (lambda (_%g141500141506%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141500141506%_))))
                 (_%g141498141597%_
                  (lambda (_%g141500141512%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141500141512%_))
                        (let ((_%e141502141514%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141500141512%_))))
                          (let ((_%hd141503141517%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141502141514%_)))
                                (_%tl141504141519%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141502141514%_))))
                            ((lambda (_%L141522%_)
                               (let ((_%ht141533%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp141535%_ ((_%rest141537%_
                                                     _%L141522%_)
                                                    (_%loads141538%_ '()))
                                   (letrec ((_%K141540%_
                                             (lambda (_%ctx141590%_
                                                      _%rest141591%_)
                                               (let ((_%id141593%_
                                                      (##structure-ref
                                                       _%ctx141590%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht141533%_
                                                        _%id141593%_))
                                                     (_%lp141535%_
                                                      _%rest141591%_
                                                      _%loads141538%_)
                                                     (let ((_%rt141595%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id141593%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht141533%_
                                                          _%id141593%_
                                                          _%rt141595%_))
                                                       (_%lp141535%_
                                                        _%rest141591%_
                                                        (cons _%rt141595%_
                                                              _%loads141538%_))))))))
                                     (let* ((_%rest141541141549%_
                                             _%rest141537%_)
                                            (_%else141543141561%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp150191
                                                            (lambda (_%g141556141558%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g141556141558%_)))
                   (__tmp150190 (reverse _%loads141538%_)))
               (declare (not safe))
               (##map __tmp150191 __tmp150190)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K141545141578%_
                                             (lambda (_%rest141564%_
                                                      _%in141565%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in141565%_
                                                      'gx#module-context::t))
                                                   (_%K141540%_
                                                    _%in141565%_
                                                    _%rest141564%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in141565%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in141565%_
                               '3
                               '#f
                               '#f)))
                   (_%K141540%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in141565%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest141564%_)
                   (_%lp141535%_ _%rest141564%_ _%loads141538%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in141565%_
                      'gx#import-set::t))
                   (let ((_%phi141570%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in141565%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi141570%_)
                         (_%K141540%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in141565%_
                             '1
                             '#f
                             '#f))
                          _%rest141564%_)
                         (if (fxpositive? _%phi141570%_)
                             (let ((_%deps141574%_
                                    (_%import-set-template141497%_
                                     _%in141565%_
                                     '0)))
                               (_%lp141535%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest141564%_
                                   _%deps141574%_))
                                _%loads141538%_))
                             (_%lp141535%_ _%rest141564%_ _%loads141538%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx141495%_
                      _%in141565%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest141541141549%_)
                                           (let ((_%hd141546141581%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest141541141549%_)))
                                                 (_%tl141547141583%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest141541141549%_))))
                                             (let* ((_%in141586%_
                                                     _%hd141546141581%_)
                                                    (_%rest141588%_
                                                     _%tl141547141583%_))
                                               (_%K141545141578%_
                                                _%rest141588%_
                                                _%in141586%_)))
                                           (_%else141543141561%_)))))))
                             _%tl141504141519%_)))
                        (_%g141499141509%_ _%g141500141512%_)))))
            (_%g141498141597%_ _%stx141495%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self141307%_ _%stx141308%_)
        (letrec ((_%add-lift!141310%_
                  (lambda (_%expr141492%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr141492%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote141311%_
                  (lambda (_%id141489%_ _%marks141490%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id141489%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks141490%_
                                                        '()))))))))
                 (_%generate-simple141312%_
                  (lambda (_%stxq141484%_)
                    (let ((_%gid141486%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid141487%_
                           (gxc#generate-runtime-identifier _%stxq141484%_)))
                      (_%add-lift!141310%_
                       (cons 'define
                             (cons _%gid141486%_
                                   (cons (_%generate-syntax-quote141311%_
                                          _%qid141487%_
                                          ''())
                                         '()))))
                      (let ((__tmp150192
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp150192 _%stxq141484%_ _%gid141486%_))
                      _%gid141486%_)))
                 (_%generate-serialized141313%_
                  (lambda (_%stxq141474%_ _%marks141475%_)
                    (let* ((_%mark-refs141477%_
                            (map _%generate-mark141314%_ _%marks141475%_))
                           (_%gid141479%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid141481%_
                            (gxc#generate-runtime-identifier _%stxq141474%_)))
                      (_%add-lift!141310%_
                       (cons 'define
                             (cons _%gid141479%_
                                   (cons (_%generate-syntax-quote141311%_
                                          _%qid141481%_
                                          (cons 'list _%mark-refs141477%_))
                                         '()))))
                      (let ((__tmp150193
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp150193 _%stxq141474%_ _%gid141479%_))
                      _%gid141479%_)))
                 (_%generate-mark141314%_
                  (lambda (_%mark141459%_)
                    (let ((_%$e141461%_
                           (let ((__tmp150194
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp150194 _%mark141459%_))))
                      (if _%$e141461%_
                          _%$e141461%_
                          (let* ((_%gid141465%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr141467%_
                                  (_%serialize-mark141315%_ _%mark141459%_))
                                 (_%ctx141469%_
                                  (let ((__tmp150195
                                         (##structure-ref
                                          _%mark141459%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp150195)))
                                 (_%ctx-ref141471%_
                                  (if (eq? _%ctx141469%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref141316%_
                                                               _%ctx141469%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp150196
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp150196
                               _%mark141459%_
                               _%gid141465%_))
                            (_%add-lift!141310%_
                             (cons 'define
                                   (cons _%gid141465%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr141467%_ '()))
                   (cons _%ctx-ref141471%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid141465%_)))))
                 (_%serialize-mark141315%_
                  (lambda (_%mark141406%_)
                    (letrec ((_%quote-e141408%_
                              (lambda (_%sym141457%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym141457%_))
                                    _%sym141457%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym141457%_))))))
                      (let* ((_%mark141409141418%_ _%mark141406%_)
                             (_%E141411141422%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark141409141418%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K141412141434%_
                              (lambda (_%trace141425%_
                                       _%phi141426%_
                                       _%ctx141427%_
                                       _%subst141428%_)
                                (let ((_%subs141430%_
                                       (if _%subst141428%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst141428%_))
                                           '())))
                                  (cons _%phi141426%_
                                        (map (lambda (_%pair141432%_)
                                               (cons (_%quote-e141408%_
                                                      (car _%pair141432%_))
                                                     (_%quote-e141408%_
                                                      (cdr _%pair141432%_))))
                                             _%subs141430%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark141409141418%_
                               'gx#expander-mark::t))
                            (let* ((_%e141413141437%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark141409141418%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst141440%_ _%e141413141437%_)
                                   (_%e141414141442%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark141409141418%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx141445%_ _%e141414141442%_)
                                   (_%e141415141447%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark141409141418%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi141450%_ _%e141415141447%_)
                                   (_%e141416141452%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark141409141418%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace141455%_ _%e141416141452%_))
                              (_%K141412141434%_
                               _%trace141455%_
                               _%phi141450%_
                               _%ctx141445%_
                               _%subst141440%_))
                            (_%E141411141422%_))))))
                 (_%context-ref141316%_
                  (lambda (_%ctx141393%_)
                    (if (let ((__tmp150197
                               (##structure-ref
                                _%ctx141393%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp150197
                           'gx#module-context::t))
                        (let ((_%ctx-ref141395%_
                               (_%context-ref-nested141318%_ _%ctx141393%_))
                              (_%ctx-origin141396%_
                               (_%context-ref-origin141317%_ _%ctx141393%_))
                              (_%origin141397%_
                               (_%context-ref-origin141317%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin141397%_ _%ctx-origin141396%_)
                              (let ((_%ref141399%_
                                     (_%context-ref-nested141318%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp141401%_ ((_%ref141403%_
                                                    (cdr _%ref141399%_))
                                                   (_%ctx-ref141404%_
                                                    (cdr _%ctx-ref141395%_)))
                                  (if (and (pair? _%ref141403%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref141403%_))
                                                (car _%ctx-ref141404%_)))
                                      (_%lp141401%_
                                       (cdr _%ref141403%_)
                                       (cdr _%ctx-ref141404%_))
                                      (cons '#f _%ctx-ref141404%_))))
                              _%ctx-ref141395%_))
                        (let ((__tmp150198
                               (##structure-ref
                                _%ctx141393%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp150198)))))
                 (_%context-ref-origin141317%_
                  (lambda (_%ctx141385%_)
                    (let _%lp141387%_ ((_%ctx141389%_ _%ctx141385%_))
                      (let ((_%super141391%_
                             (##structure-ref
                              _%ctx141389%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super141391%_
                               'gx#module-context::t))
                            (_%lp141387%_ _%super141391%_)
                            _%ctx141389%_)))))
                 (_%context-ref-nested141318%_
                  (lambda (_%ctx141376%_)
                    (let _%lp141378%_ ((_%ctx141380%_ _%ctx141376%_)
                                       (_%r141381%_ '()))
                      (let ((_%super141383%_
                             (##structure-ref
                              _%ctx141380%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super141383%_
                               'gx#module-context::t))
                            (_%lp141378%_
                             _%super141383%_
                             (cons (car (##structure-ref
                                         _%ctx141380%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r141381%_))
                            (cons (let ((__tmp150199
                                         (##structure-ref
                                          _%ctx141380%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp150199))
                                  _%r141381%_)))))))
          (let* ((_%g141320141333%_
                  (lambda (_%g141321141330%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141321141330%_))))
                 (_%g141319141373%_
                  (lambda (_%g141321141336%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141321141336%_))
                        (let ((_%e141323141338%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141321141336%_))))
                          (let ((_%hd141324141341%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141323141338%_)))
                                (_%tl141325141343%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141323141338%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141325141343%_))
                                (let ((_%e141326141346%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141325141343%_))))
                                  (let ((_%hd141327141349%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141326141346%_)))
                                        (_%tl141328141351%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141326141346%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl141328141351%_))
                                        ((lambda (_%L141354%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L141354%_))
                                               (let ((_%$e141367%_
                                                      (let ((__tmp150200
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp150200 _%L141354%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e141367%_
                                                     _%$e141367%_
                                                     (let ((_%marks141371%_
                                                            (##direct-structure-ref
                                                             _%L141354%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks141371%_)
                                                           (_%generate-simple141312%_
                                                            _%L141354%_)
                                                           (_%generate-serialized141313%_
                                                            _%L141354%_
                                                            _%marks141371%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L141354%_))))
                                         _%hd141327141349%_)
                                        (_%g141320141333%_
                                         _%g141321141336%_))))
                                (_%g141320141333%_ _%g141321141336%_))))
                        (_%g141320141333%_ _%g141321141336%_)))))
            (_%g141319141373%_ _%stx141308%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self141239%_ _%stx141240%_)
        (let* ((_%g141242141259%_
                (lambda (_%g141243141256%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141243141256%_))))
               (_%g141241141304%_
                (lambda (_%g141243141262%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141243141262%_))
                      (let ((_%e141246141264%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141243141262%_))))
                        (let ((_%hd141247141267%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141246141264%_)))
                              (_%tl141248141269%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141246141264%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141248141269%_))
                              (let ((_%e141249141272%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141248141269%_))))
                                (let ((_%hd141250141275%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141249141272%_)))
                                      (_%tl141251141277%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141249141272%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141251141277%_))
                                      (let ((_%e141252141280%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141251141277%_))))
                                        (let ((_%hd141253141283%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141252141280%_)))
                                              (_%tl141254141285%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141252141280%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141254141285%_))
                                              ((lambda (_%L141288%_
                                                        _%L141289%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L141289%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self141239%_ _%L141288%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd141253141283%_
                                               _%hd141250141275%_)
                                              (_%g141242141259%_
                                               _%g141243141262%_))))
                                      (_%g141242141259%_ _%g141243141262%_))))
                              (_%g141242141259%_ _%g141243141262%_))))
                      (_%g141242141259%_ _%g141243141262%_)))))
          (_%g141241141304%_ _%stx141240%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self141188%_ _%stx141189%_)
        (let* ((_%g141191141201%_
                (lambda (_%g141192141198%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141192141198%_))))
               (_%g141190141236%_
                (lambda (_%g141192141204%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141192141204%_))
                      (let ((_%e141194141206%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141192141204%_))))
                        (let ((_%hd141195141209%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141194141206%_)))
                              (_%tl141196141211%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141194141206%_))))
                          ((lambda (_%L141214%_)
                             (let* ((_%c-body141228%_
                                     (map (lambda (_%g141223141225%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self141188%_
                                               _%g141223141225%_)))
                                          _%L141214%_))
                                    (_%c-body141233%_
                                     (let ((__tmp150201
                                            (lambda (_%$obj141230%_)
                                              (not (eq? _%$obj141230%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp150201
                                        _%c-body141228%_))))
                               (cons '%#begin _%c-body141233%_)))
                           _%tl141196141211%_)))
                      (_%g141191141201%_ _%g141192141204%_)))))
          (_%g141190141236%_ _%stx141189%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self141093%_ _%stx141094%_)
        (let* ((_%g141096141106%_
                (lambda (_%g141097141103%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141097141103%_))))
               (_%g141095141185%_
                (lambda (_%g141097141109%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141097141109%_))
                      (let ((_%e141099141111%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141097141109%_))))
                        (let ((_%hd141100141114%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141099141111%_)))
                              (_%tl141101141116%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141099141111%_))))
                          ((lambda (_%L141119%_)
                             (let* ((_%phi141129%_
                                     (let ((__tmp150202
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp150202 '1)))
                                    (_%block141131%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self141093%_ 'state))
                                      _%phi141129%_))
                                    (_%compiled141134%_
                                     (let ((__tmp150203
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self141093%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L141119%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp150203
                                        gx#current-expander-phi
                                        _%phi141129%_)))
                                    (_%g141137141147%_
                                     (lambda (_%g141138141144%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g141138141144%_))))
                                    (_%g141136141182%_
                                     (lambda (_%g141138141150%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g141138141150%_))
                                           (let ((_%e141140141152%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g141138141150%_))))
                                             (let ((_%hd141141141155%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e141140141152%_)))
                                                   (_%tl141142141157%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e141140141152%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd141141141155%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd141141141155%_))
                                                       ((lambda (_%L141160%_)
                                                          (let ((_%c-body141177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj141174%_)
                                   (not (eq? _%$obj141174%_ '#!void)))
                                 _%L141160%_)))
                    (if _%block141131%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block141131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body141177%_))
                        (if (null? _%c-body141177%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body141177%_)))))
                _%tl141142141157%_)
               (_%g141137141147%_ _%g141138141150%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g141137141147%_
                                                    _%g141138141150%_))))
                                           (_%g141137141147%_
                                            _%g141138141150%_)))))
                               (_%g141136141182%_ _%compiled141134%_)))
                           _%tl141101141116%_)))
                      (_%g141096141106%_ _%g141097141109%_)))))
          (_%g141095141185%_ _%stx141094%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self141024%_ _%stx141025%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self141024%_ 'state)))
        (let* ((_%g141027141041%_
                (lambda (_%g141028141038%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141028141038%_))))
               (_%g141026141090%_
                (lambda (_%g141028141044%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141028141044%_))
                      (let ((_%e141031141046%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141028141044%_))))
                        (let ((_%hd141032141049%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141031141046%_)))
                              (_%tl141033141051%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141031141046%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141033141051%_))
                              (let ((_%e141034141054%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141033141051%_))))
                                (let ((_%hd141035141057%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141034141054%_)))
                                      (_%tl141036141059%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141034141054%_))))
                                  ((lambda (_%L141062%_ _%L141063%_)
                                     (let ((_%key141076%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L141063%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key141076%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx141025%_
                                              _%L141063%_
                                              _%key141076%_)))
                                       (let* ((_%ctx141078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L141063%_)))
                                              (_%code141081%_
                                               (let ((__tmp150204
                                                      (lambda ()
                                                        (let ((__tmp150205
                                                               (##structure-ref
                                                                _%ctx141078%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self141024%_
                                                           __tmp150205)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp150204
                                                  gx#current-expander-context
                                                  _%ctx141078%_)))
                                              (_%rt141083%_
                                               (let ((__tmp150206
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp150206
                                                  _%ctx141078%_)))
                                              (_%loader141085%_
                                               (if _%rt141083%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt141083%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid141087%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L141063%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self141024%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid141087%_
                                                     (cons _%code141081%_
                                                           _%loader141085%_))))))
                                   _%tl141036141059%_
                                   _%hd141035141057%_)))
                              (_%g141027141041%_ _%g141028141044%_))))
                      (_%g141027141041%_ _%g141028141044%_)))))
          (_%g141026141090%_ _%stx141025%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx141011%_ _%context-chain141012%_)
        (let _%lp141014%_ ((_%ctx141016%_ _%ctx141011%_) (_%path141017%_ '()))
          (let ((_%super141019%_
                 (##structure-ref _%ctx141016%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super141019%_ _%context-chain141012%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx141016%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path141017%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super141019%_
                       'gx#module-context::t))
                    (_%lp141014%_
                     _%super141019%_
                     (cons (car (##structure-ref
                                 _%ctx141016%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path141017%_))
                    (cons (let ((__tmp150207
                                 (##structure-ref
                                  _%ctx141016%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp150207))
                          _%path141017%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp141004%_ ((_%ctx141006%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r141007%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx141006%_ 'gx#module-context::t))
              (_%lp141004%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx141006%_ '3 '#f '#f))
               (cons _%ctx141006%_ _%r141007%_))
              _%r141007%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self140767%_ _%stx140768%_)
        (letrec* ((_%context-chain140770%_ (gxc#current-context-chain))
                  (_%make-import-spec140771%_
                   (lambda (_%in140940%_)
                     (let* ((_%in140941140953%_ _%in140940%_)
                            (_%E140943140957%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in140941140953%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K140944140967%_
                             (lambda (_%phi140960%_
                                      _%name140961%_
                                      _%src-name140962%_
                                      _%src-phi140963%_
                                      _%src-key140964%_
                                      _%src-ctx140965%_)
                               (cons _%phi140960%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name140961%_)
                                           (cons _%src-phi140963%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name140962%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in140941140953%_
                              'gx#module-import::t))
                           (let ((_%e140945140970%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in140941140953%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e140945140970%_
                                    'gx#module-export::t))
                                 (let* ((_%e140948140973%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e140945140970%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx140976%_ _%e140948140973%_)
                                        (_%e140949140978%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e140945140970%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key140981%_ _%e140949140978%_)
                                        (_%e140950140983%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e140945140970%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi140986%_ _%e140950140983%_)
                                        (_%e140951140988%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e140945140970%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name140991%_ _%e140951140988%_)
                                        (_%e140946140993%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in140941140953%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name140996%_ _%e140946140993%_)
                                        (_%e140947140998%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in140941140953%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi141001%_ _%e140947140998%_))
                                   (_%K140944140967%_
                                    _%phi141001%_
                                    _%name140996%_
                                    _%src-name140991%_
                                    _%src-phi140986%_
                                    _%src-key140981%_
                                    _%src-ctx140976%_))
                                 (_%E140943140957%_)))
                           (_%E140943140957%_)))))
                  (_%make-import-path140772%_
                   (lambda (_%ctx140938%_)
                     (gxc#generate-meta-import-path
                      _%ctx140938%_
                      _%context-chain140770%_)))
                  (_%make-import-spec-in140773%_
                   (lambda (_%ctx140935%_ _%in140936%_)
                     (cons 'spec:
                           (cons (_%make-import-path140772%_ _%ctx140935%_)
                                 (reverse _%in140936%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self140767%_ 'state)))
          (let* ((_%g140775140785%_
                  (lambda (_%g140776140782%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140776140782%_))))
                 (_%g140774140932%_
                  (lambda (_%g140776140788%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140776140788%_))
                        (let ((_%e140778140790%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140776140788%_))))
                          (let ((_%hd140779140793%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140778140790%_)))
                                (_%tl140780140795%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140778140790%_))))
                            ((lambda (_%L140798%_)
                               (let _%lp140809%_ ((_%rest140811%_ _%L140798%_)
                                                  (_%current-src140812%_ '#f)
                                                  (_%current-in140813%_ '())
                                                  (_%r140814%_ '()))
                                 (let* ((_%rest140815140823%_ _%rest140811%_)
                                        (_%else140817140833%_
                                         (lambda ()
                                           (let ((_%r140831%_
                                                  (if _%current-src140812%_
                                                      (cons (_%make-import-spec-in140773%_
                                                             _%current-src140812%_
                                                             _%current-in140813%_)
                                                            _%r140814%_)
                                                      _%r140814%_)))
                                             (cons '%#import
                                                   (reverse _%r140831%_)))))
                                        (_%K140819140920%_
                                         (lambda (_%rest140836%_ _%in140837%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in140837%_
                                                  'gx#module-import::t))
                                               (let* ((_%in140839140846%_
                                                       _%in140837%_)
                                                      (_%E140841140850%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in140839140846%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K140842140858%_
               (lambda (_%src-ctx140853%_)
                 (if (eq? _%current-src140812%_ _%src-ctx140853%_)
                     (_%lp140809%_
                      _%rest140836%_
                      _%current-src140812%_
                      (cons (_%make-import-spec140771%_ _%in140837%_)
                            _%current-in140813%_)
                      _%r140814%_)
                     (if _%current-src140812%_
                         (_%lp140809%_
                          _%rest140836%_
                          _%src-ctx140853%_
                          (cons (_%make-import-spec140771%_ _%in140837%_) '())
                          (cons (_%make-import-spec-in140773%_
                                 _%current-src140812%_
                                 _%current-in140813%_)
                                _%r140814%_))
                         (_%lp140809%_
                          _%rest140836%_
                          _%src-ctx140853%_
                          (cons (_%make-import-spec140771%_ _%in140837%_) '())
                          _%r140814%_)))))
              (_%e140843140861%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in140839140846%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e140843140861%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e140844140864%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e140843140861%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx140867%_ _%e140844140864%_))
               (_%K140842140858%_ _%src-ctx140867%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E140841140850%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in140837%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi140870%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in140837%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src140872%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in140837%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in140912%_
                                                           (let* ((_%g140873140882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path140772%_ _%src140872%_))
                          (_%E140876140886%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g140873140882%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K140878140902%_
                            (lambda (_%path140900%_) _%path140900%_))
                           (_%K140877140892%_
                            (lambda (_%path140890%_)
                              (cons 'in: _%path140890%_))))
                       (if (pair? _%g140873140882%_)
                           (let ((_%tl140880140907%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g140873140882%_)))
                                 (_%hd140879140905%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g140873140882%_))))
                             (if (null? _%tl140880140907%_)
                                 (let ((_%path140910%_ _%hd140879140905%_))
                                   (_%K140878140902%_ _%path140910%_))
                                 (let ((_%path140895%_ _%g140873140882%_))
                                   (_%K140877140892%_ _%path140895%_))))
                           (let ((_%path140895%_ _%g140873140882%_))
                             (_%K140877140892%_ _%path140895%_))))))
                  (_%r140914%_
                   (if _%current-src140812%_
                       (cons (_%make-import-spec-in140773%_
                              _%current-src140812%_
                              _%current-in140813%_)
                             _%r140814%_)
                       _%r140814%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp140809%_
                                                      _%rest140836%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi140870%_)
                                                                _%src-in140912%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi140870%_
                                    (cons _%src-in140912%_ '()))))
                    _%r140914%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in140837%_
                                                          'gx#module-context::t))
                                                       (let ((_%r140918%_
                                                              (if _%current-src140812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in140773%_
                                 _%current-src140812%_
                                 _%current-in140813%_)
                                _%r140814%_)
                          _%r140814%_)))
                 (_%lp140809%_
                  _%rest140836%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path140772%_ _%in140837%_))
                        _%r140918%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest140815140823%_)
                                       (let ((_%hd140820140923%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest140815140823%_)))
                                             (_%tl140821140925%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest140815140823%_))))
                                         (let* ((_%in140928%_
                                                 _%hd140820140923%_)
                                                (_%rest140930%_
                                                 _%tl140821140925%_))
                                           (_%K140819140920%_
                                            _%rest140930%_
                                            _%in140928%_)))
                                       (_%else140817140833%_)))))
                             _%tl140780140795%_)))
                        (_%g140775140785%_ _%g140776140788%_)))))
            (_%g140774140932%_ _%stx140768%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self140577%_ _%stx140578%_)
        (letrec* ((_%context-chain140580%_ (gxc#current-context-chain))
                  (_%make-import-path140581%_
                   (lambda (_%ctx140765%_)
                     (gxc#generate-meta-import-path
                      _%ctx140765%_
                      _%context-chain140580%_))))
          (let* ((_%g140583140593%_
                  (lambda (_%g140584140590%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140584140590%_))))
                 (_%g140582140762%_
                  (lambda (_%g140584140596%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140584140596%_))
                        (let ((_%e140586140598%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140584140596%_))))
                          (let ((_%hd140587140601%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140586140598%_)))
                                (_%tl140588140603%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140586140598%_))))
                            ((lambda (_%L140606%_)
                               (let _%lp140617%_ ((_%rest140619%_ _%L140606%_)
                                                  (_%r140620%_ '()))
                                 (let* ((_%rest140621140629%_ _%rest140619%_)
                                        (_%else140623140637%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r140620%_))))
                                        (_%K140625140750%_
                                         (lambda (_%rest140640%_ _%out140641%_)
                                           (let* ((_%out140642140655%_
                                                   _%out140641%_)
                                                  (_%E140645140659%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out140642140655%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K140649140729%_
                                                    (lambda (_%name140725%_
                                                             _%phi140726%_
                                                             _%key140727%_)
                                                      (_%lp140617%_
                                                       _%rest140640%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi140726%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key140727%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name140725%_)
                                             '()))))
                     _%r140620%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K140646140709%_
                                                    (lambda (_%phi140663%_
                                                             _%src140664%_)
                                                      (let* ((_%out140704%_
                                                              (if _%src140664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g140665140674%_
                                              (_%make-import-path140581%_
                                               _%src140664%_))
                                             (_%E140668140678%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g140665140674%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K140670140694%_
                                               (lambda (_%path140692%_)
                                                 _%path140692%_))
                                              (_%K140669140684%_
                                               (lambda (_%path140682%_)
                                                 (cons 'in: _%path140682%_))))
                                          (if (pair? _%g140665140674%_)
                                              (let ((_%tl140672140699%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g140665140674%_)))
                                                    (_%hd140671140697%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g140665140674%_))))
                                                (if (null? _%tl140672140699%_)
                                                    (let ((_%path140702%_
                                                           _%hd140671140697%_))
                                                      (_%K140670140694%_
                                                       _%path140702%_))
                                                    (let ((_%path140687%_
                                                           _%g140665140674%_))
                                                      (_%K140669140684%_
                                                       _%path140687%_))))
                                              (let ((_%path140687%_
                                                     _%g140665140674%_))
                                                (_%K140669140684%_
                                                 _%path140687%_)))))
                                      '()))
                          '#t))
                     (_%out140706%_
                      (if (fxzero? _%phi140663%_)
                          _%out140704%_
                          (cons 'phi:
                                (cons _%phi140663%_
                                      (cons _%out140704%_ '()))))))
                (_%lp140617%_
                 _%rest140640%_
                 (cons _%out140706%_ _%r140620%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match140644140722%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out140642140655%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e140647140712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out140642140655%_
                               '1
                               '#f
                               '#f)))
                           (_%e140648140717%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out140642140655%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src140715%_ _%e140647140712%_)
                            (_%phi140720%_ _%e140648140717%_))
                        (_%K140646140709%_ _%phi140720%_ _%src140715%_)))
                    (_%E140645140659%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out140642140655%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e140650140732%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out140642140655%_
                        '1
                        '#f
                        '#f)))
                    (_%e140651140735%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out140642140655%_
                        '2
                        '#f
                        '#f)))
                    (_%e140652140740%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out140642140655%_
                        '3
                        '#f
                        '#f)))
                    (_%e140653140745%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out140642140655%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key140738%_ _%e140651140735%_)
                     (_%phi140743%_ _%e140652140740%_)
                     (_%name140748%_ _%e140653140745%_))
                 (_%K140649140729%_
                  _%name140748%_
                  _%phi140743%_
                  _%key140738%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match140644140722%_))))))))
                                   (if (pair? _%rest140621140629%_)
                                       (let ((_%hd140626140753%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest140621140629%_)))
                                             (_%tl140627140755%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest140621140629%_))))
                                         (let* ((_%out140758%_
                                                 _%hd140626140753%_)
                                                (_%rest140760%_
                                                 _%tl140627140755%_))
                                           (_%K140625140750%_
                                            _%rest140760%_
                                            _%out140758%_)))
                                       (_%else140623140637%_)))))
                             _%tl140588140603%_)))
                        (_%g140583140593%_ _%g140584140596%_)))))
            (_%g140582140762%_ _%stx140578%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self140538%_ _%stx140539%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self140538%_ 'state)))
        (let* ((_%g140541140551%_
                (lambda (_%g140542140548%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140542140548%_))))
               (_%g140540140574%_
                (lambda (_%g140542140554%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140542140554%_))
                      (let ((_%e140544140556%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140542140554%_))))
                        (let ((_%hd140545140559%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140544140556%_)))
                              (_%tl140546140561%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140544140556%_))))
                          ((lambda (_%L140564%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L140564%_)))
                           _%tl140546140561%_)))
                      (_%g140541140551%_ _%g140542140554%_)))))
          (_%g140540140574%_ _%stx140539%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self140409%_ _%stx140410%_)
        (letrec ((_%generate1140412%_
                  (lambda (_%id140533%_ _%eid140534%_)
                    (let ((_%eid140536%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid140534%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid140536%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx140410%_
                             _%eid140536%_)))
                      (cons (gxc#generate-runtime-identifier _%id140533%_)
                            (cons _%eid140536%_ '()))))))
          (let* ((_%g140414140442%_
                  (lambda (_%g140415140439%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140415140439%_))))
                 (_%g140413140530%_
                  (lambda (_%g140415140445%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140415140445%_))
                        (let ((_%e140418140447%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140415140445%_))))
                          (let ((_%hd140419140450%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140418140447%_)))
                                (_%tl140420140452%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140418140447%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl140420140452%_))
                                (let ((_g150208_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl140420140452%_
                                          '0))))
                                  (begin
                                    (let ((_g150209_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g150208_)
                                                 (##values-length _g150208_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g150209_ 2)))
                                          (error "Context expects 2 values"
                                                 _g150209_)))
                                    (let ((_%target140421140455%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g150208_ 0)))
                                          (_%tl140423140457%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g150208_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140423140457%_))
                                          (letrec ((_%loop140424140460%_
                                                    (lambda (_%hd140422140463%_
                                                             _%eid140428140465%_
                                                             _%id140429140467%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd140422140463%_))
                                                          (let ((_%e140425140470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd140422140463%_))))
                    (let ((_%lp-hd140426140473%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140425140470%_)))
                          (_%lp-tl140427140475%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140425140470%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd140426140473%_))
                          (let ((_%e140432140478%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd140426140473%_))))
                            (let ((_%hd140433140481%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140432140478%_)))
                                  (_%tl140434140483%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140432140478%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl140434140483%_))
                                  (let ((_%e140435140486%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl140434140483%_))))
                                    (let ((_%hd140436140489%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140435140486%_)))
                                          (_%tl140437140491%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140435140486%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140437140491%_))
                                          (_%loop140424140460%_
                                           _%lp-tl140427140475%_
                                           (cons _%hd140436140489%_
                                                 _%eid140428140465%_)
                                           (cons _%hd140433140481%_
                                                 _%id140429140467%_))
                                          (_%g140414140442%_
                                           _%g140415140445%_))))
                                  (_%g140414140442%_ _%g140415140445%_))))
                          (_%g140414140442%_ _%g140415140445%_))))
                  (let ((_%eid140430140494%_ (reverse _%eid140428140465%_))
                        (_%id140431140496%_ (reverse _%id140429140467%_)))
                    ((lambda (_%L140499%_ _%L140500%_)
                       (cons '%#extern
                             (map _%generate1140412%_
                                  (let ((__tmp150210
                                         (lambda (_%g140515140518%_
                                                  _%g140516140520%_)
                                           (cons _%g140515140518%_
                                                 _%g140516140520%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp150210 '() _%L140500%_))
                                  (let ((__tmp150211
                                         (lambda (_%g140522140525%_
                                                  _%g140523140527%_)
                                           (cons _%g140522140525%_
                                                 _%g140523140527%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp150211 '() _%L140499%_)))))
                     _%eid140430140494%_
                     _%id140431140496%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop140424140460%_
                                             _%target140421140455%_
                                             '()
                                             '()))
                                          (_%g140414140442%_
                                           _%g140415140445%_)))))
                                (_%g140414140442%_ _%g140415140445%_))))
                        (_%g140414140442%_ _%g140415140445%_)))))
            (_%g140413140530%_ _%stx140410%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self140199%_ _%stx140200%_)
        (letrec ((_%generate1140202%_
                  (lambda (_%id140404%_)
                    (let ((_%eid140406%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id140404%_)))
                          (_%ident140407%_
                           (gxc#generate-runtime-identifier _%id140404%_)))
                      (cons '%#define-runtime
                            (cons _%ident140407%_ (cons _%eid140406%_ '()))))))
                 (_%generate*140203%_
                  (lambda (_%all140372%_)
                    (let* ((_%all140373140381%_ _%all140372%_)
                           (_%else140375140389%_
                            (lambda () (cons '%#begin _%all140372%_)))
                           (_%K140377140394%_
                            (lambda (_%one140392%_) _%one140392%_)))
                      (if (pair? _%all140373140381%_)
                          (let ((_%hd140378140397%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all140373140381%_)))
                                (_%tl140379140399%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all140373140381%_))))
                            (let ((_%one140402%_ _%hd140378140397%_))
                              (if (null? _%tl140379140399%_)
                                  (_%K140377140394%_ _%one140402%_)
                                  (_%else140375140389%_))))
                          (_%else140375140389%_))))))
          (let* ((_%g140205140222%_
                  (lambda (_%g140206140219%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140206140219%_))))
                 (_%g140204140369%_
                  (lambda (_%g140206140225%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140206140225%_))
                        (let ((_%e140209140227%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140206140225%_))))
                          (let ((_%hd140210140230%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140209140227%_)))
                                (_%tl140211140232%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140209140227%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140211140232%_))
                                (let ((_%e140212140235%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140211140232%_))))
                                  (let ((_%hd140213140238%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140212140235%_)))
                                        (_%tl140214140240%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140212140235%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140214140240%_))
                                        (let ((_%e140215140243%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140214140240%_))))
                                          (let ((_%hd140216140246%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140215140243%_)))
                                                (_%tl140217140248%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140215140243%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140217140248%_))
                                                ((lambda (_%L140251%_
                                                          _%L140252%_)
                                                   (let _%lp140268%_ ((_%rest140270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L140252%_)
                              (_%r140271%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx149947149948%_
                                                             _%rest140270%_)
                                                            (_%g140276140293%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx149947149948%_)))))
               (let ((_%__kont149949149950%_
                      (lambda (_%L140356%_)
                        (_%lp140268%_ _%L140356%_ _%r140271%_)))
                     (_%__kont149951149952%_
                      (lambda (_%L140329%_ _%L140330%_)
                        (_%lp140268%_
                         _%L140329%_
                         (cons (_%generate1140202%_ _%L140330%_)
                               _%r140271%_))))
                     (_%__kont149953149954%_
                      (lambda (_%L140305%_)
                        (_%generate*140203%_
                         (let ((__tmp150212
                                (cons (_%generate1140202%_ _%L140305%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp150212 _%r140271%_)))))
                     (_%__kont149955149956%_
                      (lambda () (_%generate*140203%_ (reverse _%r140271%_)))))
                 (let ((_%g140274140316%_
                        (lambda ()
                          (let ((_%L140305%_ _%__stx149947149948%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L140305%_))
                                (_%__kont149953149954%_ _%L140305%_)
                                (_%__kont149955149956%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx149947149948%_))
                       (let ((_%e140279140345%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx149947149948%_))))
                         (let ((_%tl140281140350%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e140279140345%_)))
                               (_%hd140280140348%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e140279140345%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd140280140348%_))
                               (let ((_%e140282140353%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd140280140348%_))))
                                 (if (equal? _%e140282140353%_ '#f)
                                     (_%__kont149949149950%_
                                      _%tl140281140350%_)
                                     (_%__kont149951149952%_
                                      _%tl140281140350%_
                                      _%hd140280140348%_)))
                               (_%__kont149951149952%_
                                _%tl140281140350%_
                                _%hd140280140348%_))))
                       (let () (declare (not safe)) (_%g140274140316%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd140216140246%_
                                                 _%hd140213140238%_)
                                                (_%g140205140222%_
                                                 _%g140206140225%_))))
                                        (_%g140205140222%_
                                         _%g140206140225%_))))
                                (_%g140205140222%_ _%g140206140225%_))))
                        (_%g140205140222%_ _%g140206140225%_)))))
            (_%g140204140369%_ _%stx140200%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self140096%_ _%stx140097%_)
        (let* ((_%g140099140116%_
                (lambda (_%g140100140113%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140100140113%_))))
               (_%g140098140196%_
                (lambda (_%g140100140119%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140100140119%_))
                      (let ((_%e140103140121%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140100140119%_))))
                        (let ((_%hd140104140124%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140103140121%_)))
                              (_%tl140105140126%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140103140121%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140105140126%_))
                              (let ((_%e140106140129%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140105140126%_))))
                                (let ((_%hd140107140132%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140106140129%_)))
                                      (_%tl140108140134%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140106140129%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140108140134%_))
                                      (let ((_%e140109140137%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140108140134%_))))
                                        (let ((_%hd140110140140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140109140137%_)))
                                              (_%tl140111140142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140109140137%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140111140142%_))
                                              ((lambda (_%L140145%_
                                                        _%L140146%_)
                                                 (let* ((_%eid140161%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L140146%_)))
                                                        (_%phi140163%_
                                                         (let ((__tmp150213
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp150213 '1)))
                (_%block140165%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self140096%_ 'state))
                  _%phi140163%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g140168140175%_
                                                           (lambda (_%g140169140172%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g140169140172%_))))
                  (_%g140167140193%_
                   (lambda (_%g140169140178%_)
                     ((lambda (_%L140180%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self140096%_ 'state))
                         _%phi140163%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L140180%_ (cons _%L140145%_ '())))))
                      _%g140169140178%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g140167140193%_
                                                      _%eid140161%_))
                                                   (if _%block140165%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block140165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L140146%_)
                                             (cons _%eid140161%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L140146%_)
                           (cons _%eid140161%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140110140140%_
                                               _%hd140107140132%_)
                                              (_%g140099140116%_
                                               _%g140100140119%_))))
                                      (_%g140099140116%_ _%g140100140119%_))))
                              (_%g140099140116%_ _%g140100140119%_))))
                      (_%g140099140116%_ _%g140100140119%_)))))
          (_%g140098140196%_ _%stx140097%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self140028%_ _%stx140029%_)
        (let* ((_%g140031140048%_
                (lambda (_%g140032140045%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140032140045%_))))
               (_%g140030140093%_
                (lambda (_%g140032140051%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140032140051%_))
                      (let ((_%e140035140053%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140032140051%_))))
                        (let ((_%hd140036140056%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140035140053%_)))
                              (_%tl140037140058%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140035140053%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140037140058%_))
                              (let ((_%e140038140061%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140037140058%_))))
                                (let ((_%hd140039140064%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140038140061%_)))
                                      (_%tl140040140066%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140038140061%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140040140066%_))
                                      (let ((_%e140041140069%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140040140066%_))))
                                        (let ((_%hd140042140072%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140041140069%_)))
                                              (_%tl140043140074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140041140069%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140043140074%_))
                                              ((lambda (_%L140077%_
                                                        _%L140078%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L140078%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L140077%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140042140072%_
                                               _%hd140039140064%_)
                                              (_%g140031140048%_
                                               _%g140032140051%_))))
                                      (_%g140031140048%_ _%g140032140051%_))))
                              (_%g140031140048%_ _%g140032140051%_))))
                      (_%g140031140048%_ _%g140032140051%_)))))
          (_%g140030140093%_ _%stx140029%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self140025%_ _%stx140026%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self140025%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx140026%_)
        (gxc#generate-meta-define-values% _%self140025%_ _%stx140026%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self140022%_ _%stx140023%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self140022%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx140023%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp150215 (list)) (__tmp150214 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp150215
         '(src n open blocks)
         __tmp150214
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args140019%_
        (apply make-instance gxc#meta-state::t _%$args140019%_)))
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
      (lambda (_%self139364140003%_ _%ctx140005%_)
        (let* ((_%self140007%_ _%self139364140003%_)
               (_%self140009%_ _%self140007%_))
          (if (let ((__tmp150216
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self140009%_))))
                (declare (not safe))
                (##fx< '4 __tmp150216))
              (begin
                (let ((__tmp150217
                       (let ((__tmp150218
                              (##structure-ref
                               _%ctx140005%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp150218))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self140009%_
                   __tmp150217
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self140009%_ '1 '2 '#f '#f))
                (let ((__tmp150219
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self140009%_
                   __tmp150219
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self140009%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp150220
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self140009%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self140009%_
                       '4
                       __tmp150220))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp150222 (list)) (__tmp150221 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp150222
         '(ctx phi n code)
         __tmp150221
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args139878%_
        (apply make-instance gxc#meta-state-block::t _%$args139878%_)))
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
      (lambda (_%state139837%_ _%phi139838%_)
        (let* ((_%state139839139847%_ _%state139837%_)
               (_%E139841139851%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state139839139847%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K139842139860%_
                (lambda (_%open139854%_ _%n139855%_ _%src139856%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open139854%_ _%phi139838%_))
                      '#f
                      (let ((_%block-ref139858%_
                             (let ((__tmp150223 (number->string _%n139855%_)))
                               (declare (not safe))
                               (##string-append
                                _%src139856%_
                                '"~"
                                __tmp150223))))
                        (##structure-set!
                         _%state139837%_
                         (let () (declare (not safe)) (##fx+ _%n139855%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp150224
                               (let ((__tmp150225
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp150225
                                  _%phi139838%_
                                  _%n139855%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open139854%_ _%phi139838%_ __tmp150224))
                        _%block-ref139858%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state139839139847%_
                 'gxc#meta-state::t))
              (let* ((_%e139843139863%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state139839139847%_
                         '1
                         '#f
                         '#f)))
                     (_%src139866%_ _%e139843139863%_)
                     (_%e139844139868%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state139839139847%_
                         '2
                         '#f
                         '#f)))
                     (_%n139871%_ _%e139844139868%_)
                     (_%e139845139873%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state139839139847%_
                         '3
                         '#f
                         '#f)))
                     (_%open139876%_ _%e139845139873%_))
                (_%K139842139860%_ _%open139876%_ _%n139871%_ _%src139866%_))
              (_%E139841139851%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state139831%_ _%phi139832%_ _%stx139833%_)
        (let ((_%block139835%_
               (let ((__tmp150226
                      (##structure-ref
                       _%state139831%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp150226 _%phi139832%_))))
          (##structure-set!
           _%block139835%_
           (cons _%stx139833%_
                 (##structure-ref
                  _%block139835%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state139825%_)
        (##structure-set!
         _%state139825%_
         (let ((__tmp150229
                (lambda (_%_139827%_ _%block139828%_ _%r139829%_)
                  (cons _%block139828%_ _%r139829%_)))
               (__tmp150228
                (##structure-ref _%state139825%_ '4 gxc#meta-state::t '#f))
               (__tmp150227
                (##structure-ref _%state139825%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp150229 __tmp150228 __tmp150227))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state139825%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state139777%_)
        (gxc#meta-state-end-phi! _%state139777%_)
        (let ((__tmp150231
               (lambda (_%block139779%_ _%r139780%_)
                 (let* ((_%block139781139790%_ _%block139779%_)
                        (_%E139783139794%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block139781139790%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K139784139802%_
                         (lambda (_%code139797%_
                                  _%n139798%_
                                  _%phi139799%_
                                  _%ctx139800%_)
                           (if (null? _%code139797%_)
                               _%r139780%_
                               (cons (cons _%ctx139800%_
                                           (cons _%phi139799%_
                                                 (cons _%n139798%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code139797%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r139780%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block139781139790%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e139785139805%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block139781139790%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx139808%_ _%e139785139805%_)
                              (_%e139786139810%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block139781139790%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi139813%_ _%e139786139810%_)
                              (_%e139787139815%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block139781139790%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n139818%_ _%e139787139815%_)
                              (_%e139788139820%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block139781139790%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code139823%_ _%e139788139820%_))
                         (_%K139784139802%_
                          _%code139823%_
                          _%n139818%_
                          _%phi139813%_
                          _%ctx139808%_))
                       (_%E139783139794%_)))))
              (__tmp150230
               (##structure-ref _%state139777%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp150231 '() __tmp150230))))
    (define gxc#collect-expression-refs
      (lambda (_%stx139773%_)
        (let ((_%ht139775%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht139775%_ _%stx139773%_)
          _%ht139775%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self139716%_ _%stx139717%_)
        (let* ((_%g139719139732%_
                (lambda (_%g139720139729%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139720139729%_))))
               (_%g139718139770%_
                (lambda (_%g139720139735%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139720139735%_))
                      (let ((_%e139722139737%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139720139735%_))))
                        (let ((_%hd139723139740%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139722139737%_)))
                              (_%tl139724139742%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139722139737%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139724139742%_))
                              (let ((_%e139725139745%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139724139742%_))))
                                (let ((_%hd139726139748%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139725139745%_)))
                                      (_%tl139727139750%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139725139745%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl139727139750%_))
                                      ((lambda (_%L139753%_)
                                         (let* ((_%bind139765%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L139753%_)))
                                                (_%eid139767%_
                                                 (if _%bind139765%_
                                                     (##structure-ref
                                                      _%bind139765%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L139753%_))))
                                                (__tmp150232
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self139716%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp150232
                                            _%eid139767%_
                                            _%eid139767%_)))
                                       _%hd139726139748%_)
                                      (_%g139719139732%_ _%g139720139735%_))))
                              (_%g139719139732%_ _%g139720139735%_))))
                      (_%g139719139732%_ _%g139720139735%_)))))
          (_%g139718139770%_ _%stx139717%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self139643%_ _%stx139644%_)
        (let* ((_%g139646139663%_
                (lambda (_%g139647139660%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139647139660%_))))
               (_%g139645139713%_
                (lambda (_%g139647139666%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139647139666%_))
                      (let ((_%e139650139668%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139647139666%_))))
                        (let ((_%hd139651139671%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139650139668%_)))
                              (_%tl139652139673%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139650139668%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139652139673%_))
                              (let ((_%e139653139676%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139652139673%_))))
                                (let ((_%hd139654139679%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139653139676%_)))
                                      (_%tl139655139681%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139653139676%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139655139681%_))
                                      (let ((_%e139656139684%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139655139681%_))))
                                        (let ((_%hd139657139687%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139656139684%_)))
                                              (_%tl139658139689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139656139684%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139658139689%_))
                                              ((lambda (_%L139692%_
                                                        _%L139693%_)
                                                 (let* ((_%bind139708%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L139693%_)))
                                                        (_%eid139710%_
                                                         (if _%bind139708%_
                                                             (##structure-ref
                                                              _%bind139708%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L139693%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150233
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self139643%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp150233
                                                      _%eid139710%_
                                                      _%eid139710%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139643%_
                                                      _%L139692%_))))
                                               _%hd139657139687%_
                                               _%hd139654139679%_)
                                              (_%g139646139663%_
                                               _%g139647139666%_))))
                                      (_%g139646139663%_ _%g139647139666%_))))
                              (_%g139646139663%_ _%g139647139666%_))))
                      (_%g139646139663%_ _%g139647139666%_)))))
          (_%g139645139713%_ _%stx139644%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self139600%_ _%stx139601%_)
        (let* ((_%g139603139613%_
                (lambda (_%g139604139610%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139604139610%_))))
               (_%g139602139640%_
                (lambda (_%g139604139616%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139604139616%_))
                      (let ((_%e139606139618%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139604139616%_))))
                        (let ((_%hd139607139621%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139606139618%_)))
                              (_%tl139608139623%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139606139618%_))))
                          ((lambda (_%L139626%_)
                             (let ((__tmp150234
                                    (lambda (_%g139635139637%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self139600%_
                                         _%g139635139637%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp150234 _%L139626%_)))
                           _%tl139608139623%_)))
                      (_%g139603139613%_ _%g139604139616%_)))))
          (_%g139602139640%_ _%stx139601%_))))
    (define gxc#count-values-single%
      (lambda (_%self139597%_ _%stx139598%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self139463%_ _%stx139464%_)
        (let* ((_%__stx149977149978%_ _%stx139464%_)
               (_%g139467139496%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx149977149978%_)))))
          (let ((_%__kont149979149980%_
                 (lambda (_%L139564%_ _%L139565%_)
                   (length (let ((__tmp150235
                                  (lambda (_%g139586139589%_ _%g139587139591%_)
                                    (cons _%g139586139589%_
                                          _%g139587139591%_))))
                             (declare (not safe))
                             (__foldr1 __tmp150235 '() _%L139564%_)))))
                (_%__kont149983149984%_ (lambda () '#f)))
            (let ((_%__match150022150023%_
                   (lambda (_%e139471139508%_
                            _%hd139472139511%_
                            _%tl139473139513%_
                            _%e139474139516%_
                            _%hd139475139519%_
                            _%tl139476139521%_
                            _%e139477139524%_
                            _%hd139478139527%_
                            _%tl139479139529%_
                            _%e139480139532%_
                            _%hd139481139535%_
                            _%tl139482139537%_
                            _%__splice149981149982%_
                            _%target139483139540%_
                            _%tl139485139542%_)
                     (letrec ((_%loop139486139545%_
                               (lambda (_%hd139484139548%_
                                        _%rand139490139550%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd139484139548%_))
                                     (let ((_%e139487139553%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd139484139548%_))))
                                       (let ((_%lp-tl139489139558%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e139487139553%_)))
                                             (_%lp-hd139488139556%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e139487139553%_))))
                                         (_%loop139486139545%_
                                          _%lp-tl139489139558%_
                                          (cons _%lp-hd139488139556%_
                                                _%rand139490139550%_))))
                                     (let ((_%rand139491139561%_
                                            (reverse _%rand139490139550%_)))
                                       (let ((_%L139564%_ _%rand139491139561%_)
                                             (_%L139565%_ _%hd139481139535%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L139565%_
                                                'values))
                                             (_%__kont149979149980%_
                                              _%L139564%_
                                              _%L139565%_)
                                             (_%__kont149983149984%_))))))))
                       (_%loop139486139545%_ _%target139483139540%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx149977149978%_))
                  (let ((_%e139471139508%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx149977149978%_))))
                    (let ((_%tl139473139513%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e139471139508%_)))
                          (_%hd139472139511%_
                           (let ()
                             (declare (not safe))
                             (##car _%e139471139508%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl139473139513%_))
                          (let ((_%e139474139516%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl139473139513%_))))
                            (let ((_%tl139476139521%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139474139516%_)))
                                  (_%hd139475139519%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139474139516%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd139475139519%_))
                                  (let ((_%e139477139524%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd139475139519%_))))
                                    (let ((_%tl139479139529%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e139477139524%_)))
                                          (_%hd139478139527%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e139477139524%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd139478139527%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd139478139527%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl139479139529%_))
                                                  (let ((_%e139480139532%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl139479139529%_))))
                                                    (let ((_%tl139482139537%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e139480139532%_)))
                                                          (_%hd139481139535%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e139480139532%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl139482139537%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl139476139521%_))
                      (let ((_%__splice149981149982%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl139476139521%_
                                '0))))
                        (let ((_%tl139485139542%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice149981149982%_ '1)))
                              (_%target139483139540%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice149981149982%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl139485139542%_))
                              (_%__match150022150023%_
                               _%e139471139508%_
                               _%hd139472139511%_
                               _%tl139473139513%_
                               _%e139474139516%_
                               _%hd139475139519%_
                               _%tl139476139521%_
                               _%e139477139524%_
                               _%hd139478139527%_
                               _%tl139479139529%_
                               _%e139480139532%_
                               _%hd139481139535%_
                               _%tl139482139537%_
                               _%__splice149981149982%_
                               _%target139483139540%_
                               _%tl139485139542%_)
                              (_%__kont149983149984%_))))
                      (_%__kont149983149984%_))
                  (_%__kont149983149984%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont149983149984%_))
                                              (_%__kont149983149984%_))
                                          (_%__kont149983149984%_))))
                                  (_%__kont149983149984%_))))
                          (_%__kont149983149984%_))))
                  (_%__kont149983149984%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self139366%_ _%stx139367%_)
        (let* ((_%g139369139390%_
                (lambda (_%g139370139387%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139370139387%_))))
               (_%g139368139460%_
                (lambda (_%g139370139393%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139370139393%_))
                      (let ((_%e139374139395%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139370139393%_))))
                        (let ((_%hd139375139398%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139374139395%_)))
                              (_%tl139376139400%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139374139395%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139376139400%_))
                              (let ((_%e139377139403%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139376139400%_))))
                                (let ((_%hd139378139406%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139377139403%_)))
                                      (_%tl139379139408%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139377139403%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139379139408%_))
                                      (let ((_%e139380139411%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139379139408%_))))
                                        (let ((_%hd139381139414%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139380139411%_)))
                                              (_%tl139382139416%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139380139411%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139382139416%_))
                                              (let ((_%e139383139419%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139382139416%_))))
                                                (let ((_%hd139384139422%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139383139419%_)))
                                                      (_%tl139385139424%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139383139419%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl139385139424%_))
                                                      ((lambda (_%L139427%_
                                                                _%L139428%_
                                                                _%L139429%_)
                                                         (let ((_%c1139446139448%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self139366%_ _%L139428%_))))
                   (if _%c1139446139448%_
                       (let* ((_%c1139451%_ _%c1139446139448%_)
                              (_%c2139452139454%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self139366%_
                                  _%L139427%_))))
                         (if _%c2139452139454%_
                             (let ((_%c2139457%_ _%c2139452139454%_))
                               (if (fx= _%c1139451%_ _%c2139457%_)
                                   _%c1139451%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd139384139422%_
               _%hd139381139414%_
               _%hd139378139406%_)
              (_%g139369139390%_ _%g139370139393%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139369139390%_
                                               _%g139370139393%_))))
                                      (_%g139369139390%_ _%g139370139393%_))))
                              (_%g139369139390%_ _%g139370139393%_))))
                      (_%g139369139390%_ _%g139370139393%_)))))
          (_%g139368139460%_ _%stx139367%_))))))
