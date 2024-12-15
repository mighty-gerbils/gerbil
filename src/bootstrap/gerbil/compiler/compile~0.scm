(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1734225195)
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
        (letrec ((_%hash-e148667%_
                  (lambda (_%id148669%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id148669%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e148667%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp150054 (list gxc#::void::t))
            (__tmp150053 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp150054
         '()
         __tmp150053
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args148663%_
        (apply make-instance gxc#::collect-bindings::t _%$args148663%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp150055
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
        (__make-promise __tmp150055)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx148655%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self148658%_
                (let ((__obj150029
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj150029))
               (__tmp150056
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148658%_ _%stx148655%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150056
           gxc#current-compile-method
           _%self148658%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp150058 (list gxc#::void::t))
            (__tmp150057 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp150058
         '(modules)
         __tmp150057
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args148652%_
        (apply make-instance gxc#::lift-modules::t _%$args148652%_)))
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
      (let ((__tmp150059
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
        (__make-promise __tmp150059)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords148626%_ _%modules148623148627%_ _%stx148629%_)
        (let ((_%modules148632%_
               (if (eq? _%modules148623148627%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules148623148627%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self148634%_
                  (let ((__obj150031
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150031
                       _%modules148632%_
                       '1
                       '#f
                       '#f))
                    __obj150031))
                 (__tmp150060
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self148634%_ _%stx148629%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150060
             gxc#current-compile-method
             _%self148634%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords148641%_ . _%args148642%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords148641%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148641%_
                  'modules:
                  absent-value))
               _%args148642%_)))
    (define gxc#apply-lift-modules
      (lambda _%args148624148648%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args148624148648%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp150062 (list)) (__tmp150061 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp150062
         '()
         __tmp150061
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args148619%_
        (apply make-instance gxc#::find-runtime-code::t _%$args148619%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp150063
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
        (__make-promise __tmp150063)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx148611%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self148614%_
                (let ((__obj150033
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj150033))
               (__tmp150064
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148614%_ _%stx148611%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150064
           gxc#current-compile-method
           _%self148614%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp150066 (list gxc#::false::t))
            (__tmp150065 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp150066
         '()
         __tmp150065
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args148608%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args148608%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp150067
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
        (__make-promise __tmp150067)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx148600%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self148603%_
                (let ((__obj150035
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj150035))
               (__tmp150068
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148603%_ _%stx148600%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150068
           gxc#current-compile-method
           _%self148603%_))))
    (define gxc#::count-values::t
      (let ((__tmp150070 (list gxc#::false-expression::t))
            (__tmp150069 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp150070
         '()
         __tmp150069
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args148597%_
        (apply make-instance gxc#::count-values::t _%$args148597%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp150071
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
        (__make-promise __tmp150071)))
    (define gxc#apply-count-values
      (lambda (_%stx148589%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self148592%_
                (let ((__obj150037
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj150037))
               (__tmp150072
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148592%_ _%stx148589%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150072
           gxc#current-compile-method
           _%self148592%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp150073 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp150073
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args148586%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args148586%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp150074
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
        (__make-promise __tmp150074)))
    (define gxc#::generate-loader::t
      (let ((__tmp150076 (list gxc#::generate-runtime-empty::t))
            (__tmp150075 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp150076
         '()
         __tmp150075
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args148582%_
        (apply make-instance gxc#::generate-loader::t _%$args148582%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp150077
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
        (__make-promise __tmp150077)))
    (define gxc#apply-generate-loader
      (lambda (_%stx148574%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self148577%_
                (let ((__obj150040
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj150040))
               (__tmp150078
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148577%_ _%stx148574%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150078
           gxc#current-compile-method
           _%self148577%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp150079 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp150079
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args148571%_
        (apply make-instance gxc#::generate-runtime::t _%$args148571%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp150080
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
        (__make-promise __tmp150080)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx148563%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self148566%_
                (let ((__obj150042
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj150042))
               (__tmp150081
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148566%_ _%stx148563%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150081
           gxc#current-compile-method
           _%self148566%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp150083 (list gxc#::generate-runtime::t))
            (__tmp150082 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp150083
         '()
         __tmp150082
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args148560%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args148560%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp150084
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
        (__make-promise __tmp150084)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx148552%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self148555%_
                (let ((__obj150044
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj150044))
               (__tmp150085
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148555%_ _%stx148552%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150085
           gxc#current-compile-method
           _%self148555%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp150086 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp150086
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args148549%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args148549%_)))
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
      (let ((__tmp150087
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
        (__make-promise __tmp150087)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords148523%_ _%table148520148524%_ _%stx148526%_)
        (let ((_%table148529%_
               (if (eq? _%table148520148524%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table148520148524%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self148531%_
                  (let ((__obj150046
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150046
                       _%table148529%_
                       '1
                       '#f
                       '#f))
                    __obj150046))
                 (__tmp150088
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self148531%_ _%stx148526%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150088
             gxc#current-compile-method
             _%self148531%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords148538%_ . _%args148539%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords148538%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148538%_
                  'table:
                  absent-value))
               _%args148539%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args148521148545%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args148521148545%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp150090 (list gxc#::void-expression::t))
            (__tmp150089 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp150090
         '(state)
         __tmp150089
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args148516%_
        (apply make-instance gxc#::generate-meta::t _%$args148516%_)))
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
      (let ((__tmp150091
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
        (__make-promise __tmp150091)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords148490%_ _%state148487148491%_ _%stx148493%_)
        (let ((_%state148496%_
               (if (eq? _%state148487148491%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state148487148491%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self148498%_
                  (let ((__obj150048
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150048
                       _%state148496%_
                       '1
                       '#f
                       '#f))
                    __obj150048))
                 (__tmp150092
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self148498%_ _%stx148493%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150092
             gxc#current-compile-method
             _%self148498%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords148505%_ . _%args148506%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords148505%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148505%_
                  'state:
                  absent-value))
               _%args148506%_)))
    (define gxc#apply-generate-meta
      (lambda _%args148488148512%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args148488148512%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp150094 (list)) (__tmp150093 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp150094
         '(state)
         __tmp150093
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args148483%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args148483%_)))
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
      (let ((__tmp150095
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
        (__make-promise __tmp150095)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords148457%_ _%state148454148458%_ _%stx148460%_)
        (let ((_%state148463%_
               (if (eq? _%state148454148458%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state148454148458%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self148465%_
                  (let ((__obj150050
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150050
                       _%state148463%_
                       '1
                       '#f
                       '#f))
                    __obj150050))
                 (__tmp150096
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self148465%_ _%stx148460%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150096
             gxc#current-compile-method
             _%self148465%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords148472%_ . _%args148473%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords148472%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148472%_
                  'state:
                  absent-value))
               _%args148473%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args148455148479%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args148455148479%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self148383%_ _%stx148384%_)
        (let* ((_%g148386148403%_
                (lambda (_%g148387148400%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148387148400%_))))
               (_%g148385148450%_
                (lambda (_%g148387148406%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148387148406%_))
                      (let ((_%e148390148408%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148387148406%_))))
                        (let ((_%hd148391148411%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148390148408%_)))
                              (_%tl148392148413%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148390148408%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148392148413%_))
                              (let ((_%e148393148416%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148392148413%_))))
                                (let ((_%hd148394148419%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148393148416%_)))
                                      (_%tl148395148421%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148393148416%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148395148421%_))
                                      (let ((_%e148396148424%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148395148421%_))))
                                        (let ((_%hd148397148427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148396148424%_)))
                                              (_%tl148398148429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148396148424%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148398148429%_))
                                              ((lambda (_%L148432%_
                                                        _%L148433%_)
                                                 (let ((__tmp150097
                                                        (lambda (_%bind148448%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind148448%_))
                      (gxc#add-module-binding! _%bind148448%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp150097
                                                    _%L148433%_)))
                                               _%hd148397148427%_
                                               _%hd148394148419%_)
                                              (_%g148386148403%_
                                               _%g148387148406%_))))
                                      (_%g148386148403%_ _%g148387148406%_))))
                              (_%g148386148403%_ _%g148387148406%_))))
                      (_%g148386148403%_ _%g148387148406%_)))))
          (_%g148385148450%_ _%stx148384%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self148315%_ _%stx148316%_)
        (let* ((_%g148318148335%_
                (lambda (_%g148319148332%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148319148332%_))))
               (_%g148317148380%_
                (lambda (_%g148319148338%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148319148338%_))
                      (let ((_%e148322148340%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148319148338%_))))
                        (let ((_%hd148323148343%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148322148340%_)))
                              (_%tl148324148345%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148322148340%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148324148345%_))
                              (let ((_%e148325148348%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148324148345%_))))
                                (let ((_%hd148326148351%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148325148348%_)))
                                      (_%tl148327148353%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148325148348%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148327148353%_))
                                      (let ((_%e148328148356%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148327148353%_))))
                                        (let ((_%hd148329148359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148328148356%_)))
                                              (_%tl148330148361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148328148356%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148330148361%_))
                                              ((lambda (_%L148364%_
                                                        _%L148365%_)
                                                 (gxc#add-module-binding!
                                                  _%L148365%_
                                                  '#t))
                                               _%hd148329148359%_
                                               _%hd148326148351%_)
                                              (_%g148318148335%_
                                               _%g148319148338%_))))
                                      (_%g148318148335%_ _%g148319148338%_))))
                              (_%g148318148335%_ _%g148319148338%_))))
                      (_%g148318148335%_ _%g148319148338%_)))))
          (_%g148317148380%_ _%stx148316%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self148257%_ _%stx148258%_)
        (let* ((_%g148260148274%_
                (lambda (_%g148261148271%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148261148271%_))))
               (_%g148259148312%_
                (lambda (_%g148261148277%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148261148277%_))
                      (let ((_%e148264148279%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148261148277%_))))
                        (let ((_%hd148265148282%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148264148279%_)))
                              (_%tl148266148284%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148264148279%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148266148284%_))
                              (let ((_%e148267148287%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148266148284%_))))
                                (let ((_%hd148268148290%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148267148287%_)))
                                      (_%tl148269148292%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148267148287%_))))
                                  ((lambda (_%L148295%_ _%L148296%_)
                                     (let ((_%ctx148309%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L148296%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self148257%_
                                           'modules))
                                        (cons _%ctx148309%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self148257%_
                                                        'modules)))))
                                       (let ((__tmp150098
                                              (lambda ()
                                                (let ((__tmp150099
                                                       (##structure-ref
                                                        _%ctx148309%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self148257%_
                                                   __tmp150099)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp150098
                                          gx#current-expander-context
                                          _%ctx148309%_))))
                                   _%tl148269148292%_
                                   _%hd148268148290%_)))
                              (_%g148260148274%_ _%g148261148277%_))))
                      (_%g148260148274%_ _%g148261148277%_)))))
          (_%g148259148312%_ _%stx148258%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls148210148212%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls148210148212%_
              (let ((_%decls148215%_ _%decls148210148212%_))
                (let _%lp148217%_ ((_%rest148219%_ _%decls148215%_))
                  (let* ((_%rest148220148228%_ _%rest148219%_)
                         (_%else148222148236%_ (lambda () '#f))
                         (_%K148224148245%_
                          (lambda (_%decls148239%_ _%decl148240%_)
                            (if (equal? _%decl148240%_ '(not safe))
                                '#t
                                (if (equal? _%decl148240%_ '(safe))
                                    '#f
                                    (_%lp148217%_ _%decls148239%_))))))
                    (if (pair? _%rest148220148228%_)
                        (let ((_%hd148225148248%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest148220148228%_)))
                              (_%tl148226148250%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest148220148228%_))))
                          (let* ((_%decl148253%_ _%hd148225148248%_)
                                 (_%decls148255%_ _%tl148226148250%_))
                            (_%K148224148245%_
                             _%decls148255%_
                             _%decl148253%_)))
                        (_%else148222148236%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id148204%_ _%syntax?148205%_)
        (let ((_%eid148207%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id148204%_))
                '1
                gx#binding::t
                '#f))
              (_%ht148208%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid148207%_))
              '#!void
              (let ((__tmp150100
                     (let ((__tmp150101
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid148207%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp150101 _%syntax?148205%_))))
                (declare (not safe))
                (hash-put! _%ht148208%_ _%eid148207%_ __tmp150100))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id148202%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id148202%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key148157%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key148157%_))
            _%key148157%_
            (if (uninterned-symbol? _%key148157%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key148157%_))
                (let* ((_%key148161148168%_ _%key148157%_)
                       (_%E148163148172%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key148161148168%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K148164148190%_
                        (lambda (_%mark148175%_ _%eid148176%_)
                          (let ((_%$e148178%_
                                 (##structure-ref
                                  _%mark148175%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e148178%_
                                ((lambda (_%ht148181%_)
                                   (let ((_%$e148183%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht148181%_
                                             _%eid148176%_))))
                                     (if _%$e148183%_
                                         ((lambda (_%id148186%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id148186%_))
                                                _%id148186%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id148186%_))))
                                          _%$e148183%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid148176%_))))
                                 _%$e148178%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid148176%_))))))
                  (if (pair? _%key148161148168%_)
                      (let ((_%hd148165148193%_
                             (let ()
                               (declare (not safe))
                               (##car _%key148161148168%_)))
                            (_%tl148166148195%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key148161148168%_))))
                        (let* ((_%eid148198%_ _%hd148165148193%_)
                               (_%mark148200%_ _%tl148166148195%_))
                          (_%K148164148190%_ _%mark148200%_ _%eid148198%_)))
                      (_%E148163148172%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self148154%_ _%stx148155%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self148001%_ _%stx148002%_)
        (letrec ((_%simplify148004%_
                  (lambda (_%body148052%_)
                    (let _%lp148054%_ ((_%rest148056%_ _%body148052%_)
                                       (_%r148057%_ '()))
                      (let* ((_%rest148058148066%_ _%rest148056%_)
                             (_%else148060148074%_
                              (lambda () (reverse _%r148057%_)))
                             (_%K148062148142%_
                              (lambda (_%rest148077%_ _%hd148078%_)
                                (let* ((_%hd148079148095%_ _%hd148078%_)
                                       (_%else148083148103%_
                                        (lambda ()
                                          (_%lp148054%_
                                           _%rest148077%_
                                           (cons _%hd148078%_ _%r148057%_)))))
                                  (let ((_%K148091148132%_
                                         (lambda (_%exprs148130%_)
                                           (_%lp148054%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest148077%_
                                               _%exprs148130%_))
                                            _%r148057%_)))
                                        (_%K148086148116%_
                                         (lambda ()
                                           (if (null? _%rest148077%_)
                                               (_%lp148054%_
                                                _%rest148077%_
                                                (cons _%hd148078%_
                                                      _%r148057%_))
                                               (_%lp148054%_
                                                _%rest148077%_
                                                _%r148057%_))))
                                        (_%K148085148108%_
                                         (lambda ()
                                           (if (null? _%rest148077%_)
                                               (_%lp148054%_
                                                _%rest148077%_
                                                (cons _%hd148078%_
                                                      _%r148057%_))
                                               (_%lp148054%_
                                                _%rest148077%_
                                                _%r148057%_)))))
                                    (let ((_%try-match148082148111%_
                                           (lambda ()
                                             (if (symbol? _%hd148079148095%_)
                                                 (_%K148085148108%_)
                                                 (_%else148083148103%_)))))
                                      (if (pair? _%hd148079148095%_)
                                          (let ((_%tl148093148137%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd148079148095%_)))
                                                (_%hd148092148135%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd148079148095%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd148092148135%_
                                                         'begin))
                                                (let ((_%exprs148140%_
                                                       _%tl148093148137%_))
                                                  (_%K148091148132%_
                                                   _%exprs148140%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd148092148135%_
                                                             'quote))
                                                    (if (pair? _%tl148093148137%_)
                                                        (let ((_%tl148090148124%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl148093148137%_))))
                  (if (null? _%tl148090148124%_)
                      (_%K148086148116%_)
                      (_%try-match148082148111%_)))
                (_%try-match148082148111%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match148082148111%_))))
                                          (_%try-match148082148111%_))))))))
                        (if (pair? _%rest148058148066%_)
                            (let ((_%hd148063148145%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest148058148066%_)))
                                  (_%tl148064148147%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest148058148066%_))))
                              (let* ((_%hd148150%_ _%hd148063148145%_)
                                     (_%rest148152%_ _%tl148064148147%_))
                                (_%K148062148142%_
                                 _%rest148152%_
                                 _%hd148150%_)))
                            (_%else148060148074%_)))))))
          (let* ((_%g148006148016%_
                  (lambda (_%g148007148013%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g148007148013%_))))
                 (_%g148005148049%_
                  (lambda (_%g148007148019%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g148007148019%_))
                        (let ((_%e148009148021%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g148007148019%_))))
                          (let ((_%hd148010148024%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148009148021%_)))
                                (_%tl148011148026%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148009148021%_))))
                            ((lambda (_%L148029%_)
                               (let* ((_%body148044%_
                                       (map (lambda (_%g148039148041%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self148001%_
                                                 _%g148039148041%_)))
                                            _%L148029%_))
                                      (_%body148046%_
                                       (_%simplify148004%_ _%body148044%_)))
                                 (if (let ((__tmp150102
                                            (length _%body148046%_)))
                                       (declare (not safe))
                                       (##fx= __tmp150102 '1))
                                     (car _%body148046%_)
                                     (cons 'begin _%body148046%_))))
                             _%tl148011148026%_)))
                        (_%g148006148016%_ _%g148007148019%_)))))
            (_%g148005148049%_ _%stx148002%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self147962%_ _%stx147963%_)
        (let* ((_%g147965147975%_
                (lambda (_%g147966147972%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147966147972%_))))
               (_%g147964147998%_
                (lambda (_%g147966147978%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147966147978%_))
                      (let ((_%e147968147980%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147966147978%_))))
                        (let ((_%hd147969147983%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147968147980%_)))
                              (_%tl147970147985%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147968147980%_))))
                          ((lambda (_%L147988%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L147988%_))))
                           _%tl147970147985%_)))
                      (_%g147965147975%_ _%g147966147978%_)))))
          (_%g147964147998%_ _%stx147963%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self147726%_ _%stx147727%_)
        (let* ((_%__stx148692148693%_ _%stx147727%_)
               (_%g147731147783%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx148692148693%_)))))
          (let ((_%__kont148694148695%_
                 (lambda (_%L147944%_ _%L147945%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self147726%_ _%L147944%_))))
                (_%__kont148696148697%_
                 (lambda (_%L147892%_ _%L147893%_ _%L147894%_)
                   (if (let ((__tmp150103
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L147894%_))))
                         (declare (not safe))
                         (##memq __tmp150103 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self147726%_ _%L147892%_)))))
                (_%__kont148700148701%_
                 (lambda (_%L147812%_ _%L147813%_)
                   (let ((_%decls147828%_ (map gx#syntax->datum _%L147813%_)))
                     (let ((__tmp150106
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls147828%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self147726%_
                                                   _%L147812%_))
                                                '())))))
                           (__tmp150104
                            (let ((__tmp150105
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp150105 _%decls147828%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp150106
                        gxc#current-compile-decls
                        __tmp150104))))))
            (let* ((_%__match148747148748%_
                    (lambda (_%e147747147836%_
                             _%hd147748147839%_
                             _%tl147749147841%_
                             _%e147750147844%_
                             _%hd147751147847%_
                             _%tl147752147849%_
                             _%e147753147852%_
                             _%hd147754147855%_
                             _%tl147755147857%_
                             _%__splice148698148699%_
                             _%target147756147860%_
                             _%tl147758147862%_)
                      (letrec ((_%loop147759147865%_
                                (lambda (_%hd147757147868%_
                                         _%param147763147870%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd147757147868%_))
                                      (let ((_%e147760147873%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd147757147868%_))))
                                        (let ((_%lp-tl147762147878%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147760147873%_)))
                                              (_%lp-hd147761147876%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147760147873%_))))
                                          (_%loop147759147865%_
                                           _%lp-tl147762147878%_
                                           (cons _%lp-hd147761147876%_
                                                 _%param147763147870%_))))
                                      (let ((_%param147764147881%_
                                             (reverse _%param147763147870%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl147752147849%_))
                                            (let ((_%e147765147884%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl147752147849%_))))
                                              (let ((_%tl147767147889%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e147765147884%_)))
                                                    (_%hd147766147887%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e147765147884%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl147767147889%_))
                                                    (let ((_%L147892%_
                                                           _%hd147766147887%_)
                                                          (_%L147893%_
                                                           _%param147764147881%_)
                                                          (_%L147894%_
                                                           _%hd147754147855%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L147894%_))
                       (not (let ((__tmp150107
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L147894%_))))
                              (declare (not safe))
                              (##memq __tmp150107 gxc#gambit-annotations))))
                  (_%__kont148696148697%_ _%L147892%_ _%L147893%_ _%L147894%_)
                  (_%__kont148700148701%_
                   _%hd147766147887%_
                   _%hd147751147847%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g147731147783%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g147731147783%_))))))))
                        (_%loop147759147865%_ _%target147756147860%_ '()))))
                   (_%__match148721148722%_
                    (lambda (_%e147735147920%_
                             _%hd147736147923%_
                             _%tl147737147925%_
                             _%e147738147928%_
                             _%hd147739147931%_
                             _%tl147740147933%_
                             _%e147741147936%_
                             _%hd147742147939%_
                             _%tl147743147941%_)
                      (let ((_%L147944%_ _%hd147742147939%_)
                            (_%L147945%_ _%hd147739147931%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L147945%_))
                            (_%__kont148694148695%_ _%L147944%_ _%L147945%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd147739147931%_))
                                (let ((_%e147753147852%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd147739147931%_))))
                                  (let ((_%tl147755147857%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e147753147852%_)))
                                        (_%hd147754147855%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e147753147852%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl147755147857%_))
                                        (let ((_%__splice148698148699%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl147755147857%_
                                                  '0))))
                                          (let ((_%tl147758147862%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice148698148699%_
                                                    '1)))
                                                (_%target147756147860%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice148698148699%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl147758147862%_))
                                                (_%__match148747148748%_
                                                 _%e147735147920%_
                                                 _%hd147736147923%_
                                                 _%tl147737147925%_
                                                 _%e147738147928%_
                                                 _%hd147739147931%_
                                                 _%tl147740147933%_
                                                 _%e147753147852%_
                                                 _%hd147754147855%_
                                                 _%tl147755147857%_
                                                 _%__splice148698148699%_
                                                 _%target147756147860%_
                                                 _%tl147758147862%_)
                                                (_%__kont148700148701%_
                                                 _%hd147742147939%_
                                                 _%hd147739147931%_))))
                                        (_%__kont148700148701%_
                                         _%hd147742147939%_
                                         _%hd147739147931%_))))
                                (_%__kont148700148701%_
                                 _%hd147742147939%_
                                 _%hd147739147931%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx148692148693%_))
                  (let ((_%e147735147920%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx148692148693%_))))
                    (let ((_%tl147737147925%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e147735147920%_)))
                          (_%hd147736147923%_
                           (let ()
                             (declare (not safe))
                             (##car _%e147735147920%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl147737147925%_))
                          (let ((_%e147738147928%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl147737147925%_))))
                            (let ((_%tl147740147933%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e147738147928%_)))
                                  (_%hd147739147931%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e147738147928%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl147740147933%_))
                                  (let ((_%e147741147936%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl147740147933%_))))
                                    (let ((_%tl147743147941%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e147741147936%_)))
                                          (_%hd147742147939%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e147741147936%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl147743147941%_))
                                          (_%__match148721148722%_
                                           _%e147735147920%_
                                           _%hd147736147923%_
                                           _%tl147737147925%_
                                           _%e147738147928%_
                                           _%hd147739147931%_
                                           _%tl147740147933%_
                                           _%e147741147936%_
                                           _%hd147742147939%_
                                           _%tl147743147941%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd147739147931%_))
                                              (let ((_%e147753147852%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd147739147931%_))))
                                                (let ((_%tl147755147857%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e147753147852%_)))
                                                      (_%hd147754147855%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e147753147852%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl147755147857%_))
                                                      (let ((_%__splice148698148699%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl147755147857%_ '0))))
                (let ((_%tl147758147862%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice148698148699%_ '1)))
                      (_%target147756147860%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice148698148699%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl147758147862%_))
                      (_%__match148747148748%_
                       _%e147735147920%_
                       _%hd147736147923%_
                       _%tl147737147925%_
                       _%e147738147928%_
                       _%hd147739147931%_
                       _%tl147740147933%_
                       _%e147753147852%_
                       _%hd147754147855%_
                       _%tl147755147857%_
                       _%__splice148698148699%_
                       _%target147756147860%_
                       _%tl147758147862%_)
                      (let () (declare (not safe)) (_%g147731147783%_)))))
              (let () (declare (not safe)) (_%g147731147783%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g147731147783%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd147739147931%_))
                                      (let ((_%e147753147852%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd147739147931%_))))
                                        (let ((_%tl147755147857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147753147852%_)))
                                              (_%hd147754147855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147753147852%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl147755147857%_))
                                              (let ((_%__splice148698148699%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl147755147857%_
                                                        '0))))
                                                (let ((_%tl147758147862%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice148698148699%_
                                                          '1)))
                                                      (_%target147756147860%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice148698148699%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl147758147862%_))
                                                      (_%__match148747148748%_
                                                       _%e147735147920%_
                                                       _%hd147736147923%_
                                                       _%tl147737147925%_
                                                       _%e147738147928%_
                                                       _%hd147739147931%_
                                                       _%tl147740147933%_
                                                       _%e147753147852%_
                                                       _%hd147754147855%_
                                                       _%tl147755147857%_
                                                       _%__splice148698148699%_
                                                       _%target147756147860%_
                                                       _%tl147758147862%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g147731147783%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g147731147783%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g147731147783%_))))))
                          (let () (declare (not safe)) (_%g147731147783%_)))))
                  (let () (declare (not safe)) (_%g147731147783%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self147685%_ _%stx147686%_)
        (let* ((_%g147688147698%_
                (lambda (_%g147689147695%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147689147695%_))))
               (_%g147687147723%_
                (lambda (_%g147689147701%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147689147701%_))
                      (let ((_%e147691147703%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147689147701%_))))
                        (let ((_%hd147692147706%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147691147703%_)))
                              (_%tl147693147708%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147691147703%_))))
                          ((lambda (_%L147711%_)
                             (let ((_%decls147721%_
                                    (map gx#syntax->datum _%L147711%_)))
                               (let ((__tmp150108
                                      (let ((__tmp150109
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp150109
                                         _%decls147721%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp150108))
                               (cons 'declare _%decls147721%_)))
                           _%tl147693147708%_)))
                      (_%g147688147698%_ _%g147689147701%_)))))
          (_%g147687147723%_ _%stx147686%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self147431%_ _%stx147432%_)
        (let* ((_%g147434147451%_
                (lambda (_%g147435147448%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147435147448%_))))
               (_%g147433147682%_
                (lambda (_%g147435147454%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147435147454%_))
                      (let ((_%e147438147456%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147435147454%_))))
                        (let ((_%hd147439147459%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147438147456%_)))
                              (_%tl147440147461%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147438147456%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147440147461%_))
                              (let ((_%e147441147464%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147440147461%_))))
                                (let ((_%hd147442147467%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147441147464%_)))
                                      (_%tl147443147469%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147441147464%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147443147469%_))
                                      (let ((_%e147444147472%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147443147469%_))))
                                        (let ((_%hd147445147475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147444147472%_)))
                                              (_%tl147446147477%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147444147472%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147446147477%_))
                                              ((lambda (_%L147480%_
                                                        _%L147481%_)
                                                 (let* ((_%__stx148800148801%_
                                                         _%L147481%_)
                                                        (_%g147498147512%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx148800148801%_)))))
                                                   (let ((_%__kont148802148803%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self147431%_
                                                               _%L147480%_))))
                                                         (_%__kont148804148805%_
                                                          (lambda (_%L147644%_)
                                                            (let ((_%eid147653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L147644%_))))
                      (let ((_%lambda-expr147654147656%_
                             (gxc#apply-find-lambda-expression _%L147480%_)))
                        (if _%lambda-expr147654147656%_
                            (let* ((_%lambda-expr147659%_
                                    _%lambda-expr147654147656%_)
                                   (__tmp150110
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp150110
                               _%lambda-expr147659%_
                               _%eid147653%_))
                            '#f))
                      (cons 'define
                            (cons _%eid147653%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self147431%_
                                           _%L147480%_))
                                        '()))))))
                 (_%__kont148806148807%_
                  (lambda ()
                    (let* ((_%tmp147519%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body147628%_
                            (let _%lp147521%_ ((_%rest147523%_ _%L147481%_)
                                               (_%k147524%_ '0)
                                               (_%r147525%_ '()))
                              (let* ((_%__stx148770148771%_ _%rest147523%_)
                                     (_%g147530147547%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx148770148771%_)))))
                                (let ((_%__kont148772148773%_
                                       (lambda (_%L147615%_)
                                         (_%lp147521%_
                                          _%L147615%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k147524%_ '1))
                                          _%r147525%_)))
                                      (_%__kont148774148775%_
                                       (lambda (_%L147588%_ _%L147589%_)
                                         (_%lp147521%_
                                          _%L147588%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k147524%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L147589%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp147519%_
                           _%k147524%_
                           _%L147588%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r147525%_))))
                                      (_%__kont148776148777%_
                                       (lambda (_%L147559%_)
                                         (let ((__tmp150111
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L147559%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp147519%_
                                 _%k147524%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp150111
                                            _%r147525%_))))
                                      (_%__kont148778148779%_
                                       (lambda () (reverse _%r147525%_))))
                                  (let ((_%g147528147575%_
                                         (lambda ()
                                           (let ((_%L147559%_
                                                  _%__stx148770148771%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L147559%_))
                                                 (_%__kont148776148777%_
                                                  _%L147559%_)
                                                 (_%__kont148778148779%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx148770148771%_))
                                        (let ((_%e147533147604%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx148770148771%_))))
                                          (let ((_%tl147535147609%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e147533147604%_)))
                                                (_%hd147534147607%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e147533147604%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd147534147607%_))
                                                (let ((_%e147536147612%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd147534147607%_))))
                                                  (if (equal? _%e147536147612%_
                                                              '#f)
                                                      (_%__kont148772148773%_
                                                       _%tl147535147609%_)
                                                      (_%__kont148774148775%_
                                                       _%tl147535147609%_
                                                       _%hd147534147607%_)))
                                                (_%__kont148774148775%_
                                                 _%tl147535147609%_
                                                 _%hd147534147607%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g147528147575%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp147519%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self147431%_
                                                       _%L147480%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp147519%_
                                         _%L147481%_
                                         _%L147480%_)
                                        _%body147628%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx148800148801%_))
                                                         (let ((_%e147500147666%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx148800148801%_))))
                   (let ((_%tl147502147671%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e147500147666%_)))
                         (_%hd147501147669%_
                          (let ()
                            (declare (not safe))
                            (##car _%e147500147666%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd147501147669%_))
                         (let ((_%e147503147674%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd147501147669%_))))
                           (if (equal? _%e147503147674%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl147502147671%_))
                                   (_%__kont148802148803%_)
                                   (_%__kont148806148807%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl147502147671%_))
                                   (_%__kont148804148805%_ _%hd147501147669%_)
                                   (_%__kont148806148807%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl147502147671%_))
                             (_%__kont148804148805%_ _%hd147501147669%_)
                             (_%__kont148806148807%_)))))
                 (_%__kont148806148807%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd147445147475%_
                                               _%hd147442147467%_)
                                              (_%g147434147451%_
                                               _%g147435147454%_))))
                                      (_%g147434147451%_ _%g147435147454%_))))
                              (_%g147434147451%_ _%g147435147454%_))))
                      (_%g147434147451%_ _%g147435147454%_)))))
          (_%g147433147682%_ _%stx147432%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals147406%_ _%hd147407%_ _%expr147408%_)
        (let ((_%$e147410%_ (gxc#apply-count-values _%expr147408%_)))
          (if _%$e147410%_
              ((lambda (_%count147413%_)
                 (let ((_%len147415%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd147407%_)))
                       (_%cmp147416%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd147407%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len147415%_ '0))
                           (_%cmp147416%_ _%count147413%_ _%len147415%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr147408%_
                          _%hd147407%_)))))
               _%$e147410%_)
              (let* ((_%len147422%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd147407%_)))
                     (_%cmp147424%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd147407%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg147426%_
                      (let ((__tmp150113
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd147407%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp150112 (number->string _%len147422%_)))
                        (declare (not safe))
                        (##string-append __tmp150113 __tmp150112 '" values")))
                     (_%count147428%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd147407%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len147422%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count147428%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals147406%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp147424%_
                                (cons _%count147428%_
                                      (cons _%len147422%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp147424%_
                                                        (cons _%count147428%_
                                                              (cons _%len147422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg147426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count147428%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var147401%_)
        (letrec ((_%generate-inline147403%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var147401%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var147401%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline147403%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline147403%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var147394%_ _%i147395%_ _%rest147396%_)
        (letrec ((_%generate-inline147398%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i147395%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest147396%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var147394%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var147394%_
                                                      (cons '0 '())))
                                          (cons _%var147394%_ '()))))
                        (cons '##values-ref
                              (cons _%var147394%_ (cons _%i147395%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline147398%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline147398%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var147388%_ _%i147389%_)
        (if (let () (declare (not safe)) (##fx= _%i147389%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var147388%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var147388%_ '()))
                                  (cons (cons 'list (cons _%var147388%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var147388%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var147388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var147388%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i147389%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var147388%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var147388%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var147388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var147388%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var147388%_ '()))
                                (cons _%i147389%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var147388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i147389%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self147320%_ _%stx147321%_)
        (let* ((_%g147323147340%_
                (lambda (_%g147324147337%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147324147337%_))))
               (_%g147322147385%_
                (lambda (_%g147324147343%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147324147343%_))
                      (let ((_%e147327147345%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147324147343%_))))
                        (let ((_%hd147328147348%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147327147345%_)))
                              (_%tl147329147350%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147327147345%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147329147350%_))
                              (let ((_%e147330147353%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147329147350%_))))
                                (let ((_%hd147331147356%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147330147353%_)))
                                      (_%tl147332147358%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147330147353%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147332147358%_))
                                      (let ((_%e147333147361%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147332147358%_))))
                                        (let ((_%hd147334147364%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147333147361%_)))
                                              (_%tl147335147366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147333147361%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147335147366%_))
                                              ((lambda (_%L147369%_
                                                        _%L147370%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self147320%_
                                                  _%L147370%_
                                                  _%L147369%_))
                                               _%hd147334147364%_
                                               _%hd147331147356%_)
                                              (_%g147323147340%_
                                               _%g147324147343%_))))
                                      (_%g147323147340%_ _%g147324147343%_))))
                              (_%g147323147340%_ _%g147324147343%_))))
                      (_%g147323147340%_ _%g147324147343%_)))))
          (_%g147322147385%_ _%stx147321%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self147279%_ _%hd147280%_ _%body147281%_)
        (let* ((_%hd147283%_ (gxc#generate-runtime-lambda-head _%hd147280%_))
               (_%body147285%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self147279%_ _%body147281%_)))
               (_%body147317%_
                (let* ((_%body147286147294%_ _%body147285%_)
                       (_%else147288147302%_
                        (lambda () (cons _%body147285%_ '())))
                       (_%K147290147307%_
                        (lambda (_%exprs147305%_) _%exprs147305%_)))
                  (if (pair? _%body147286147294%_)
                      (let ((_%hd147291147310%_
                             (let ()
                               (declare (not safe))
                               (##car _%body147286147294%_)))
                            (_%tl147292147312%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body147286147294%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd147291147310%_ 'begin))
                            (let ((_%exprs147315%_ _%tl147292147312%_))
                              (_%K147290147307%_ _%exprs147315%_))
                            (_%else147288147302%_)))
                      (_%else147288147302%_)))))
          (cons 'lambda (cons _%hd147283%_ _%body147317%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd147277%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd147277%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self145816%_ _%stx145817%_)
        (letrec ((_%dispatch-case?145819%_
                  (lambda (_%hd146507%_ _%body146508%_)
                    (let* ((_%form146510%_
                            (cons _%hd146507%_ (cons _%body146508%_ '())))
                           (_%__stx148832148833%_ _%form146510%_)
                           (_%g146515146672%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx148832148833%_)))))
                      (let ((_%__kont148834148835%_
                             (lambda (_%L147197%_ _%L147198%_ _%L147199%_)
                               '#t))
                            (_%__kont148840148841%_
                             (lambda (_%L146985%_
                                      _%L146986%_
                                      _%L146987%_
                                      _%L146988%_
                                      _%L146989%_
                                      _%L146990%_)
                               '#t))
                            (_%__kont148846148847%_
                             (lambda (_%L146780%_
                                      _%L146781%_
                                      _%L146782%_
                                      _%L146783%_)
                               '#t))
                            (_%__kont148848148849%_ (lambda () '#f)))
                        (let* ((_%__match148973148974%_
                                (lambda (_%e146632146684%_
                                         _%hd146633146687%_
                                         _%tl146634146689%_
                                         _%e146635146692%_
                                         _%hd146636146695%_
                                         _%tl146637146697%_
                                         _%e146638146700%_
                                         _%hd146639146703%_
                                         _%tl146640146705%_
                                         _%e146641146708%_
                                         _%hd146642146711%_
                                         _%tl146643146713%_
                                         _%e146644146716%_
                                         _%hd146645146719%_
                                         _%tl146646146721%_
                                         _%e146647146724%_
                                         _%hd146648146727%_
                                         _%tl146649146729%_
                                         _%e146650146732%_
                                         _%hd146651146735%_
                                         _%tl146652146737%_
                                         _%e146653146740%_
                                         _%hd146654146743%_
                                         _%tl146655146745%_
                                         _%e146656146748%_
                                         _%hd146657146751%_
                                         _%tl146658146753%_
                                         _%e146659146756%_
                                         _%hd146660146759%_
                                         _%tl146661146761%_
                                         _%e146662146764%_
                                         _%hd146663146767%_
                                         _%tl146664146769%_
                                         _%e146665146772%_
                                         _%hd146666146775%_
                                         _%tl146667146777%_)
                                  (let ((_%L146780%_ _%hd146666146775%_)
                                        (_%L146781%_ _%hd146657146751%_)
                                        (_%L146782%_ _%hd146648146727%_)
                                        (_%L146783%_ _%hd146633146687%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L146783%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L146782%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L146783%_
                                                _%L146780%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L146781%_
                                                     _%L146783%_))))
                                        (_%__kont148846148847%_
                                         _%L146780%_
                                         _%L146781%_
                                         _%L146782%_
                                         _%L146783%_)
                                        (_%__kont148848148849%_)))))
                               (_%__match148945148946%_
                                (lambda (_%e146632146684%_
                                         _%hd146633146687%_
                                         _%tl146634146689%_
                                         _%e146635146692%_
                                         _%hd146636146695%_
                                         _%tl146637146697%_
                                         _%e146638146700%_
                                         _%hd146639146703%_
                                         _%tl146640146705%_
                                         _%e146641146708%_
                                         _%hd146642146711%_
                                         _%tl146643146713%_
                                         _%e146644146716%_
                                         _%hd146645146719%_
                                         _%tl146646146721%_
                                         _%e146647146724%_
                                         _%hd146648146727%_
                                         _%tl146649146729%_
                                         _%e146650146732%_
                                         _%hd146651146735%_
                                         _%tl146652146737%_
                                         _%e146653146740%_
                                         _%hd146654146743%_
                                         _%tl146655146745%_
                                         _%e146656146748%_
                                         _%hd146657146751%_
                                         _%tl146658146753%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146652146737%_))
                                      (let ((_%e146659146756%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146652146737%_))))
                                        (let ((_%tl146661146761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146659146756%_)))
                                              (_%hd146660146759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146659146756%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd146660146759%_))
                                              (let ((_%e146662146764%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd146660146759%_))))
                                                (let ((_%tl146664146769%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146662146764%_)))
                                                      (_%hd146663146767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146662146764%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd146663146767%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd146663146767%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl146664146769%_))
                      (let ((_%e146665146772%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl146664146769%_))))
                        (let ((_%tl146667146777%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146665146772%_)))
                              (_%hd146666146775%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146665146772%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl146667146777%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl146661146761%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl146637146697%_))
                                      (_%__match148973148974%_
                                       _%e146632146684%_
                                       _%hd146633146687%_
                                       _%tl146634146689%_
                                       _%e146635146692%_
                                       _%hd146636146695%_
                                       _%tl146637146697%_
                                       _%e146638146700%_
                                       _%hd146639146703%_
                                       _%tl146640146705%_
                                       _%e146641146708%_
                                       _%hd146642146711%_
                                       _%tl146643146713%_
                                       _%e146644146716%_
                                       _%hd146645146719%_
                                       _%tl146646146721%_
                                       _%e146647146724%_
                                       _%hd146648146727%_
                                       _%tl146649146729%_
                                       _%e146650146732%_
                                       _%hd146651146735%_
                                       _%tl146652146737%_
                                       _%e146653146740%_
                                       _%hd146654146743%_
                                       _%tl146655146745%_
                                       _%e146656146748%_
                                       _%hd146657146751%_
                                       _%tl146658146753%_
                                       _%e146659146756%_
                                       _%hd146660146759%_
                                       _%tl146661146761%_
                                       _%e146662146764%_
                                       _%hd146663146767%_
                                       _%tl146664146769%_
                                       _%e146665146772%_
                                       _%hd146666146775%_
                                       _%tl146667146777%_)
                                      (_%__kont148848148849%_))
                                  (_%__kont148848148849%_))
                              (_%__kont148848148849%_))))
                      (_%__kont148848148849%_))
                  (_%__kont148848148849%_))
              (_%__kont148848148849%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont148848148849%_))))
                                      (_%__kont148848148849%_))))
                               (_%__match148875148876%_
                                (lambda (_%e146568146825%_
                                         _%hd146569146828%_
                                         _%tl146570146830%_
                                         _%__splice148842148843%_
                                         _%target146571146833%_
                                         _%tl146573146835%_)
                                  (letrec ((_%loop146574146838%_
                                            (lambda (_%hd146572146841%_
                                                     _%arg146578146843%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146572146841%_))
                                                  (let ((_%e146575146846%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146572146841%_))))
                                                    (let ((_%lp-tl146577146851%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146575146846%_)))
                                                          (_%lp-hd146576146849%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146575146846%_))))
                                                      (_%loop146574146838%_
                                                       _%lp-tl146577146851%_
                                                       (cons _%lp-hd146576146849%_
                                                             _%arg146578146843%_))))
                                                  (let ((_%arg146579146854%_
                                                         (reverse _%arg146578146843%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl146570146830%_))
                                                        (let ((_%e146580146857%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl146570146830%_))))
                  (let ((_%tl146582146862%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146580146857%_)))
                        (_%hd146581146860%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146580146857%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd146581146860%_))
                        (let ((_%e146583146865%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd146581146860%_))))
                          (let ((_%tl146585146870%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146583146865%_)))
                                (_%hd146584146868%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146583146865%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146584146868%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd146584146868%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146585146870%_))
                                        (let ((_%e146586146873%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146585146870%_))))
                                          (let ((_%tl146588146878%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146586146873%_)))
                                                (_%hd146587146876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146586146873%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd146587146876%_))
                                                (let ((_%e146589146881%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146587146876%_))))
                                                  (let ((_%tl146591146886%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e146589146881%_)))
                                                        (_%hd146590146884%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e146589146881%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd146590146884%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd146590146884%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl146591146886%_))
                        (let ((_%e146592146889%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl146591146886%_))))
                          (let ((_%tl146594146894%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146592146889%_)))
                                (_%hd146593146892%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146592146889%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146594146894%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl146588146878%_))
                                    (let ((_%e146595146897%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl146588146878%_))))
                                      (let ((_%tl146597146902%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e146595146897%_)))
                                            (_%hd146596146900%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e146595146897%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd146596146900%_))
                                            (let ((_%e146598146905%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd146596146900%_))))
                                              (let ((_%tl146600146910%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146598146905%_)))
                                                    (_%hd146599146908%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146598146905%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd146599146908%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd146599146908%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl146600146910%_))
                                                            (let ((_%e146601146913%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl146600146910%_))))
                      (let ((_%tl146603146918%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e146601146913%_)))
                            (_%hd146602146916%_
                             (let ()
                               (declare (not safe))
                               (##car _%e146601146913%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl146603146918%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl146597146902%_))
                                (if (let ((__tmp150114
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl146597146902%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp150114 '1))
                                    (let ((_%__splice148844148845%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl146597146902%_
                                              '1))))
                                      (let ((_%tl146606146923%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148844148845%_
                                                '1)))
                                            (_%target146604146921%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148844148845%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl146606146923%_))
                                            (let ((_%e146613146926%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl146606146923%_))))
                                              (let ((_%tl146615146931%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146613146926%_)))
                                                    (_%hd146614146929%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146613146926%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd146614146929%_))
                                                    (let ((_%e146616146934%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd146614146929%_))))
                                                      (let ((_%tl146618146939%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e146616146934%_)))
                    (_%hd146617146937%_
                     (let () (declare (not safe)) (##car _%e146616146934%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd146617146937%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd146617146937%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl146618146939%_))
                            (let ((_%e146619146942%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl146618146939%_))))
                              (let ((_%tl146621146947%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e146619146942%_)))
                                    (_%hd146620146945%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e146619146942%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl146621146947%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl146615146931%_))
                                        (letrec ((_%loop146607146950%_
                                                  (lambda (_%hd146605146953%_
                                                           _%xarg146611146955%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd146605146953%_))
                                                        (let ((_%e146608146958%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd146605146953%_))))
                  (let ((_%lp-tl146610146963%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146608146958%_)))
                        (_%lp-hd146609146961%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146608146958%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd146609146961%_))
                        (let ((_%e146622146966%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd146609146961%_))))
                          (let ((_%tl146624146971%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146622146966%_)))
                                (_%hd146623146969%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146622146966%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146623146969%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd146623146969%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146624146971%_))
                                        (let ((_%e146625146974%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146624146971%_))))
                                          (let ((_%tl146627146979%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146625146974%_)))
                                                (_%hd146626146977%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146625146974%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl146627146979%_))
                                                (_%loop146607146950%_
                                                 _%lp-tl146610146963%_
                                                 (cons _%hd146626146977%_
                                                       _%xarg146611146955%_))
                                                (_%__match148945148946%_
                                                 _%e146568146825%_
                                                 _%hd146569146828%_
                                                 _%tl146570146830%_
                                                 _%e146580146857%_
                                                 _%hd146581146860%_
                                                 _%tl146582146862%_
                                                 _%e146583146865%_
                                                 _%hd146584146868%_
                                                 _%tl146585146870%_
                                                 _%e146586146873%_
                                                 _%hd146587146876%_
                                                 _%tl146588146878%_
                                                 _%e146589146881%_
                                                 _%hd146590146884%_
                                                 _%tl146591146886%_
                                                 _%e146592146889%_
                                                 _%hd146593146892%_
                                                 _%tl146594146894%_
                                                 _%e146595146897%_
                                                 _%hd146596146900%_
                                                 _%tl146597146902%_
                                                 _%e146598146905%_
                                                 _%hd146599146908%_
                                                 _%tl146600146910%_
                                                 _%e146601146913%_
                                                 _%hd146602146916%_
                                                 _%tl146603146918%_))))
                                        (_%__match148945148946%_
                                         _%e146568146825%_
                                         _%hd146569146828%_
                                         _%tl146570146830%_
                                         _%e146580146857%_
                                         _%hd146581146860%_
                                         _%tl146582146862%_
                                         _%e146583146865%_
                                         _%hd146584146868%_
                                         _%tl146585146870%_
                                         _%e146586146873%_
                                         _%hd146587146876%_
                                         _%tl146588146878%_
                                         _%e146589146881%_
                                         _%hd146590146884%_
                                         _%tl146591146886%_
                                         _%e146592146889%_
                                         _%hd146593146892%_
                                         _%tl146594146894%_
                                         _%e146595146897%_
                                         _%hd146596146900%_
                                         _%tl146597146902%_
                                         _%e146598146905%_
                                         _%hd146599146908%_
                                         _%tl146600146910%_
                                         _%e146601146913%_
                                         _%hd146602146916%_
                                         _%tl146603146918%_))
                                    (_%__match148945148946%_
                                     _%e146568146825%_
                                     _%hd146569146828%_
                                     _%tl146570146830%_
                                     _%e146580146857%_
                                     _%hd146581146860%_
                                     _%tl146582146862%_
                                     _%e146583146865%_
                                     _%hd146584146868%_
                                     _%tl146585146870%_
                                     _%e146586146873%_
                                     _%hd146587146876%_
                                     _%tl146588146878%_
                                     _%e146589146881%_
                                     _%hd146590146884%_
                                     _%tl146591146886%_
                                     _%e146592146889%_
                                     _%hd146593146892%_
                                     _%tl146594146894%_
                                     _%e146595146897%_
                                     _%hd146596146900%_
                                     _%tl146597146902%_
                                     _%e146598146905%_
                                     _%hd146599146908%_
                                     _%tl146600146910%_
                                     _%e146601146913%_
                                     _%hd146602146916%_
                                     _%tl146603146918%_))
                                (_%__match148945148946%_
                                 _%e146568146825%_
                                 _%hd146569146828%_
                                 _%tl146570146830%_
                                 _%e146580146857%_
                                 _%hd146581146860%_
                                 _%tl146582146862%_
                                 _%e146583146865%_
                                 _%hd146584146868%_
                                 _%tl146585146870%_
                                 _%e146586146873%_
                                 _%hd146587146876%_
                                 _%tl146588146878%_
                                 _%e146589146881%_
                                 _%hd146590146884%_
                                 _%tl146591146886%_
                                 _%e146592146889%_
                                 _%hd146593146892%_
                                 _%tl146594146894%_
                                 _%e146595146897%_
                                 _%hd146596146900%_
                                 _%tl146597146902%_
                                 _%e146598146905%_
                                 _%hd146599146908%_
                                 _%tl146600146910%_
                                 _%e146601146913%_
                                 _%hd146602146916%_
                                 _%tl146603146918%_))))
                        (_%__match148945148946%_
                         _%e146568146825%_
                         _%hd146569146828%_
                         _%tl146570146830%_
                         _%e146580146857%_
                         _%hd146581146860%_
                         _%tl146582146862%_
                         _%e146583146865%_
                         _%hd146584146868%_
                         _%tl146585146870%_
                         _%e146586146873%_
                         _%hd146587146876%_
                         _%tl146588146878%_
                         _%e146589146881%_
                         _%hd146590146884%_
                         _%tl146591146886%_
                         _%e146592146889%_
                         _%hd146593146892%_
                         _%tl146594146894%_
                         _%e146595146897%_
                         _%hd146596146900%_
                         _%tl146597146902%_
                         _%e146598146905%_
                         _%hd146599146908%_
                         _%tl146600146910%_
                         _%e146601146913%_
                         _%hd146602146916%_
                         _%tl146603146918%_))))
                (let ((_%xarg146612146982%_ (reverse _%xarg146611146955%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl146582146862%_))
                      (let ((_%L146985%_ _%hd146620146945%_)
                            (_%L146986%_ _%xarg146612146982%_)
                            (_%L146987%_ _%hd146602146916%_)
                            (_%L146988%_ _%hd146593146892%_)
                            (_%L146989%_ _%tl146573146835%_)
                            (_%L146990%_ _%arg146579146854%_))
                        (if (and (let ((__tmp150115
                                        (let ((__tmp150116
                                               (lambda (_%g147033147036%_
                                                        _%g147034147038%_)
                                                 (cons _%g147033147036%_
                                                       _%g147034147038%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp150116
                                           '()
                                           _%L146990%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp150115))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L146989%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L146988%_
                                    'apply))
                                 (let ((__tmp150119
                                        (length (let ((__tmp150120
                                                       (lambda (_%g147040147043%_
                                                                _%g147041147045%_)
                                                         (cons _%g147040147043%_
                                                               _%g147041147045%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp150120
                                                   '()
                                                   _%L146990%_))))
                                       (__tmp150117
                                        (length (let ((__tmp150118
                                                       (lambda (_%g147047147050%_
                                                                _%g147048147052%_)
                                                         (cons _%g147047147050%_
                                                               _%g147048147052%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp150118
                                                   '()
                                                   _%L146986%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp150119 __tmp150117))
                                 (let ((__tmp150123
                                        (let ((__tmp150124
                                               (lambda (_%g147054147057%_
                                                        _%g147055147059%_)
                                                 (cons _%g147054147057%_
                                                       _%g147055147059%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp150124
                                           '()
                                           _%L146990%_)))
                                       (__tmp150121
                                        (let ((__tmp150122
                                               (lambda (_%g147061147064%_
                                                        _%g147062147066%_)
                                                 (cons _%g147061147064%_
                                                       _%g147062147066%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp150122
                                           '()
                                           _%L146986%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp150123
                                    __tmp150121))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L146989%_
                                    _%L146985%_))
                                 (not (let ((__tmp150128
                                             (lambda (_%g147068147070%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g147068147070%_
                                                  _%L146987%_))))
                                            (__tmp150125
                                             (let ((__tmp150127
                                                    (lambda (_%g147072147075%_
                                                             _%g147073147077%_)
                                                      (cons _%g147072147075%_
                                                            _%g147073147077%_)))
                                                   (__tmp150126
                                                    (cons _%L146989%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp150127
                                                __tmp150126
                                                _%L146990%_))))
                                        (declare (not safe))
                                        (__find __tmp150128 __tmp150125))))
                            (_%__kont148840148841%_
                             _%L146985%_
                             _%L146986%_
                             _%L146987%_
                             _%L146988%_
                             _%L146989%_
                             _%L146990%_)
                            (_%__match148945148946%_
                             _%e146568146825%_
                             _%hd146569146828%_
                             _%tl146570146830%_
                             _%e146580146857%_
                             _%hd146581146860%_
                             _%tl146582146862%_
                             _%e146583146865%_
                             _%hd146584146868%_
                             _%tl146585146870%_
                             _%e146586146873%_
                             _%hd146587146876%_
                             _%tl146588146878%_
                             _%e146589146881%_
                             _%hd146590146884%_
                             _%tl146591146886%_
                             _%e146592146889%_
                             _%hd146593146892%_
                             _%tl146594146894%_
                             _%e146595146897%_
                             _%hd146596146900%_
                             _%tl146597146902%_
                             _%e146598146905%_
                             _%hd146599146908%_
                             _%tl146600146910%_
                             _%e146601146913%_
                             _%hd146602146916%_
                             _%tl146603146918%_)))
                      (_%__match148945148946%_
                       _%e146568146825%_
                       _%hd146569146828%_
                       _%tl146570146830%_
                       _%e146580146857%_
                       _%hd146581146860%_
                       _%tl146582146862%_
                       _%e146583146865%_
                       _%hd146584146868%_
                       _%tl146585146870%_
                       _%e146586146873%_
                       _%hd146587146876%_
                       _%tl146588146878%_
                       _%e146589146881%_
                       _%hd146590146884%_
                       _%tl146591146886%_
                       _%e146592146889%_
                       _%hd146593146892%_
                       _%tl146594146894%_
                       _%e146595146897%_
                       _%hd146596146900%_
                       _%tl146597146902%_
                       _%e146598146905%_
                       _%hd146599146908%_
                       _%tl146600146910%_
                       _%e146601146913%_
                       _%hd146602146916%_
                       _%tl146603146918%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop146607146950%_
                                           _%target146604146921%_
                                           '()))
                                        (_%__match148945148946%_
                                         _%e146568146825%_
                                         _%hd146569146828%_
                                         _%tl146570146830%_
                                         _%e146580146857%_
                                         _%hd146581146860%_
                                         _%tl146582146862%_
                                         _%e146583146865%_
                                         _%hd146584146868%_
                                         _%tl146585146870%_
                                         _%e146586146873%_
                                         _%hd146587146876%_
                                         _%tl146588146878%_
                                         _%e146589146881%_
                                         _%hd146590146884%_
                                         _%tl146591146886%_
                                         _%e146592146889%_
                                         _%hd146593146892%_
                                         _%tl146594146894%_
                                         _%e146595146897%_
                                         _%hd146596146900%_
                                         _%tl146597146902%_
                                         _%e146598146905%_
                                         _%hd146599146908%_
                                         _%tl146600146910%_
                                         _%e146601146913%_
                                         _%hd146602146916%_
                                         _%tl146603146918%_))
                                    (_%__match148945148946%_
                                     _%e146568146825%_
                                     _%hd146569146828%_
                                     _%tl146570146830%_
                                     _%e146580146857%_
                                     _%hd146581146860%_
                                     _%tl146582146862%_
                                     _%e146583146865%_
                                     _%hd146584146868%_
                                     _%tl146585146870%_
                                     _%e146586146873%_
                                     _%hd146587146876%_
                                     _%tl146588146878%_
                                     _%e146589146881%_
                                     _%hd146590146884%_
                                     _%tl146591146886%_
                                     _%e146592146889%_
                                     _%hd146593146892%_
                                     _%tl146594146894%_
                                     _%e146595146897%_
                                     _%hd146596146900%_
                                     _%tl146597146902%_
                                     _%e146598146905%_
                                     _%hd146599146908%_
                                     _%tl146600146910%_
                                     _%e146601146913%_
                                     _%hd146602146916%_
                                     _%tl146603146918%_))))
                            (_%__match148945148946%_
                             _%e146568146825%_
                             _%hd146569146828%_
                             _%tl146570146830%_
                             _%e146580146857%_
                             _%hd146581146860%_
                             _%tl146582146862%_
                             _%e146583146865%_
                             _%hd146584146868%_
                             _%tl146585146870%_
                             _%e146586146873%_
                             _%hd146587146876%_
                             _%tl146588146878%_
                             _%e146589146881%_
                             _%hd146590146884%_
                             _%tl146591146886%_
                             _%e146592146889%_
                             _%hd146593146892%_
                             _%tl146594146894%_
                             _%e146595146897%_
                             _%hd146596146900%_
                             _%tl146597146902%_
                             _%e146598146905%_
                             _%hd146599146908%_
                             _%tl146600146910%_
                             _%e146601146913%_
                             _%hd146602146916%_
                             _%tl146603146918%_))
                        (_%__match148945148946%_
                         _%e146568146825%_
                         _%hd146569146828%_
                         _%tl146570146830%_
                         _%e146580146857%_
                         _%hd146581146860%_
                         _%tl146582146862%_
                         _%e146583146865%_
                         _%hd146584146868%_
                         _%tl146585146870%_
                         _%e146586146873%_
                         _%hd146587146876%_
                         _%tl146588146878%_
                         _%e146589146881%_
                         _%hd146590146884%_
                         _%tl146591146886%_
                         _%e146592146889%_
                         _%hd146593146892%_
                         _%tl146594146894%_
                         _%e146595146897%_
                         _%hd146596146900%_
                         _%tl146597146902%_
                         _%e146598146905%_
                         _%hd146599146908%_
                         _%tl146600146910%_
                         _%e146601146913%_
                         _%hd146602146916%_
                         _%tl146603146918%_))
                    (_%__match148945148946%_
                     _%e146568146825%_
                     _%hd146569146828%_
                     _%tl146570146830%_
                     _%e146580146857%_
                     _%hd146581146860%_
                     _%tl146582146862%_
                     _%e146583146865%_
                     _%hd146584146868%_
                     _%tl146585146870%_
                     _%e146586146873%_
                     _%hd146587146876%_
                     _%tl146588146878%_
                     _%e146589146881%_
                     _%hd146590146884%_
                     _%tl146591146886%_
                     _%e146592146889%_
                     _%hd146593146892%_
                     _%tl146594146894%_
                     _%e146595146897%_
                     _%hd146596146900%_
                     _%tl146597146902%_
                     _%e146598146905%_
                     _%hd146599146908%_
                     _%tl146600146910%_
                     _%e146601146913%_
                     _%hd146602146916%_
                     _%tl146603146918%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match148945148946%_
                                                     _%e146568146825%_
                                                     _%hd146569146828%_
                                                     _%tl146570146830%_
                                                     _%e146580146857%_
                                                     _%hd146581146860%_
                                                     _%tl146582146862%_
                                                     _%e146583146865%_
                                                     _%hd146584146868%_
                                                     _%tl146585146870%_
                                                     _%e146586146873%_
                                                     _%hd146587146876%_
                                                     _%tl146588146878%_
                                                     _%e146589146881%_
                                                     _%hd146590146884%_
                                                     _%tl146591146886%_
                                                     _%e146592146889%_
                                                     _%hd146593146892%_
                                                     _%tl146594146894%_
                                                     _%e146595146897%_
                                                     _%hd146596146900%_
                                                     _%tl146597146902%_
                                                     _%e146598146905%_
                                                     _%hd146599146908%_
                                                     _%tl146600146910%_
                                                     _%e146601146913%_
                                                     _%hd146602146916%_
                                                     _%tl146603146918%_))))
                                            (_%__match148945148946%_
                                             _%e146568146825%_
                                             _%hd146569146828%_
                                             _%tl146570146830%_
                                             _%e146580146857%_
                                             _%hd146581146860%_
                                             _%tl146582146862%_
                                             _%e146583146865%_
                                             _%hd146584146868%_
                                             _%tl146585146870%_
                                             _%e146586146873%_
                                             _%hd146587146876%_
                                             _%tl146588146878%_
                                             _%e146589146881%_
                                             _%hd146590146884%_
                                             _%tl146591146886%_
                                             _%e146592146889%_
                                             _%hd146593146892%_
                                             _%tl146594146894%_
                                             _%e146595146897%_
                                             _%hd146596146900%_
                                             _%tl146597146902%_
                                             _%e146598146905%_
                                             _%hd146599146908%_
                                             _%tl146600146910%_
                                             _%e146601146913%_
                                             _%hd146602146916%_
                                             _%tl146603146918%_))))
                                    (_%__match148945148946%_
                                     _%e146568146825%_
                                     _%hd146569146828%_
                                     _%tl146570146830%_
                                     _%e146580146857%_
                                     _%hd146581146860%_
                                     _%tl146582146862%_
                                     _%e146583146865%_
                                     _%hd146584146868%_
                                     _%tl146585146870%_
                                     _%e146586146873%_
                                     _%hd146587146876%_
                                     _%tl146588146878%_
                                     _%e146589146881%_
                                     _%hd146590146884%_
                                     _%tl146591146886%_
                                     _%e146592146889%_
                                     _%hd146593146892%_
                                     _%tl146594146894%_
                                     _%e146595146897%_
                                     _%hd146596146900%_
                                     _%tl146597146902%_
                                     _%e146598146905%_
                                     _%hd146599146908%_
                                     _%tl146600146910%_
                                     _%e146601146913%_
                                     _%hd146602146916%_
                                     _%tl146603146918%_))
                                (_%__match148945148946%_
                                 _%e146568146825%_
                                 _%hd146569146828%_
                                 _%tl146570146830%_
                                 _%e146580146857%_
                                 _%hd146581146860%_
                                 _%tl146582146862%_
                                 _%e146583146865%_
                                 _%hd146584146868%_
                                 _%tl146585146870%_
                                 _%e146586146873%_
                                 _%hd146587146876%_
                                 _%tl146588146878%_
                                 _%e146589146881%_
                                 _%hd146590146884%_
                                 _%tl146591146886%_
                                 _%e146592146889%_
                                 _%hd146593146892%_
                                 _%tl146594146894%_
                                 _%e146595146897%_
                                 _%hd146596146900%_
                                 _%tl146597146902%_
                                 _%e146598146905%_
                                 _%hd146599146908%_
                                 _%tl146600146910%_
                                 _%e146601146913%_
                                 _%hd146602146916%_
                                 _%tl146603146918%_))
                            (_%__kont148848148849%_))))
                    (_%__kont148848148849%_))
                (_%__kont148848148849%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont148848148849%_))))
                                            (_%__kont148848148849%_))))
                                    (_%__kont148848148849%_))
                                (_%__kont148848148849%_))))
                        (_%__kont148848148849%_))
                    (_%__kont148848148849%_))
                (_%__kont148848148849%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont148848148849%_))))
                                        (_%__kont148848148849%_))
                                    (_%__kont148848148849%_))
                                (_%__kont148848148849%_))))
                        (_%__kont148848148849%_))))
                (_%__kont148848148849%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop146574146838%_
                                     _%target146571146833%_
                                     '()))))
                               (_%__match148863148864%_
                                (lambda (_%e146520147085%_
                                         _%hd146521147088%_
                                         _%tl146522147090%_
                                         _%__splice148836148837%_
                                         _%target146523147093%_
                                         _%tl146525147095%_)
                                  (letrec ((_%loop146526147098%_
                                            (lambda (_%hd146524147101%_
                                                     _%arg146530147103%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146524147101%_))
                                                  (let ((_%e146527147106%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146524147101%_))))
                                                    (let ((_%lp-tl146529147111%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146527147106%_)))
                                                          (_%lp-hd146528147109%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146527147106%_))))
                                                      (_%loop146526147098%_
                                                       _%lp-tl146529147111%_
                                                       (cons _%lp-hd146528147109%_
                                                             _%arg146530147103%_))))
                                                  (let ((_%arg146531147114%_
                                                         (reverse _%arg146530147103%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl146522147090%_))
                                                        (let ((_%e146532147117%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl146522147090%_))))
                  (let ((_%tl146534147122%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146532147117%_)))
                        (_%hd146533147120%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146532147117%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd146533147120%_))
                        (let ((_%e146535147125%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd146533147120%_))))
                          (let ((_%tl146537147130%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146535147125%_)))
                                (_%hd146536147128%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146535147125%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146536147128%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd146536147128%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146537147130%_))
                                        (let ((_%e146538147133%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146537147130%_))))
                                          (let ((_%tl146540147138%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146538147133%_)))
                                                (_%hd146539147136%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146538147133%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd146539147136%_))
                                                (let ((_%e146541147141%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146539147136%_))))
                                                  (let ((_%tl146543147146%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e146541147141%_)))
                                                        (_%hd146542147144%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e146541147141%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd146542147144%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd146542147144%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl146543147146%_))
                        (let ((_%e146544147149%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl146543147146%_))))
                          (let ((_%tl146546147154%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146544147149%_)))
                                (_%hd146545147152%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146544147149%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146546147154%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl146540147138%_))
                                    (let ((_%__splice148838148839%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl146540147138%_
                                              '0))))
                                      (let ((_%tl146549147159%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148838148839%_
                                                '1)))
                                            (_%target146547147157%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148838148839%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl146549147159%_))
                                            (letrec ((_%loop146550147162%_
                                                      (lambda (_%hd146548147165%_
                                                               _%xarg146554147167%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd146548147165%_))
                                                            (let ((_%e146551147170%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd146548147165%_))))
                      (let ((_%lp-tl146553147175%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e146551147170%_)))
                            (_%lp-hd146552147173%_
                             (let ()
                               (declare (not safe))
                               (##car _%e146551147170%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd146552147173%_))
                            (let ((_%e146556147178%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd146552147173%_))))
                              (let ((_%tl146558147183%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e146556147178%_)))
                                    (_%hd146557147181%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e146556147178%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd146557147181%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd146557147181%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl146558147183%_))
                                            (let ((_%e146559147186%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl146558147183%_))))
                                              (let ((_%tl146561147191%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146559147186%_)))
                                                    (_%hd146560147189%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146559147186%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl146561147191%_))
                                                    (_%loop146550147162%_
                                                     _%lp-tl146553147175%_
                                                     (cons _%hd146560147189%_
                                                           _%xarg146554147167%_))
                                                    (_%__match148875148876%_
                                                     _%e146520147085%_
                                                     _%hd146521147088%_
                                                     _%tl146522147090%_
                                                     _%__splice148836148837%_
                                                     _%target146523147093%_
                                                     _%tl146525147095%_))))
                                            (_%__match148875148876%_
                                             _%e146520147085%_
                                             _%hd146521147088%_
                                             _%tl146522147090%_
                                             _%__splice148836148837%_
                                             _%target146523147093%_
                                             _%tl146525147095%_))
                                        (_%__match148875148876%_
                                         _%e146520147085%_
                                         _%hd146521147088%_
                                         _%tl146522147090%_
                                         _%__splice148836148837%_
                                         _%target146523147093%_
                                         _%tl146525147095%_))
                                    (_%__match148875148876%_
                                     _%e146520147085%_
                                     _%hd146521147088%_
                                     _%tl146522147090%_
                                     _%__splice148836148837%_
                                     _%target146523147093%_
                                     _%tl146525147095%_))))
                            (_%__match148875148876%_
                             _%e146520147085%_
                             _%hd146521147088%_
                             _%tl146522147090%_
                             _%__splice148836148837%_
                             _%target146523147093%_
                             _%tl146525147095%_))))
                    (let ((_%xarg146555147194%_
                           (reverse _%xarg146554147167%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl146534147122%_))
                          (let ((_%L147197%_ _%xarg146555147194%_)
                                (_%L147198%_ _%hd146545147152%_)
                                (_%L147199%_ _%arg146531147114%_))
                            (if (and (let ((__tmp150129
                                            (let ((__tmp150130
                                                   (lambda (_%g147227147230%_
                                                            _%g147228147232%_)
                                                     (cons _%g147227147230%_
                                                           _%g147228147232%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp150130
                                               '()
                                               _%L147199%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp150129))
                                     (let ((__tmp150133
                                            (length (let ((__tmp150134
                                                           (lambda (_%g147234147237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g147235147239%_)
                     (cons _%g147234147237%_ _%g147235147239%_))))
              (declare (not safe))
              (__foldr1 __tmp150134 '() _%L147199%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp150131
                                            (length (let ((__tmp150132
                                                           (lambda (_%g147241147244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g147242147246%_)
                     (cons _%g147241147244%_ _%g147242147246%_))))
              (declare (not safe))
              (__foldr1 __tmp150132 '() _%L147197%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp150133 __tmp150131))
                                     (let ((__tmp150137
                                            (let ((__tmp150138
                                                   (lambda (_%g147248147251%_
                                                            _%g147249147253%_)
                                                     (cons _%g147248147251%_
                                                           _%g147249147253%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp150138
                                               '()
                                               _%L147199%_)))
                                           (__tmp150135
                                            (let ((__tmp150136
                                                   (lambda (_%g147255147258%_
                                                            _%g147256147260%_)
                                                     (cons _%g147255147258%_
                                                           _%g147256147260%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp150136
                                               '()
                                               _%L147197%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp150137
                                        __tmp150135))
                                     (not (let ((__tmp150141
                                                 (lambda (_%g147262147264%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g147262147264%_
                                                      _%L147198%_))))
                                                (__tmp150139
                                                 (let ((__tmp150140
                                                        (lambda (_%g147266147269%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g147267147271%_)
                  (cons _%g147266147269%_ _%g147267147271%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp150140
                                                    '()
                                                    _%L147199%_))))
                                            (declare (not safe))
                                            (__find __tmp150141 __tmp150139))))
                                (_%__kont148834148835%_
                                 _%L147197%_
                                 _%L147198%_
                                 _%L147199%_)
                                (_%__match148875148876%_
                                 _%e146520147085%_
                                 _%hd146521147088%_
                                 _%tl146522147090%_
                                 _%__splice148836148837%_
                                 _%target146523147093%_
                                 _%tl146525147095%_)))
                          (_%__match148875148876%_
                           _%e146520147085%_
                           _%hd146521147088%_
                           _%tl146522147090%_
                           _%__splice148836148837%_
                           _%target146523147093%_
                           _%tl146525147095%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop146550147162%_
                                               _%target146547147157%_
                                               '()))
                                            (_%__match148875148876%_
                                             _%e146520147085%_
                                             _%hd146521147088%_
                                             _%tl146522147090%_
                                             _%__splice148836148837%_
                                             _%target146523147093%_
                                             _%tl146525147095%_))))
                                    (_%__match148875148876%_
                                     _%e146520147085%_
                                     _%hd146521147088%_
                                     _%tl146522147090%_
                                     _%__splice148836148837%_
                                     _%target146523147093%_
                                     _%tl146525147095%_))
                                (_%__match148875148876%_
                                 _%e146520147085%_
                                 _%hd146521147088%_
                                 _%tl146522147090%_
                                 _%__splice148836148837%_
                                 _%target146523147093%_
                                 _%tl146525147095%_))))
                        (_%__match148875148876%_
                         _%e146520147085%_
                         _%hd146521147088%_
                         _%tl146522147090%_
                         _%__splice148836148837%_
                         _%target146523147093%_
                         _%tl146525147095%_))
                    (_%__match148875148876%_
                     _%e146520147085%_
                     _%hd146521147088%_
                     _%tl146522147090%_
                     _%__splice148836148837%_
                     _%target146523147093%_
                     _%tl146525147095%_))
                (_%__match148875148876%_
                 _%e146520147085%_
                 _%hd146521147088%_
                 _%tl146522147090%_
                 _%__splice148836148837%_
                 _%target146523147093%_
                 _%tl146525147095%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match148875148876%_
                                                 _%e146520147085%_
                                                 _%hd146521147088%_
                                                 _%tl146522147090%_
                                                 _%__splice148836148837%_
                                                 _%target146523147093%_
                                                 _%tl146525147095%_))))
                                        (_%__match148875148876%_
                                         _%e146520147085%_
                                         _%hd146521147088%_
                                         _%tl146522147090%_
                                         _%__splice148836148837%_
                                         _%target146523147093%_
                                         _%tl146525147095%_))
                                    (_%__match148875148876%_
                                     _%e146520147085%_
                                     _%hd146521147088%_
                                     _%tl146522147090%_
                                     _%__splice148836148837%_
                                     _%target146523147093%_
                                     _%tl146525147095%_))
                                (_%__match148875148876%_
                                 _%e146520147085%_
                                 _%hd146521147088%_
                                 _%tl146522147090%_
                                 _%__splice148836148837%_
                                 _%target146523147093%_
                                 _%tl146525147095%_))))
                        (_%__match148875148876%_
                         _%e146520147085%_
                         _%hd146521147088%_
                         _%tl146522147090%_
                         _%__splice148836148837%_
                         _%target146523147093%_
                         _%tl146525147095%_))))
                (_%__match148875148876%_
                 _%e146520147085%_
                 _%hd146521147088%_
                 _%tl146522147090%_
                 _%__splice148836148837%_
                 _%target146523147093%_
                 _%tl146525147095%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop146526147098%_
                                     _%target146523147093%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx148832148833%_))
                              (let ((_%e146520147085%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx148832148833%_))))
                                (let ((_%tl146522147090%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146520147085%_)))
                                      (_%hd146521147088%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146520147085%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd146521147088%_))
                                      (let ((_%__splice148836148837%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd146521147088%_
                                                '0))))
                                        (let ((_%tl146525147095%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice148836148837%_
                                                  '1)))
                                              (_%target146523147093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice148836148837%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146525147095%_))
                                              (_%__match148863148864%_
                                               _%e146520147085%_
                                               _%hd146521147088%_
                                               _%tl146522147090%_
                                               _%__splice148836148837%_
                                               _%target146523147093%_
                                               _%tl146525147095%_)
                                              (_%__match148875148876%_
                                               _%e146520147085%_
                                               _%hd146521147088%_
                                               _%tl146522147090%_
                                               _%__splice148836148837%_
                                               _%target146523147093%_
                                               _%tl146525147095%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl146522147090%_))
                                          (let ((_%e146635146692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl146522147090%_))))
                                            (let ((_%tl146637146697%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e146635146692%_)))
                                                  (_%hd146636146695%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e146635146692%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146636146695%_))
                                                  (let ((_%e146638146700%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146636146695%_))))
                                                    (let ((_%tl146640146705%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146638146700%_)))
                                                          (_%hd146639146703%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146638146700%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd146639146703%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd146639146703%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl146640146705%_))
                          (let ((_%e146641146708%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl146640146705%_))))
                            (let ((_%tl146643146713%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146641146708%_)))
                                  (_%hd146642146711%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146641146708%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd146642146711%_))
                                  (let ((_%e146644146716%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd146642146711%_))))
                                    (let ((_%tl146646146721%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e146644146716%_)))
                                          (_%hd146645146719%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e146644146716%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd146645146719%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd146645146719%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl146646146721%_))
                                                  (let ((_%e146647146724%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl146646146721%_))))
                                                    (let ((_%tl146649146729%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146647146724%_)))
                                                          (_%hd146648146727%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146647146724%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl146649146729%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl146643146713%_))
                      (let ((_%e146650146732%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl146643146713%_))))
                        (let ((_%tl146652146737%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146650146732%_)))
                              (_%hd146651146735%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146650146732%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd146651146735%_))
                              (let ((_%e146653146740%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd146651146735%_))))
                                (let ((_%tl146655146745%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146653146740%_)))
                                      (_%hd146654146743%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146653146740%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd146654146743%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd146654146743%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl146655146745%_))
                                              (let ((_%e146656146748%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl146655146745%_))))
                                                (let ((_%tl146658146753%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146656146748%_)))
                                                      (_%hd146657146751%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146656146748%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146658146753%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl146652146737%_))
                                                          (let ((_%e146659146756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl146652146737%_))))
                    (let ((_%tl146661146761%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e146659146756%_)))
                          (_%hd146660146759%_
                           (let ()
                             (declare (not safe))
                             (##car _%e146659146756%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd146660146759%_))
                          (let ((_%e146662146764%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd146660146759%_))))
                            (let ((_%tl146664146769%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146662146764%_)))
                                  (_%hd146663146767%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146662146764%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd146663146767%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd146663146767%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl146664146769%_))
                                          (let ((_%e146665146772%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl146664146769%_))))
                                            (let ((_%tl146667146777%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e146665146772%_)))
                                                  (_%hd146666146775%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e146665146772%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl146667146777%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146661146761%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl146637146697%_))
                                                          (_%__match148973148974%_
                                                           _%e146520147085%_
                                                           _%hd146521147088%_
                                                           _%tl146522147090%_
                                                           _%e146635146692%_
                                                           _%hd146636146695%_
                                                           _%tl146637146697%_
                                                           _%e146638146700%_
                                                           _%hd146639146703%_
                                                           _%tl146640146705%_
                                                           _%e146641146708%_
                                                           _%hd146642146711%_
                                                           _%tl146643146713%_
                                                           _%e146644146716%_
                                                           _%hd146645146719%_
                                                           _%tl146646146721%_
                                                           _%e146647146724%_
                                                           _%hd146648146727%_
                                                           _%tl146649146729%_
                                                           _%e146650146732%_
                                                           _%hd146651146735%_
                                                           _%tl146652146737%_
                                                           _%e146653146740%_
                                                           _%hd146654146743%_
                                                           _%tl146655146745%_
                                                           _%e146656146748%_
                                                           _%hd146657146751%_
                                                           _%tl146658146753%_
                                                           _%e146659146756%_
                                                           _%hd146660146759%_
                                                           _%tl146661146761%_
                                                           _%e146662146764%_
                                                           _%hd146663146767%_
                                                           _%tl146664146769%_
                                                           _%e146665146772%_
                                                           _%hd146666146775%_
                                                           _%tl146667146777%_)
                                                          (_%__kont148848148849%_))
                                                      (_%__kont148848148849%_))
                                                  (_%__kont148848148849%_))))
                                          (_%__kont148848148849%_))
                                      (_%__kont148848148849%_))
                                  (_%__kont148848148849%_))))
                          (_%__kont148848148849%_))))
                  (_%__kont148848148849%_))
              (_%__kont148848148849%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont148848148849%_))
                                          (_%__kont148848148849%_))
                                      (_%__kont148848148849%_))))
                              (_%__kont148848148849%_))))
                      (_%__kont148848148849%_))
                  (_%__kont148848148849%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont148848148849%_))
                                              (_%__kont148848148849%_))
                                          (_%__kont148848148849%_))))
                                  (_%__kont148848148849%_))))
                          (_%__kont148848148849%_))
                      (_%__kont148848148849%_))
                  (_%__kont148848148849%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont148848148849%_))))
                                          (_%__kont148848148849%_)))))
                              (_%__kont148848148849%_)))))))
                 (_%dispatch-case-e145820%_
                  (lambda (_%hd145971%_ _%body145972%_)
                    (let* ((_%form145974%_
                            (cons _%hd145971%_ (cons _%body145972%_ '())))
                           (_%__stx148976148977%_ _%form145974%_)
                           (_%g145978146102%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx148976148977%_)))))
                      (let ((_%__kont148978148979%_
                             (lambda (_%L146473%_ _%L146474%_ _%L146475%_)
                               (let ((__tmp150142
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L146474%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self145816%_
                                  __tmp150142))))
                            (_%__kont148984148985%_
                             (lambda (_%L146321%_
                                      _%L146322%_
                                      _%L146323%_
                                      _%L146324%_)
                               (let ((__tmp150143
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L146321%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self145816%_
                                  __tmp150143))))
                            (_%__kont148988148989%_
                             (lambda (_%L146187%_ _%L146188%_ _%L146189%_)
                               (let ((__tmp150144
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L146187%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self145816%_
                                  __tmp150144)))))
                        (let* ((_%__match149085149086%_
                                (lambda (_%e146068146107%_
                                         _%hd146069146110%_
                                         _%tl146070146112%_
                                         _%e146071146115%_
                                         _%hd146072146118%_
                                         _%tl146073146120%_
                                         _%e146074146123%_
                                         _%hd146075146126%_
                                         _%tl146076146128%_
                                         _%e146077146131%_
                                         _%hd146078146134%_
                                         _%tl146079146136%_
                                         _%e146080146139%_
                                         _%hd146081146142%_
                                         _%tl146082146144%_
                                         _%e146083146147%_
                                         _%hd146084146150%_
                                         _%tl146085146152%_
                                         _%e146086146155%_
                                         _%hd146087146158%_
                                         _%tl146088146160%_
                                         _%e146089146163%_
                                         _%hd146090146166%_
                                         _%tl146091146168%_
                                         _%e146092146171%_
                                         _%hd146093146174%_
                                         _%tl146094146176%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146088146160%_))
                                      (let ((_%e146095146179%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146088146160%_))))
                                        (let ((_%tl146097146184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146095146179%_)))
                                              (_%hd146096146182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146095146179%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146097146184%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl146073146120%_))
                                                  (_%__kont148988148989%_
                                                   _%hd146093146174%_
                                                   _%hd146084146150%_
                                                   _%hd146069146110%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g145978146102%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g145978146102%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g145978146102%_)))))
                               (_%__match149015149016%_
                                (lambda (_%e146029146225%_
                                         _%hd146030146228%_
                                         _%tl146031146230%_
                                         _%__splice148986148987%_
                                         _%target146032146233%_
                                         _%tl146034146235%_)
                                  (letrec ((_%loop146035146238%_
                                            (lambda (_%hd146033146241%_
                                                     _%arg146039146243%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146033146241%_))
                                                  (let ((_%e146036146246%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146033146241%_))))
                                                    (let ((_%lp-tl146038146251%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146036146246%_)))
                                                          (_%lp-hd146037146249%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146036146246%_))))
                                                      (_%loop146035146238%_
                                                       _%lp-tl146038146251%_
                                                       (cons _%lp-hd146037146249%_
                                                             _%arg146039146243%_))))
                                                  (let ((_%arg146040146254%_
                                                         (reverse _%arg146039146243%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl146031146230%_))
                                                        (let ((_%e146041146257%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl146031146230%_))))
                  (let ((_%tl146043146262%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146041146257%_)))
                        (_%hd146042146260%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146041146257%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd146042146260%_))
                        (let ((_%e146044146265%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd146042146260%_))))
                          (let ((_%tl146046146270%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146044146265%_)))
                                (_%hd146045146268%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146044146265%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146045146268%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd146045146268%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146046146270%_))
                                        (let ((_%e146047146273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146046146270%_))))
                                          (let ((_%tl146049146278%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146047146273%_)))
                                                (_%hd146048146276%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146047146273%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd146048146276%_))
                                                (let ((_%e146050146281%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146048146276%_))))
                                                  (let ((_%tl146052146286%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e146050146281%_)))
                                                        (_%hd146051146284%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e146050146281%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd146051146284%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd146051146284%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl146052146286%_))
                        (let ((_%e146053146289%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl146052146286%_))))
                          (let ((_%tl146055146294%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146053146289%_)))
                                (_%hd146054146292%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146053146289%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146055146294%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl146049146278%_))
                                    (let ((_%e146056146297%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl146049146278%_))))
                                      (let ((_%tl146058146302%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e146056146297%_)))
                                            (_%hd146057146300%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e146056146297%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd146057146300%_))
                                            (let ((_%e146059146305%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd146057146300%_))))
                                              (let ((_%tl146061146310%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146059146305%_)))
                                                    (_%hd146060146308%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146059146305%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd146060146308%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd146060146308%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl146061146310%_))
                                                            (let ((_%e146062146313%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl146061146310%_))))
                      (let ((_%tl146064146318%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e146062146313%_)))
                            (_%hd146063146316%_
                             (let ()
                               (declare (not safe))
                               (##car _%e146062146313%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl146064146318%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146043146262%_))
                                (_%__kont148984148985%_
                                 _%hd146063146316%_
                                 _%hd146054146292%_
                                 _%tl146034146235%_
                                 _%arg146040146254%_)
                                (_%__match149085149086%_
                                 _%e146029146225%_
                                 _%hd146030146228%_
                                 _%tl146031146230%_
                                 _%e146041146257%_
                                 _%hd146042146260%_
                                 _%tl146043146262%_
                                 _%e146044146265%_
                                 _%hd146045146268%_
                                 _%tl146046146270%_
                                 _%e146047146273%_
                                 _%hd146048146276%_
                                 _%tl146049146278%_
                                 _%e146050146281%_
                                 _%hd146051146284%_
                                 _%tl146052146286%_
                                 _%e146053146289%_
                                 _%hd146054146292%_
                                 _%tl146055146294%_
                                 _%e146056146297%_
                                 _%hd146057146300%_
                                 _%tl146058146302%_
                                 _%e146059146305%_
                                 _%hd146060146308%_
                                 _%tl146061146310%_
                                 _%e146062146313%_
                                 _%hd146063146316%_
                                 _%tl146064146318%_))
                            (let ()
                              (declare (not safe))
                              (_%g145978146102%_)))))
                    (let () (declare (not safe)) (_%g145978146102%_)))
                (let () (declare (not safe)) (_%g145978146102%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g145978146102%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g145978146102%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g145978146102%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g145978146102%_)))))
                        (let () (declare (not safe)) (_%g145978146102%_)))
                    (let () (declare (not safe)) (_%g145978146102%_)))
                (let () (declare (not safe)) (_%g145978146102%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g145978146102%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g145978146102%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g145978146102%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g145978146102%_)))))
                        (let () (declare (not safe)) (_%g145978146102%_)))))
                (let () (declare (not safe)) (_%g145978146102%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop146035146238%_
                                     _%target146032146233%_
                                     '()))))
                               (_%__match149003149004%_
                                (lambda (_%e145983146361%_
                                         _%hd145984146364%_
                                         _%tl145985146366%_
                                         _%__splice148980148981%_
                                         _%target145986146369%_
                                         _%tl145988146371%_)
                                  (letrec ((_%loop145989146374%_
                                            (lambda (_%hd145987146377%_
                                                     _%arg145993146379%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145987146377%_))
                                                  (let ((_%e145990146382%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145987146377%_))))
                                                    (let ((_%lp-tl145992146387%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145990146382%_)))
                                                          (_%lp-hd145991146385%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145990146382%_))))
                                                      (_%loop145989146374%_
                                                       _%lp-tl145992146387%_
                                                       (cons _%lp-hd145991146385%_
                                                             _%arg145993146379%_))))
                                                  (let ((_%arg145994146390%_
                                                         (reverse _%arg145993146379%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl145985146366%_))
                                                        (let ((_%e145995146393%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl145985146366%_))))
                  (let ((_%tl145997146398%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145995146393%_)))
                        (_%hd145996146396%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145995146393%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145996146396%_))
                        (let ((_%e145998146401%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd145996146396%_))))
                          (let ((_%tl146000146406%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145998146401%_)))
                                (_%hd145999146404%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145998146401%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd145999146404%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd145999146404%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146000146406%_))
                                        (let ((_%e146001146409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146000146406%_))))
                                          (let ((_%tl146003146414%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146001146409%_)))
                                                (_%hd146002146412%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146001146409%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd146002146412%_))
                                                (let ((_%e146004146417%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146002146412%_))))
                                                  (let ((_%tl146006146422%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e146004146417%_)))
                                                        (_%hd146005146420%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e146004146417%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd146005146420%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd146005146420%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl146006146422%_))
                        (let ((_%e146007146425%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl146006146422%_))))
                          (let ((_%tl146009146430%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146007146425%_)))
                                (_%hd146008146428%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146007146425%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146009146430%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl146003146414%_))
                                    (let ((_%__splice148982148983%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl146003146414%_
                                              '0))))
                                      (let ((_%tl146012146435%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148982148983%_
                                                '1)))
                                            (_%target146010146433%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice148982148983%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl146012146435%_))
                                            (letrec ((_%loop146013146438%_
                                                      (lambda (_%hd146011146441%_
                                                               _%xarg146017146443%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd146011146441%_))
                                                            (let ((_%e146014146446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd146011146441%_))))
                      (let ((_%lp-tl146016146451%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e146014146446%_)))
                            (_%lp-hd146015146449%_
                             (let ()
                               (declare (not safe))
                               (##car _%e146014146446%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd146015146449%_))
                            (let ((_%e146019146454%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd146015146449%_))))
                              (let ((_%tl146021146459%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e146019146454%_)))
                                    (_%hd146020146457%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e146019146454%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd146020146457%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd146020146457%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl146021146459%_))
                                            (let ((_%e146022146462%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl146021146459%_))))
                                              (let ((_%tl146024146467%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146022146462%_)))
                                                    (_%hd146023146465%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146022146462%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl146024146467%_))
                                                    (_%loop146013146438%_
                                                     _%lp-tl146016146451%_
                                                     (cons _%hd146023146465%_
                                                           _%xarg146017146443%_))
                                                    (_%__match149015149016%_
                                                     _%e145983146361%_
                                                     _%hd145984146364%_
                                                     _%tl145985146366%_
                                                     _%__splice148980148981%_
                                                     _%target145986146369%_
                                                     _%tl145988146371%_))))
                                            (_%__match149015149016%_
                                             _%e145983146361%_
                                             _%hd145984146364%_
                                             _%tl145985146366%_
                                             _%__splice148980148981%_
                                             _%target145986146369%_
                                             _%tl145988146371%_))
                                        (_%__match149015149016%_
                                         _%e145983146361%_
                                         _%hd145984146364%_
                                         _%tl145985146366%_
                                         _%__splice148980148981%_
                                         _%target145986146369%_
                                         _%tl145988146371%_))
                                    (_%__match149015149016%_
                                     _%e145983146361%_
                                     _%hd145984146364%_
                                     _%tl145985146366%_
                                     _%__splice148980148981%_
                                     _%target145986146369%_
                                     _%tl145988146371%_))))
                            (_%__match149015149016%_
                             _%e145983146361%_
                             _%hd145984146364%_
                             _%tl145985146366%_
                             _%__splice148980148981%_
                             _%target145986146369%_
                             _%tl145988146371%_))))
                    (let ((_%xarg146018146470%_
                           (reverse _%xarg146017146443%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl145997146398%_))
                          (_%__kont148978148979%_
                           _%xarg146018146470%_
                           _%hd146008146428%_
                           _%arg145994146390%_)
                          (_%__match149015149016%_
                           _%e145983146361%_
                           _%hd145984146364%_
                           _%tl145985146366%_
                           _%__splice148980148981%_
                           _%target145986146369%_
                           _%tl145988146371%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop146013146438%_
                                               _%target146010146433%_
                                               '()))
                                            (_%__match149015149016%_
                                             _%e145983146361%_
                                             _%hd145984146364%_
                                             _%tl145985146366%_
                                             _%__splice148980148981%_
                                             _%target145986146369%_
                                             _%tl145988146371%_))))
                                    (_%__match149015149016%_
                                     _%e145983146361%_
                                     _%hd145984146364%_
                                     _%tl145985146366%_
                                     _%__splice148980148981%_
                                     _%target145986146369%_
                                     _%tl145988146371%_))
                                (_%__match149015149016%_
                                 _%e145983146361%_
                                 _%hd145984146364%_
                                 _%tl145985146366%_
                                 _%__splice148980148981%_
                                 _%target145986146369%_
                                 _%tl145988146371%_))))
                        (_%__match149015149016%_
                         _%e145983146361%_
                         _%hd145984146364%_
                         _%tl145985146366%_
                         _%__splice148980148981%_
                         _%target145986146369%_
                         _%tl145988146371%_))
                    (_%__match149015149016%_
                     _%e145983146361%_
                     _%hd145984146364%_
                     _%tl145985146366%_
                     _%__splice148980148981%_
                     _%target145986146369%_
                     _%tl145988146371%_))
                (_%__match149015149016%_
                 _%e145983146361%_
                 _%hd145984146364%_
                 _%tl145985146366%_
                 _%__splice148980148981%_
                 _%target145986146369%_
                 _%tl145988146371%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match149015149016%_
                                                 _%e145983146361%_
                                                 _%hd145984146364%_
                                                 _%tl145985146366%_
                                                 _%__splice148980148981%_
                                                 _%target145986146369%_
                                                 _%tl145988146371%_))))
                                        (_%__match149015149016%_
                                         _%e145983146361%_
                                         _%hd145984146364%_
                                         _%tl145985146366%_
                                         _%__splice148980148981%_
                                         _%target145986146369%_
                                         _%tl145988146371%_))
                                    (_%__match149015149016%_
                                     _%e145983146361%_
                                     _%hd145984146364%_
                                     _%tl145985146366%_
                                     _%__splice148980148981%_
                                     _%target145986146369%_
                                     _%tl145988146371%_))
                                (_%__match149015149016%_
                                 _%e145983146361%_
                                 _%hd145984146364%_
                                 _%tl145985146366%_
                                 _%__splice148980148981%_
                                 _%target145986146369%_
                                 _%tl145988146371%_))))
                        (_%__match149015149016%_
                         _%e145983146361%_
                         _%hd145984146364%_
                         _%tl145985146366%_
                         _%__splice148980148981%_
                         _%target145986146369%_
                         _%tl145988146371%_))))
                (_%__match149015149016%_
                 _%e145983146361%_
                 _%hd145984146364%_
                 _%tl145985146366%_
                 _%__splice148980148981%_
                 _%target145986146369%_
                 _%tl145988146371%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop145989146374%_
                                     _%target145986146369%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx148976148977%_))
                              (let ((_%e145983146361%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx148976148977%_))))
                                (let ((_%tl145985146366%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145983146361%_)))
                                      (_%hd145984146364%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145983146361%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd145984146364%_))
                                      (let ((_%__splice148980148981%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd145984146364%_
                                                '0))))
                                        (let ((_%tl145988146371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice148980148981%_
                                                  '1)))
                                              (_%target145986146369%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice148980148981%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145988146371%_))
                                              (_%__match149003149004%_
                                               _%e145983146361%_
                                               _%hd145984146364%_
                                               _%tl145985146366%_
                                               _%__splice148980148981%_
                                               _%target145986146369%_
                                               _%tl145988146371%_)
                                              (_%__match149015149016%_
                                               _%e145983146361%_
                                               _%hd145984146364%_
                                               _%tl145985146366%_
                                               _%__splice148980148981%_
                                               _%target145986146369%_
                                               _%tl145988146371%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl145985146366%_))
                                          (let ((_%e146071146115%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl145985146366%_))))
                                            (let ((_%tl146073146120%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e146071146115%_)))
                                                  (_%hd146072146118%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e146071146115%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146072146118%_))
                                                  (let ((_%e146074146123%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146072146118%_))))
                                                    (let ((_%tl146076146128%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146074146123%_)))
                                                          (_%hd146075146126%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146074146123%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd146075146126%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd146075146126%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl146076146128%_))
                          (let ((_%e146077146131%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl146076146128%_))))
                            (let ((_%tl146079146136%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146077146131%_)))
                                  (_%hd146078146134%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146077146131%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd146078146134%_))
                                  (let ((_%e146080146139%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd146078146134%_))))
                                    (let ((_%tl146082146144%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e146080146139%_)))
                                          (_%hd146081146142%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e146080146139%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd146081146142%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd146081146142%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl146082146144%_))
                                                  (let ((_%e146083146147%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl146082146144%_))))
                                                    (let ((_%tl146085146152%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146083146147%_)))
                                                          (_%hd146084146150%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146083146147%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl146085146152%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl146079146136%_))
                      (let ((_%e146086146155%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl146079146136%_))))
                        (let ((_%tl146088146160%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146086146155%_)))
                              (_%hd146087146158%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146086146155%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd146087146158%_))
                              (let ((_%e146089146163%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd146087146158%_))))
                                (let ((_%tl146091146168%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146089146163%_)))
                                      (_%hd146090146166%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146089146163%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd146090146166%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd146090146166%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl146091146168%_))
                                              (let ((_%e146092146171%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl146091146168%_))))
                                                (let ((_%tl146094146176%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146092146171%_)))
                                                      (_%hd146093146174%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146092146171%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146094146176%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl146088146160%_))
                                                          (let ((_%e146095146179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl146088146160%_))))
                    (let ((_%tl146097146184%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e146095146179%_)))
                          (_%hd146096146182%_
                           (let ()
                             (declare (not safe))
                             (##car _%e146095146179%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl146097146184%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl146073146120%_))
                              (_%__kont148988148989%_
                               _%hd146093146174%_
                               _%hd146084146150%_
                               _%hd145984146364%_)
                              (let ()
                                (declare (not safe))
                                (_%g145978146102%_)))
                          (let () (declare (not safe)) (_%g145978146102%_)))))
                  (let () (declare (not safe)) (_%g145978146102%_)))
              (let () (declare (not safe)) (_%g145978146102%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g145978146102%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g145978146102%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g145978146102%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g145978146102%_)))))
                      (let () (declare (not safe)) (_%g145978146102%_)))
                  (let () (declare (not safe)) (_%g145978146102%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g145978146102%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g145978146102%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g145978146102%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g145978146102%_)))))
                          (let () (declare (not safe)) (_%g145978146102%_)))
                      (let () (declare (not safe)) (_%g145978146102%_)))
                  (let () (declare (not safe)) (_%g145978146102%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g145978146102%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g145978146102%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g145978146102%_))))))))
                 (_%generate1145821%_
                  (lambda (_%args145956%_
                           _%arglen145957%_
                           _%hd145958%_
                           _%body145959%_)
                    (let* ((_%len145961%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd145958%_)))
                           (_%condition145966%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd145958%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen145957%_
                                                (cons _%len145961%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen145957%_ (cons _%len145961%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len145961%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen145957%_
                                                    (cons _%len145961%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen145957%_ (cons _%len145961%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch145968%_
                            (if (_%dispatch-case?145819%_
                                 _%hd145958%_
                                 _%body145959%_)
                                (_%dispatch-case-e145820%_
                                 _%hd145958%_
                                 _%body145959%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self145816%_
                                 _%hd145958%_
                                 _%body145959%_))))
                      (cons _%condition145966%_
                            (cons (cons 'apply
                                        (cons _%dispatch145968%_
                                              (cons _%args145956%_ '())))
                                  '()))))))
          (let* ((_%g145823145851%_
                  (lambda (_%g145824145848%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g145824145848%_))))
                 (_%g145822145953%_
                  (lambda (_%g145824145854%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g145824145854%_))
                        (let ((_%e145827145856%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g145824145854%_))))
                          (let ((_%hd145828145859%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145827145856%_)))
                                (_%tl145829145861%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145827145856%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl145829145861%_))
                                (let ((_g150145_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl145829145861%_
                                          '0))))
                                  (begin
                                    (let ((_g150146_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g150145_)
                                                 (##values-length _g150145_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g150146_ 2)))
                                          (error "Context expects 2 values"
                                                 _g150146_)))
                                    (let ((_%target145830145864%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g150145_ 0)))
                                          (_%tl145832145866%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g150145_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl145832145866%_))
                                          (letrec ((_%loop145833145869%_
                                                    (lambda (_%hd145831145872%_
                                                             _%body145837145874%_
                                                             _%hd145838145876%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd145831145872%_))
                                                          (let ((_%e145834145879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd145831145872%_))))
                    (let ((_%lp-hd145835145882%_
                           (let ()
                             (declare (not safe))
                             (##car _%e145834145879%_)))
                          (_%lp-tl145836145884%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e145834145879%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd145835145882%_))
                          (let ((_%e145841145887%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd145835145882%_))))
                            (let ((_%hd145842145890%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145841145887%_)))
                                  (_%tl145843145892%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145841145887%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl145843145892%_))
                                  (let ((_%e145844145895%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl145843145892%_))))
                                    (let ((_%hd145845145898%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e145844145895%_)))
                                          (_%tl145846145900%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e145844145895%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl145846145900%_))
                                          (_%loop145833145869%_
                                           _%lp-tl145836145884%_
                                           (cons _%hd145845145898%_
                                                 _%body145837145874%_)
                                           (cons _%hd145842145890%_
                                                 _%hd145838145876%_))
                                          (_%g145823145851%_
                                           _%g145824145854%_))))
                                  (_%g145823145851%_ _%g145824145854%_))))
                          (_%g145823145851%_ _%g145824145854%_))))
                  (let ((_%body145839145903%_ (reverse _%body145837145874%_))
                        (_%hd145840145905%_ (reverse _%hd145838145876%_)))
                    ((lambda (_%L145908%_ _%L145909%_)
                       (let ((_%args145928%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen145929%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name145930%_
                              (let ((_%$e145925%_
                                     (let ((__tmp150147
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp150147 _%stx145817%_))))
                                (if _%$e145925%_
                                    _%$e145925%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args145928%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen145929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args145928%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args145928%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp150151
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name145930%_
                                                                (cons _%args145928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp150148
                                  (map (lambda (_%g145931145934%_
                                                _%g145932145936%_)
                                         (_%generate1145821%_
                                          _%args145928%_
                                          _%arglen145929%_
                                          _%g145931145934%_
                                          _%g145932145936%_))
                                       (let ((__tmp150149
                                              (lambda (_%g145938145941%_
                                                       _%g145939145943%_)
                                                (cons _%g145938145941%_
                                                      _%g145939145943%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp150149
                                          '()
                                          _%L145909%_))
                                       (let ((__tmp150150
                                              (lambda (_%g145945145948%_
                                                       _%g145946145950%_)
                                                (cons _%g145945145948%_
                                                      _%g145946145950%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp150150
                                          '()
                                          _%L145908%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp150151 __tmp150148)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body145839145903%_
                     _%hd145840145905%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop145833145869%_
                                             _%target145830145864%_
                                             '()
                                             '()))
                                          (_%g145823145851%_
                                           _%g145824145854%_)))))
                                (_%g145823145851%_ _%g145824145854%_))))
                        (_%g145823145851%_ _%g145824145854%_)))))
            (_%g145822145953%_ _%stx145817%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self145053%_ _%stx145054%_ _%compiled-body?145055%_)
        (letrec ((_%generate-simple145057%_
                  (lambda (_%hd145801%_ _%body145802%_)
                    (_%coalesce-boolean145058%_
                     (_%simplify-let145059%_
                      (gxc#generate-runtime-simple-let
                       _%self145053%_
                       'let
                       _%hd145801%_
                       _%body145802%_
                       _%compiled-body?145055%_)))))
                 (_%coalesce-boolean145058%_
                  (lambda (_%code145662%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code145663145689%_ _%code145662%_)
                               (_%else145665145697%_
                                (lambda () _%code145662%_))
                               (_%K145667145734%_
                                (lambda (_%expr2145700%_
                                         _%expr1145701%_
                                         _%id145702%_)
                                  (let* ((_%expr2145703145711%_
                                          _%expr2145700%_)
                                         (_%else145705145719%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1145701%_
                                                        (cons _%expr2145700%_
                                                              '())))))
                                         (_%K145707145724%_
                                          (lambda (_%exprs145722%_)
                                            (cons 'or
                                                  (cons _%expr1145701%_
                                                        _%exprs145722%_)))))
                                    (if (pair? _%expr2145703145711%_)
                                        (let ((_%hd145708145727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2145703145711%_)))
                                              (_%tl145709145729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2145703145711%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd145708145727%_ 'or))
                                              (let ((_%exprs145732%_
                                                     _%tl145709145729%_))
                                                (_%K145707145724%_
                                                 _%exprs145732%_))
                                              (_%else145705145719%_)))
                                        (_%else145705145719%_))))))
                          (if (pair? _%code145663145689%_)
                              (let ((_%hd145668145737%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code145663145689%_)))
                                    (_%tl145669145739%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code145663145689%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd145668145737%_ 'let))
                                    (if (pair? _%tl145669145739%_)
                                        (let ((_%hd145670145742%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl145669145739%_)))
                                              (_%tl145671145744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl145669145739%_))))
                                          (if (pair? _%hd145670145742%_)
                                              (let ((_%hd145682145747%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd145670145742%_)))
                                                    (_%tl145683145749%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd145670145742%_))))
                                                (if (pair? _%hd145682145747%_)
                                                    (let ((_%hd145684145752%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd145682145747%_)))
                                                          (_%tl145685145754%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd145682145747%_))))
                                                      (let ((_%id145757%_
                                                             _%hd145684145752%_))
                                                        (if (pair? _%tl145685145754%_)
                                                            (let ((_%hd145686145759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl145685145754%_)))
                          (_%tl145687145761%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl145685145754%_))))
                      (let ((_%expr1145764%_ _%hd145686145759%_))
                        (if (null? _%tl145687145761%_)
                            (if (null? _%tl145683145749%_)
                                (if (pair? _%tl145671145744%_)
                                    (let ((_%hd145672145766%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl145671145744%_)))
                                          (_%tl145673145768%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl145671145744%_))))
                                      (if (pair? _%hd145672145766%_)
                                          (let ((_%hd145674145771%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd145672145766%_)))
                                                (_%tl145675145773%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd145672145766%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd145674145771%_
                                                         'if))
                                                (if (pair? _%tl145675145773%_)
                                                    (let ((_%hd145676145776%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl145675145773%_)))
                                                          (_%tl145677145778%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl145675145773%_))))
                                                      (if ((lambda (_%g145780145782%_)
                                                             (eq? _%g145780145782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id145757%_))
                   _%hd145676145776%_)
                  (if (pair? _%tl145677145778%_)
                      (let ((_%hd145678145785%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl145677145778%_)))
                            (_%tl145679145787%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl145677145778%_))))
                        (if ((lambda (_%g145789145791%_)
                               (eq? _%g145789145791%_ _%id145757%_))
                             _%hd145678145785%_)
                            (if (pair? _%tl145679145787%_)
                                (let ((_%hd145680145794%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl145679145787%_)))
                                      (_%tl145681145796%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl145679145787%_))))
                                  (let ((_%expr2145799%_ _%hd145680145794%_))
                                    (if (null? _%tl145681145796%_)
                                        (if (null? _%tl145673145768%_)
                                            (_%K145667145734%_
                                             _%expr2145799%_
                                             _%expr1145764%_
                                             _%id145757%_)
                                            (_%else145665145697%_))
                                        (_%else145665145697%_))))
                                (_%else145665145697%_))
                            (_%else145665145697%_)))
                      (_%else145665145697%_))
                  (_%else145665145697%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else145665145697%_))
                                                (_%else145665145697%_)))
                                          (_%else145665145697%_)))
                                    (_%else145665145697%_))
                                (_%else145665145697%_))
                            (_%else145665145697%_))))
                    (_%else145665145697%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else145665145697%_)))
                                              (_%else145665145697%_)))
                                        (_%else145665145697%_))
                                    (_%else145665145697%_)))
                              (_%else145665145697%_)))
                        _%code145662%_)))
                 (_%simplify-let145059%_
                  (lambda (_%code145361%_)
                    (let* ((_%code145362145434%_ _%code145361%_)
                           (_%else145367145442%_ (lambda () _%code145361%_)))
                      (let ((_%K145426145642%_
                             (lambda (_%expr145640%_) _%expr145640%_))
                            (_%K145409145588%_
                             (lambda (_%body145584%_
                                      _%expr145585%_
                                      _%id145586%_)
                               (cons 'let
                                     (cons (cons (cons _%id145586%_
                                                       (cons _%expr145585%_
                                                             '()))
                                                 '())
                                           _%body145584%_))))
                            (_%K145386145512%_
                             (lambda (_%body145506%_
                                      _%expr2145507%_
                                      _%id2145508%_
                                      _%expr1145509%_
                                      _%id1145510%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1145510%_
                                                       (cons _%expr1145509%_
                                                             '()))
                                                 (cons (cons _%id2145508%_
                                                             (cons _%expr2145507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body145506%_))))
                            (_%K145369145451%_
                             (lambda (_%body145446%_
                                      _%bind145447%_
                                      _%expr1145448%_
                                      _%id1145449%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1145449%_
                                                       (cons _%expr1145448%_
                                                             '()))
                                                 _%bind145447%_)
                                           _%body145446%_)))))
                        (if (pair? _%code145362145434%_)
                            (let ((_%tl145428145647%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code145362145434%_)))
                                  (_%hd145427145645%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code145362145434%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd145427145645%_ 'let))
                                  (if (pair? _%tl145428145647%_)
                                      (let ((_%tl145430145652%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl145428145647%_)))
                                            (_%hd145429145650%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl145428145647%_))))
                                        (if (null? _%hd145429145650%_)
                                            (if (pair? _%tl145430145652%_)
                                                (let ((_%tl145432145657%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl145430145652%_)))
                                                      (_%hd145431145655%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl145430145652%_))))
                                                  (if (null? _%tl145432145657%_)
                                                      (let ((_%expr145660%_
                                                             _%hd145431145655%_))
                                                        (_%K145426145642%_
                                                         _%expr145660%_))
                                                      (_%else145367145442%_)))
                                                (_%else145367145442%_))
                                            (if (pair? _%hd145429145650%_)
                                                (let ((_%tl145421145603%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd145429145650%_)))
                                                      (_%hd145420145601%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd145429145650%_))))
                                                  (if (pair? _%hd145420145601%_)
                                                      (let ((_%tl145423145608%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd145420145601%_)))
                    (_%hd145422145606%_
                     (let () (declare (not safe)) (##car _%hd145420145601%_))))
                (if (pair? _%tl145423145608%_)
                    (let ((_%tl145425145615%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl145423145608%_)))
                          (_%hd145424145613%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl145423145608%_))))
                      (if (null? _%tl145425145615%_)
                          (if (null? _%tl145421145603%_)
                              (if (pair? _%tl145430145652%_)
                                  (let ((_%tl145415145622%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl145430145652%_)))
                                        (_%hd145414145620%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl145430145652%_))))
                                    (if (pair? _%hd145414145620%_)
                                        (let ((_%tl145417145627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd145414145620%_)))
                                              (_%hd145416145625%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd145414145620%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd145416145625%_
                                                       'let))
                                              (if (pair? _%tl145417145627%_)
                                                  (let ((_%tl145419145632%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl145417145627%_)))
                                                        (_%hd145418145630%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl145417145627%_))))
                                                    (if (null? _%hd145418145630%_)
                                                        (if (null? _%tl145415145622%_)
                                                            (let ((_%id145611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd145422145606%_)
                          (_%expr145618%_ _%hd145424145613%_)
                          (_%body145635%_ _%tl145419145632%_))
                      (_%K145409145588%_
                       _%body145635%_
                       _%expr145618%_
                       _%id145611%_))
                    (_%else145367145442%_))
                (if (pair? _%hd145418145630%_)
                    (let ((_%tl145398145561%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd145418145630%_)))
                          (_%hd145397145559%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd145418145630%_))))
                      (if (pair? _%hd145397145559%_)
                          (let ((_%tl145400145566%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd145397145559%_)))
                                (_%hd145399145564%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd145397145559%_))))
                            (if (pair? _%tl145400145566%_)
                                (let ((_%tl145402145573%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl145400145566%_)))
                                      (_%hd145401145571%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl145400145566%_))))
                                  (if (null? _%tl145402145573%_)
                                      (if (null? _%tl145398145561%_)
                                          (if (null? _%tl145415145622%_)
                                              (let ((_%id1145535%_
                                                     _%hd145422145606%_)
                                                    (_%expr1145542%_
                                                     _%hd145424145613%_)
                                                    (_%id2145569%_
                                                     _%hd145399145564%_)
                                                    (_%expr2145576%_
                                                     _%hd145401145571%_)
                                                    (_%body145578%_
                                                     _%tl145419145632%_))
                                                (_%K145386145512%_
                                                 _%body145578%_
                                                 _%expr2145576%_
                                                 _%id2145569%_
                                                 _%expr1145542%_
                                                 _%id1145535%_))
                                              (_%else145367145442%_))
                                          (_%else145367145442%_))
                                      (_%else145367145442%_)))
                                (_%else145367145442%_)))
                          (_%else145367145442%_)))
                    (_%else145367145442%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else145367145442%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd145416145625%_
                                                           'let*))
                                                  (if (pair? _%tl145417145627%_)
                                                      (let ((_%tl145379145495%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl145417145627%_)))
                    (_%hd145378145493%_
                     (let () (declare (not safe)) (##car _%tl145417145627%_))))
                (if (null? _%tl145415145622%_)
                    (let ((_%id1145474%_ _%hd145422145606%_)
                          (_%expr1145481%_ _%hd145424145613%_)
                          (_%bind145498%_ _%hd145378145493%_)
                          (_%body145500%_ _%tl145379145495%_))
                      (_%K145369145451%_
                       _%body145500%_
                       _%bind145498%_
                       _%expr1145481%_
                       _%id1145474%_))
                    (_%else145367145442%_)))
              (_%else145367145442%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else145367145442%_))))
                                        (_%else145367145442%_)))
                                  (_%else145367145442%_))
                              (_%else145367145442%_))
                          (_%else145367145442%_)))
                    (_%else145367145442%_)))
              (_%else145367145442%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else145367145442%_))))
                                      (_%else145367145442%_))
                                  (_%else145367145442%_)))
                            (_%else145367145442%_))))))
                 (_%generate-values145060%_
                  (lambda (_%hd145174%_ _%body145175%_)
                    (let _%lp145177%_ ((_%rest145179%_ _%hd145174%_)
                                       (_%bind145180%_ '())
                                       (_%check145181%_ '())
                                       (_%post145182%_ '()))
                      (let* ((_%__stx149305149306%_ _%rest145179%_)
                             (_%g145185145196%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx149305149306%_)))))
                        (let ((_%__kont149307149308%_
                               (lambda (_%L145223%_ _%L145224%_)
                                 (let* ((_%__stx149261149262%_ _%L145224%_)
                                        (_%g145239145264%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx149261149262%_)))))
                                   (let ((_%__kont149263149264%_
                                          (lambda (_%L145337%_ _%L145338%_)
                                            (let ((_%eid145352%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L145338%_)))
                                                  (_%expr145353%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self145053%_
                                                      _%L145337%_))))
                                              (_%lp145177%_
                                               _%L145223%_
                                               (cons (cons _%eid145352%_
                                                           (cons _%expr145353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind145180%_)
                                               _%check145181%_
                                               _%post145182%_))))
                                         (_%__kont149265149266%_
                                          (lambda (_%L145285%_ _%L145286%_)
                                            (let* ((_%vals145299%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values145301%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals145299%_
                                                     _%L145286%_
                                                     _%L145285%_))
                                                   (_%refs145303%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals145299%_
                                                     _%L145286%_))
                                                   (_%expr145305%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self145053%_
                                                       _%L145285%_))))
                                              (_%lp145177%_
                                               _%L145223%_
                                               (cons (cons _%vals145299%_
                                                           (cons _%expr145305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind145180%_)
                                               (cons _%check-values145301%_
                                                     _%check145181%_)
                                               (cons _%refs145303%_
                                                     _%post145182%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx149261149262%_))
                                         (let ((_%e145243145313%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx149261149262%_))))
                                           (let ((_%tl145245145318%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e145243145313%_)))
                                                 (_%hd145244145316%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e145243145313%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd145244145316%_))
                                                 (let ((_%e145246145321%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd145244145316%_))))
                                                   (let ((_%tl145248145326%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e145246145321%_)))
                                                         (_%hd145247145324%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e145246145321%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl145248145326%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl145245145318%_))
                     (let ((_%e145249145329%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl145245145318%_))))
                       (let ((_%tl145251145334%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e145249145329%_)))
                             (_%hd145250145332%_
                              (let ()
                                (declare (not safe))
                                (##car _%e145249145329%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl145251145334%_))
                             (_%__kont149263149264%_
                              _%hd145250145332%_
                              _%hd145247145324%_)
                             (let ()
                               (declare (not safe))
                               (_%g145239145264%_)))))
                     (let () (declare (not safe)) (_%g145239145264%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl145245145318%_))
                     (let ((_%e145257145277%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl145245145318%_))))
                       (let ((_%tl145259145282%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e145257145277%_)))
                             (_%hd145258145280%_
                              (let ()
                                (declare (not safe))
                                (##car _%e145257145277%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl145259145282%_))
                             (_%__kont149265149266%_
                              _%hd145258145280%_
                              _%hd145244145316%_)
                             (let ()
                               (declare (not safe))
                               (_%g145239145264%_)))))
                     (let () (declare (not safe)) (_%g145239145264%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl145245145318%_))
                                                     (let ((_%e145257145277%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl145245145318%_))))
                                                       (let ((_%tl145259145282%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e145257145277%_)))
                     (_%hd145258145280%_
                      (let () (declare (not safe)) (##car _%e145257145277%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl145259145282%_))
                     (_%__kont149265149266%_
                      _%hd145258145280%_
                      _%hd145244145316%_)
                     (let () (declare (not safe)) (_%g145239145264%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g145239145264%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g145239145264%_)))))))
                              (_%__kont149309149310%_
                               (lambda ()
                                 (let* ((_%body145203%_
                                         (if _%compiled-body?145055%_
                                             _%body145175%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self145053%_
                                                _%body145175%_))))
                                        (_%body145205%_
                                         (_%generate-values-post145061%_
                                          _%post145182%_
                                          _%body145203%_))
                                        (_%body145207%_
                                         (_%generate-values-check145062%_
                                          _%check145181%_
                                          _%body145205%_)))
                                   (cons 'let
                                         (cons (reverse _%bind145180%_)
                                               (cons _%body145207%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx149305149306%_))
                              (let ((_%e145189145215%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx149305149306%_))))
                                (let ((_%tl145191145220%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145189145215%_)))
                                      (_%hd145190145218%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145189145215%_))))
                                  (_%__kont149307149308%_
                                   _%tl145191145220%_
                                   _%hd145190145218%_)))
                              (_%__kont149309149310%_)))))))
                 (_%generate-values-post145061%_
                  (lambda (_%post145133%_ _%body145134%_)
                    (let _%lp145136%_ ((_%rest145138%_ _%post145133%_)
                                       (_%body145139%_ _%body145134%_))
                      (let* ((_%rest145140145148%_ _%rest145138%_)
                             (_%else145142145156%_ (lambda () _%body145139%_))
                             (_%K145144145162%_
                              (lambda (_%rest145159%_ _%bind145160%_)
                                (_%lp145136%_
                                 _%rest145159%_
                                 (cons 'let
                                       (cons _%bind145160%_
                                             (cons _%body145139%_ '())))))))
                        (if (pair? _%rest145140145148%_)
                            (let ((_%hd145145145165%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest145140145148%_)))
                                  (_%tl145146145167%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest145140145148%_))))
                              (let* ((_%bind145170%_ _%hd145145145165%_)
                                     (_%rest145172%_ _%tl145146145167%_))
                                (_%K145144145162%_
                                 _%rest145172%_
                                 _%bind145170%_)))
                            (_%else145142145156%_))))))
                 (_%generate-values-check145062%_
                  (lambda (_%check145130%_ _%body145131%_)
                    (cons 'begin
                          (let ((__tmp150153 (cons _%body145131%_ '()))
                                (__tmp150152 (reverse _%check145130%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp150153 __tmp150152))))))
          (let* ((_%g145064145081%_
                  (lambda (_%g145065145078%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g145065145078%_))))
                 (_%g145063145127%_
                  (lambda (_%g145065145084%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g145065145084%_))
                        (let ((_%e145068145086%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g145065145084%_))))
                          (let ((_%hd145069145089%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145068145086%_)))
                                (_%tl145070145091%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145068145086%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl145070145091%_))
                                (let ((_%e145071145094%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl145070145091%_))))
                                  (let ((_%hd145072145097%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e145071145094%_)))
                                        (_%tl145073145099%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e145071145094%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145073145099%_))
                                        (let ((_%e145074145102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145073145099%_))))
                                          (let ((_%hd145075145105%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145074145102%_)))
                                                (_%tl145076145107%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145074145102%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145076145107%_))
                                                ((lambda (_%L145110%_
                                                          _%L145111%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L145111%_)
                                                       (_%generate-simple145057%_
                                                        _%L145111%_
                                                        _%L145110%_)
                                                       (_%generate-values145060%_
                                                        _%L145111%_
                                                        _%L145110%_)))
                                                 _%hd145075145105%_
                                                 _%hd145072145097%_)
                                                (_%g145064145081%_
                                                 _%g145065145084%_))))
                                        (_%g145064145081%_
                                         _%g145065145084%_))))
                                (_%g145064145081%_ _%g145065145084%_))))
                        (_%g145064145081%_ _%g145065145084%_)))))
            (_%g145063145127%_ _%stx145054%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self145807%_ _%stx145808%_)
        (let ((_%compiled-body?145810%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self145807%_
           _%stx145808%_
           _%compiled-body?145810%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g150155_
        (let ((_g150154_ (let () (declare (not safe)) (##length _g150155_))))
          (cond ((let () (declare (not safe)) (##fx= _g150154_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g150155_))
                ((let () (declare (not safe)) (##fx= _g150154_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g150155_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g150155_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals144947%_ _%hd144948%_)
        (let _%lp144950%_ ((_%rest144952%_ _%hd144948%_)
                           (_%k144953%_ '0)
                           (_%r144954%_ '()))
          (let* ((_%__stx149319149320%_ _%rest144952%_)
                 (_%g144959144976%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx149319149320%_)))))
            (let ((_%__kont149321149322%_
                   (lambda (_%L145039%_)
                     (_%lp144950%_
                      _%L145039%_
                      (let () (declare (not safe)) (##fx+ _%k144953%_ '1))
                      _%r144954%_)))
                  (_%__kont149323149324%_
                   (lambda (_%L145012%_ _%L145013%_)
                     (_%lp144950%_
                      _%L145012%_
                      (let () (declare (not safe)) (##fx+ _%k144953%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L145013%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals144947%_
                                         _%k144953%_
                                         _%L145012%_)
                                        '()))
                            _%r144954%_))))
                  (_%__kont149325149326%_
                   (lambda (_%L144988%_)
                     (let ((__tmp150156
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L144988%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals144947%_
                                               _%k144953%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp150156 _%r144954%_))))
                  (_%__kont149327149328%_ (lambda () (reverse _%r144954%_))))
              (let ((_%g144957144999%_
                     (lambda ()
                       (let ((_%L144988%_ _%__stx149319149320%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L144988%_))
                             (_%__kont149325149326%_ _%L144988%_)
                             (_%__kont149327149328%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx149319149320%_))
                    (let ((_%e144962145028%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx149319149320%_))))
                      (let ((_%tl144964145033%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144962145028%_)))
                            (_%hd144963145031%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144962145028%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd144963145031%_))
                            (let ((_%e144965145036%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd144963145031%_))))
                              (if (equal? _%e144965145036%_ '#f)
                                  (_%__kont149321149322%_ _%tl144964145033%_)
                                  (_%__kont149323149324%_
                                   _%tl144964145033%_
                                   _%hd144963145031%_)))
                            (_%__kont149323149324%_
                             _%tl144964145033%_
                             _%hd144963145031%_))))
                    (let () (declare (not safe)) (_%g144957144999%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self144626%_ _%stx144627%_ _%compiled-body?144628%_)
        (letrec ((_%generate-simple144630%_
                  (lambda (_%hd144932%_ _%body144933%_)
                    (gxc#generate-runtime-simple-let
                     _%self144626%_
                     'letrec
                     _%hd144932%_
                     _%body144933%_
                     _%compiled-body?144628%_)))
                 (_%generate-values144631%_
                  (lambda (_%hd144711%_ _%body144712%_)
                    (let _%lp144714%_ ((_%rest144716%_ _%hd144711%_)
                                       (_%bind144717%_ '())
                                       (_%check144718%_ '())
                                       (_%post144719%_ '()))
                      (let* ((_%__stx149393149394%_ _%rest144716%_)
                             (_%g144722144733%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx149393149394%_)))))
                        (let ((_%__kont149395149396%_
                               (lambda (_%L144760%_ _%L144761%_)
                                 (let* ((_%__stx149349149350%_ _%L144761%_)
                                        (_%g144776144801%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx149349149350%_)))))
                                   (let ((_%__kont149351149352%_
                                          (lambda (_%L144908%_ _%L144909%_)
                                            (let ((_%eid144923%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L144909%_)))
                                                  (_%expr144924%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self144626%_
                                                      _%L144908%_))))
                                              (_%lp144714%_
                                               _%L144760%_
                                               (cons (cons _%eid144923%_
                                                           (cons _%expr144924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind144717%_)
                                               _%check144718%_
                                               _%post144719%_))))
                                         (_%__kont149353149354%_
                                          (lambda (_%L144822%_ _%L144823%_)
                                            (let* ((_%vals144836%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values144838%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals144836%_
                                                     _%L144823%_
                                                     _%L144822%_))
                                                   (_%refs144840%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals144836%_
                                                     _%L144823%_))
                                                   (_%expr144842%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self144626%_
                                                       _%L144822%_))))
                                              (_%lp144714%_
                                               _%L144760%_
                                               (let ((__tmp150158
                                                      (cons (cons _%vals144836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr144842%_ '()))
                    _%bind144717%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp150157
                                                      (map (lambda (_%e144844144846%_)
                                                             (let* ((_%g144848144857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e144844144846%_)
                            (_%E144850144861%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g144848144857%_
                                        '([eid _])))
                               '#!void))
                            (_%K144851144866%_
                             (lambda (_%eid144864%_)
                               (cons _%eid144864%_ (cons '#!void '())))))
                       (if (pair? _%g144848144857%_)
                           (let ((_%hd144852144869%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g144848144857%_)))
                                 (_%tl144853144871%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g144848144857%_))))
                             (let ((_%eid144874%_ _%hd144852144869%_))
                               (if (pair? _%tl144853144871%_)
                                   (let ((_%tl144855144876%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl144853144871%_))))
                                     (if (null? _%tl144855144876%_)
                                         (_%K144851144866%_ _%eid144874%_)
                                         (_%E144850144861%_)))
                                   (_%E144850144861%_))))
                           (_%E144850144861%_))))
                   _%refs144840%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp150158
                                                  __tmp150157))
                                               (cons _%check-values144838%_
                                                     _%check144718%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs144840%_
                                                  _%post144719%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx149349149350%_))
                                         (let ((_%e144780144884%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx149349149350%_))))
                                           (let ((_%tl144782144889%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e144780144884%_)))
                                                 (_%hd144781144887%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e144780144884%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd144781144887%_))
                                                 (let ((_%e144783144892%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd144781144887%_))))
                                                   (let ((_%tl144785144897%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e144783144892%_)))
                                                         (_%hd144784144895%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e144783144892%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl144785144897%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl144782144889%_))
                     (let ((_%e144786144900%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl144782144889%_))))
                       (let ((_%tl144788144905%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e144786144900%_)))
                             (_%hd144787144903%_
                              (let ()
                                (declare (not safe))
                                (##car _%e144786144900%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144788144905%_))
                             (_%__kont149351149352%_
                              _%hd144787144903%_
                              _%hd144784144895%_)
                             (let ()
                               (declare (not safe))
                               (_%g144776144801%_)))))
                     (let () (declare (not safe)) (_%g144776144801%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl144782144889%_))
                     (let ((_%e144794144814%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl144782144889%_))))
                       (let ((_%tl144796144819%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e144794144814%_)))
                             (_%hd144795144817%_
                              (let ()
                                (declare (not safe))
                                (##car _%e144794144814%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144796144819%_))
                             (_%__kont149353149354%_
                              _%hd144795144817%_
                              _%hd144781144887%_)
                             (let ()
                               (declare (not safe))
                               (_%g144776144801%_)))))
                     (let () (declare (not safe)) (_%g144776144801%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl144782144889%_))
                                                     (let ((_%e144794144814%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl144782144889%_))))
                                                       (let ((_%tl144796144819%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e144794144814%_)))
                     (_%hd144795144817%_
                      (let () (declare (not safe)) (##car _%e144794144814%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl144796144819%_))
                     (_%__kont149353149354%_
                      _%hd144795144817%_
                      _%hd144781144887%_)
                     (let () (declare (not safe)) (_%g144776144801%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g144776144801%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g144776144801%_)))))))
                              (_%__kont149397149398%_
                               (lambda ()
                                 (let* ((_%body144740%_
                                         (if _%compiled-body?144628%_
                                             _%body144712%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self144626%_
                                                _%body144712%_))))
                                        (_%body144742%_
                                         (_%generate-values-post144633%_
                                          _%post144719%_
                                          _%body144740%_))
                                        (_%body144744%_
                                         (_%generate-values-check144632%_
                                          _%check144718%_
                                          _%body144742%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind144717%_)
                                               (cons _%body144744%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx149393149394%_))
                              (let ((_%e144726144752%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx149393149394%_))))
                                (let ((_%tl144728144757%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144726144752%_)))
                                      (_%hd144727144755%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144726144752%_))))
                                  (_%__kont149395149396%_
                                   _%tl144728144757%_
                                   _%hd144727144755%_)))
                              (_%__kont149397149398%_)))))))
                 (_%generate-values-check144632%_
                  (lambda (_%check144708%_ _%body144709%_)
                    (cons 'begin
                          (let ((__tmp150160 (cons _%body144709%_ '()))
                                (__tmp150159 (reverse _%check144708%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp150160 __tmp150159)))))
                 (_%generate-values-post144633%_
                  (lambda (_%post144701%_ _%body144702%_)
                    (cons 'begin
                          (let ((__tmp150164 (cons _%body144702%_ '()))
                                (__tmp150161
                                 (let ((__tmp150163
                                        (lambda (_%g144703144705%_)
                                          (cons 'set! _%g144703144705%_)))
                                       (__tmp150162 (reverse _%post144701%_)))
                                   (declare (not safe))
                                   (##map __tmp150163 __tmp150162))))
                            (declare (not safe))
                            (__foldr1 cons __tmp150164 __tmp150161))))))
          (let* ((_%g144635144652%_
                  (lambda (_%g144636144649%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144636144649%_))))
                 (_%g144634144698%_
                  (lambda (_%g144636144655%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144636144655%_))
                        (let ((_%e144639144657%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144636144655%_))))
                          (let ((_%hd144640144660%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144639144657%_)))
                                (_%tl144641144662%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144639144657%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144641144662%_))
                                (let ((_%e144642144665%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl144641144662%_))))
                                  (let ((_%hd144643144668%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144642144665%_)))
                                        (_%tl144644144670%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144642144665%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144644144670%_))
                                        (let ((_%e144645144673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144644144670%_))))
                                          (let ((_%hd144646144676%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144645144673%_)))
                                                (_%tl144647144678%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144645144673%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144647144678%_))
                                                ((lambda (_%L144681%_
                                                          _%L144682%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L144682%_)
                                                       (_%generate-simple144630%_
                                                        _%L144682%_
                                                        _%L144681%_)
                                                       (_%generate-values144631%_
                                                        _%L144682%_
                                                        _%L144681%_)))
                                                 _%hd144646144676%_
                                                 _%hd144643144668%_)
                                                (_%g144635144652%_
                                                 _%g144636144655%_))))
                                        (_%g144635144652%_
                                         _%g144636144655%_))))
                                (_%g144635144652%_ _%g144636144655%_))))
                        (_%g144635144652%_ _%g144636144655%_)))))
            (_%g144634144698%_ _%stx144627%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self144938%_ _%stx144939%_)
        (let ((_%compiled-body?144941%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self144938%_
           _%stx144939%_
           _%compiled-body?144941%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g150166_
        (let ((_g150165_ (let () (declare (not safe)) (##length _g150166_))))
          (cond ((let () (declare (not safe)) (##fx= _g150165_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g150166_))
                ((let () (declare (not safe)) (##fx= _g150165_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g150166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g150166_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self144207%_ _%stx144208%_)
        (letrec ((_%generate-values144210%_
                  (lambda (_%hd144453%_ _%body144454%_)
                    (let _%lp144456%_ ((_%rest144458%_ _%hd144453%_)
                                       (_%bind144459%_ '()))
                      (let* ((_%rest144460144468%_ _%rest144458%_)
                             (_%else144462144479%_
                              (lambda ()
                                (let ((_%bind144476%_ (reverse _%bind144459%_))
                                      (_%body144477%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self144207%_
                                          _%body144454%_))))
                                  (cons 'letrec*
                                        (cons _%bind144476%_
                                              (cons _%body144477%_ '()))))))
                             (_%K144464144613%_
                              (lambda (_%rest144482%_ _%hd-bind144483%_)
                                (let* ((_%__stx149407149408%_
                                        _%hd-bind144483%_)
                                       (_%g144486144511%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx149407149408%_)))))
                                  (let ((_%__kont149409149410%_
                                         (lambda (_%L144592%_ _%L144593%_)
                                           (let ((_%eid144607%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L144593%_)))
                                                 (_%expr144608%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self144207%_
                                                     _%L144592%_))))
                                             (_%lp144456%_
                                              _%rest144482%_
                                              (cons (cons _%eid144607%_
                                                          (cons _%expr144608%_
                                                                '()))
                                                    _%bind144459%_)))))
                                        (_%__kont149411149412%_
                                         (lambda (_%L144532%_ _%L144533%_)
                                           (let* ((_%vals144552%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp144554%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values144556%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp144554%_
                                                    _%L144533%_
                                                    _%L144532%_))
                                                  (_%refs144558%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals144552%_
                                                    _%L144533%_))
                                                  (_%expr144560%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self144207%_
                                                      _%L144532%_))))
                                             (_%lp144456%_
                                              _%rest144482%_
                                              (let ((__tmp150167
                                                     (cons (cons _%vals144552%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp144554%_
                                                       (cons _%expr144560%_
                                                             '()))
                                                 '())
                                           (cons _%check-values144556%_
                                                 (cons _%tmp144554%_ '()))))
                               '()))
                   _%bind144459%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp150167
                                                 _%refs144558%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx149407149408%_))
                                        (let ((_%e144490144568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx149407149408%_))))
                                          (let ((_%tl144492144573%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144490144568%_)))
                                                (_%hd144491144571%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144490144568%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd144491144571%_))
                                                (let ((_%e144493144576%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd144491144571%_))))
                                                  (let ((_%tl144495144581%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e144493144576%_)))
                                                        (_%hd144494144579%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e144493144576%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl144495144581%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl144492144573%_))
                                                            (let ((_%e144496144584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl144492144573%_))))
                      (let ((_%tl144498144589%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144496144584%_)))
                            (_%hd144497144587%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144496144584%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl144498144589%_))
                            (_%__kont149409149410%_
                             _%hd144497144587%_
                             _%hd144494144579%_)
                            (let ()
                              (declare (not safe))
                              (_%g144486144511%_)))))
                    (let () (declare (not safe)) (_%g144486144511%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl144492144573%_))
                    (let ((_%e144504144524%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl144492144573%_))))
                      (let ((_%tl144506144529%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144504144524%_)))
                            (_%hd144505144527%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144504144524%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl144506144529%_))
                            (_%__kont149411149412%_
                             _%hd144505144527%_
                             _%hd144491144571%_)
                            (let ()
                              (declare (not safe))
                              (_%g144486144511%_)))))
                    (let () (declare (not safe)) (_%g144486144511%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl144492144573%_))
                                                    (let ((_%e144504144524%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl144492144573%_))))
                                                      (let ((_%tl144506144529%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e144504144524%_)))
                    (_%hd144505144527%_
                     (let () (declare (not safe)) (##car _%e144504144524%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl144506144529%_))
                    (_%__kont149411149412%_
                     _%hd144505144527%_
                     _%hd144491144571%_)
                    (let () (declare (not safe)) (_%g144486144511%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g144486144511%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g144486144511%_))))))))
                        (if (pair? _%rest144460144468%_)
                            (let ((_%hd144465144616%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest144460144468%_)))
                                  (_%tl144466144618%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest144460144468%_))))
                              (let* ((_%hd-bind144621%_ _%hd144465144616%_)
                                     (_%rest144623%_ _%tl144466144618%_))
                                (_%K144464144613%_
                                 _%rest144623%_
                                 _%hd-bind144621%_)))
                            (_%else144462144479%_))))))
                 (_%generate-letrec?144211%_
                  (lambda (_%hd144343%_)
                    (let _%lp144345%_ ((_%rest144347%_ _%hd144343%_))
                      (let* ((_%rest144348144356%_ _%rest144347%_)
                             (_%else144350144364%_ (lambda () '#t))
                             (_%K144352144441%_
                              (lambda (_%rest144367%_ _%hd-bind144368%_)
                                (let* ((_%g144370144387%_
                                        (lambda (_%g144371144384%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g144371144384%_))))
                                       (_%g144369144438%_
                                        (lambda (_%g144371144390%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g144371144390%_))
                                              (let ((_%e144374144392%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g144371144390%_))))
                                                (let ((_%hd144375144395%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144374144392%_)))
                                                      (_%tl144376144397%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144374144392%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd144375144395%_))
                                                      (let ((_%e144377144400%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd144375144395%_))))
                (let ((_%hd144378144403%_
                       (let () (declare (not safe)) (##car _%e144377144400%_)))
                      (_%tl144379144405%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e144377144400%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl144379144405%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl144376144397%_))
                          (let ((_%e144380144408%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl144376144397%_))))
                            (let ((_%hd144381144411%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e144380144408%_)))
                                  (_%tl144382144413%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e144380144408%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl144382144413%_))
                                  ((lambda (_%L144416%_ _%L144417%_)
                                     (if (_%is-lambda-expr?144212%_
                                          _%L144416%_)
                                         (_%lp144345%_ _%rest144367%_)
                                         '#f))
                                   _%hd144381144411%_
                                   _%hd144378144403%_)
                                  (_%g144370144387%_ _%g144371144390%_))))
                          (_%g144370144387%_ _%g144371144390%_))
                      (_%g144370144387%_ _%g144371144390%_))))
              (_%g144370144387%_ _%g144371144390%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g144370144387%_
                                               _%g144371144390%_)))))
                                  (_%g144369144438%_ _%hd-bind144368%_)))))
                        (if (pair? _%rest144348144356%_)
                            (let ((_%hd144353144444%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest144348144356%_)))
                                  (_%tl144354144446%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest144348144356%_))))
                              (let* ((_%hd-bind144449%_ _%hd144353144444%_)
                                     (_%rest144451%_ _%tl144354144446%_))
                                (_%K144352144441%_
                                 _%rest144451%_
                                 _%hd-bind144449%_)))
                            (_%else144350144364%_))))))
                 (_%is-lambda-expr?144212%_
                  (lambda (_%expr144280%_)
                    (let* ((_%__stx149451149452%_ _%expr144280%_)
                           (_%g144283144297%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx149451149452%_)))))
                      (let ((_%__kont149453149454%_
                             (lambda (_%L144325%_ _%L144326%_) '#t))
                            (_%__kont149455149456%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx149451149452%_))
                            (let ((_%e144287144309%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx149451149452%_))))
                              (let ((_%tl144289144314%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e144287144309%_)))
                                    (_%hd144288144312%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e144287144309%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd144288144312%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd144288144312%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl144289144314%_))
                                            (let ((_%e144290144317%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl144289144314%_))))
                                              (let ((_%tl144292144322%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144290144317%_)))
                                                    (_%hd144291144320%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144290144317%_))))
                                                (_%__kont149453149454%_
                                                 _%tl144292144322%_
                                                 _%hd144291144320%_)))
                                            (_%__kont149455149456%_))
                                        (_%__kont149455149456%_))
                                    (_%__kont149455149456%_))))
                            (_%__kont149455149456%_)))))))
          (let* ((_%g144214144231%_
                  (lambda (_%g144215144228%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144215144228%_))))
                 (_%g144213144277%_
                  (lambda (_%g144215144234%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144215144234%_))
                        (let ((_%e144218144236%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144215144234%_))))
                          (let ((_%hd144219144239%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144218144236%_)))
                                (_%tl144220144241%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144218144236%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144220144241%_))
                                (let ((_%e144221144244%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl144220144241%_))))
                                  (let ((_%hd144222144247%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144221144244%_)))
                                        (_%tl144223144249%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144221144244%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144223144249%_))
                                        (let ((_%e144224144252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144223144249%_))))
                                          (let ((_%hd144225144255%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144224144252%_)))
                                                (_%tl144226144257%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144224144252%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144226144257%_))
                                                ((lambda (_%L144260%_
                                                          _%L144261%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L144261%_)
                                                       (if (_%generate-letrec?144211%_
                                                            _%L144261%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self144207%_
                                                            'letrec
                                                            _%L144261%_
                                                            _%L144260%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self144207%_
                                                            'letrec*
                                                            _%L144261%_
                                                            _%L144260%_
                                                            '#f))
                                                       (_%generate-values144210%_
                                                        _%L144261%_
                                                        _%L144260%_)))
                                                 _%hd144225144255%_
                                                 _%hd144222144247%_)
                                                (_%g144214144231%_
                                                 _%g144215144234%_))))
                                        (_%g144214144231%_
                                         _%g144215144234%_))))
                                (_%g144214144231%_ _%g144215144234%_))))
                        (_%g144214144231%_ _%g144215144234%_)))))
            (_%g144213144277%_ _%stx144208%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd144144%_)
        (let _%lp144146%_ ((_%rest144148%_ _%hd144144%_))
          (let* ((_%rest144149144165%_ _%rest144148%_)
                 (_%else144152144173%_ (lambda () '#f)))
            (let ((_%K144155144186%_
                   (lambda (_%rest144184%_) (_%lp144146%_ _%rest144184%_)))
                  (_%K144154144178%_ (lambda () '#t)))
              (let ((_%try-match144151144181%_
                     (lambda ()
                       (if (null? _%rest144149144165%_)
                           (_%K144154144178%_)
                           (_%else144152144173%_)))))
                (if (pair? _%rest144149144165%_)
                    (let ((_%tl144157144191%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest144149144165%_)))
                          (_%hd144156144189%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest144149144165%_))))
                      (if (pair? _%hd144156144189%_)
                          (let ((_%tl144159144196%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd144156144189%_)))
                                (_%hd144158144194%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd144156144189%_))))
                            (if (pair? _%hd144158144194%_)
                                (let ((_%tl144163144199%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd144158144194%_))))
                                  (if (null? _%tl144163144199%_)
                                      (if (pair? _%tl144159144196%_)
                                          (let ((_%tl144161144202%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl144159144196%_))))
                                            (if (null? _%tl144161144202%_)
                                                (let ((_%rest144205%_
                                                       _%tl144157144191%_))
                                                  (_%lp144146%_
                                                   _%rest144205%_))
                                                (_%else144152144173%_)))
                                          (_%else144152144173%_))
                                      (_%else144152144173%_)))
                                (_%else144152144173%_)))
                          (_%else144152144173%_)))
                    (_%try-match144151144181%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self144055%_
               _%form144056%_
               _%hd144057%_
               _%body144058%_
               _%compiled-body?144059%_)
        (letrec ((_%generate1144061%_
                  (lambda (_%bind144100%_)
                    (let* ((_%bind144101144112%_ _%bind144100%_)
                           (_%E144103144116%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind144101144112%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K144104144122%_
                            (lambda (_%expr144119%_ _%id144120%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id144120%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self144055%_
                                             _%expr144119%_))
                                          '())))))
                      (if (pair? _%bind144101144112%_)
                          (let ((_%hd144105144125%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind144101144112%_)))
                                (_%tl144106144127%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind144101144112%_))))
                            (if (pair? _%hd144105144125%_)
                                (let ((_%hd144109144130%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd144105144125%_)))
                                      (_%tl144110144132%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd144105144125%_))))
                                  (let ((_%id144135%_ _%hd144109144130%_))
                                    (if (null? _%tl144110144132%_)
                                        (if (pair? _%tl144106144127%_)
                                            (let ((_%hd144107144137%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl144106144127%_)))
                                                  (_%tl144108144139%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl144106144127%_))))
                                              (let ((_%expr144142%_
                                                     _%hd144107144137%_))
                                                (if (null? _%tl144108144139%_)
                                                    (_%K144104144122%_
                                                     _%expr144142%_
                                                     _%id144135%_)
                                                    (_%E144103144116%_))))
                                            (_%E144103144116%_))
                                        (_%E144103144116%_))))
                                (_%E144103144116%_)))
                          (_%E144103144116%_))))))
          (let* ((_%bind144063%_ (map _%generate1144061%_ _%hd144057%_))
                 (_%body144065%_
                  (if _%compiled-body?144059%_
                      _%body144058%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self144055%_ _%body144058%_))))
                 (_%body144097%_
                  (let* ((_%body144066144074%_ _%body144065%_)
                         (_%else144068144082%_
                          (lambda () (cons _%body144065%_ '())))
                         (_%K144070144087%_
                          (lambda (_%exprs144085%_) _%exprs144085%_)))
                    (if (pair? _%body144066144074%_)
                        (let ((_%hd144071144090%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body144066144074%_)))
                              (_%tl144072144092%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body144066144074%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd144071144090%_ 'begin))
                              (let ((_%exprs144095%_ _%tl144072144092%_))
                                (_%K144070144087%_ _%exprs144095%_))
                              (_%else144068144082%_)))
                        (_%else144068144082%_)))))
            (cons _%form144056%_ (cons _%bind144063%_ _%body144097%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self143955%_ _%stx143956%_)
        (letrec ((_%generate1143958%_
                  (lambda (_%datum144010%_)
                    (if (or (null? _%datum144010%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum144010%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum144010%_))
                            (eof-object? _%datum144010%_))
                        _%datum144010%_
                        (if (uninterned-symbol? _%datum144010%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum144010%_
                               '#t))
                            (if (pair? _%datum144010%_)
                                (cons (_%generate1143958%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum144010%_)))
                                      (_%generate1143958%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum144010%_))))
                                (if (box? _%datum144010%_)
                                    (box (_%generate1143958%_
                                          (unbox _%datum144010%_)))
                                    (if (vector? _%datum144010%_)
                                        (vector-map
                                         _%generate1143958%_
                                         _%datum144010%_)
                                        (if (or (s8vector? _%datum144010%_)
                                                (u8vector? _%datum144010%_)
                                                (s16vector? _%datum144010%_)
                                                (u16vector? _%datum144010%_)
                                                (s32vector? _%datum144010%_)
                                                (u32vector? _%datum144010%_)
                                                (s64vector? _%datum144010%_)
                                                (u64vector? _%datum144010%_)
                                                (f32vector? _%datum144010%_)
                                                (f64vector? _%datum144010%_))
                                            _%datum144010%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx143956%_)))))))))))
          (let* ((_%g143960143973%_
                  (lambda (_%g143961143970%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143961143970%_))))
                 (_%g143959144007%_
                  (lambda (_%g143961143976%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143961143976%_))
                        (let ((_%e143963143978%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143961143976%_))))
                          (let ((_%hd143964143981%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143963143978%_)))
                                (_%tl143965143983%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143963143978%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143965143983%_))
                                (let ((_%e143966143986%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143965143983%_))))
                                  (let ((_%hd143967143989%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143966143986%_)))
                                        (_%tl143968143991%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143966143986%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl143968143991%_))
                                        ((lambda (_%L143994%_)
                                           (cons 'quote
                                                 (cons (_%generate1143958%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L143994%_)))
                                                       '())))
                                         _%hd143967143989%_)
                                        (_%g143960143973%_
                                         _%g143961143976%_))))
                                (_%g143960143973%_ _%g143961143976%_))))
                        (_%g143960143973%_ _%g143961143976%_)))))
            (_%g143959144007%_ _%stx143956%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self143396%_ _%stx143397%_)
        (letrec ((_%compile-call143399%_
                  (lambda (_%rator143688%_ _%rands143689%_)
                    (let ((_%rator143695%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self143396%_
                              _%rator143688%_)))
                          (_%rands143696%_
                           (map (lambda (_%g143690143692%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self143396%_
                                     _%g143690143692%_)))
                                _%rands143689%_)))
                      (let* ((_%__stx149498149499%_ _%rator143695%_)
                             (_%g143699143751%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx149498149499%_)))))
                        (let ((_%__kont149500149501%_
                               (lambda (_%L143875%_
                                        _%L143876%_
                                        _%L143877%_
                                        _%L143878%_)
                                 (if (let ((__tmp150170
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands143696%_)))
                                           (__tmp150168
                                            (length (let ((__tmp150169
                                                           (lambda (_%g143914143917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g143915143919%_)
                     (cons _%g143914143917%_ _%g143915143919%_))))
              (declare (not safe))
              (__foldr1 __tmp150169 '() _%L143877%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp150170 __tmp150168))
                                     (let* ((_%id143922%_ _%L143878%_)
                                            (_%args143931%_
                                             (let ((__tmp150171
                                                    (lambda (_%g143923143926%_
                                                             _%g143924143928%_)
                                                      (cons _%g143923143926%_
                                                            _%g143924143928%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp150171
                                                '()
                                                _%L143877%_)))
                                            (_%body143940%_
                                             (let ((__tmp150172
                                                    (lambda (_%g143932143935%_
                                                             _%g143933143937%_)
                                                      (cons _%g143932143935%_
                                                            _%g143933143937%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp150172
                                                '()
                                                _%L143876%_)))
                                            (_%init143942%_
                                             (map list
                                                  _%args143931%_
                                                  _%rands143696%_)))
                                       (cons 'let
                                             (cons _%id143922%_
                                                   (cons _%init143942%_
                                                         _%body143940%_))))
                                     (let ((__tmp150173
                                            (let ((__tmp150174
                                                   (lambda (_%g143944143947%_
                                                            _%g143945143949%_)
                                                     (cons _%g143944143947%_
                                                           _%g143945143949%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp150174
                                               '()
                                               _%L143877%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx143397%_
                                        __tmp150173
                                        _%rands143696%_)))))
                              (_%__kont149506149507%_
                               (lambda ()
                                 (cons _%rator143695%_ _%rands143696%_))))
                          (let ((_%__match149565149566%_
                                 (lambda (_%e143705143763%_
                                          _%hd143706143766%_
                                          _%tl143707143768%_
                                          _%e143708143771%_
                                          _%hd143709143774%_
                                          _%tl143710143776%_
                                          _%e143711143779%_
                                          _%hd143712143782%_
                                          _%tl143713143784%_
                                          _%e143714143787%_
                                          _%hd143715143790%_
                                          _%tl143716143792%_
                                          _%e143717143795%_
                                          _%hd143718143798%_
                                          _%tl143719143800%_
                                          _%e143720143803%_
                                          _%hd143721143806%_
                                          _%tl143722143808%_
                                          _%e143723143811%_
                                          _%hd143724143814%_
                                          _%tl143725143816%_
                                          _%__splice149502149503%_
                                          _%target143726143819%_
                                          _%tl143728143821%_)
                                   (letrec ((_%loop143729143824%_
                                             (lambda (_%hd143727143827%_
                                                      _%arg143733143829%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd143727143827%_))
                                                   (let ((_%e143730143832%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd143727143827%_))))
                                                     (let ((_%lp-tl143732143837%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e143730143832%_)))
                                                           (_%lp-hd143731143835%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e143730143832%_))))
                                                       (_%loop143729143824%_
                                                        _%lp-tl143732143837%_
                                                        (cons _%lp-hd143731143835%_
                                                              _%arg143733143829%_))))
                                                   (let ((_%arg143734143840%_
                                                          (reverse _%arg143733143829%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl143725143816%_))
                                                         (let ((_%__splice149504149505%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl143725143816%_ '0))))
                   (let ((_%tl143737143845%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice149504149505%_ '1)))
                         (_%target143735143843%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice149504149505%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl143737143845%_))
                         (letrec ((_%loop143738143848%_
                                   (lambda (_%hd143736143851%_
                                            _%body143742143853%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd143736143851%_))
                                         (let ((_%e143739143856%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd143736143851%_))))
                                           (let ((_%lp-tl143741143861%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e143739143856%_)))
                                                 (_%lp-hd143740143859%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e143739143856%_))))
                                             (_%loop143738143848%_
                                              _%lp-tl143741143861%_
                                              (cons _%lp-hd143740143859%_
                                                    _%body143742143853%_))))
                                         (let ((_%body143743143864%_
                                                (reverse _%body143742143853%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl143719143800%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl143713143784%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl143710143776%_))
                                                       (let ((_%e143744143867%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl143710143776%_))))
                 (let ((_%tl143746143872%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e143744143867%_)))
                       (_%hd143745143870%_
                        (let ()
                          (declare (not safe))
                          (##car _%e143744143867%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl143746143872%_))
                       (let ((_%L143875%_ _%hd143745143870%_)
                             (_%L143876%_ _%body143743143864%_)
                             (_%L143877%_ _%arg143734143840%_)
                             (_%L143878%_ _%hd143715143790%_))
                         (if (eq? _%L143878%_ _%L143875%_)
                             (_%__kont149500149501%_
                              _%L143875%_
                              _%L143876%_
                              _%L143877%_
                              _%L143878%_)
                             (_%__kont149506149507%_)))
                       (_%__kont149506149507%_))))
               (_%__kont149506149507%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont149506149507%_))
                                               (_%__kont149506149507%_)))))))
                           (_%loop143738143848%_ _%target143735143843%_ '()))
                         (_%__kont149506149507%_))))
                 (_%__kont149506149507%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop143729143824%_
                                      _%target143726143819%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx149498149499%_))
                                (let ((_%e143705143763%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx149498149499%_))))
                                  (let ((_%tl143707143768%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143705143763%_)))
                                        (_%hd143706143766%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143705143763%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd143706143766%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd143706143766%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl143707143768%_))
                                                (let ((_%e143708143771%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl143707143768%_))))
                                                  (let ((_%tl143710143776%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143708143771%_)))
                                                        (_%hd143709143774%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143708143771%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd143709143774%_))
                                                        (let ((_%e143711143779%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd143709143774%_))))
                  (let ((_%tl143713143784%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143711143779%_)))
                        (_%hd143712143782%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143711143779%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143712143782%_))
                        (let ((_%e143714143787%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143712143782%_))))
                          (let ((_%tl143716143792%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143714143787%_)))
                                (_%hd143715143790%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143714143787%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143716143792%_))
                                (let ((_%e143717143795%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143716143792%_))))
                                  (let ((_%tl143719143800%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143717143795%_)))
                                        (_%hd143718143798%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143717143795%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd143718143798%_))
                                        (let ((_%e143720143803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd143718143798%_))))
                                          (let ((_%tl143722143808%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143720143803%_)))
                                                (_%hd143721143806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143720143803%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd143721143806%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd143721143806%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143722143808%_))
                                                        (let ((_%e143723143811%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143722143808%_))))
                  (let ((_%tl143725143816%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143723143811%_)))
                        (_%hd143724143814%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143723143811%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd143724143814%_))
                        (let ((_%__splice149502149503%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd143724143814%_
                                  '0))))
                          (let ((_%tl143728143821%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice149502149503%_ '1)))
                                (_%target143726143819%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice149502149503%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143728143821%_))
                                (_%__match149565149566%_
                                 _%e143705143763%_
                                 _%hd143706143766%_
                                 _%tl143707143768%_
                                 _%e143708143771%_
                                 _%hd143709143774%_
                                 _%tl143710143776%_
                                 _%e143711143779%_
                                 _%hd143712143782%_
                                 _%tl143713143784%_
                                 _%e143714143787%_
                                 _%hd143715143790%_
                                 _%tl143716143792%_
                                 _%e143717143795%_
                                 _%hd143718143798%_
                                 _%tl143719143800%_
                                 _%e143720143803%_
                                 _%hd143721143806%_
                                 _%tl143722143808%_
                                 _%e143723143811%_
                                 _%hd143724143814%_
                                 _%tl143725143816%_
                                 _%__splice149502149503%_
                                 _%target143726143819%_
                                 _%tl143728143821%_)
                                (_%__kont149506149507%_))))
                        (_%__kont149506149507%_))))
                (_%__kont149506149507%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont149506149507%_))
                                                (_%__kont149506149507%_))))
                                        (_%__kont149506149507%_))))
                                (_%__kont149506149507%_))))
                        (_%__kont149506149507%_))))
                (_%__kont149506149507%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont149506149507%_))
                                            (_%__kont149506149507%_))
                                        (_%__kont149506149507%_))))
                                (_%__kont149506149507%_)))))))))
          (let* ((_%g143401143424%_
                  (lambda (_%g143402143421%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143402143421%_))))
                 (_%g143400143685%_
                  (lambda (_%g143402143427%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143402143427%_))
                        (let ((_%e143405143429%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143402143427%_))))
                          (let ((_%hd143406143432%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143405143429%_)))
                                (_%tl143407143434%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143405143429%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143407143434%_))
                                (let ((_%e143408143437%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143407143434%_))))
                                  (let ((_%hd143409143440%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143408143437%_)))
                                        (_%tl143410143442%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143408143437%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl143410143442%_))
                                        (let ((_g150175_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl143410143442%_
                                                  '0))))
                                          (begin
                                            (let ((_g150176_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g150175_)
                                                         (##values-length
                                                          _g150175_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g150176_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g150176_)))
                                            (let ((_%target143411143445%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g150175_
                                                      0)))
                                                  (_%tl143413143447%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g150175_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl143413143447%_))
                                                  (letrec ((_%loop143414143450%_
                                                            (lambda (_%hd143412143453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand143418143455%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd143412143453%_))
                          (let ((_%e143415143458%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd143412143453%_))))
                            (let ((_%lp-hd143416143461%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143415143458%_)))
                                  (_%lp-tl143417143463%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143415143458%_))))
                              (_%loop143414143450%_
                               _%lp-tl143417143463%_
                               (cons _%lp-hd143416143461%_
                                     _%rand143418143455%_))))
                          (let ((_%rand143419143466%_
                                 (reverse _%rand143418143455%_)))
                            ((lambda (_%L143469%_ _%L143470%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call143399%_
                                    _%L143470%_
                                    (let ((__tmp150177
                                           (lambda (_%g143487143490%_
                                                    _%g143488143492%_)
                                             (cons _%g143487143490%_
                                                   _%g143488143492%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp150177 '() _%L143469%_)))
                                   (let* ((_%__stx149614149615%_ _%L143470%_)
                                          (_%g143496143508%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx149614149615%_)))))
                                     (let ((_%__kont149616149617%_
                                            (lambda ()
                                              (let ((_%f143545%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self143396%_
                                                        _%L143470%_))))
                                                (if (and (let ((__tmp150178
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f143545%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp150178))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f143545%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp143547%_ ((_%rest143550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp150180
                                                (lambda (_%g143667143670%_
                                                         _%g143668143672%_)
                                                  (cons _%g143667143670%_
                                                        _%g143668143672%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp150180
                                            '()
                                            _%L143469%_))))
                               (_%bind143552%_ '())
                               (_%args143553%_ '()))
              (let* ((_%rest143554143562%_ _%rest143550%_)
                     (_%else143556143570%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind143552%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f143545%_
                                                      _%args143553%_)
                                                '()))))))
                     (_%K143558143656%_
                      (lambda (_%rest143573%_ _%e143574%_)
                        (let* ((_%__stx149568149569%_ _%e143574%_)
                               (_%g143579143597%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx149568149569%_)))))
                          (let ((_%__kont149570149571%_
                                 (lambda ()
                                   (_%lp143547%_
                                    _%rest143573%_
                                    _%bind143552%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e143574%_))
                                          _%args143553%_))))
                                (_%__kont149572149573%_
                                 (lambda ()
                                   (_%lp143547%_
                                    _%rest143573%_
                                    _%bind143552%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e143574%_))
                                          _%args143553%_))))
                                (_%__kont149574149575%_
                                 (lambda ()
                                   (let ((_%tmp143604%_
                                          (let ((__tmp150179
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp150179))))
                                     (_%lp143547%_
                                      _%rest143573%_
                                      (cons (cons _%tmp143604%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e143574%_))
                                                        '()))
                                            _%bind143552%_)
                                      (cons _%tmp143604%_ _%args143553%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx149568149569%_))
                                (let ((_%e143581143635%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx149568149569%_))))
                                  (let ((_%tl143583143640%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143581143635%_)))
                                        (_%hd143582143638%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143581143635%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd143582143638%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd143582143638%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl143583143640%_))
                                                (let ((_%e143584143643%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl143583143640%_))))
                                                  (let ((_%tl143586143648%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143584143643%_)))
                                                        (_%hd143585143646%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143584143643%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl143586143648%_))
                                                        (_%__kont149570149571%_)
                                                        (_%__kont149574149575%_))))
                                                (_%__kont149574149575%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd143582143638%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl143583143640%_))
                                                    (let ((_%e143590143620%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl143583143640%_))))
                                                      (let ((_%tl143592143625%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e143590143620%_)))
                    (_%hd143591143623%_
                     (let () (declare (not safe)) (##car _%e143590143620%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl143592143625%_))
                    (_%__kont149572149573%_)
                    (_%__kont149574149575%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont149574149575%_))
                                                (_%__kont149574149575%_)))
                                        (_%__kont149574149575%_))))
                                (_%__kont149574149575%_)))))))
                (if (pair? _%rest143554143562%_)
                    (let ((_%hd143559143659%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest143554143562%_)))
                          (_%tl143560143661%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest143554143562%_))))
                      (let* ((_%e143664%_ _%hd143559143659%_)
                             (_%rest143666%_ _%tl143560143661%_))
                        (_%K143558143656%_ _%rest143666%_ _%e143664%_)))
                    (_%else143556143570%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call143399%_
                                                     _%L143470%_
                                                     (let ((__tmp150181
                                                            (lambda (_%g143674143677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g143675143679%_)
                      (cons _%g143674143677%_ _%g143675143679%_))))
               (declare (not safe))
               (__foldr1 __tmp150181 '() _%L143469%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont149618149619%_
                                            (lambda ()
                                              (_%compile-call143399%_
                                               _%L143470%_
                                               (let ((__tmp150182
                                                      (lambda (_%g143514143517%_
                                                               _%g143515143519%_)
                                                        (cons _%g143514143517%_
                                                              _%g143515143519%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp150182
                                                  '()
                                                  _%L143469%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx149614149615%_))
                                           (let ((_%e143498143527%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx149614149615%_))))
                                             (let ((_%tl143500143532%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e143498143527%_)))
                                                   (_%hd143499143530%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e143498143527%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd143499143530%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd143499143530%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl143500143532%_))
                                                           (let ((_%e143501143535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl143500143532%_))))
                     (let ((_%tl143503143540%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e143501143535%_)))
                           (_%hd143502143538%_
                            (let ()
                              (declare (not safe))
                              (##car _%e143501143535%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl143503143540%_))
                           (_%__kont149616149617%_)
                           (_%__kont149618149619%_))))
                   (_%__kont149618149619%_))
               (_%__kont149618149619%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont149618149619%_))))
                                           (_%__kont149618149619%_))))))
                             _%rand143419143466%_
                             _%hd143409143440%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop143414143450%_
                                                     _%target143411143445%_
                                                     '()))
                                                  (_%g143401143424%_
                                                   _%g143402143427%_)))))
                                        (_%g143401143424%_
                                         _%g143402143427%_))))
                                (_%g143401143424%_ _%g143402143427%_))))
                        (_%g143401143424%_ _%g143402143427%_)))))
            (_%g143400143685%_ _%stx143397%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self143139%_ _%stx143140%_)
        (let* ((_%__stx149686149687%_ _%stx143140%_)
               (_%g143143143172%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx149686149687%_)))))
          (let ((_%__kont149688149689%_
                 (lambda (_%L143240%_ _%L143241%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self143139%_
                        _%stx143140%_)
                       (let ((_%f143263%_
                              (let ((__tmp150183
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L143241%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self143139%_
                                 __tmp150183))))
                         (let _%lp143265%_ ((_%rest143268%_
                                             (reverse (let ((__tmp150185
                                                             (lambda (_%g143385143388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g143386143390%_)
                       (cons _%g143385143388%_ _%g143386143390%_))))
                (declare (not safe))
                (__foldr1 __tmp150185 '() _%L143240%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind143270%_ '())
                                            (_%args143271%_ '()))
                           (let* ((_%rest143272143280%_ _%rest143268%_)
                                  (_%else143274143288%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind143270%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f143263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args143271%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K143276143374%_
                                   (lambda (_%rest143291%_ _%e143292%_)
                                     (let* ((_%__stx149640149641%_ _%e143292%_)
                                            (_%g143297143315%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx149640149641%_)))))
                                       (let ((_%__kont149642149643%_
                                              (lambda ()
                                                (_%lp143265%_
                                                 _%rest143291%_
                                                 _%bind143270%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e143292%_))
                                                       _%args143271%_))))
                                             (_%__kont149644149645%_
                                              (lambda ()
                                                (_%lp143265%_
                                                 _%rest143291%_
                                                 _%bind143270%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e143292%_))
                                                       _%args143271%_))))
                                             (_%__kont149646149647%_
                                              (lambda ()
                                                (let ((_%tmp143322%_
                                                       (let ((__tmp150184
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp150184))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp143265%_
                                                   _%rest143291%_
                                                   (cons (cons _%tmp143322%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e143292%_))
                             '()))
                 _%bind143270%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp143322%_
                                                         _%args143271%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx149640149641%_))
                                             (let ((_%e143299143353%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx149640149641%_))))
                                               (let ((_%tl143301143358%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e143299143353%_)))
                                                     (_%hd143300143356%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e143299143353%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd143300143356%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd143300143356%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl143301143358%_))
                     (let ((_%e143302143361%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl143301143358%_))))
                       (let ((_%tl143304143366%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e143302143361%_)))
                             (_%hd143303143364%_
                              (let ()
                                (declare (not safe))
                                (##car _%e143302143361%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143304143366%_))
                             (_%__kont149642149643%_)
                             (_%__kont149646149647%_))))
                     (_%__kont149646149647%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd143300143356%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl143301143358%_))
                         (let ((_%e143308143338%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl143301143358%_))))
                           (let ((_%tl143310143343%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e143308143338%_)))
                                 (_%hd143309143341%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e143308143338%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl143310143343%_))
                                 (_%__kont149644149645%_)
                                 (_%__kont149646149647%_))))
                         (_%__kont149646149647%_))
                     (_%__kont149646149647%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont149646149647%_))))
                                             (_%__kont149646149647%_)))))))
                             (if (pair? _%rest143272143280%_)
                                 (let ((_%hd143277143377%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest143272143280%_)))
                                       (_%tl143278143379%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest143272143280%_))))
                                   (let* ((_%e143382%_ _%hd143277143377%_)
                                          (_%rest143384%_ _%tl143278143379%_))
                                     (_%K143276143374%_
                                      _%rest143384%_
                                      _%e143382%_)))
                                 (_%else143274143288%_))))))))
                (_%__kont149692149693%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self143139%_ _%stx143140%_))))
            (let ((_%__match149731149732%_
                   (lambda (_%e143147143184%_
                            _%hd143148143187%_
                            _%tl143149143189%_
                            _%e143150143192%_
                            _%hd143151143195%_
                            _%tl143152143197%_
                            _%e143153143200%_
                            _%hd143154143203%_
                            _%tl143155143205%_
                            _%e143156143208%_
                            _%hd143157143211%_
                            _%tl143158143213%_
                            _%__splice149690149691%_
                            _%target143159143216%_
                            _%tl143161143218%_)
                     (letrec ((_%loop143162143221%_
                               (lambda (_%hd143160143224%_
                                        _%rand143166143226%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd143160143224%_))
                                     (let ((_%e143163143229%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd143160143224%_))))
                                       (let ((_%lp-tl143165143234%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e143163143229%_)))
                                             (_%lp-hd143164143232%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e143163143229%_))))
                                         (_%loop143162143221%_
                                          _%lp-tl143165143234%_
                                          (cons _%lp-hd143164143232%_
                                                _%rand143166143226%_))))
                                     (let ((_%rand143167143237%_
                                            (reverse _%rand143166143226%_)))
                                       (_%__kont149688149689%_
                                        _%rand143167143237%_
                                        _%hd143157143211%_))))))
                       (_%loop143162143221%_ _%target143159143216%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx149686149687%_))
                  (let ((_%e143147143184%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx149686149687%_))))
                    (let ((_%tl143149143189%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143147143184%_)))
                          (_%hd143148143187%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143147143184%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143149143189%_))
                          (let ((_%e143150143192%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143149143189%_))))
                            (let ((_%tl143152143197%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143150143192%_)))
                                  (_%hd143151143195%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143150143192%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd143151143195%_))
                                  (let ((_%e143153143200%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd143151143195%_))))
                                    (let ((_%tl143155143205%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143153143200%_)))
                                          (_%hd143154143203%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143153143200%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd143154143203%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd143154143203%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl143155143205%_))
                                                  (let ((_%e143156143208%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl143155143205%_))))
                                                    (let ((_%tl143158143213%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143156143208%_)))
                                                          (_%hd143157143211%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143156143208%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl143158143213%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl143152143197%_))
                      (let ((_%__splice149690149691%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl143152143197%_
                                '0))))
                        (let ((_%tl143161143218%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice149690149691%_ '1)))
                              (_%target143159143216%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice149690149691%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl143161143218%_))
                              (_%__match149731149732%_
                               _%e143147143184%_
                               _%hd143148143187%_
                               _%tl143149143189%_
                               _%e143150143192%_
                               _%hd143151143195%_
                               _%tl143152143197%_
                               _%e143153143200%_
                               _%hd143154143203%_
                               _%tl143155143205%_
                               _%e143156143208%_
                               _%hd143157143211%_
                               _%tl143158143213%_
                               _%__splice149690149691%_
                               _%target143159143216%_
                               _%tl143161143218%_)
                              (_%__kont149692149693%_))))
                      (_%__kont149692149693%_))
                  (_%__kont149692149693%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont149692149693%_))
                                              (_%__kont149692149693%_))
                                          (_%__kont149692149693%_))))
                                  (_%__kont149692149693%_))))
                          (_%__kont149692149693%_))))
                  (_%__kont149692149693%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self142951%_ _%stx142952%_)
        (letrec ((_%simplify142954%_
                  (lambda (_%code143039%_)
                    (let* ((_%code143040143058%_ _%code143039%_)
                           (_%else143042143066%_ (lambda () _%code143039%_))
                           (_%K143044143102%_
                            (lambda (_%expr143069%_ _%test143070%_)
                              (let* ((_%expr143071143079%_ _%expr143069%_)
                                     (_%else143073143087%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test143070%_
                                                    (cons _%expr143069%_
                                                          '())))))
                                     (_%K143075143092%_
                                      (lambda (_%exprs143090%_)
                                        (cons 'and
                                              (cons _%test143070%_
                                                    _%exprs143090%_)))))
                                (if (pair? _%expr143071143079%_)
                                    (let ((_%hd143076143095%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr143071143079%_)))
                                          (_%tl143077143097%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr143071143079%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd143076143095%_ 'and))
                                          (let ((_%exprs143100%_
                                                 _%tl143077143097%_))
                                            (_%K143075143092%_
                                             _%exprs143100%_))
                                          (_%else143073143087%_)))
                                    (_%else143073143087%_))))))
                      (if (pair? _%code143040143058%_)
                          (let ((_%hd143045143105%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code143040143058%_)))
                                (_%tl143046143107%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code143040143058%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd143045143105%_ 'if))
                                (if (pair? _%tl143046143107%_)
                                    (let ((_%hd143047143110%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl143046143107%_)))
                                          (_%tl143048143112%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl143046143107%_))))
                                      (let ((_%test143115%_
                                             _%hd143047143110%_))
                                        (if (pair? _%tl143048143112%_)
                                            (let ((_%hd143049143117%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl143048143112%_)))
                                                  (_%tl143050143119%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl143048143112%_))))
                                              (let ((_%expr143122%_
                                                     _%hd143049143117%_))
                                                (if (pair? _%tl143050143119%_)
                                                    (let ((_%hd143051143124%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl143050143119%_)))
                                                          (_%tl143052143126%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl143050143119%_))))
                                                      (if (pair? _%hd143051143124%_)
                                                          (let ((_%hd143053143129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd143051143124%_)))
                        (_%tl143054143131%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd143051143124%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd143053143129%_ 'quote))
                        (if (pair? _%tl143054143131%_)
                            (let ((_%hd143055143134%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl143054143131%_)))
                                  (_%tl143056143136%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl143054143131%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd143055143134%_ '#f))
                                  (if (null? _%tl143056143136%_)
                                      (if (null? _%tl143052143126%_)
                                          (_%K143044143102%_
                                           _%expr143122%_
                                           _%test143115%_)
                                          (_%else143042143066%_))
                                      (_%else143042143066%_))
                                  (_%else143042143066%_)))
                            (_%else143042143066%_))
                        (_%else143042143066%_)))
                  (_%else143042143066%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else143042143066%_))))
                                            (_%else143042143066%_))))
                                    (_%else143042143066%_))
                                (_%else143042143066%_)))
                          (_%else143042143066%_))))))
          (let* ((_%g142956142977%_
                  (lambda (_%g142957142974%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142957142974%_))))
                 (_%g142955143036%_
                  (lambda (_%g142957142980%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142957142980%_))
                        (let ((_%e142961142982%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142957142980%_))))
                          (let ((_%hd142962142985%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142961142982%_)))
                                (_%tl142963142987%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142961142982%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142963142987%_))
                                (let ((_%e142964142990%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142963142987%_))))
                                  (let ((_%hd142965142993%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142964142990%_)))
                                        (_%tl142966142995%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142964142990%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142966142995%_))
                                        (let ((_%e142967142998%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142966142995%_))))
                                          (let ((_%hd142968143001%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142967142998%_)))
                                                (_%tl142969143003%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142967142998%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl142969143003%_))
                                                (let ((_%e142970143006%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl142969143003%_))))
                                                  (let ((_%hd142971143009%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142970143006%_)))
                                                        (_%tl142972143011%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142970143006%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl142972143011%_))
                                                        ((lambda (_%L143014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L143015%_
                          _%L143016%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify142954%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self142951%_
                                       _%L143016%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self142951%_
                                             _%L143015%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self142951%_
                                                   _%L143014%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp150186
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self142951%_
                                               _%L143016%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp150186
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self142951%_
                                            _%L143015%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self142951%_
                                                  _%L143014%_))
                                               '()))))))
                 _%hd142971143009%_
                 _%hd142968143001%_
                 _%hd142965142993%_)
                (_%g142956142977%_ _%g142957142980%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g142956142977%_
                                                 _%g142957142980%_))))
                                        (_%g142956142977%_
                                         _%g142957142980%_))))
                                (_%g142956142977%_ _%g142957142980%_))))
                        (_%g142956142977%_ _%g142957142980%_)))))
            (_%g142955143036%_ _%stx142952%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self142899%_ _%stx142900%_)
        (let* ((_%g142902142915%_
                (lambda (_%g142903142912%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142903142912%_))))
               (_%g142901142948%_
                (lambda (_%g142903142918%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142903142918%_))
                      (let ((_%e142905142920%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142903142918%_))))
                        (let ((_%hd142906142923%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142905142920%_)))
                              (_%tl142907142925%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142905142920%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142907142925%_))
                              (let ((_%e142908142928%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142907142925%_))))
                                (let ((_%hd142909142931%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142908142928%_)))
                                      (_%tl142910142933%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142908142928%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl142910142933%_))
                                      ((lambda (_%L142936%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L142936%_)))
                                       _%hd142909142931%_)
                                      (_%g142902142915%_ _%g142903142918%_))))
                              (_%g142902142915%_ _%g142903142918%_))))
                      (_%g142902142915%_ _%g142903142918%_)))))
          (_%g142901142948%_ _%stx142900%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self142831%_ _%stx142832%_)
        (let* ((_%g142834142851%_
                (lambda (_%g142835142848%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142835142848%_))))
               (_%g142833142896%_
                (lambda (_%g142835142854%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142835142854%_))
                      (let ((_%e142838142856%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142835142854%_))))
                        (let ((_%hd142839142859%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142838142856%_)))
                              (_%tl142840142861%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142838142856%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142840142861%_))
                              (let ((_%e142841142864%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142840142861%_))))
                                (let ((_%hd142842142867%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142841142864%_)))
                                      (_%tl142843142869%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142841142864%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142843142869%_))
                                      (let ((_%e142844142872%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142843142869%_))))
                                        (let ((_%hd142845142875%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142844142872%_)))
                                              (_%tl142846142877%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142844142872%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142846142877%_))
                                              ((lambda (_%L142880%_
                                                        _%L142881%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L142881%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self142831%_ _%L142880%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142845142875%_
                                               _%hd142842142867%_)
                                              (_%g142834142851%_
                                               _%g142835142854%_))))
                                      (_%g142834142851%_ _%g142835142854%_))))
                              (_%g142834142851%_ _%g142835142854%_))))
                      (_%g142834142851%_ _%g142835142854%_)))))
          (_%g142833142896%_ _%stx142832%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self142642%_ _%stx142643%_)
        (let* ((_%g142645142662%_
                (lambda (_%g142646142659%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142646142659%_))))
               (_%g142644142828%_
                (lambda (_%g142646142665%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142646142665%_))
                      (let ((_%e142649142667%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142646142665%_))))
                        (let ((_%hd142650142670%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142649142667%_)))
                              (_%tl142651142672%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142649142667%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142651142672%_))
                              (let ((_%e142652142675%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142651142672%_))))
                                (let ((_%hd142653142678%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142652142675%_)))
                                      (_%tl142654142680%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142652142675%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142654142680%_))
                                      (let ((_%e142655142683%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142654142680%_))))
                                        (let ((_%hd142656142686%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142655142683%_)))
                                              (_%tl142657142688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142655142683%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142657142688%_))
                                              ((lambda (_%L142691%_
                                                        _%L142692%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self142642%_ _%L142691%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self142642%_ _%L142692%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp142707%_ ((_%rest142710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L142692%_ (cons _%L142691%_ '())))
                                (_%bind142712%_ '())
                                (_%args142713%_ '()))
               (let* ((_%rest142714142722%_ _%rest142710%_)
                      (_%else142716142730%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind142712%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args142713%_)
                                                 '()))))))
                      (_%K142718142816%_
                       (lambda (_%rest142733%_ _%e142734%_)
                         (let* ((_%__stx149734149735%_ _%e142734%_)
                                (_%g142739142757%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx149734149735%_)))))
                           (let ((_%__kont149736149737%_
                                  (lambda ()
                                    (_%lp142707%_
                                     _%rest142733%_
                                     _%bind142712%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e142734%_))
                                           _%args142713%_))))
                                 (_%__kont149738149739%_
                                  (lambda ()
                                    (_%lp142707%_
                                     _%rest142733%_
                                     _%bind142712%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e142734%_))
                                           _%args142713%_))))
                                 (_%__kont149740149741%_
                                  (lambda ()
                                    (let ((_%tmp142764%_
                                           (let ((__tmp150187
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp150187))))
                                      (_%lp142707%_
                                       _%rest142733%_
                                       (cons (cons _%tmp142764%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e142734%_))
                                                         '()))
                                             _%bind142712%_)
                                       (cons _%tmp142764%_ _%args142713%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx149734149735%_))
                                 (let ((_%e142741142795%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx149734149735%_))))
                                   (let ((_%tl142743142800%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e142741142795%_)))
                                         (_%hd142742142798%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e142741142795%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd142742142798%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd142742142798%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl142743142800%_))
                                                 (let ((_%e142744142803%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl142743142800%_))))
                                                   (let ((_%tl142746142808%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e142744142803%_)))
                                                         (_%hd142745142806%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e142744142803%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl142746142808%_))
                                                         (_%__kont149736149737%_)
                                                         (_%__kont149740149741%_))))
                                                 (_%__kont149740149741%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd142742142798%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl142743142800%_))
                                                     (let ((_%e142750142780%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl142743142800%_))))
                                                       (let ((_%tl142752142785%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e142750142780%_)))
                     (_%hd142751142783%_
                      (let () (declare (not safe)) (##car _%e142750142780%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl142752142785%_))
                     (_%__kont149738149739%_)
                     (_%__kont149740149741%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont149740149741%_))
                                                 (_%__kont149740149741%_)))
                                         (_%__kont149740149741%_))))
                                 (_%__kont149740149741%_)))))))
                 (if (pair? _%rest142714142722%_)
                     (let ((_%hd142719142819%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest142714142722%_)))
                           (_%tl142720142821%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest142714142722%_))))
                       (let* ((_%e142824%_ _%hd142719142819%_)
                              (_%rest142826%_ _%tl142720142821%_))
                         (_%K142718142816%_ _%rest142826%_ _%e142824%_)))
                     (_%else142716142730%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142656142686%_
                                               _%hd142653142678%_)
                                              (_%g142645142662%_
                                               _%g142646142665%_))))
                                      (_%g142645142662%_ _%g142646142665%_))))
                              (_%g142645142662%_ _%g142646142665%_))))
                      (_%g142645142662%_ _%g142646142665%_)))))
          (_%g142644142828%_ _%stx142643%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self142453%_ _%stx142454%_)
        (let* ((_%g142456142473%_
                (lambda (_%g142457142470%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142457142470%_))))
               (_%g142455142639%_
                (lambda (_%g142457142476%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142457142476%_))
                      (let ((_%e142460142478%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142457142476%_))))
                        (let ((_%hd142461142481%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142460142478%_)))
                              (_%tl142462142483%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142460142478%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142462142483%_))
                              (let ((_%e142463142486%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142462142483%_))))
                                (let ((_%hd142464142489%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142463142486%_)))
                                      (_%tl142465142491%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142463142486%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142465142491%_))
                                      (let ((_%e142466142494%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142465142491%_))))
                                        (let ((_%hd142467142497%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142466142494%_)))
                                              (_%tl142468142499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142466142494%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142468142499%_))
                                              ((lambda (_%L142502%_
                                                        _%L142503%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self142453%_ _%L142502%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self142453%_ _%L142503%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp142518%_ ((_%rest142521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L142503%_ (cons _%L142502%_ '())))
                                (_%bind142523%_ '())
                                (_%args142524%_ '()))
               (let* ((_%rest142525142533%_ _%rest142521%_)
                      (_%else142527142541%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind142523%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args142524%_)
                                                 '()))))))
                      (_%K142529142627%_
                       (lambda (_%rest142544%_ _%e142545%_)
                         (let* ((_%__stx149780149781%_ _%e142545%_)
                                (_%g142550142568%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx149780149781%_)))))
                           (let ((_%__kont149782149783%_
                                  (lambda ()
                                    (_%lp142518%_
                                     _%rest142544%_
                                     _%bind142523%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e142545%_))
                                           _%args142524%_))))
                                 (_%__kont149784149785%_
                                  (lambda ()
                                    (_%lp142518%_
                                     _%rest142544%_
                                     _%bind142523%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e142545%_))
                                           _%args142524%_))))
                                 (_%__kont149786149787%_
                                  (lambda ()
                                    (let ((_%tmp142575%_
                                           (let ((__tmp150188
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp150188))))
                                      (_%lp142518%_
                                       _%rest142544%_
                                       (cons (cons _%tmp142575%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e142545%_))
                                                         '()))
                                             _%bind142523%_)
                                       (cons _%tmp142575%_ _%args142524%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx149780149781%_))
                                 (let ((_%e142552142606%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx149780149781%_))))
                                   (let ((_%tl142554142611%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e142552142606%_)))
                                         (_%hd142553142609%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e142552142606%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd142553142609%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd142553142609%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl142554142611%_))
                                                 (let ((_%e142555142614%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl142554142611%_))))
                                                   (let ((_%tl142557142619%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e142555142614%_)))
                                                         (_%hd142556142617%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e142555142614%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl142557142619%_))
                                                         (_%__kont149782149783%_)
                                                         (_%__kont149786149787%_))))
                                                 (_%__kont149786149787%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd142553142609%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl142554142611%_))
                                                     (let ((_%e142561142591%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl142554142611%_))))
                                                       (let ((_%tl142563142596%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e142561142591%_)))
                     (_%hd142562142594%_
                      (let () (declare (not safe)) (##car _%e142561142591%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl142563142596%_))
                     (_%__kont149784149785%_)
                     (_%__kont149786149787%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont149786149787%_))
                                                 (_%__kont149786149787%_)))
                                         (_%__kont149786149787%_))))
                                 (_%__kont149786149787%_)))))))
                 (if (pair? _%rest142525142533%_)
                     (let ((_%hd142530142630%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest142525142533%_)))
                           (_%tl142531142632%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest142525142533%_))))
                       (let* ((_%e142635%_ _%hd142530142630%_)
                              (_%rest142637%_ _%tl142531142632%_))
                         (_%K142529142627%_ _%rest142637%_ _%e142635%_)))
                     (_%else142527142541%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142467142497%_
                                               _%hd142464142489%_)
                                              (_%g142456142473%_
                                               _%g142457142476%_))))
                                      (_%g142456142473%_ _%g142457142476%_))))
                              (_%g142456142473%_ _%g142457142476%_))))
                      (_%g142456142473%_ _%g142457142476%_)))))
          (_%g142455142639%_ _%stx142454%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self142369%_ _%stx142370%_)
        (let* ((_%g142372142393%_
                (lambda (_%g142373142390%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142373142390%_))))
               (_%g142371142450%_
                (lambda (_%g142373142396%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142373142396%_))
                      (let ((_%e142377142398%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142373142396%_))))
                        (let ((_%hd142378142401%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142377142398%_)))
                              (_%tl142379142403%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142377142398%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142379142403%_))
                              (let ((_%e142380142406%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142379142403%_))))
                                (let ((_%hd142381142409%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142380142406%_)))
                                      (_%tl142382142411%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142380142406%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142382142411%_))
                                      (let ((_%e142383142414%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142382142411%_))))
                                        (let ((_%hd142384142417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142383142414%_)))
                                              (_%tl142385142419%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142383142414%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142385142419%_))
                                              (let ((_%e142386142422%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142385142419%_))))
                                                (let ((_%hd142387142425%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142386142422%_)))
                                                      (_%tl142388142427%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142386142422%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142388142427%_))
                                                      ((lambda (_%L142430%_
                                                                _%L142431%_
                                                                _%L142432%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self142369%_ _%L142430%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self142369%_
                                      _%L142431%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self142369%_
                                            _%L142432%_))
                                         (cons ''#f '()))))))
               _%hd142387142425%_
               _%hd142384142417%_
               _%hd142381142409%_)
              (_%g142372142393%_ _%g142373142396%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142372142393%_
                                               _%g142373142396%_))))
                                      (_%g142372142393%_ _%g142373142396%_))))
                              (_%g142372142393%_ _%g142373142396%_))))
                      (_%g142372142393%_ _%g142373142396%_)))))
          (_%g142371142450%_ _%stx142370%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self142269%_ _%stx142270%_)
        (let* ((_%g142272142297%_
                (lambda (_%g142273142294%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142273142294%_))))
               (_%g142271142366%_
                (lambda (_%g142273142300%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142273142300%_))
                      (let ((_%e142278142302%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142273142300%_))))
                        (let ((_%hd142279142305%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142278142302%_)))
                              (_%tl142280142307%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142278142302%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142280142307%_))
                              (let ((_%e142281142310%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142280142307%_))))
                                (let ((_%hd142282142313%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142281142310%_)))
                                      (_%tl142283142315%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142281142310%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142283142315%_))
                                      (let ((_%e142284142318%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142283142315%_))))
                                        (let ((_%hd142285142321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142284142318%_)))
                                              (_%tl142286142323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142284142318%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142286142323%_))
                                              (let ((_%e142287142326%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142286142323%_))))
                                                (let ((_%hd142288142329%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142287142326%_)))
                                                      (_%tl142289142331%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142287142326%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl142289142331%_))
                                                      (let ((_%e142290142334%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl142289142331%_))))
                (let ((_%hd142291142337%_
                       (let () (declare (not safe)) (##car _%e142290142334%_)))
                      (_%tl142292142339%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e142290142334%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142292142339%_))
                      ((lambda (_%L142342%_
                                _%L142343%_
                                _%L142344%_
                                _%L142345%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self142269%_
                                        _%L142343%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self142269%_
                                              _%L142342%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self142269%_
                                                    _%L142344%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self142269%_
                                                          _%L142345%_))
                                                       (cons ''#f '())))))))
                       _%hd142291142337%_
                       _%hd142288142329%_
                       _%hd142285142321%_
                       _%hd142282142313%_)
                      (_%g142272142297%_ _%g142273142300%_))))
              (_%g142272142297%_ _%g142273142300%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142272142297%_
                                               _%g142273142300%_))))
                                      (_%g142272142297%_ _%g142273142300%_))))
                              (_%g142272142297%_ _%g142273142300%_))))
                      (_%g142272142297%_ _%g142273142300%_)))))
          (_%g142271142366%_ _%stx142270%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self142185%_ _%stx142186%_)
        (let* ((_%g142188142209%_
                (lambda (_%g142189142206%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142189142206%_))))
               (_%g142187142266%_
                (lambda (_%g142189142212%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142189142212%_))
                      (let ((_%e142193142214%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142189142212%_))))
                        (let ((_%hd142194142217%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142193142214%_)))
                              (_%tl142195142219%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142193142214%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142195142219%_))
                              (let ((_%e142196142222%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142195142219%_))))
                                (let ((_%hd142197142225%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142196142222%_)))
                                      (_%tl142198142227%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142196142222%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142198142227%_))
                                      (let ((_%e142199142230%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142198142227%_))))
                                        (let ((_%hd142200142233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142199142230%_)))
                                              (_%tl142201142235%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142199142230%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142201142235%_))
                                              (let ((_%e142202142238%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142201142235%_))))
                                                (let ((_%hd142203142241%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142202142238%_)))
                                                      (_%tl142204142243%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142202142238%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142204142243%_))
                                                      ((lambda (_%L142246%_
                                                                _%L142247%_
                                                                _%L142248%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self142185%_ _%L142246%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self142185%_
                                      _%L142247%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self142185%_
                                            _%L142248%_))
                                         (cons ''#f '()))))))
               _%hd142203142241%_
               _%hd142200142233%_
               _%hd142197142225%_)
              (_%g142188142209%_ _%g142189142212%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142188142209%_
                                               _%g142189142212%_))))
                                      (_%g142188142209%_ _%g142189142212%_))))
                              (_%g142188142209%_ _%g142189142212%_))))
                      (_%g142188142209%_ _%g142189142212%_)))))
          (_%g142187142266%_ _%stx142186%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self142085%_ _%stx142086%_)
        (let* ((_%g142088142113%_
                (lambda (_%g142089142110%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142089142110%_))))
               (_%g142087142182%_
                (lambda (_%g142089142116%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142089142116%_))
                      (let ((_%e142094142118%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142089142116%_))))
                        (let ((_%hd142095142121%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142094142118%_)))
                              (_%tl142096142123%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142094142118%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142096142123%_))
                              (let ((_%e142097142126%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142096142123%_))))
                                (let ((_%hd142098142129%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142097142126%_)))
                                      (_%tl142099142131%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142097142126%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142099142131%_))
                                      (let ((_%e142100142134%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142099142131%_))))
                                        (let ((_%hd142101142137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142100142134%_)))
                                              (_%tl142102142139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142100142134%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142102142139%_))
                                              (let ((_%e142103142142%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142102142139%_))))
                                                (let ((_%hd142104142145%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142103142142%_)))
                                                      (_%tl142105142147%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142103142142%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl142105142147%_))
                                                      (let ((_%e142106142150%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl142105142147%_))))
                (let ((_%hd142107142153%_
                       (let () (declare (not safe)) (##car _%e142106142150%_)))
                      (_%tl142108142155%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e142106142150%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142108142155%_))
                      ((lambda (_%L142158%_
                                _%L142159%_
                                _%L142160%_
                                _%L142161%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self142085%_
                                        _%L142159%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self142085%_
                                              _%L142158%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self142085%_
                                                    _%L142160%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self142085%_
                                                          _%L142161%_))
                                                       (cons ''#f '())))))))
                       _%hd142107142153%_
                       _%hd142104142145%_
                       _%hd142101142137%_
                       _%hd142098142129%_)
                      (_%g142088142113%_ _%g142089142116%_))))
              (_%g142088142113%_ _%g142089142116%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142088142113%_
                                               _%g142089142116%_))))
                                      (_%g142088142113%_ _%g142089142116%_))))
                              (_%g142088142113%_ _%g142089142116%_))))
                      (_%g142088142113%_ _%g142089142116%_)))))
          (_%g142087142182%_ _%stx142086%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self141880%_ _%stx141881%_)
        (let* ((_%g141883141904%_
                (lambda (_%g141884141901%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141884141901%_))))
               (_%g141882142082%_
                (lambda (_%g141884141907%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141884141907%_))
                      (let ((_%e141888141909%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141884141907%_))))
                        (let ((_%hd141889141912%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141888141909%_)))
                              (_%tl141890141914%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141888141909%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141890141914%_))
                              (let ((_%e141891141917%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141890141914%_))))
                                (let ((_%hd141892141920%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141891141917%_)))
                                      (_%tl141893141922%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141891141917%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141893141922%_))
                                      (let ((_%e141894141925%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141893141922%_))))
                                        (let ((_%hd141895141928%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141894141925%_)))
                                              (_%tl141896141930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141894141925%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141896141930%_))
                                              (let ((_%e141897141933%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141896141930%_))))
                                                (let ((_%hd141898141936%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141897141933%_)))
                                                      (_%tl141899141938%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141897141933%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141899141938%_))
                                                      ((lambda (_%L141941%_
                                                                _%L141942%_
                                                                _%L141943%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self141880%_
                                    _%L141941%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self141880%_
                                          _%L141942%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp141961%_ ((_%rest141964%_
                                         (cons _%L141942%_
                                               (cons _%L141941%_ '())))
                                        (_%bind141966%_ '())
                                        (_%args141967%_ '()))
                       (let* ((_%rest141968141976%_ _%rest141964%_)
                              (_%else141970141984%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind141966%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp150189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp150189 _%args141967%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K141972142070%_
                               (lambda (_%rest141987%_ _%e141988%_)
                                 (let* ((_%__stx149826149827%_ _%e141988%_)
                                        (_%g141993142011%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx149826149827%_)))))
                                   (let ((_%__kont149828149829%_
                                          (lambda ()
                                            (_%lp141961%_
                                             _%rest141987%_
                                             _%bind141966%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e141988%_))
                                                   _%args141967%_))))
                                         (_%__kont149830149831%_
                                          (lambda ()
                                            (_%lp141961%_
                                             _%rest141987%_
                                             _%bind141966%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e141988%_))
                                                   _%args141967%_))))
                                         (_%__kont149832149833%_
                                          (lambda ()
                                            (let ((_%tmp142018%_
                                                   (let ((__tmp150190
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp150190))))
                                              (_%lp141961%_
                                               _%rest141987%_
                                               (cons (cons _%tmp142018%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e141988%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind141966%_)
                                               (cons _%tmp142018%_
                                                     _%args141967%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx149826149827%_))
                                         (let ((_%e141995142049%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx149826149827%_))))
                                           (let ((_%tl141997142054%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e141995142049%_)))
                                                 (_%hd141996142052%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e141995142049%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd141996142052%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd141996142052%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl141997142054%_))
                                                         (let ((_%e141998142057%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl141997142054%_))))
                   (let ((_%tl142000142062%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e141998142057%_)))
                         (_%hd141999142060%_
                          (let ()
                            (declare (not safe))
                            (##car _%e141998142057%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl142000142062%_))
                         (_%__kont149828149829%_)
                         (_%__kont149832149833%_))))
                 (_%__kont149832149833%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd141996142052%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl141997142054%_))
                     (let ((_%e142004142034%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl141997142054%_))))
                       (let ((_%tl142006142039%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142004142034%_)))
                             (_%hd142005142037%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142004142034%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142006142039%_))
                             (_%__kont149830149831%_)
                             (_%__kont149832149833%_))))
                     (_%__kont149832149833%_))
                 (_%__kont149832149833%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont149832149833%_))))
                                         (_%__kont149832149833%_)))))))
                         (if (pair? _%rest141968141976%_)
                             (let ((_%hd141973142073%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest141968141976%_)))
                                   (_%tl141974142075%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest141968141976%_))))
                               (let* ((_%e142078%_ _%hd141973142073%_)
                                      (_%rest142080%_ _%tl141974142075%_))
                                 (_%K141972142070%_
                                  _%rest142080%_
                                  _%e142078%_)))
                             (_%else141970141984%_))))))
               _%hd141898141936%_
               _%hd141895141928%_
               _%hd141892141920%_)
              (_%g141883141904%_ _%g141884141907%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141883141904%_
                                               _%g141884141907%_))))
                                      (_%g141883141904%_ _%g141884141907%_))))
                              (_%g141883141904%_ _%g141884141907%_))))
                      (_%g141883141904%_ _%g141884141907%_)))))
          (_%g141882142082%_ _%stx141881%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self141659%_ _%stx141660%_)
        (let* ((_%g141662141687%_
                (lambda (_%g141663141684%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141663141684%_))))
               (_%g141661141877%_
                (lambda (_%g141663141690%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141663141690%_))
                      (let ((_%e141668141692%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141663141690%_))))
                        (let ((_%hd141669141695%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141668141692%_)))
                              (_%tl141670141697%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141668141692%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141670141697%_))
                              (let ((_%e141671141700%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141670141697%_))))
                                (let ((_%hd141672141703%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141671141700%_)))
                                      (_%tl141673141705%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141671141700%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141673141705%_))
                                      (let ((_%e141674141708%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141673141705%_))))
                                        (let ((_%hd141675141711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141674141708%_)))
                                              (_%tl141676141713%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141674141708%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141676141713%_))
                                              (let ((_%e141677141716%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141676141713%_))))
                                                (let ((_%hd141678141719%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141677141716%_)))
                                                      (_%tl141679141721%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141677141716%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl141679141721%_))
                                                      (let ((_%e141680141724%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl141679141721%_))))
                (let ((_%hd141681141727%_
                       (let () (declare (not safe)) (##car _%e141680141724%_)))
                      (_%tl141682141729%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e141680141724%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141682141729%_))
                      ((lambda (_%L141732%_
                                _%L141733%_
                                _%L141734%_
                                _%L141735%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self141659%_
                                            _%L141733%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self141659%_
                                                  _%L141732%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self141659%_
                                                        _%L141734%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp141756%_ ((_%rest141759%_
                                                 (cons _%L141734%_
                                                       (cons _%L141732%_
                                                             (cons _%L141733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind141761%_ '())
                                                (_%args141762%_ '()))
                               (let* ((_%rest141763141771%_ _%rest141759%_)
                                      (_%else141765141779%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind141761%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp150191 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp150191 _%args141762%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K141767141865%_
                                       (lambda (_%rest141782%_ _%e141783%_)
                                         (let* ((_%__stx149872149873%_
                                                 _%e141783%_)
                                                (_%g141788141806%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx149872149873%_)))))
                                           (let ((_%__kont149874149875%_
                                                  (lambda ()
                                                    (_%lp141756%_
                                                     _%rest141782%_
                                                     _%bind141761%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e141783%_))
                                                           _%args141762%_))))
                                                 (_%__kont149876149877%_
                                                  (lambda ()
                                                    (_%lp141756%_
                                                     _%rest141782%_
                                                     _%bind141761%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e141783%_))
                                                           _%args141762%_))))
                                                 (_%__kont149878149879%_
                                                  (lambda ()
                                                    (let ((_%tmp141813%_
                                                           (let ((__tmp150192
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp150192))))
              (_%lp141756%_
               _%rest141782%_
               (cons (cons _%tmp141813%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e141783%_))
                                 '()))
                     _%bind141761%_)
               (cons _%tmp141813%_ _%args141762%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx149872149873%_))
                                                 (let ((_%e141790141844%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx149872149873%_))))
                                                   (let ((_%tl141792141849%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e141790141844%_)))
                                                         (_%hd141791141847%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e141790141844%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd141791141847%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd141791141847%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl141792141849%_))
                         (let ((_%e141793141852%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl141792141849%_))))
                           (let ((_%tl141795141857%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e141793141852%_)))
                                 (_%hd141794141855%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e141793141852%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl141795141857%_))
                                 (_%__kont149874149875%_)
                                 (_%__kont149878149879%_))))
                         (_%__kont149878149879%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd141791141847%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl141792141849%_))
                             (let ((_%e141799141829%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl141792141849%_))))
                               (let ((_%tl141801141834%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e141799141829%_)))
                                     (_%hd141800141832%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e141799141829%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl141801141834%_))
                                     (_%__kont149876149877%_)
                                     (_%__kont149878149879%_))))
                             (_%__kont149878149879%_))
                         (_%__kont149878149879%_)))
                 (_%__kont149878149879%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont149878149879%_)))))))
                                 (if (pair? _%rest141763141771%_)
                                     (let ((_%hd141768141868%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest141763141771%_)))
                                           (_%tl141769141870%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest141763141771%_))))
                                       (let* ((_%e141873%_ _%hd141768141868%_)
                                              (_%rest141875%_
                                               _%tl141769141870%_))
                                         (_%K141767141865%_
                                          _%rest141875%_
                                          _%e141873%_)))
                                     (_%else141765141779%_))))))
                       _%hd141681141727%_
                       _%hd141678141719%_
                       _%hd141675141711%_
                       _%hd141672141703%_)
                      (_%g141662141687%_ _%g141663141690%_))))
              (_%g141662141687%_ _%g141663141690%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141662141687%_
                                               _%g141663141690%_))))
                                      (_%g141662141687%_ _%g141663141690%_))))
                              (_%g141662141687%_ _%g141663141690%_))))
                      (_%g141662141687%_ _%g141663141690%_)))))
          (_%g141661141877%_ _%stx141660%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self141498%_ _%stx141499%_)
        (letrec ((_%import-set-template141501%_
                  (lambda (_%in141604%_ _%phi141605%_)
                    (let ((_%iphi141607%_
                           (fx+ _%phi141605%_
                                (##direct-structure-ref
                                 _%in141604%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports141608%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in141604%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp141610%_ ((_%rest141612%_ _%imports141608%_)
                                         (_%r141613%_ '()))
                        (let* ((_%rest141614141622%_ _%rest141612%_)
                               (_%else141616141630%_ (lambda () _%r141613%_))
                               (_%K141618141647%_
                                (lambda (_%rest141633%_ _%in141634%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in141634%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi141607%_))
                                          (_%lp141610%_
                                           _%rest141633%_
                                           (cons _%in141634%_ _%r141613%_))
                                          (_%lp141610%_
                                           _%rest141633%_
                                           _%r141613%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in141634%_
                                             'gx#module-import::t))
                                          (let ((_%iphi141638%_
                                                 (fx+ _%phi141605%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in141634%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi141638%_))
                                                (_%lp141610%_
                                                 _%rest141633%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in141634%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r141613%_))
                                                (_%lp141610%_
                                                 _%rest141633%_
                                                 _%r141613%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in141634%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi141641%_
                                                     (fx+ _%iphi141607%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in141634%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi141641%_))
                                                    (_%lp141610%_
                                                     _%rest141633%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in141634%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r141613%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi141641%_))
                                                        (_%lp141610%_
                                                         _%rest141633%_
                                                         (let ((__tmp150193
                                                                (_%import-set-template141501%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in141634%_
                         _%iphi141607%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r141613%_ __tmp150193)))
                (_%lp141610%_ _%rest141633%_ _%r141613%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp141610%_
                                               _%rest141633%_
                                               _%r141613%_)))))))
                          (if (pair? _%rest141614141622%_)
                              (let ((_%hd141619141650%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest141614141622%_)))
                                    (_%tl141620141652%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest141614141622%_))))
                                (let* ((_%in141655%_ _%hd141619141650%_)
                                       (_%rest141657%_ _%tl141620141652%_))
                                  (_%K141618141647%_
                                   _%rest141657%_
                                   _%in141655%_)))
                              (_%else141616141630%_))))))))
          (let* ((_%g141503141513%_
                  (lambda (_%g141504141510%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141504141510%_))))
                 (_%g141502141601%_
                  (lambda (_%g141504141516%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141504141516%_))
                        (let ((_%e141506141518%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141504141516%_))))
                          (let ((_%hd141507141521%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141506141518%_)))
                                (_%tl141508141523%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141506141518%_))))
                            ((lambda (_%L141526%_)
                               (let ((_%ht141537%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp141539%_ ((_%rest141541%_
                                                     _%L141526%_)
                                                    (_%loads141542%_ '()))
                                   (letrec ((_%K141544%_
                                             (lambda (_%ctx141594%_
                                                      _%rest141595%_)
                                               (let ((_%id141597%_
                                                      (##structure-ref
                                                       _%ctx141594%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht141537%_
                                                        _%id141597%_))
                                                     (_%lp141539%_
                                                      _%rest141595%_
                                                      _%loads141542%_)
                                                     (let ((_%rt141599%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id141597%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht141537%_
                                                          _%id141597%_
                                                          _%rt141599%_))
                                                       (_%lp141539%_
                                                        _%rest141595%_
                                                        (cons _%rt141599%_
                                                              _%loads141542%_))))))))
                                     (let* ((_%rest141545141553%_
                                             _%rest141541%_)
                                            (_%else141547141565%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp150195
                                                            (lambda (_%g141560141562%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g141560141562%_)))
                   (__tmp150194 (reverse _%loads141542%_)))
               (declare (not safe))
               (##map __tmp150195 __tmp150194)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K141549141582%_
                                             (lambda (_%rest141568%_
                                                      _%in141569%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in141569%_
                                                      'gx#module-context::t))
                                                   (_%K141544%_
                                                    _%in141569%_
                                                    _%rest141568%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in141569%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in141569%_
                               '3
                               '#f
                               '#f)))
                   (_%K141544%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in141569%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest141568%_)
                   (_%lp141539%_ _%rest141568%_ _%loads141542%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in141569%_
                      'gx#import-set::t))
                   (let ((_%phi141574%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in141569%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi141574%_)
                         (_%K141544%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in141569%_
                             '1
                             '#f
                             '#f))
                          _%rest141568%_)
                         (if (fxpositive? _%phi141574%_)
                             (let ((_%deps141578%_
                                    (_%import-set-template141501%_
                                     _%in141569%_
                                     '0)))
                               (_%lp141539%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest141568%_
                                   _%deps141578%_))
                                _%loads141542%_))
                             (_%lp141539%_ _%rest141568%_ _%loads141542%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx141499%_
                      _%in141569%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest141545141553%_)
                                           (let ((_%hd141550141585%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest141545141553%_)))
                                                 (_%tl141551141587%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest141545141553%_))))
                                             (let* ((_%in141590%_
                                                     _%hd141550141585%_)
                                                    (_%rest141592%_
                                                     _%tl141551141587%_))
                                               (_%K141549141582%_
                                                _%rest141592%_
                                                _%in141590%_)))
                                           (_%else141547141565%_)))))))
                             _%tl141508141523%_)))
                        (_%g141503141513%_ _%g141504141516%_)))))
            (_%g141502141601%_ _%stx141499%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self141311%_ _%stx141312%_)
        (letrec ((_%add-lift!141314%_
                  (lambda (_%expr141496%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr141496%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote141315%_
                  (lambda (_%id141493%_ _%marks141494%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id141493%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks141494%_
                                                        '()))))))))
                 (_%generate-simple141316%_
                  (lambda (_%stxq141488%_)
                    (let ((_%gid141490%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid141491%_
                           (gxc#generate-runtime-identifier _%stxq141488%_)))
                      (_%add-lift!141314%_
                       (cons 'define
                             (cons _%gid141490%_
                                   (cons (_%generate-syntax-quote141315%_
                                          _%qid141491%_
                                          ''())
                                         '()))))
                      (let ((__tmp150196
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp150196 _%stxq141488%_ _%gid141490%_))
                      _%gid141490%_)))
                 (_%generate-serialized141317%_
                  (lambda (_%stxq141478%_ _%marks141479%_)
                    (let* ((_%mark-refs141481%_
                            (map _%generate-mark141318%_ _%marks141479%_))
                           (_%gid141483%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid141485%_
                            (gxc#generate-runtime-identifier _%stxq141478%_)))
                      (_%add-lift!141314%_
                       (cons 'define
                             (cons _%gid141483%_
                                   (cons (_%generate-syntax-quote141315%_
                                          _%qid141485%_
                                          (cons 'list _%mark-refs141481%_))
                                         '()))))
                      (let ((__tmp150197
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp150197 _%stxq141478%_ _%gid141483%_))
                      _%gid141483%_)))
                 (_%generate-mark141318%_
                  (lambda (_%mark141463%_)
                    (let ((_%$e141465%_
                           (let ((__tmp150198
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp150198 _%mark141463%_))))
                      (if _%$e141465%_
                          _%$e141465%_
                          (let* ((_%gid141469%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr141471%_
                                  (_%serialize-mark141319%_ _%mark141463%_))
                                 (_%ctx141473%_
                                  (let ((__tmp150199
                                         (##structure-ref
                                          _%mark141463%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp150199)))
                                 (_%ctx-ref141475%_
                                  (if (eq? _%ctx141473%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref141320%_
                                                               _%ctx141473%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp150200
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp150200
                               _%mark141463%_
                               _%gid141469%_))
                            (_%add-lift!141314%_
                             (cons 'define
                                   (cons _%gid141469%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr141471%_ '()))
                   (cons _%ctx-ref141475%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid141469%_)))))
                 (_%serialize-mark141319%_
                  (lambda (_%mark141410%_)
                    (letrec ((_%quote-e141412%_
                              (lambda (_%sym141461%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym141461%_))
                                    _%sym141461%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym141461%_))))))
                      (let* ((_%mark141413141422%_ _%mark141410%_)
                             (_%E141415141426%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark141413141422%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K141416141438%_
                              (lambda (_%trace141429%_
                                       _%phi141430%_
                                       _%ctx141431%_
                                       _%subst141432%_)
                                (let ((_%subs141434%_
                                       (if _%subst141432%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst141432%_))
                                           '())))
                                  (cons _%phi141430%_
                                        (map (lambda (_%pair141436%_)
                                               (cons (_%quote-e141412%_
                                                      (car _%pair141436%_))
                                                     (_%quote-e141412%_
                                                      (cdr _%pair141436%_))))
                                             _%subs141434%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark141413141422%_
                               'gx#expander-mark::t))
                            (let* ((_%e141417141441%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark141413141422%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst141444%_ _%e141417141441%_)
                                   (_%e141418141446%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark141413141422%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx141449%_ _%e141418141446%_)
                                   (_%e141419141451%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark141413141422%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi141454%_ _%e141419141451%_)
                                   (_%e141420141456%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark141413141422%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace141459%_ _%e141420141456%_))
                              (_%K141416141438%_
                               _%trace141459%_
                               _%phi141454%_
                               _%ctx141449%_
                               _%subst141444%_))
                            (_%E141415141426%_))))))
                 (_%context-ref141320%_
                  (lambda (_%ctx141397%_)
                    (if (let ((__tmp150201
                               (##structure-ref
                                _%ctx141397%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp150201
                           'gx#module-context::t))
                        (let ((_%ctx-ref141399%_
                               (_%context-ref-nested141322%_ _%ctx141397%_))
                              (_%ctx-origin141400%_
                               (_%context-ref-origin141321%_ _%ctx141397%_))
                              (_%origin141401%_
                               (_%context-ref-origin141321%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin141401%_ _%ctx-origin141400%_)
                              (let ((_%ref141403%_
                                     (_%context-ref-nested141322%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp141405%_ ((_%ref141407%_
                                                    (cdr _%ref141403%_))
                                                   (_%ctx-ref141408%_
                                                    (cdr _%ctx-ref141399%_)))
                                  (if (and (pair? _%ref141407%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref141407%_))
                                                (car _%ctx-ref141408%_)))
                                      (_%lp141405%_
                                       (cdr _%ref141407%_)
                                       (cdr _%ctx-ref141408%_))
                                      (cons '#f _%ctx-ref141408%_))))
                              _%ctx-ref141399%_))
                        (let ((__tmp150202
                               (##structure-ref
                                _%ctx141397%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp150202)))))
                 (_%context-ref-origin141321%_
                  (lambda (_%ctx141389%_)
                    (let _%lp141391%_ ((_%ctx141393%_ _%ctx141389%_))
                      (let ((_%super141395%_
                             (##structure-ref
                              _%ctx141393%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super141395%_
                               'gx#module-context::t))
                            (_%lp141391%_ _%super141395%_)
                            _%ctx141393%_)))))
                 (_%context-ref-nested141322%_
                  (lambda (_%ctx141380%_)
                    (let _%lp141382%_ ((_%ctx141384%_ _%ctx141380%_)
                                       (_%r141385%_ '()))
                      (let ((_%super141387%_
                             (##structure-ref
                              _%ctx141384%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super141387%_
                               'gx#module-context::t))
                            (_%lp141382%_
                             _%super141387%_
                             (cons (car (##structure-ref
                                         _%ctx141384%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r141385%_))
                            (cons (let ((__tmp150203
                                         (##structure-ref
                                          _%ctx141384%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp150203))
                                  _%r141385%_)))))))
          (let* ((_%g141324141337%_
                  (lambda (_%g141325141334%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141325141334%_))))
                 (_%g141323141377%_
                  (lambda (_%g141325141340%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141325141340%_))
                        (let ((_%e141327141342%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141325141340%_))))
                          (let ((_%hd141328141345%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141327141342%_)))
                                (_%tl141329141347%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141327141342%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141329141347%_))
                                (let ((_%e141330141350%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141329141347%_))))
                                  (let ((_%hd141331141353%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141330141350%_)))
                                        (_%tl141332141355%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141330141350%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl141332141355%_))
                                        ((lambda (_%L141358%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L141358%_))
                                               (let ((_%$e141371%_
                                                      (let ((__tmp150204
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp150204 _%L141358%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e141371%_
                                                     _%$e141371%_
                                                     (let ((_%marks141375%_
                                                            (##direct-structure-ref
                                                             _%L141358%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks141375%_)
                                                           (_%generate-simple141316%_
                                                            _%L141358%_)
                                                           (_%generate-serialized141317%_
                                                            _%L141358%_
                                                            _%marks141375%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L141358%_))))
                                         _%hd141331141353%_)
                                        (_%g141324141337%_
                                         _%g141325141340%_))))
                                (_%g141324141337%_ _%g141325141340%_))))
                        (_%g141324141337%_ _%g141325141340%_)))))
            (_%g141323141377%_ _%stx141312%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self141243%_ _%stx141244%_)
        (let* ((_%g141246141263%_
                (lambda (_%g141247141260%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141247141260%_))))
               (_%g141245141308%_
                (lambda (_%g141247141266%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141247141266%_))
                      (let ((_%e141250141268%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141247141266%_))))
                        (let ((_%hd141251141271%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141250141268%_)))
                              (_%tl141252141273%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141250141268%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141252141273%_))
                              (let ((_%e141253141276%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141252141273%_))))
                                (let ((_%hd141254141279%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141253141276%_)))
                                      (_%tl141255141281%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141253141276%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141255141281%_))
                                      (let ((_%e141256141284%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141255141281%_))))
                                        (let ((_%hd141257141287%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141256141284%_)))
                                              (_%tl141258141289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141256141284%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141258141289%_))
                                              ((lambda (_%L141292%_
                                                        _%L141293%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L141293%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self141243%_ _%L141292%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd141257141287%_
                                               _%hd141254141279%_)
                                              (_%g141246141263%_
                                               _%g141247141266%_))))
                                      (_%g141246141263%_ _%g141247141266%_))))
                              (_%g141246141263%_ _%g141247141266%_))))
                      (_%g141246141263%_ _%g141247141266%_)))))
          (_%g141245141308%_ _%stx141244%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self141192%_ _%stx141193%_)
        (let* ((_%g141195141205%_
                (lambda (_%g141196141202%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141196141202%_))))
               (_%g141194141240%_
                (lambda (_%g141196141208%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141196141208%_))
                      (let ((_%e141198141210%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141196141208%_))))
                        (let ((_%hd141199141213%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141198141210%_)))
                              (_%tl141200141215%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141198141210%_))))
                          ((lambda (_%L141218%_)
                             (let* ((_%c-body141232%_
                                     (map (lambda (_%g141227141229%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self141192%_
                                               _%g141227141229%_)))
                                          _%L141218%_))
                                    (_%c-body141237%_
                                     (let ((__tmp150205
                                            (lambda (_%$obj141234%_)
                                              (not (eq? _%$obj141234%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp150205
                                        _%c-body141232%_))))
                               (cons '%#begin _%c-body141237%_)))
                           _%tl141200141215%_)))
                      (_%g141195141205%_ _%g141196141208%_)))))
          (_%g141194141240%_ _%stx141193%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self141097%_ _%stx141098%_)
        (let* ((_%g141100141110%_
                (lambda (_%g141101141107%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141101141107%_))))
               (_%g141099141189%_
                (lambda (_%g141101141113%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141101141113%_))
                      (let ((_%e141103141115%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141101141113%_))))
                        (let ((_%hd141104141118%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141103141115%_)))
                              (_%tl141105141120%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141103141115%_))))
                          ((lambda (_%L141123%_)
                             (let* ((_%phi141133%_
                                     (let ((__tmp150206
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp150206 '1)))
                                    (_%block141135%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self141097%_ 'state))
                                      _%phi141133%_))
                                    (_%compiled141138%_
                                     (let ((__tmp150207
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self141097%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L141123%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp150207
                                        gx#current-expander-phi
                                        _%phi141133%_)))
                                    (_%g141141141151%_
                                     (lambda (_%g141142141148%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g141142141148%_))))
                                    (_%g141140141186%_
                                     (lambda (_%g141142141154%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g141142141154%_))
                                           (let ((_%e141144141156%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g141142141154%_))))
                                             (let ((_%hd141145141159%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e141144141156%_)))
                                                   (_%tl141146141161%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e141144141156%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd141145141159%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd141145141159%_))
                                                       ((lambda (_%L141164%_)
                                                          (let ((_%c-body141181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj141178%_)
                                   (not (eq? _%$obj141178%_ '#!void)))
                                 _%L141164%_)))
                    (if _%block141135%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block141135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body141181%_))
                        (if (null? _%c-body141181%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body141181%_)))))
                _%tl141146141161%_)
               (_%g141141141151%_ _%g141142141154%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g141141141151%_
                                                    _%g141142141154%_))))
                                           (_%g141141141151%_
                                            _%g141142141154%_)))))
                               (_%g141140141186%_ _%compiled141138%_)))
                           _%tl141105141120%_)))
                      (_%g141100141110%_ _%g141101141113%_)))))
          (_%g141099141189%_ _%stx141098%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self141028%_ _%stx141029%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self141028%_ 'state)))
        (let* ((_%g141031141045%_
                (lambda (_%g141032141042%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141032141042%_))))
               (_%g141030141094%_
                (lambda (_%g141032141048%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141032141048%_))
                      (let ((_%e141035141050%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141032141048%_))))
                        (let ((_%hd141036141053%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141035141050%_)))
                              (_%tl141037141055%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141035141050%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141037141055%_))
                              (let ((_%e141038141058%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141037141055%_))))
                                (let ((_%hd141039141061%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141038141058%_)))
                                      (_%tl141040141063%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141038141058%_))))
                                  ((lambda (_%L141066%_ _%L141067%_)
                                     (let ((_%key141080%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L141067%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key141080%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx141029%_
                                              _%L141067%_
                                              _%key141080%_)))
                                       (let* ((_%ctx141082%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L141067%_)))
                                              (_%code141085%_
                                               (let ((__tmp150208
                                                      (lambda ()
                                                        (let ((__tmp150209
                                                               (##structure-ref
                                                                _%ctx141082%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self141028%_
                                                           __tmp150209)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp150208
                                                  gx#current-expander-context
                                                  _%ctx141082%_)))
                                              (_%rt141087%_
                                               (let ((__tmp150210
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp150210
                                                  _%ctx141082%_)))
                                              (_%loader141089%_
                                               (if _%rt141087%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt141087%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid141091%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L141067%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self141028%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid141091%_
                                                     (cons _%code141085%_
                                                           _%loader141089%_))))))
                                   _%tl141040141063%_
                                   _%hd141039141061%_)))
                              (_%g141031141045%_ _%g141032141048%_))))
                      (_%g141031141045%_ _%g141032141048%_)))))
          (_%g141030141094%_ _%stx141029%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx141015%_ _%context-chain141016%_)
        (let _%lp141018%_ ((_%ctx141020%_ _%ctx141015%_) (_%path141021%_ '()))
          (let ((_%super141023%_
                 (##structure-ref _%ctx141020%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super141023%_ _%context-chain141016%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx141020%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path141021%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super141023%_
                       'gx#module-context::t))
                    (_%lp141018%_
                     _%super141023%_
                     (cons (car (##structure-ref
                                 _%ctx141020%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path141021%_))
                    (cons (let ((__tmp150211
                                 (##structure-ref
                                  _%ctx141020%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp150211))
                          _%path141021%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp141008%_ ((_%ctx141010%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r141011%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx141010%_ 'gx#module-context::t))
              (_%lp141008%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx141010%_ '3 '#f '#f))
               (cons _%ctx141010%_ _%r141011%_))
              _%r141011%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self140771%_ _%stx140772%_)
        (letrec* ((_%context-chain140774%_ (gxc#current-context-chain))
                  (_%make-import-spec140775%_
                   (lambda (_%in140944%_)
                     (let* ((_%in140945140957%_ _%in140944%_)
                            (_%E140947140961%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in140945140957%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K140948140971%_
                             (lambda (_%phi140964%_
                                      _%name140965%_
                                      _%src-name140966%_
                                      _%src-phi140967%_
                                      _%src-key140968%_
                                      _%src-ctx140969%_)
                               (cons _%phi140964%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name140965%_)
                                           (cons _%src-phi140967%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name140966%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in140945140957%_
                              'gx#module-import::t))
                           (let ((_%e140949140974%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in140945140957%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e140949140974%_
                                    'gx#module-export::t))
                                 (let* ((_%e140952140977%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e140949140974%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx140980%_ _%e140952140977%_)
                                        (_%e140953140982%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e140949140974%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key140985%_ _%e140953140982%_)
                                        (_%e140954140987%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e140949140974%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi140990%_ _%e140954140987%_)
                                        (_%e140955140992%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e140949140974%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name140995%_ _%e140955140992%_)
                                        (_%e140950140997%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in140945140957%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name141000%_ _%e140950140997%_)
                                        (_%e140951141002%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in140945140957%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi141005%_ _%e140951141002%_))
                                   (_%K140948140971%_
                                    _%phi141005%_
                                    _%name141000%_
                                    _%src-name140995%_
                                    _%src-phi140990%_
                                    _%src-key140985%_
                                    _%src-ctx140980%_))
                                 (_%E140947140961%_)))
                           (_%E140947140961%_)))))
                  (_%make-import-path140776%_
                   (lambda (_%ctx140942%_)
                     (gxc#generate-meta-import-path
                      _%ctx140942%_
                      _%context-chain140774%_)))
                  (_%make-import-spec-in140777%_
                   (lambda (_%ctx140939%_ _%in140940%_)
                     (cons 'spec:
                           (cons (_%make-import-path140776%_ _%ctx140939%_)
                                 (reverse _%in140940%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self140771%_ 'state)))
          (let* ((_%g140779140789%_
                  (lambda (_%g140780140786%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140780140786%_))))
                 (_%g140778140936%_
                  (lambda (_%g140780140792%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140780140792%_))
                        (let ((_%e140782140794%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140780140792%_))))
                          (let ((_%hd140783140797%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140782140794%_)))
                                (_%tl140784140799%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140782140794%_))))
                            ((lambda (_%L140802%_)
                               (let _%lp140813%_ ((_%rest140815%_ _%L140802%_)
                                                  (_%current-src140816%_ '#f)
                                                  (_%current-in140817%_ '())
                                                  (_%r140818%_ '()))
                                 (let* ((_%rest140819140827%_ _%rest140815%_)
                                        (_%else140821140837%_
                                         (lambda ()
                                           (let ((_%r140835%_
                                                  (if _%current-src140816%_
                                                      (cons (_%make-import-spec-in140777%_
                                                             _%current-src140816%_
                                                             _%current-in140817%_)
                                                            _%r140818%_)
                                                      _%r140818%_)))
                                             (cons '%#import
                                                   (reverse _%r140835%_)))))
                                        (_%K140823140924%_
                                         (lambda (_%rest140840%_ _%in140841%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in140841%_
                                                  'gx#module-import::t))
                                               (let* ((_%in140843140850%_
                                                       _%in140841%_)
                                                      (_%E140845140854%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in140843140850%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K140846140862%_
               (lambda (_%src-ctx140857%_)
                 (if (eq? _%current-src140816%_ _%src-ctx140857%_)
                     (_%lp140813%_
                      _%rest140840%_
                      _%current-src140816%_
                      (cons (_%make-import-spec140775%_ _%in140841%_)
                            _%current-in140817%_)
                      _%r140818%_)
                     (if _%current-src140816%_
                         (_%lp140813%_
                          _%rest140840%_
                          _%src-ctx140857%_
                          (cons (_%make-import-spec140775%_ _%in140841%_) '())
                          (cons (_%make-import-spec-in140777%_
                                 _%current-src140816%_
                                 _%current-in140817%_)
                                _%r140818%_))
                         (_%lp140813%_
                          _%rest140840%_
                          _%src-ctx140857%_
                          (cons (_%make-import-spec140775%_ _%in140841%_) '())
                          _%r140818%_)))))
              (_%e140847140865%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in140843140850%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e140847140865%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e140848140868%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e140847140865%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx140871%_ _%e140848140868%_))
               (_%K140846140862%_ _%src-ctx140871%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E140845140854%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in140841%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi140874%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in140841%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src140876%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in140841%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in140916%_
                                                           (let* ((_%g140877140886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path140776%_ _%src140876%_))
                          (_%E140880140890%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g140877140886%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K140882140906%_
                            (lambda (_%path140904%_) _%path140904%_))
                           (_%K140881140896%_
                            (lambda (_%path140894%_)
                              (cons 'in: _%path140894%_))))
                       (if (pair? _%g140877140886%_)
                           (let ((_%tl140884140911%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g140877140886%_)))
                                 (_%hd140883140909%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g140877140886%_))))
                             (if (null? _%tl140884140911%_)
                                 (let ((_%path140914%_ _%hd140883140909%_))
                                   (_%K140882140906%_ _%path140914%_))
                                 (let ((_%path140899%_ _%g140877140886%_))
                                   (_%K140881140896%_ _%path140899%_))))
                           (let ((_%path140899%_ _%g140877140886%_))
                             (_%K140881140896%_ _%path140899%_))))))
                  (_%r140918%_
                   (if _%current-src140816%_
                       (cons (_%make-import-spec-in140777%_
                              _%current-src140816%_
                              _%current-in140817%_)
                             _%r140818%_)
                       _%r140818%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp140813%_
                                                      _%rest140840%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi140874%_)
                                                                _%src-in140916%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi140874%_
                                    (cons _%src-in140916%_ '()))))
                    _%r140918%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in140841%_
                                                          'gx#module-context::t))
                                                       (let ((_%r140922%_
                                                              (if _%current-src140816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in140777%_
                                 _%current-src140816%_
                                 _%current-in140817%_)
                                _%r140818%_)
                          _%r140818%_)))
                 (_%lp140813%_
                  _%rest140840%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path140776%_ _%in140841%_))
                        _%r140922%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest140819140827%_)
                                       (let ((_%hd140824140927%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest140819140827%_)))
                                             (_%tl140825140929%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest140819140827%_))))
                                         (let* ((_%in140932%_
                                                 _%hd140824140927%_)
                                                (_%rest140934%_
                                                 _%tl140825140929%_))
                                           (_%K140823140924%_
                                            _%rest140934%_
                                            _%in140932%_)))
                                       (_%else140821140837%_)))))
                             _%tl140784140799%_)))
                        (_%g140779140789%_ _%g140780140792%_)))))
            (_%g140778140936%_ _%stx140772%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self140581%_ _%stx140582%_)
        (letrec* ((_%context-chain140584%_ (gxc#current-context-chain))
                  (_%make-import-path140585%_
                   (lambda (_%ctx140769%_)
                     (gxc#generate-meta-import-path
                      _%ctx140769%_
                      _%context-chain140584%_))))
          (let* ((_%g140587140597%_
                  (lambda (_%g140588140594%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140588140594%_))))
                 (_%g140586140766%_
                  (lambda (_%g140588140600%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140588140600%_))
                        (let ((_%e140590140602%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140588140600%_))))
                          (let ((_%hd140591140605%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140590140602%_)))
                                (_%tl140592140607%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140590140602%_))))
                            ((lambda (_%L140610%_)
                               (let _%lp140621%_ ((_%rest140623%_ _%L140610%_)
                                                  (_%r140624%_ '()))
                                 (let* ((_%rest140625140633%_ _%rest140623%_)
                                        (_%else140627140641%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r140624%_))))
                                        (_%K140629140754%_
                                         (lambda (_%rest140644%_ _%out140645%_)
                                           (let* ((_%out140646140659%_
                                                   _%out140645%_)
                                                  (_%E140649140663%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out140646140659%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K140653140733%_
                                                    (lambda (_%name140729%_
                                                             _%phi140730%_
                                                             _%key140731%_)
                                                      (_%lp140621%_
                                                       _%rest140644%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi140730%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key140731%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name140729%_)
                                             '()))))
                     _%r140624%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K140650140713%_
                                                    (lambda (_%phi140667%_
                                                             _%src140668%_)
                                                      (let* ((_%out140708%_
                                                              (if _%src140668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g140669140678%_
                                              (_%make-import-path140585%_
                                               _%src140668%_))
                                             (_%E140672140682%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g140669140678%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K140674140698%_
                                               (lambda (_%path140696%_)
                                                 _%path140696%_))
                                              (_%K140673140688%_
                                               (lambda (_%path140686%_)
                                                 (cons 'in: _%path140686%_))))
                                          (if (pair? _%g140669140678%_)
                                              (let ((_%tl140676140703%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g140669140678%_)))
                                                    (_%hd140675140701%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g140669140678%_))))
                                                (if (null? _%tl140676140703%_)
                                                    (let ((_%path140706%_
                                                           _%hd140675140701%_))
                                                      (_%K140674140698%_
                                                       _%path140706%_))
                                                    (let ((_%path140691%_
                                                           _%g140669140678%_))
                                                      (_%K140673140688%_
                                                       _%path140691%_))))
                                              (let ((_%path140691%_
                                                     _%g140669140678%_))
                                                (_%K140673140688%_
                                                 _%path140691%_)))))
                                      '()))
                          '#t))
                     (_%out140710%_
                      (if (fxzero? _%phi140667%_)
                          _%out140708%_
                          (cons 'phi:
                                (cons _%phi140667%_
                                      (cons _%out140708%_ '()))))))
                (_%lp140621%_
                 _%rest140644%_
                 (cons _%out140710%_ _%r140624%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match140648140726%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out140646140659%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e140651140716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out140646140659%_
                               '1
                               '#f
                               '#f)))
                           (_%e140652140721%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out140646140659%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src140719%_ _%e140651140716%_)
                            (_%phi140724%_ _%e140652140721%_))
                        (_%K140650140713%_ _%phi140724%_ _%src140719%_)))
                    (_%E140649140663%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out140646140659%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e140654140736%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out140646140659%_
                        '1
                        '#f
                        '#f)))
                    (_%e140655140739%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out140646140659%_
                        '2
                        '#f
                        '#f)))
                    (_%e140656140744%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out140646140659%_
                        '3
                        '#f
                        '#f)))
                    (_%e140657140749%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out140646140659%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key140742%_ _%e140655140739%_)
                     (_%phi140747%_ _%e140656140744%_)
                     (_%name140752%_ _%e140657140749%_))
                 (_%K140653140733%_
                  _%name140752%_
                  _%phi140747%_
                  _%key140742%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match140648140726%_))))))))
                                   (if (pair? _%rest140625140633%_)
                                       (let ((_%hd140630140757%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest140625140633%_)))
                                             (_%tl140631140759%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest140625140633%_))))
                                         (let* ((_%out140762%_
                                                 _%hd140630140757%_)
                                                (_%rest140764%_
                                                 _%tl140631140759%_))
                                           (_%K140629140754%_
                                            _%rest140764%_
                                            _%out140762%_)))
                                       (_%else140627140641%_)))))
                             _%tl140592140607%_)))
                        (_%g140587140597%_ _%g140588140600%_)))))
            (_%g140586140766%_ _%stx140582%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self140542%_ _%stx140543%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self140542%_ 'state)))
        (let* ((_%g140545140555%_
                (lambda (_%g140546140552%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140546140552%_))))
               (_%g140544140578%_
                (lambda (_%g140546140558%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140546140558%_))
                      (let ((_%e140548140560%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140546140558%_))))
                        (let ((_%hd140549140563%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140548140560%_)))
                              (_%tl140550140565%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140548140560%_))))
                          ((lambda (_%L140568%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L140568%_)))
                           _%tl140550140565%_)))
                      (_%g140545140555%_ _%g140546140558%_)))))
          (_%g140544140578%_ _%stx140543%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self140413%_ _%stx140414%_)
        (letrec ((_%generate1140416%_
                  (lambda (_%id140537%_ _%eid140538%_)
                    (let ((_%eid140540%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid140538%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid140540%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx140414%_
                             _%eid140540%_)))
                      (cons (gxc#generate-runtime-identifier _%id140537%_)
                            (cons _%eid140540%_ '()))))))
          (let* ((_%g140418140446%_
                  (lambda (_%g140419140443%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140419140443%_))))
                 (_%g140417140534%_
                  (lambda (_%g140419140449%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140419140449%_))
                        (let ((_%e140422140451%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140419140449%_))))
                          (let ((_%hd140423140454%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140422140451%_)))
                                (_%tl140424140456%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140422140451%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl140424140456%_))
                                (let ((_g150212_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl140424140456%_
                                          '0))))
                                  (begin
                                    (let ((_g150213_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g150212_)
                                                 (##values-length _g150212_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g150213_ 2)))
                                          (error "Context expects 2 values"
                                                 _g150213_)))
                                    (let ((_%target140425140459%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g150212_ 0)))
                                          (_%tl140427140461%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g150212_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140427140461%_))
                                          (letrec ((_%loop140428140464%_
                                                    (lambda (_%hd140426140467%_
                                                             _%eid140432140469%_
                                                             _%id140433140471%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd140426140467%_))
                                                          (let ((_%e140429140474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd140426140467%_))))
                    (let ((_%lp-hd140430140477%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140429140474%_)))
                          (_%lp-tl140431140479%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140429140474%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd140430140477%_))
                          (let ((_%e140436140482%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd140430140477%_))))
                            (let ((_%hd140437140485%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140436140482%_)))
                                  (_%tl140438140487%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140436140482%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl140438140487%_))
                                  (let ((_%e140439140490%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl140438140487%_))))
                                    (let ((_%hd140440140493%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140439140490%_)))
                                          (_%tl140441140495%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140439140490%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140441140495%_))
                                          (_%loop140428140464%_
                                           _%lp-tl140431140479%_
                                           (cons _%hd140440140493%_
                                                 _%eid140432140469%_)
                                           (cons _%hd140437140485%_
                                                 _%id140433140471%_))
                                          (_%g140418140446%_
                                           _%g140419140449%_))))
                                  (_%g140418140446%_ _%g140419140449%_))))
                          (_%g140418140446%_ _%g140419140449%_))))
                  (let ((_%eid140434140498%_ (reverse _%eid140432140469%_))
                        (_%id140435140500%_ (reverse _%id140433140471%_)))
                    ((lambda (_%L140503%_ _%L140504%_)
                       (cons '%#extern
                             (map _%generate1140416%_
                                  (let ((__tmp150214
                                         (lambda (_%g140519140522%_
                                                  _%g140520140524%_)
                                           (cons _%g140519140522%_
                                                 _%g140520140524%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp150214 '() _%L140504%_))
                                  (let ((__tmp150215
                                         (lambda (_%g140526140529%_
                                                  _%g140527140531%_)
                                           (cons _%g140526140529%_
                                                 _%g140527140531%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp150215 '() _%L140503%_)))))
                     _%eid140434140498%_
                     _%id140435140500%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop140428140464%_
                                             _%target140425140459%_
                                             '()
                                             '()))
                                          (_%g140418140446%_
                                           _%g140419140449%_)))))
                                (_%g140418140446%_ _%g140419140449%_))))
                        (_%g140418140446%_ _%g140419140449%_)))))
            (_%g140417140534%_ _%stx140414%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self140203%_ _%stx140204%_)
        (letrec ((_%generate1140206%_
                  (lambda (_%id140408%_)
                    (let ((_%eid140410%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id140408%_)))
                          (_%ident140411%_
                           (gxc#generate-runtime-identifier _%id140408%_)))
                      (cons '%#define-runtime
                            (cons _%ident140411%_ (cons _%eid140410%_ '()))))))
                 (_%generate*140207%_
                  (lambda (_%all140376%_)
                    (let* ((_%all140377140385%_ _%all140376%_)
                           (_%else140379140393%_
                            (lambda () (cons '%#begin _%all140376%_)))
                           (_%K140381140398%_
                            (lambda (_%one140396%_) _%one140396%_)))
                      (if (pair? _%all140377140385%_)
                          (let ((_%hd140382140401%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all140377140385%_)))
                                (_%tl140383140403%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all140377140385%_))))
                            (let ((_%one140406%_ _%hd140382140401%_))
                              (if (null? _%tl140383140403%_)
                                  (_%K140381140398%_ _%one140406%_)
                                  (_%else140379140393%_))))
                          (_%else140379140393%_))))))
          (let* ((_%g140209140226%_
                  (lambda (_%g140210140223%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140210140223%_))))
                 (_%g140208140373%_
                  (lambda (_%g140210140229%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140210140229%_))
                        (let ((_%e140213140231%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140210140229%_))))
                          (let ((_%hd140214140234%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140213140231%_)))
                                (_%tl140215140236%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140213140231%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140215140236%_))
                                (let ((_%e140216140239%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140215140236%_))))
                                  (let ((_%hd140217140242%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140216140239%_)))
                                        (_%tl140218140244%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140216140239%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140218140244%_))
                                        (let ((_%e140219140247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140218140244%_))))
                                          (let ((_%hd140220140250%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140219140247%_)))
                                                (_%tl140221140252%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140219140247%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140221140252%_))
                                                ((lambda (_%L140255%_
                                                          _%L140256%_)
                                                   (let _%lp140272%_ ((_%rest140274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L140256%_)
                              (_%r140275%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx149951149952%_
                                                             _%rest140274%_)
                                                            (_%g140280140297%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx149951149952%_)))))
               (let ((_%__kont149953149954%_
                      (lambda (_%L140360%_)
                        (_%lp140272%_ _%L140360%_ _%r140275%_)))
                     (_%__kont149955149956%_
                      (lambda (_%L140333%_ _%L140334%_)
                        (_%lp140272%_
                         _%L140333%_
                         (cons (_%generate1140206%_ _%L140334%_)
                               _%r140275%_))))
                     (_%__kont149957149958%_
                      (lambda (_%L140309%_)
                        (_%generate*140207%_
                         (let ((__tmp150216
                                (cons (_%generate1140206%_ _%L140309%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp150216 _%r140275%_)))))
                     (_%__kont149959149960%_
                      (lambda () (_%generate*140207%_ (reverse _%r140275%_)))))
                 (let ((_%g140278140320%_
                        (lambda ()
                          (let ((_%L140309%_ _%__stx149951149952%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L140309%_))
                                (_%__kont149957149958%_ _%L140309%_)
                                (_%__kont149959149960%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx149951149952%_))
                       (let ((_%e140283140349%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx149951149952%_))))
                         (let ((_%tl140285140354%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e140283140349%_)))
                               (_%hd140284140352%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e140283140349%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd140284140352%_))
                               (let ((_%e140286140357%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd140284140352%_))))
                                 (if (equal? _%e140286140357%_ '#f)
                                     (_%__kont149953149954%_
                                      _%tl140285140354%_)
                                     (_%__kont149955149956%_
                                      _%tl140285140354%_
                                      _%hd140284140352%_)))
                               (_%__kont149955149956%_
                                _%tl140285140354%_
                                _%hd140284140352%_))))
                       (let () (declare (not safe)) (_%g140278140320%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd140220140250%_
                                                 _%hd140217140242%_)
                                                (_%g140209140226%_
                                                 _%g140210140229%_))))
                                        (_%g140209140226%_
                                         _%g140210140229%_))))
                                (_%g140209140226%_ _%g140210140229%_))))
                        (_%g140209140226%_ _%g140210140229%_)))))
            (_%g140208140373%_ _%stx140204%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self140100%_ _%stx140101%_)
        (let* ((_%g140103140120%_
                (lambda (_%g140104140117%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140104140117%_))))
               (_%g140102140200%_
                (lambda (_%g140104140123%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140104140123%_))
                      (let ((_%e140107140125%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140104140123%_))))
                        (let ((_%hd140108140128%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140107140125%_)))
                              (_%tl140109140130%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140107140125%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140109140130%_))
                              (let ((_%e140110140133%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140109140130%_))))
                                (let ((_%hd140111140136%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140110140133%_)))
                                      (_%tl140112140138%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140110140133%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140112140138%_))
                                      (let ((_%e140113140141%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140112140138%_))))
                                        (let ((_%hd140114140144%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140113140141%_)))
                                              (_%tl140115140146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140113140141%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140115140146%_))
                                              ((lambda (_%L140149%_
                                                        _%L140150%_)
                                                 (let* ((_%eid140165%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L140150%_)))
                                                        (_%phi140167%_
                                                         (let ((__tmp150217
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp150217 '1)))
                (_%block140169%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self140100%_ 'state))
                  _%phi140167%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g140172140179%_
                                                           (lambda (_%g140173140176%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g140173140176%_))))
                  (_%g140171140197%_
                   (lambda (_%g140173140182%_)
                     ((lambda (_%L140184%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self140100%_ 'state))
                         _%phi140167%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L140184%_ (cons _%L140149%_ '())))))
                      _%g140173140182%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g140171140197%_
                                                      _%eid140165%_))
                                                   (if _%block140169%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block140169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L140150%_)
                                             (cons _%eid140165%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L140150%_)
                           (cons _%eid140165%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140114140144%_
                                               _%hd140111140136%_)
                                              (_%g140103140120%_
                                               _%g140104140123%_))))
                                      (_%g140103140120%_ _%g140104140123%_))))
                              (_%g140103140120%_ _%g140104140123%_))))
                      (_%g140103140120%_ _%g140104140123%_)))))
          (_%g140102140200%_ _%stx140101%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self140032%_ _%stx140033%_)
        (let* ((_%g140035140052%_
                (lambda (_%g140036140049%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140036140049%_))))
               (_%g140034140097%_
                (lambda (_%g140036140055%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140036140055%_))
                      (let ((_%e140039140057%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140036140055%_))))
                        (let ((_%hd140040140060%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140039140057%_)))
                              (_%tl140041140062%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140039140057%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140041140062%_))
                              (let ((_%e140042140065%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140041140062%_))))
                                (let ((_%hd140043140068%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140042140065%_)))
                                      (_%tl140044140070%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140042140065%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140044140070%_))
                                      (let ((_%e140045140073%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140044140070%_))))
                                        (let ((_%hd140046140076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140045140073%_)))
                                              (_%tl140047140078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140045140073%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140047140078%_))
                                              ((lambda (_%L140081%_
                                                        _%L140082%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L140082%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L140081%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140046140076%_
                                               _%hd140043140068%_)
                                              (_%g140035140052%_
                                               _%g140036140055%_))))
                                      (_%g140035140052%_ _%g140036140055%_))))
                              (_%g140035140052%_ _%g140036140055%_))))
                      (_%g140035140052%_ _%g140036140055%_)))))
          (_%g140034140097%_ _%stx140033%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self140029%_ _%stx140030%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self140029%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx140030%_)
        (gxc#generate-meta-define-values% _%self140029%_ _%stx140030%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self140026%_ _%stx140027%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self140026%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx140027%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp150219 (list)) (__tmp150218 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp150219
         '(src n open blocks)
         __tmp150218
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args140023%_
        (apply make-instance gxc#meta-state::t _%$args140023%_)))
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
      (lambda (_%self139368140007%_ _%ctx140009%_)
        (let* ((_%self140011%_ _%self139368140007%_)
               (_%self140013%_ _%self140011%_))
          (if (let ((__tmp150220
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self140013%_))))
                (declare (not safe))
                (##fx< '4 __tmp150220))
              (begin
                (let ((__tmp150221
                       (let ((__tmp150222
                              (##structure-ref
                               _%ctx140009%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp150222))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self140013%_
                   __tmp150221
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self140013%_ '1 '2 '#f '#f))
                (let ((__tmp150223
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self140013%_
                   __tmp150223
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self140013%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp150224
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self140013%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self140013%_
                       '4
                       __tmp150224))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp150226 (list)) (__tmp150225 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp150226
         '(ctx phi n code)
         __tmp150225
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args139882%_
        (apply make-instance gxc#meta-state-block::t _%$args139882%_)))
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
      (lambda (_%state139841%_ _%phi139842%_)
        (let* ((_%state139843139851%_ _%state139841%_)
               (_%E139845139855%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state139843139851%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K139846139864%_
                (lambda (_%open139858%_ _%n139859%_ _%src139860%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open139858%_ _%phi139842%_))
                      '#f
                      (let ((_%block-ref139862%_
                             (let ((__tmp150227 (number->string _%n139859%_)))
                               (declare (not safe))
                               (##string-append
                                _%src139860%_
                                '"~"
                                __tmp150227))))
                        (##structure-set!
                         _%state139841%_
                         (let () (declare (not safe)) (##fx+ _%n139859%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp150228
                               (let ((__tmp150229
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp150229
                                  _%phi139842%_
                                  _%n139859%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open139858%_ _%phi139842%_ __tmp150228))
                        _%block-ref139862%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state139843139851%_
                 'gxc#meta-state::t))
              (let* ((_%e139847139867%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state139843139851%_
                         '1
                         '#f
                         '#f)))
                     (_%src139870%_ _%e139847139867%_)
                     (_%e139848139872%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state139843139851%_
                         '2
                         '#f
                         '#f)))
                     (_%n139875%_ _%e139848139872%_)
                     (_%e139849139877%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state139843139851%_
                         '3
                         '#f
                         '#f)))
                     (_%open139880%_ _%e139849139877%_))
                (_%K139846139864%_ _%open139880%_ _%n139875%_ _%src139870%_))
              (_%E139845139855%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state139835%_ _%phi139836%_ _%stx139837%_)
        (let ((_%block139839%_
               (let ((__tmp150230
                      (##structure-ref
                       _%state139835%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp150230 _%phi139836%_))))
          (##structure-set!
           _%block139839%_
           (cons _%stx139837%_
                 (##structure-ref
                  _%block139839%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state139829%_)
        (##structure-set!
         _%state139829%_
         (let ((__tmp150233
                (lambda (_%_139831%_ _%block139832%_ _%r139833%_)
                  (cons _%block139832%_ _%r139833%_)))
               (__tmp150232
                (##structure-ref _%state139829%_ '4 gxc#meta-state::t '#f))
               (__tmp150231
                (##structure-ref _%state139829%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp150233 __tmp150232 __tmp150231))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state139829%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state139781%_)
        (gxc#meta-state-end-phi! _%state139781%_)
        (let ((__tmp150235
               (lambda (_%block139783%_ _%r139784%_)
                 (let* ((_%block139785139794%_ _%block139783%_)
                        (_%E139787139798%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block139785139794%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K139788139806%_
                         (lambda (_%code139801%_
                                  _%n139802%_
                                  _%phi139803%_
                                  _%ctx139804%_)
                           (if (null? _%code139801%_)
                               _%r139784%_
                               (cons (cons _%ctx139804%_
                                           (cons _%phi139803%_
                                                 (cons _%n139802%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code139801%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r139784%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block139785139794%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e139789139809%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block139785139794%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx139812%_ _%e139789139809%_)
                              (_%e139790139814%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block139785139794%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi139817%_ _%e139790139814%_)
                              (_%e139791139819%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block139785139794%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n139822%_ _%e139791139819%_)
                              (_%e139792139824%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block139785139794%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code139827%_ _%e139792139824%_))
                         (_%K139788139806%_
                          _%code139827%_
                          _%n139822%_
                          _%phi139817%_
                          _%ctx139812%_))
                       (_%E139787139798%_)))))
              (__tmp150234
               (##structure-ref _%state139781%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp150235 '() __tmp150234))))
    (define gxc#collect-expression-refs
      (lambda (_%stx139777%_)
        (let ((_%ht139779%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht139779%_ _%stx139777%_)
          _%ht139779%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self139720%_ _%stx139721%_)
        (let* ((_%g139723139736%_
                (lambda (_%g139724139733%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139724139733%_))))
               (_%g139722139774%_
                (lambda (_%g139724139739%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139724139739%_))
                      (let ((_%e139726139741%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139724139739%_))))
                        (let ((_%hd139727139744%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139726139741%_)))
                              (_%tl139728139746%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139726139741%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139728139746%_))
                              (let ((_%e139729139749%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139728139746%_))))
                                (let ((_%hd139730139752%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139729139749%_)))
                                      (_%tl139731139754%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139729139749%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl139731139754%_))
                                      ((lambda (_%L139757%_)
                                         (let* ((_%bind139769%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L139757%_)))
                                                (_%eid139771%_
                                                 (if _%bind139769%_
                                                     (##structure-ref
                                                      _%bind139769%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L139757%_))))
                                                (__tmp150236
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self139720%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp150236
                                            _%eid139771%_
                                            _%eid139771%_)))
                                       _%hd139730139752%_)
                                      (_%g139723139736%_ _%g139724139739%_))))
                              (_%g139723139736%_ _%g139724139739%_))))
                      (_%g139723139736%_ _%g139724139739%_)))))
          (_%g139722139774%_ _%stx139721%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self139647%_ _%stx139648%_)
        (let* ((_%g139650139667%_
                (lambda (_%g139651139664%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139651139664%_))))
               (_%g139649139717%_
                (lambda (_%g139651139670%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139651139670%_))
                      (let ((_%e139654139672%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139651139670%_))))
                        (let ((_%hd139655139675%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139654139672%_)))
                              (_%tl139656139677%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139654139672%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139656139677%_))
                              (let ((_%e139657139680%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139656139677%_))))
                                (let ((_%hd139658139683%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139657139680%_)))
                                      (_%tl139659139685%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139657139680%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139659139685%_))
                                      (let ((_%e139660139688%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139659139685%_))))
                                        (let ((_%hd139661139691%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139660139688%_)))
                                              (_%tl139662139693%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139660139688%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139662139693%_))
                                              ((lambda (_%L139696%_
                                                        _%L139697%_)
                                                 (let* ((_%bind139712%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L139697%_)))
                                                        (_%eid139714%_
                                                         (if _%bind139712%_
                                                             (##structure-ref
                                                              _%bind139712%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L139697%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150237
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self139647%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp150237
                                                      _%eid139714%_
                                                      _%eid139714%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139647%_
                                                      _%L139696%_))))
                                               _%hd139661139691%_
                                               _%hd139658139683%_)
                                              (_%g139650139667%_
                                               _%g139651139670%_))))
                                      (_%g139650139667%_ _%g139651139670%_))))
                              (_%g139650139667%_ _%g139651139670%_))))
                      (_%g139650139667%_ _%g139651139670%_)))))
          (_%g139649139717%_ _%stx139648%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self139604%_ _%stx139605%_)
        (let* ((_%g139607139617%_
                (lambda (_%g139608139614%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139608139614%_))))
               (_%g139606139644%_
                (lambda (_%g139608139620%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139608139620%_))
                      (let ((_%e139610139622%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139608139620%_))))
                        (let ((_%hd139611139625%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139610139622%_)))
                              (_%tl139612139627%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139610139622%_))))
                          ((lambda (_%L139630%_)
                             (let ((__tmp150238
                                    (lambda (_%g139639139641%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self139604%_
                                         _%g139639139641%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp150238 _%L139630%_)))
                           _%tl139612139627%_)))
                      (_%g139607139617%_ _%g139608139620%_)))))
          (_%g139606139644%_ _%stx139605%_))))
    (define gxc#count-values-single%
      (lambda (_%self139601%_ _%stx139602%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self139467%_ _%stx139468%_)
        (let* ((_%__stx149981149982%_ _%stx139468%_)
               (_%g139471139500%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx149981149982%_)))))
          (let ((_%__kont149983149984%_
                 (lambda (_%L139568%_ _%L139569%_)
                   (length (let ((__tmp150239
                                  (lambda (_%g139590139593%_ _%g139591139595%_)
                                    (cons _%g139590139593%_
                                          _%g139591139595%_))))
                             (declare (not safe))
                             (__foldr1 __tmp150239 '() _%L139568%_)))))
                (_%__kont149987149988%_ (lambda () '#f)))
            (let ((_%__match150026150027%_
                   (lambda (_%e139475139512%_
                            _%hd139476139515%_
                            _%tl139477139517%_
                            _%e139478139520%_
                            _%hd139479139523%_
                            _%tl139480139525%_
                            _%e139481139528%_
                            _%hd139482139531%_
                            _%tl139483139533%_
                            _%e139484139536%_
                            _%hd139485139539%_
                            _%tl139486139541%_
                            _%__splice149985149986%_
                            _%target139487139544%_
                            _%tl139489139546%_)
                     (letrec ((_%loop139490139549%_
                               (lambda (_%hd139488139552%_
                                        _%rand139494139554%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd139488139552%_))
                                     (let ((_%e139491139557%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd139488139552%_))))
                                       (let ((_%lp-tl139493139562%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e139491139557%_)))
                                             (_%lp-hd139492139560%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e139491139557%_))))
                                         (_%loop139490139549%_
                                          _%lp-tl139493139562%_
                                          (cons _%lp-hd139492139560%_
                                                _%rand139494139554%_))))
                                     (let ((_%rand139495139565%_
                                            (reverse _%rand139494139554%_)))
                                       (let ((_%L139568%_ _%rand139495139565%_)
                                             (_%L139569%_ _%hd139485139539%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L139569%_
                                                'values))
                                             (_%__kont149983149984%_
                                              _%L139568%_
                                              _%L139569%_)
                                             (_%__kont149987149988%_))))))))
                       (_%loop139490139549%_ _%target139487139544%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx149981149982%_))
                  (let ((_%e139475139512%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx149981149982%_))))
                    (let ((_%tl139477139517%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e139475139512%_)))
                          (_%hd139476139515%_
                           (let ()
                             (declare (not safe))
                             (##car _%e139475139512%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl139477139517%_))
                          (let ((_%e139478139520%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl139477139517%_))))
                            (let ((_%tl139480139525%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139478139520%_)))
                                  (_%hd139479139523%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139478139520%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd139479139523%_))
                                  (let ((_%e139481139528%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd139479139523%_))))
                                    (let ((_%tl139483139533%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e139481139528%_)))
                                          (_%hd139482139531%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e139481139528%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd139482139531%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd139482139531%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl139483139533%_))
                                                  (let ((_%e139484139536%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl139483139533%_))))
                                                    (let ((_%tl139486139541%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e139484139536%_)))
                                                          (_%hd139485139539%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e139484139536%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl139486139541%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl139480139525%_))
                      (let ((_%__splice149985149986%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl139480139525%_
                                '0))))
                        (let ((_%tl139489139546%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice149985149986%_ '1)))
                              (_%target139487139544%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice149985149986%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl139489139546%_))
                              (_%__match150026150027%_
                               _%e139475139512%_
                               _%hd139476139515%_
                               _%tl139477139517%_
                               _%e139478139520%_
                               _%hd139479139523%_
                               _%tl139480139525%_
                               _%e139481139528%_
                               _%hd139482139531%_
                               _%tl139483139533%_
                               _%e139484139536%_
                               _%hd139485139539%_
                               _%tl139486139541%_
                               _%__splice149985149986%_
                               _%target139487139544%_
                               _%tl139489139546%_)
                              (_%__kont149987149988%_))))
                      (_%__kont149987149988%_))
                  (_%__kont149987149988%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont149987149988%_))
                                              (_%__kont149987149988%_))
                                          (_%__kont149987149988%_))))
                                  (_%__kont149987149988%_))))
                          (_%__kont149987149988%_))))
                  (_%__kont149987149988%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self139370%_ _%stx139371%_)
        (let* ((_%g139373139394%_
                (lambda (_%g139374139391%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139374139391%_))))
               (_%g139372139464%_
                (lambda (_%g139374139397%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139374139397%_))
                      (let ((_%e139378139399%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139374139397%_))))
                        (let ((_%hd139379139402%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139378139399%_)))
                              (_%tl139380139404%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139378139399%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139380139404%_))
                              (let ((_%e139381139407%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139380139404%_))))
                                (let ((_%hd139382139410%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139381139407%_)))
                                      (_%tl139383139412%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139381139407%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139383139412%_))
                                      (let ((_%e139384139415%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139383139412%_))))
                                        (let ((_%hd139385139418%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139384139415%_)))
                                              (_%tl139386139420%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139384139415%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139386139420%_))
                                              (let ((_%e139387139423%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139386139420%_))))
                                                (let ((_%hd139388139426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139387139423%_)))
                                                      (_%tl139389139428%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139387139423%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl139389139428%_))
                                                      ((lambda (_%L139431%_
                                                                _%L139432%_
                                                                _%L139433%_)
                                                         (let ((_%c1139450139452%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self139370%_ _%L139432%_))))
                   (if _%c1139450139452%_
                       (let* ((_%c1139455%_ _%c1139450139452%_)
                              (_%c2139456139458%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self139370%_
                                  _%L139431%_))))
                         (if _%c2139456139458%_
                             (let ((_%c2139461%_ _%c2139456139458%_))
                               (if (fx= _%c1139455%_ _%c2139461%_)
                                   _%c1139455%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd139388139426%_
               _%hd139385139418%_
               _%hd139382139410%_)
              (_%g139373139394%_ _%g139374139397%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139373139394%_
                                               _%g139374139397%_))))
                                      (_%g139373139394%_ _%g139374139397%_))))
                              (_%g139373139394%_ _%g139374139397%_))))
                      (_%g139373139394%_ _%g139374139397%_)))))
          (_%g139372139464%_ _%stx139371%_))))))
